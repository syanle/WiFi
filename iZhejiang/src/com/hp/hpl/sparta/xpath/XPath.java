// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Stack;
import java.util.Vector;

// Referenced classes of package com.hp.hpl.sparta.xpath:
//            XPathException, SimpleStreamTokenizer, Step, AttrExistsExpr, 
//            AttrExpr, AttrEqualsExpr

public class XPath
{

    private static final int ASSERTION = 0;
    private static Hashtable cache_ = new Hashtable();
    private boolean absolute_;
    private Stack steps_;
    private String string_;

    private XPath(String s)
        throws XPathException
    {
        this(s, ((Reader) (new InputStreamReader(new ByteArrayInputStream(s.getBytes())))));
    }

    private XPath(String s, Reader reader)
        throws XPathException
    {
        steps_ = new Stack();
        string_ = s;
        s = new SimpleStreamTokenizer(reader);
        s.ordinaryChar('/');
        s.ordinaryChar('.');
        s.wordChars(':', ':');
        s.wordChars('_', '_');
        if (s.nextToken() != 47) goto _L2; else goto _L1
_L1:
        absolute_ = true;
        if (s.nextToken() != 47) goto _L4; else goto _L3
_L3:
        s.nextToken();
        boolean flag = true;
_L11:
        steps_.push(new Step(this, flag, s));
_L8:
        if (((SimpleStreamTokenizer) (s)).ttype == 47) goto _L6; else goto _L5
_L5:
        if (((SimpleStreamTokenizer) (s)).ttype != -1)
        {
            throw new XPathException(this, "at end of XPATH expression", s, "end of expression");
        }
          goto _L7
_L4:
        flag = false;
        continue; /* Loop/switch isn't completed */
_L2:
        try
        {
            absolute_ = false;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new XPathException(this, s);
        }
        flag = false;
        continue; /* Loop/switch isn't completed */
_L6:
        if (s.nextToken() != 47)
        {
            break MISSING_BLOCK_LABEL_199;
        }
        s.nextToken();
        flag = true;
_L9:
        steps_.push(new Step(this, flag, s));
          goto _L8
        flag = false;
          goto _L9
_L7:
        return;
        if (true) goto _L11; else goto _L10
_L10:
    }

    private XPath(boolean flag, Step astep[])
    {
        steps_ = new Stack();
        int i = 0;
        do
        {
            if (i >= astep.length)
            {
                absolute_ = flag;
                string_ = null;
                return;
            }
            steps_.addElement(astep[i]);
            i++;
        } while (true);
    }

    private String generateString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        Enumeration enumeration = steps_.elements();
        boolean flag = true;
        do
        {
            if (!enumeration.hasMoreElements())
            {
                return stringbuffer.toString();
            }
            Step step = (Step)enumeration.nextElement();
            if (!flag || absolute_)
            {
                stringbuffer.append('/');
                if (step.isMultiLevel())
                {
                    stringbuffer.append('/');
                }
            }
            stringbuffer.append(step.toString());
            flag = false;
        } while (true);
    }

    public static XPath get(String s)
        throws XPathException
    {
        Hashtable hashtable = cache_;
        hashtable;
        JVM INSTR monitorenter ;
        XPath xpath1 = (XPath)cache_.get(s);
        XPath xpath;
        xpath = xpath1;
        if (xpath1 != null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        xpath = new XPath(s);
        cache_.put(s, xpath);
        hashtable;
        JVM INSTR monitorexit ;
        return xpath;
        s;
        hashtable;
        JVM INSTR monitorexit ;
        throw s;
    }

    public static XPath get(boolean flag, Step astep[])
    {
        XPath xpath;
        String s;
        xpath = new XPath(flag, astep);
        s = xpath.toString();
        astep = cache_;
        astep;
        JVM INSTR monitorenter ;
        XPath xpath1 = (XPath)cache_.get(s);
        if (xpath1 != null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        cache_.put(s, xpath);
        astep;
        JVM INSTR monitorexit ;
        return xpath;
        astep;
        JVM INSTR monitorexit ;
        return xpath1;
        Exception exception;
        exception;
        astep;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static boolean isStringValue(String s)
        throws XPathException, IOException
    {
        return get(s).isStringValue();
    }

    public Object clone()
    {
        Step astep[] = new Step[steps_.size()];
        Enumeration enumeration = steps_.elements();
        int i = 0;
        do
        {
            if (i >= astep.length)
            {
                return new XPath(absolute_, astep);
            }
            astep[i] = (Step)enumeration.nextElement();
            i++;
        } while (true);
    }

    public String getIndexingAttrName()
        throws XPathException
    {
        BooleanExpr booleanexpr = ((Step)steps_.peek()).getPredicate();
        if (!(booleanexpr instanceof AttrExistsExpr))
        {
            throw new XPathException(this, "has no indexing attribute name (must end with predicate of the form [@attrName]");
        } else
        {
            return ((AttrExistsExpr)booleanexpr).getAttrName();
        }
    }

    public String getIndexingAttrNameOfEquals()
        throws XPathException
    {
        BooleanExpr booleanexpr = ((Step)steps_.peek()).getPredicate();
        if (booleanexpr instanceof AttrEqualsExpr)
        {
            return ((AttrEqualsExpr)booleanexpr).getAttrName();
        } else
        {
            return null;
        }
    }

    public Enumeration getSteps()
    {
        return steps_.elements();
    }

    public boolean isAbsolute()
    {
        return absolute_;
    }

    public boolean isStringValue()
    {
        return ((Step)steps_.peek()).isStringValue();
    }

    public String toString()
    {
        if (string_ == null)
        {
            string_ = generateString();
        }
        return string_;
    }

}
