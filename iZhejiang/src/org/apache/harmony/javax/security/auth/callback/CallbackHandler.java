// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.callback;

import java.io.IOException;

// Referenced classes of package org.apache.harmony.javax.security.auth.callback:
//            UnsupportedCallbackException, Callback

public interface CallbackHandler
{

    public abstract void handle(Callback acallback[])
        throws IOException, UnsupportedCallbackException;
}
