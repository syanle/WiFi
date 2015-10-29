// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.login;

import java.security.PrivilegedExceptionAction;
import java.security.Security;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;

// Referenced classes of package org.apache.harmony.javax.security.auth.login:
//            LoginContext

class ler
    implements PrivilegedExceptionAction
{

    final LoginContext this$0;
    private final CallbackHandler val$cbHandler;

    public volatile Object run()
        throws Exception
    {
        return run();
    }

    public Void run()
        throws Exception
    {
        LoginContext.access$2(LoginContext.this, Thread.currentThread().getContextClassLoader());
        if (LoginContext.access$1(LoginContext.this) == null)
        {
            LoginContext.access$2(LoginContext.this, ClassLoader.getSystemClassLoader());
        }
        if (val$cbHandler == null)
        {
            Object obj = Security.getProperty("auth.login.defaultCallbackHandler");
            if (obj == null || ((String) (obj)).length() == 0)
            {
                return null;
            } else
            {
                obj = Class.forName(((String) (obj)), true, LoginContext.access$1(LoginContext.this));
                LoginContext.access$3(LoginContext.this, (CallbackHandler)((Class) (obj)).newInstance());
                return null;
            }
        } else
        {
            LoginContext.access$3(LoginContext.this, val$cbHandler);
            return null;
        }
    }

    ler()
    {
        this$0 = final_logincontext;
        val$cbHandler = CallbackHandler.this;
        super();
    }
}
