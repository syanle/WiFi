// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.PrintStream;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package org.xbill.DNS:
//            Name, TextParseException, Type, DClass, 
//            Options, Mnemonic, Cache, Record, 
//            Message, Resolver, Header, Rcode, 
//            NameTooLongException, SetResponse, RRset, CNAMERecord, 
//            ExtendedResolver, ResolverConfig

public final class Lookup
{

    public static final int HOST_NOT_FOUND = 3;
    public static final int SUCCESSFUL = 0;
    public static final int TRY_AGAIN = 2;
    public static final int TYPE_NOT_FOUND = 4;
    public static final int UNRECOVERABLE = 1;
    private static Map defaultCaches;
    private static Resolver defaultResolver;
    private static Name defaultSearchPath[];
    private static final Name noAliases[] = new Name[0];
    private List aliases;
    private Record answers[];
    private boolean badresponse;
    private String badresponse_error;
    private Cache cache;
    private int credibility;
    private int dclass;
    private boolean done;
    private boolean doneCurrent;
    private String error;
    private boolean foundAlias;
    private int iterations;
    private Name name;
    private boolean nametoolong;
    private boolean networkerror;
    private boolean nxdomain;
    private boolean referral;
    private Resolver resolver;
    private int result;
    private Name searchPath[];
    private boolean temporary_cache;
    private boolean timedout;
    private int type;
    private boolean verbose;

    public Lookup(String s)
        throws TextParseException
    {
        this(Name.fromString(s), 1, 1);
    }

    public Lookup(String s, int i)
        throws TextParseException
    {
        this(Name.fromString(s), i, 1);
    }

    public Lookup(String s, int i, int j)
        throws TextParseException
    {
        this(Name.fromString(s), i, j);
    }

    public Lookup(Name name1)
    {
        this(name1, 1, 1);
    }

    public Lookup(Name name1, int i)
    {
        this(name1, i, 1);
    }

    public Lookup(Name name1, int i, int j)
    {
        Type.check(i);
        DClass.check(j);
        if (!Type.isRR(i) && i != 255)
        {
            throw new IllegalArgumentException("Cannot query for meta-types other than ANY");
        }
        name = name1;
        type = i;
        dclass = j;
        org/xbill/DNS/Lookup;
        JVM INSTR monitorenter ;
        resolver = getDefaultResolver();
        searchPath = getDefaultSearchPath();
        cache = getDefaultCache(j);
        org/xbill/DNS/Lookup;
        JVM INSTR monitorexit ;
        credibility = 3;
        verbose = Options.check("verbose");
        result = -1;
        return;
        name1;
        org/xbill/DNS/Lookup;
        JVM INSTR monitorexit ;
        throw name1;
    }

    private void checkDone()
    {
        if (done && result != -1)
        {
            return;
        }
        StringBuffer stringbuffer = new StringBuffer((new StringBuilder("Lookup of ")).append(name).append(" ").toString());
        if (dclass != 1)
        {
            stringbuffer.append((new StringBuilder(String.valueOf(DClass.string(dclass)))).append(" ").toString());
        }
        stringbuffer.append((new StringBuilder(String.valueOf(Type.string(type)))).append(" isn't done").toString());
        throw new IllegalStateException(stringbuffer.toString());
    }

    private void follow(Name name1, Name name2)
    {
        foundAlias = true;
        badresponse = false;
        networkerror = false;
        timedout = false;
        nxdomain = false;
        referral = false;
        iterations = iterations + 1;
        if (iterations >= 6 || name1.equals(name2))
        {
            result = 1;
            error = "CNAME loop";
            done = true;
            return;
        }
        if (aliases == null)
        {
            aliases = new ArrayList();
        }
        aliases.add(name2);
        lookup(name1);
    }

