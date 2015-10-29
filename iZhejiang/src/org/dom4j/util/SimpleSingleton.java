// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.util;


// Referenced classes of package org.dom4j.util:
//            SingletonStrategy

public class SimpleSingleton
    implements SingletonStrategy
{

    private String singletonClassName;
    private Object singletonInstance;

    public SimpleSingleton()
    {
        singletonClassName = null;
        singletonInstance = null;
    }

    public Object instance()
    {
        return singletonInstance;
    }

    public void reset()
    {
        if (singletonClassName == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        singletonInstance = Thread.currentThread().getContextClassLoader().loadClass(singletonClassName).newInstance();
        return;
        Exception exception;
        exception;
        try
        {
            singletonInstance = Class.forName(singletonClassName).newInstance();
            return;
        }
        catch (Exception exception1)
        {
            return;
        }
    }

    public void setSingletonClassName(String s)
    {
        singletonClassName = s;
        reset();
    }
}
