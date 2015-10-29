// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package org.xbill.DNS:
//            Name, RelativeNameException, Tokenizer, TextParseException, 
//            Generator, DClass, TTL, Type, 
//            Record, SOARecord

public class Master
{

    private int currentDClass;
    private long currentTTL;
    private int currentType;
    private long defaultTTL;
    private File file;
    private Generator generator;
    private List generators;
    private Master included;
    private Record last;
    private boolean needSOATTL;
    private boolean noExpandGenerate;
    private Name origin;
    private Tokenizer st;

    Master(File file1, Name name, long l)
        throws IOException
    {
        last = null;
        included = null;
        if (name != null && !name.isAbsolute())
        {
            throw new RelativeNameException(name);
        } else
        {
            file = file1;
            st = new Tokenizer(file1);
            origin = name;
            defaultTTL = l;
            return;
        }
    }

    public Master(InputStream inputstream)
    {
        this(inputstream, null, -1L);
    }

    public Master(InputStream inputstream, Name name)
    {
        this(inputstream, name, -1L);
    }

    public Master(InputStream inputstream, Name name, long l)
    {
        last = null;
        included = null;
        if (name != null && !name.isAbsolute())
        {
            throw new RelativeNameException(name);
        } else
        {
            st = new Tokenizer(inputstream);
            origin = name;
            defaultTTL = l;
            return;
        }
    }

    public Master(String s)
        throws IOException
    {
        this(new File(s), null, -1L);
    }

    public Master(String s, Name name)
        throws IOException
    {
        this(new File(s), name, -1L);
    }

    public Master(String s, Name name, long l)
        throws IOException
    {
        this(new File(s), name, l);
    }

    private void endGenerate()
        throws IOException
    {
        st.getEOL();
        generator = null;
    }

    private Record nextGenerated()
        throws IOException
    {
        Record record;
        try
        {
            record = generator.nextRecord();
        }
        catch (Tokenizer.TokenizerException tokenizerexception)
        {
            throw st.exception((new StringBuilder("Parsing $GENERATE: ")).append(tokenizerexception.getBaseMessage()).toString());
        }
        catch (TextParseException textparseexception)
        {
            throw st.exception((new StringBuilder("Parsing $GENERATE: ")).append(textparseexception.getMessage()).toString());
        }
        return record;
    }

    private Name parseName(String s, Name name)
        throws TextParseException
    {
        try
        {
            s = Name.fromString(s, name);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw st.exception(s.getMessage());
        }
        return s;
    }

    private void parseTTLClassAndType()
        throws IOException
    {
        boolean flag = false;
        Object obj = st.getString();
        int j = DClass.value(((String) (obj)));
        currentDClass = j;
        if (j >= 0)
        {
            obj = st.getString();
            flag = true;
        }
        currentTTL = -1L;
        Object obj1;
        try
        {
            currentTTL = TTL.parseTTL(((String) (obj)));
            obj1 = st.getString();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1)
        {
            if (defaultTTL >= 0L)
            {
                currentTTL = defaultTTL;
                obj1 = obj;
            } else
            {
                obj1 = obj;
                if (last != null)
                {
                    currentTTL = last.getTTL();
                    obj1 = obj;
                }
            }
        }
        obj = obj1;
        if (!flag)
        {
            int i = DClass.value(((String) (obj1)));
            currentDClass = i;
            if (i >= 0)
            {
                obj = st.getString();
            } else
            {
                currentDClass = 1;
                obj = obj1;
            }
        }
        i = Type.value(((String) (obj)));
        currentType = i;
        if (i < 0)
        {
            throw st.exception((new StringBuilder("Invalid type '")).append(((String) (obj))).append("'").toString());
        }
        if (currentTTL < 0L)
        {
            if (currentType != 6)
            {
                throw st.exception("missing TTL");
            }
            needSOATTL = true;
            currentTTL = 0L;
        }
    }

