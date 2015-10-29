// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.util;

import java.lang.ref.WeakReference;

// Referenced classes of package org.dom4j.util:
//            SingletonStrategy

public class PerThreadSingleton
    implements SingletonStrategy
{

    private ThreadLocal perThreadCache;
    private String singletonClassName;

    public PerThreadSingleton()
    {
        singletonClassName = null;
        perThreadCache = new ThreadLocal();
    }

    public Object instance()
    {
        Object obj;
        Object obj1;
        obj = null;
        obj1 = (WeakReference)perThreadCache.get();
        if (obj1 != null && ((WeakReference) (obj1)).get() != null) goto _L2; else goto _L1
_L1:
        obj1 = Thread.currentThread().getContextClassLoader().loadClass(singletonClassName).newInstance();
        obj = obj1;
_L4:
        perThreadCache.set(new WeakReference(obj));
        return obj;
        obj1;
        obj1 = Class.forName(singletonClassName).newInstance();
        obj = obj1;
        continue; /* Loop/switch isn't completed */
_L2:
        return ((WeakReference) (obj1)).get();
        Exception exception;
        exception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void reset()
    {
        perThreadCache = new ThreadLocal();
    }

    public void setSingletonClassName(String s)
    {
        singletonClassName = s;
    }
}
