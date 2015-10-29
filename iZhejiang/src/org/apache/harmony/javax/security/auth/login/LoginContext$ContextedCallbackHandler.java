// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.login;

import java.io.IOException;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import org.apache.harmony.javax.security.auth.callback.Callback;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.apache.harmony.javax.security.auth.callback.UnsupportedCallbackException;

// Referenced classes of package org.apache.harmony.javax.security.auth.login:
//            LoginContext

private class hiddenHandlerRef
    implements CallbackHandler
{

    private final CallbackHandler hiddenHandlerRef;
    final LoginContext this$0;

    public void handle(final Callback callbacks[])
        throws IOException, UnsupportedCallbackException
    {
        try
        {
            AccessController.doPrivileged(new PrivilegedExceptionAction() {

                final LoginContext.ContextedCallbackHandler this$1;
                private final Callback val$callbacks[];

                public volatile Object run()
                    throws Exception
                {
                    return run();
                }

                public Void run()
                    throws IOException, UnsupportedCallbackException
                {
                    hiddenHandlerRef.handle(callbacks);
                    return null;
                }

            
            {
                this$1 = LoginContext.ContextedCallbackHandler.this;
                callbacks = acallback;
                super();
            }
            }, LoginContext.access$0(LoginContext.this));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (final Callback callbacks[]) { }
        if (callbacks.getCause() instanceof UnsupportedCallbackException)
        {
            throw (UnsupportedCallbackException)callbacks.getCause();
        } else
        {
            throw (IOException)callbacks.getCause();
        }
    }


    _cls1.val.callbacks(CallbackHandler callbackhandler)
    {
        this$0 = LoginContext.this;
        super();
        hiddenHandlerRef = callbackhandler;
    }
}
