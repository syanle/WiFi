// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.login;

import java.io.IOException;
import java.security.PrivilegedExceptionAction;
import org.apache.harmony.javax.security.auth.callback.Callback;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.apache.harmony.javax.security.auth.callback.UnsupportedCallbackException;

// Referenced classes of package org.apache.harmony.javax.security.auth.login:
//            LoginContext

class val.callbacks
    implements PrivilegedExceptionAction
{

    final val.callbacks this$1;
    private final Callback val$callbacks[];

    public volatile Object run()
        throws Exception
    {
        return run();
    }

    public Void run()
        throws IOException, UnsupportedCallbackException
    {
        cess._mth0(this._cls1.this).handle(val$callbacks);
        return null;
    }

    ()
    {
        this$1 = final_;
        val$callbacks = _5B_Lorg.apache.harmony.javax.security.auth.callback.Callback_3B_.this;
        super();
    }
}