    public static Cache getDefaultCache(int i)
    {
        org/xbill/DNS/Lookup;
        JVM INSTR monitorenter ;
        Cache cache2;
        DClass.check(i);
        cache2 = (Cache)defaultCaches.get(Mnemonic.toInteger(i));
        Cache cache1;
        cache1 = cache2;
        if (cache2 != null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        cache1 = new Cache(i);
        defaultCaches.put(Mnemonic.toInteger(i), cache1);
        org/xbill/DNS/Lookup;
        JVM INSTR monitorexit ;
        return cache1;
        Exception exception;
        exception;
        throw exception;
    }

    public static Resolver getDefaultResolver()
    {
        org/xbill/DNS/Lookup;
        JVM INSTR monitorenter ;
        Resolver resolver1 = defaultResolver;
        org/xbill/DNS/Lookup;
        JVM INSTR monitorexit ;
        return resolver1;
        Exception exception;
        exception;
        throw exception;
    }

    public static Name[] getDefaultSearchPath()
    {
        org/xbill/DNS/Lookup;
        JVM INSTR monitorenter ;
        Name aname[] = defaultSearchPath;
        org/xbill/DNS/Lookup;
        JVM INSTR monitorexit ;
        return aname;
        Exception exception;
        exception;
        throw exception;
    }

    private void lookup(Name name1)
    {
        Object obj = cache.lookupRecords(name1, type, credibility);
        if (verbose)
        {
            System.err.println((new StringBuilder("lookup ")).append(name1).append(" ").append(Type.string(type)).toString());
            System.err.println(obj);
        }
        processResponse(name1, ((SetResponse) (obj)));
        if (done || doneCurrent)
        {
            return;
        }
        obj = Message.newQuery(Record.newRecord(name1, type, dclass));
        Object obj1;
        int i;
        try
        {
            obj1 = resolver.send(((Message) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Name name1)
        {
            if (name1 instanceof InterruptedIOException)
            {
                timedout = true;
                return;
            } else
            {
                networkerror = true;
                return;
            }
        }
        i = ((Message) (obj1)).getHeader().getRcode();
        if (i != 0 && i != 3)
        {
            badresponse = true;
            badresponse_error = Rcode.string(i);
            return;
        }
        if (!((Message) (obj)).getQuestion().equals(((Message) (obj1)).getQuestion()))
        {
            badresponse = true;
            badresponse_error = "response does not match query";
            return;
        }
        obj1 = cache.addMessage(((Message) (obj1)));
        obj = obj1;
        if (obj1 == null)
        {
            obj = cache.lookupRecords(name1, type, credibility);
        }
        if (verbose)
        {
            System.err.println((new StringBuilder("queried ")).append(name1).append(" ").append(Type.string(type)).toString());
            System.err.println(obj);
        }
        processResponse(name1, ((SetResponse) (obj)));
    }

    private void processResponse(Name name1, SetResponse setresponse)
    {
        if (!setresponse.isSuccessful()) goto _L2; else goto _L1
_L1:
        int i;
        name1 = setresponse.answers();
        setresponse = new ArrayList();
        i = 0;
_L9:
        if (i < name1.length) goto _L4; else goto _L3
_L3:
        result = 0;
        answers = (Record[])setresponse.toArray(new Record[setresponse.size()]);
        done = true;
_L6:
        return;
_L4:
        Iterator iterator = name1[i].rrs();
        do
        {
            if (!iterator.hasNext())
            {
                i++;
                continue; /* Loop/switch isn't completed */
            }
            setresponse.add(iterator.next());
        } while (true);
_L2:
        if (!setresponse.isNXDOMAIN())
        {
            break; /* Loop/switch isn't completed */
        }
        nxdomain = true;
        doneCurrent = true;
        if (iterations > 0)
        {
            result = 3;
            done = true;
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
        if (setresponse.isNXRRSET())
        {
            result = 4;
            answers = null;
            done = true;
            return;
        }
        if (setresponse.isCNAME())
        {
            follow(setresponse.getCNAME().getTarget(), name1);
            return;
        }
        if (setresponse.isDNAME())
        {
            setresponse = setresponse.getDNAME();
            try
            {
                follow(name1.fromDNAME(setresponse), name1);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Name name1)
            {
                result = 1;
            }
            error = "Invalid DNAME target";
            done = true;
            return;
        }
        if (!setresponse.isDelegation()) goto _L6; else goto _L7
_L7:
        referral = true;
        return;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public static void refreshDefault()
    {
        org/xbill/DNS/Lookup;
        JVM INSTR monitorenter ;
        defaultResolver = new ExtendedResolver();
        defaultSearchPath = ResolverConfig.getCurrentConfig().searchPath();
        defaultCaches = new HashMap();
        org/xbill/DNS/Lookup;
        JVM INSTR monitorexit ;
        return;
        Object obj;
        obj;
        throw new RuntimeException("Failed to initialize resolver");
        obj;
        org/xbill/DNS/Lookup;
        JVM INSTR monitorexit ;
        throw obj;
    }

    private final void reset()
    {
        iterations = 0;
        foundAlias = false;
        done = false;
        doneCurrent = false;
        aliases = null;
        answers = null;
        result = -1;
        error = null;
        nxdomain = false;
        badresponse = false;
        badresponse_error = null;
        networkerror = false;
        timedout = false;
        nametoolong = false;
        referral = false;
        if (temporary_cache)
        {
            cache.clearCache();
        }
    }

    private void resolve(Name name1, Name name2)
    {
        doneCurrent = false;
        if (name2 != null) goto _L2; else goto _L1
_L1:
        lookup(name1);
        return;
_L2:
        try
        {
            name1 = Name.concatenate(name1, name2);
        }
        // Misplaced declaration of an exception variable
        catch (Name name1)
        {
            nametoolong = true;
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public static void setDefaultCache(Cache cache1, int i)
    {
        org/xbill/DNS/Lookup;
        JVM INSTR monitorenter ;
        DClass.check(i);
        defaultCaches.put(Mnemonic.toInteger(i), cache1);
        org/xbill/DNS/Lookup;
        JVM INSTR monitorexit ;
        return;
        cache1;
        throw cache1;
    }

    public static void setDefaultResolver(Resolver resolver1)
    {
        org/xbill/DNS/Lookup;
        JVM INSTR monitorenter ;
        defaultResolver = resolver1;
        org/xbill/DNS/Lookup;
        JVM INSTR monitorexit ;
        return;
        resolver1;
        throw resolver1;
    }

    public static void setDefaultSearchPath(String as[])
        throws TextParseException
    {
        org/xbill/DNS/Lookup;
        JVM INSTR monitorenter ;
        if (as != null) goto _L2; else goto _L1
_L1:
        defaultSearchPath = null;
_L4:
        org/xbill/DNS/Lookup;
        JVM INSTR monitorexit ;
        return;
_L2:
        Name aname[] = new Name[as.length];
        int i = 0;
_L5:
        if (i < as.length)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        defaultSearchPath = aname;
        if (true) goto _L4; else goto _L3
_L3:
        as;
        throw as;
        aname[i] = Name.fromString(as[i], Name.root);
        i++;
          goto _L5
    }

    public static void setDefaultSearchPath(Name aname[])
    {
        org/xbill/DNS/Lookup;
        JVM INSTR monitorenter ;
        defaultSearchPath = aname;
        org/xbill/DNS/Lookup;
        JVM INSTR monitorexit ;
        return;
        aname;
        throw aname;
    }

    public Name[] getAliases()
    {
        checkDone();
        if (aliases == null)
        {
            return noAliases;
        } else
        {
            return (Name[])aliases.toArray(new Name[aliases.size()]);
        }
    }

    public Record[] getAnswers()
    {
        checkDone();
        return answers;
    }

    public String getErrorString()
    {
        checkDone();
        if (error != null)
        {
            return error;
        }
        switch (result)
        {
        default:
            throw new IllegalStateException("unknown result");

        case 0: // '\0'
            return "successful";

        case 1: // '\001'
            return "unrecoverable error";

        case 2: // '\002'
            return "try again";

        case 3: // '\003'
            return "host not found";

        case 4: // '\004'
            return "type not found";
        }
    }

    public int getResult()
    {
        checkDone();
        return result;
    }

    public Record[] run()
    {
        if (done)
        {
            reset();
        }
        if (name.isAbsolute())
        {
            resolve(name, null);
        } else
        {
label0:
            {
                if (searchPath != null)
                {
                    break label0;
                }
                resolve(name, Name.root);
            }
        }
_L2:
        int i;
        if (!done)
        {
            if (badresponse)
            {
                result = 2;
                error = badresponse_error;
                done = true;
            } else
            if (timedout)
            {
                result = 2;
                error = "timed out";
                done = true;
            } else
            if (networkerror)
            {
                result = 2;
                error = "network error";
                done = true;
            } else
            if (nxdomain)
            {
                result = 3;
                done = true;
            } else
            if (referral)
            {
                result = 1;
                error = "referral";
                done = true;
            } else
            if (nametoolong)
            {
                result = 1;
                error = "name too long";
                done = true;
            }
        }
        return answers;
        if (name.labels() > 1)
        {
            resolve(name, Name.root);
        }
        if (done)
        {
            return answers;
        }
        i = 0;
_L4:
        if (i >= searchPath.length) goto _L2; else goto _L1
_L1:
        resolve(name, searchPath[i]);
        if (done)
        {
            return answers;
        }
        if (foundAlias) goto _L2; else goto _L3
_L3:
        i++;
          goto _L4
    }

    public void setCache(Cache cache1)
    {
        if (cache1 == null)
        {
            cache = new Cache(dclass);
            temporary_cache = true;
            return;
        } else
        {
            cache = cache1;
            temporary_cache = false;
            return;
        }
    }

    public void setCredibility(int i)
    {
        credibility = i;
    }

    public void setResolver(Resolver resolver1)
    {
        resolver = resolver1;
    }

    public void setSearchPath(String as[])
        throws TextParseException
    {
        if (as == null)
        {
            searchPath = null;
            return;
        }
        Name aname[] = new Name[as.length];
        int i = 0;
        do
        {
            if (i >= as.length)
            {
                searchPath = aname;
                return;
            }
            aname[i] = Name.fromString(as[i], Name.root);
            i++;
        } while (true);
    }

    public void setSearchPath(Name aname[])
    {
        searchPath = aname;
    }

    static 
    {
        refreshDefault();
    }
}
