// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.callback;


// Referenced classes of package org.apache.harmony.javax.security.auth.callback:
//            Callback

public class UnsupportedCallbackException extends Exception
{

    private static final long serialVersionUID = 0xa09c38f00a720b69L;
    private Callback callback;

    public UnsupportedCallbackException(Callback callback1)
    {
        callback = callback1;
    }

    public UnsupportedCallbackException(Callback callback1, String s)
    {
        super(s);
        callback = callback1;
    }

    public Callback getCallback()
    {
        return callback;
    }
}
