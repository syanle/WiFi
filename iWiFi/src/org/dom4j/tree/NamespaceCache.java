// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.Map;
import org.dom4j.Namespace;

// Referenced classes of package org.dom4j.tree:
//            ConcurrentReaderHashMap

public class NamespaceCache
{

    private static final String CONCURRENTREADERHASHMAP_CLASS = "EDU.oswego.cs.dl.util.concurrent.ConcurrentReaderHashMap";
    protected static Map cache;
    protected static Map noPrefixCache;

    public NamespaceCache()
    {
    }

    protected Namespace createNamespace(String s, String s1)
    {
        return new Namespace(s, s1);
    }

    public Namespace get(String s)
    {
        Namespace namespace;
        WeakReference weakreference = (WeakReference)noPrefixCache.get(s);
        namespace = null;
        if (weakreference != null)
        {
            namespace = (Namespace)weakreference.get();
        }
        if (namespace != null)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        Map map = noPrefixCache;
        map;
        JVM INSTR monitorenter ;
        Object obj = (WeakReference)noPrefixCache.get(s);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        namespace = (Namespace)((WeakReference) (obj)).get();
        obj = namespace;
        if (namespace != null)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        obj = createNamespace("", s);
        noPrefixCache.put(s, new WeakReference(obj));
        map;
        JVM INSTR monitorexit ;
        return ((Namespace) (obj));
        s;
        map;
        JVM INSTR monitorexit ;
        throw s;
        return namespace;
    }

    public Namespace get(String s, String s1)
    {
        Namespace namespace;
        Map map;
        map = getURICache(s1);
        WeakReference weakreference = (WeakReference)map.get(s);
        namespace = null;
        if (weakreference != null)
        {
            namespace = (Namespace)weakreference.get();
        }
        if (namespace != null)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        map;
        JVM INSTR monitorenter ;
        Object obj = (WeakReference)map.get(s);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        namespace = (Namespace)((WeakReference) (obj)).get();
        obj = namespace;
        if (namespace != null)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        obj = createNamespace(s, s1);
        map.put(s, new WeakReference(obj));
        map;
        JVM INSTR monitorexit ;
        return ((Namespace) (obj));
        s;
        map;
        JVM INSTR monitorexit ;
        throw s;
        return namespace;
    }

    protected Map getURICache(String s)
    {
        Object obj = (Map)cache.get(s);
        if (obj != null) goto _L2; else goto _L1
_L1:
        Map map1 = cache;
        map1;
        JVM INSTR monitorenter ;
        Map map = (Map)cache.get(s);
        obj = map;
        if (map != null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        obj = new ConcurrentReaderHashMap();
        cache.put(s, obj);
        map1;
        JVM INSTR monitorexit ;
        return ((Map) (obj));
_L4:
        map1;
        JVM INSTR monitorexit ;
        throw s;
        s;
        continue; /* Loop/switch isn't completed */
_L2:
        return ((Map) (obj));
        s;
        if (true) goto _L4; else goto _L3
_L3:
    }

    static 
    {
        try
        {
            Constructor constructor = Class.forName("java.util.concurrent.ConcurrentHashMap").getConstructor(new Class[] {
                Integer.TYPE, Float.TYPE, Integer.TYPE
            });
            cache = (Map)constructor.newInstance(new Object[] {
                new Integer(11), new Float(0.75F), new Integer(1)
            });
            noPrefixCache = (Map)constructor.newInstance(new Object[] {
                new Integer(11), new Float(0.75F), new Integer(1)
            });
        }
        catch (Throwable throwable)
        {
            try
            {
                Class class1 = Class.forName("EDU.oswego.cs.dl.util.concurrent.ConcurrentReaderHashMap");
                cache = (Map)class1.newInstance();
                noPrefixCache = (Map)class1.newInstance();
            }
            catch (Throwable throwable1)
            {
                cache = new ConcurrentReaderHashMap();
                noPrefixCache = new ConcurrentReaderHashMap();
            }
        }
    }
}