    private long parseUInt32(String s)
    {
        if (Character.isDigit(s.charAt(0))) goto _L2; else goto _L1
_L1:
        long l = -1L;
_L4:
        return l;
_L2:
        long l1;
        try
        {
            l1 = Long.parseLong(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return -1L;
        }
        if (l1 < 0L)
        {
            break; /* Loop/switch isn't completed */
        }
        l = l1;
        if (l1 <= 0xffffffffL) goto _L4; else goto _L3
_L3:
        return -1L;
    }

    private void startGenerate()
        throws IOException
    {
        String s3 = st.getIdentifier();
        int i = s3.indexOf("-");
        if (i < 0)
        {
            throw st.exception((new StringBuilder("Invalid $GENERATE range specifier: ")).append(s3).toString());
        }
        String s4 = s3.substring(0, i);
        String s2 = s3.substring(i + 1);
        String s1 = null;
        i = s2.indexOf("/");
        String s = s2;
        if (i >= 0)
        {
            s1 = s2.substring(i + 1);
            s = s2.substring(0, i);
        }
        long l1 = parseUInt32(s4);
        long l2 = parseUInt32(s);
        long l;
        if (s1 != null)
        {
            l = parseUInt32(s1);
        } else
        {
            l = 1L;
        }
        if (l1 < 0L || l2 < 0L || l1 > l2 || l <= 0L)
        {
            throw st.exception((new StringBuilder("Invalid $GENERATE range specifier: ")).append(s3).toString());
        }
        s = st.getIdentifier();
        parseTTLClassAndType();
        if (!Generator.supportedType(currentType))
        {
            throw st.exception((new StringBuilder("$GENERATE does not support ")).append(Type.string(currentType)).append(" records").toString());
        }
        s1 = st.getIdentifier();
        st.getEOL();
        st.unget();
        generator = new Generator(l1, l2, l, s, currentType, currentDClass, currentTTL, s1, origin);
        if (generators == null)
        {
            generators = new ArrayList(1);
        }
        generators.add(generator);
    }

    public Record _nextRecord()
        throws IOException
    {
        if (included == null) goto _L2; else goto _L1
_L1:
        Object obj = included.nextRecord();
        if (obj == null) goto _L4; else goto _L3
_L3:
        return ((Record) (obj));
_L4:
        included = null;
_L2:
        Record record;
        if (generator == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        record = nextGenerated();
        obj = record;
        if (record != null) goto _L3; else goto _L5
_L5:
        endGenerate();
_L9:
        obj = st.get(true, false);
        if (((Tokenizer.Token) (obj)).type != 2) goto _L7; else goto _L6
_L6:
        obj = st.get();
        if (((Tokenizer.Token) (obj)).type == 1) goto _L9; else goto _L8
_L8:
        if (((Tokenizer.Token) (obj)).type == 0)
        {
            return null;
        }
        st.unget();
        if (last == null)
        {
            throw st.exception("no owner");
        }
        obj = last.getName();
_L10:
        parseTTLClassAndType();
        last = Record.fromString(((Name) (obj)), currentType, currentDClass, currentTTL, st, origin);
        if (needSOATTL)
        {
            long l = ((SOARecord)last).getMinimum();
            last.setTTL(l);
            defaultTTL = l;
            needSOATTL = false;
        }
        return last;
_L7:
        if (((Tokenizer.Token) (obj)).type != 1)
        {
label0:
            {
                if (((Tokenizer.Token) (obj)).type == 0)
                {
                    return null;
                }
                if (((Tokenizer.Token) (obj)).value.charAt(0) != '$')
                {
                    break label0;
                }
                obj = ((Tokenizer.Token) (obj)).value;
                if (((String) (obj)).equalsIgnoreCase("$ORIGIN"))
                {
                    origin = st.getName(Name.root);
                    st.getEOL();
                } else
                if (((String) (obj)).equalsIgnoreCase("$TTL"))
                {
                    defaultTTL = st.getTTL();
                    st.getEOL();
                } else
                {
                    if (((String) (obj)).equalsIgnoreCase("$INCLUDE"))
                    {
                        obj = st.getString();
                        Name name;
                        Tokenizer.Token token;
                        if (file != null)
                        {
                            obj = new File(file.getParent(), ((String) (obj)));
                        } else
                        {
                            obj = new File(((String) (obj)));
                        }
                        name = origin;
                        token = st.get();
                        if (token.isString())
                        {
                            name = parseName(token.value, Name.root);
                            st.getEOL();
                        }
                        included = new Master(((File) (obj)), name, defaultTTL);
                        return nextRecord();
                    }
                    if (((String) (obj)).equalsIgnoreCase("$GENERATE"))
                    {
                        if (generator != null)
                        {
                            throw new IllegalStateException("cannot nest $GENERATE");
                        }
                        startGenerate();
                        if (noExpandGenerate)
                        {
                            endGenerate();
                        } else
                        {
                            return nextGenerated();
                        }
                    } else
                    {
                        throw st.exception((new StringBuilder("Invalid directive: ")).append(((String) (obj))).toString());
                    }
                }
            }
        }
          goto _L9
        Name name1 = parseName(((Tokenizer.Token) (obj)).value, origin);
        obj = name1;
        if (last != null)
        {
            obj = name1;
            if (name1.equals(last.getName()))
            {
                obj = last.getName();
            }
        }
          goto _L10
    }

    public void expandGenerate(boolean flag)
    {
        if (flag)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        noExpandGenerate = flag;
    }

    protected void finalize()
    {
        st.close();
    }

    public Iterator generators()
    {
        if (generators != null)
        {
            return Collections.unmodifiableList(generators).iterator();
        } else
        {
            return Collections.EMPTY_LIST.iterator();
        }
    }

    public Record nextRecord()
        throws IOException
    {
        Record record = _nextRecord();
        if (record == null)
        {
            st.close();
        }
        return record;
        Exception exception;
        exception;
        if (true)
        {
            st.close();
        }
        throw exception;
    }
}
