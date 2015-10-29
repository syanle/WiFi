// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.login;

import java.util.Map;
import org.apache.harmony.javax.security.auth.Subject;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.apache.harmony.javax.security.auth.spi.LoginModule;

// Referenced classes of package org.apache.harmony.javax.security.auth.login:
//            LoginContext, AppConfigurationEntry, LoginException

private final class flag
{

    AppConfigurationEntry entry;
    int flag;
    Class klass;
    LoginModule module;
    final LoginContext this$0;

    void create(Subject subject, CallbackHandler callbackhandler, Map map)
        throws LoginException
    {
        String s = entry.getLoginModuleName();
        if (klass == null)
        {
            try
            {
                klass = Class.forName(s, false, LoginContext.access$1(LoginContext.this));
            }
            // Misplaced declaration of an exception variable
            catch (Subject subject)
            {
                throw (LoginException)(new LoginException((new StringBuilder("auth.39 ")).append(s).toString())).initCause(subject);
            }
        }
        if (module == null)
        {
            try
            {
                module = (LoginModule)klass.newInstance();
            }
            // Misplaced declaration of an exception variable
            catch (Subject subject)
            {
                throw (LoginException)(new LoginException((new StringBuilder("auth.3A ")).append(s).toString())).initCause(subject);
            }
            // Misplaced declaration of an exception variable
            catch (Subject subject)
            {
                throw (LoginException)(new LoginException((new StringBuilder("auth.3A")).append(s).toString())).initCause(subject);
            }
            module.initialize(subject, callbackhandler, map, entry.getOptions());
        }
    }

    int getFlag()
    {
        return flag;
    }

    y(AppConfigurationEntry appconfigurationentry)
    {
        this$0 = LoginContext.this;
        super();
        entry = appconfigurationentry;
        logincontext = appconfigurationentry.getControlFlag();
        if (LoginContext.this == y.LoginModuleControlFlag.OPTIONAL)
        {
            flag = 0;
            return;
        }
        if (LoginContext.this == y.LoginModuleControlFlag.REQUISITE)
        {
            flag = 2;
            return;
        }
        if (LoginContext.this == y.LoginModuleControlFlag.SUFFICIENT)
        {
            flag = 3;
            return;
        } else
        {
            flag = 1;
            return;
        }
    }
}
