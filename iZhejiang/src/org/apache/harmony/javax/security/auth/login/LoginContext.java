// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.login;

import java.io.IOException;
import java.security.AccessControlContext;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.security.Security;
import java.util.HashMap;
import java.util.Map;
import org.apache.harmony.javax.security.auth.AuthPermission;
import org.apache.harmony.javax.security.auth.Subject;
import org.apache.harmony.javax.security.auth.callback.Callback;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.apache.harmony.javax.security.auth.callback.UnsupportedCallbackException;
import org.apache.harmony.javax.security.auth.spi.LoginModule;

// Referenced classes of package org.apache.harmony.javax.security.auth.login:
//            LoginException, Configuration, AppConfigurationEntry

public class LoginContext
{
    private class ContextedCallbackHandler
        implements CallbackHandler
    {

        private final CallbackHandler hiddenHandlerRef;
        final LoginContext this$0;

        public void handle(Callback acallback[])
            throws IOException, UnsupportedCallbackException
        {
            try
            {
                AccessController.doPrivileged(acallback. new PrivilegedExceptionAction() {

                    final ContextedCallbackHandler this$1;
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
                this$1 = final_contextedcallbackhandler;
                callbacks = _5B_Lorg.apache.harmony.javax.security.auth.callback.Callback_3B_.this;
                super();
            }
                }, userContext);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Callback acallback[]) { }
            if (acallback.getCause() instanceof UnsupportedCallbackException)
            {
                throw (UnsupportedCallbackException)acallback.getCause();
            } else
            {
                throw (IOException)acallback.getCause();
            }
        }


        ContextedCallbackHandler(CallbackHandler callbackhandler)
        {
            this$0 = LoginContext.this;
            super();
            hiddenHandlerRef = callbackhandler;
        }
    }

    private final class Module
    {

        AppConfigurationEntry entry;
        int flag;
        Class klass;
        LoginModule module;
        final LoginContext this$0;

        void create(Subject subject1, CallbackHandler callbackhandler, Map map)
            throws LoginException
        {
            String s = entry.getLoginModuleName();
            if (klass == null)
            {
                try
                {
                    klass = Class.forName(s, false, contextClassLoader);
                }
                // Misplaced declaration of an exception variable
                catch (Subject subject1)
                {
                    throw (LoginException)(new LoginException((new StringBuilder("auth.39 ")).append(s).toString())).initCause(subject1);
                }
            }
            if (module == null)
            {
                try
                {
                    module = (LoginModule)klass.newInstance();
                }
                // Misplaced declaration of an exception variable
                catch (Subject subject1)
                {
                    throw (LoginException)(new LoginException((new StringBuilder("auth.3A ")).append(s).toString())).initCause(subject1);
                }
                // Misplaced declaration of an exception variable
                catch (Subject subject1)
                {
                    throw (LoginException)(new LoginException((new StringBuilder("auth.3A")).append(s).toString())).initCause(subject1);
                }
                module.initialize(subject1, callbackhandler, map, entry.getOptions());
            }
        }

        int getFlag()
        {
            return flag;
        }

        Module(AppConfigurationEntry appconfigurationentry)
        {
            this$0 = LoginContext.this;
            super();
            entry = appconfigurationentry;
            logincontext = appconfigurationentry.getControlFlag();
            if (LoginContext.this == AppConfigurationEntry.LoginModuleControlFlag.OPTIONAL)
            {
                flag = 0;
                return;
            }
            if (LoginContext.this == AppConfigurationEntry.LoginModuleControlFlag.REQUISITE)
            {
                flag = 2;
                return;
            }
            if (LoginContext.this == AppConfigurationEntry.LoginModuleControlFlag.SUFFICIENT)
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


    private static final String DEFAULT_CALLBACK_HANDLER_PROPERTY = "auth.login.defaultCallbackHandler";
    private static final int OPTIONAL = 0;
    private static final int REQUIRED = 1;
    private static final int REQUISITE = 2;
    private static final int SUFFICIENT = 3;
    private CallbackHandler callbackHandler;
    private ClassLoader contextClassLoader;
    private boolean loggedIn;
    private Module modules[];
    private Map sharedState;
    private Subject subject;
    private AccessControlContext userContext;
    private boolean userProvidedConfig;
    private boolean userProvidedSubject;

    public LoginContext(String s)
        throws LoginException
    {
        init(s, null, null, null);
    }

    public LoginContext(String s, Subject subject1)
        throws LoginException
    {
        if (subject1 == null)
        {
            throw new LoginException("auth.03");
        } else
        {
            init(s, subject1, null, null);
            return;
        }
    }

    public LoginContext(String s, Subject subject1, CallbackHandler callbackhandler)
        throws LoginException
    {
        if (subject1 == null)
        {
            throw new LoginException("auth.03");
        }
        if (callbackhandler == null)
        {
            throw new LoginException("auth.34");
        } else
        {
            init(s, subject1, callbackhandler, null);
            return;
        }
    }

    public LoginContext(String s, Subject subject1, CallbackHandler callbackhandler, Configuration configuration)
        throws LoginException
    {
        init(s, subject1, callbackhandler, configuration);
    }

    public LoginContext(String s, CallbackHandler callbackhandler)
        throws LoginException
    {
        if (callbackhandler == null)
        {
            throw new LoginException("auth.34");
        } else
        {
            init(s, null, callbackhandler, null);
            return;
        }
    }

    private void init(String s, Subject subject1, final CallbackHandler cbHandler, Configuration configuration)
        throws LoginException
    {
        int i;
        subject = subject1;
        boolean flag;
        if (subject1 != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        userProvidedSubject = flag;
        if (s == null)
        {
            throw new LoginException("auth.00");
        }
        AppConfigurationEntry aappconfigurationentry[];
        SecurityManager securitymanager;
        if (configuration == null)
        {
            configuration = Configuration.getAccessibleConfiguration();
        } else
        {
            userProvidedConfig = true;
        }
        securitymanager = System.getSecurityManager();
        if (securitymanager != null && !userProvidedConfig)
        {
            securitymanager.checkPermission(new AuthPermission((new StringBuilder("createLoginContext.")).append(s).toString()));
        }
        aappconfigurationentry = configuration.getAppConfigurationEntry(s);
        subject1 = aappconfigurationentry;
        if (aappconfigurationentry == null)
        {
            if (securitymanager != null && !userProvidedConfig)
            {
                securitymanager.checkPermission(new AuthPermission("createLoginContext.other"));
            }
            configuration = configuration.getAppConfigurationEntry("other");
            subject1 = configuration;
            if (configuration == null)
            {
                throw new LoginException((new StringBuilder("auth.35 ")).append(s).toString());
            }
        }
        modules = new Module[subject1.length];
        i = 0;
_L8:
        if (i < modules.length) goto _L2; else goto _L1
_L1:
        try
        {
            AccessController.doPrivileged(new PrivilegedExceptionAction() {

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
                    contextClassLoader = Thread.currentThread().getContextClassLoader();
                    if (contextClassLoader == null)
                    {
                        contextClassLoader = ClassLoader.getSystemClassLoader();
                    }
                    if (cbHandler == null)
                    {
                        Object obj = Security.getProperty("auth.login.defaultCallbackHandler");
                        if (obj == null || ((String) (obj)).length() == 0)
                        {
                            return null;
                        } else
                        {
                            obj = Class.forName(((String) (obj)), true, contextClassLoader);
                            callbackHandler = (CallbackHandler)((Class) (obj)).newInstance();
                            return null;
                        }
                    } else
                    {
                        callbackHandler = cbHandler;
                        return null;
                    }
                }

            
            {
                this$0 = LoginContext.this;
                cbHandler = callbackhandler;
                super();
            }
            });
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = s.getCause();
            throw (LoginException)(new LoginException("auth.36")).initCause(s);
        }
        if (!userProvidedConfig) goto _L4; else goto _L3
_L3:
        userContext = AccessController.getContext();
_L6:
        return;
_L2:
        modules[i] = new Module(subject1[i]);
        i++;
        continue; /* Loop/switch isn't completed */
_L4:
        if (callbackHandler == null) goto _L6; else goto _L5
_L5:
        userContext = AccessController.getContext();
        callbackHandler = new ContextedCallbackHandler(callbackHandler);
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private void loginImpl()
        throws LoginException
    {
        Object obj;
        Object aobj[];
        int ai[];
        Module amodule[];
        int i;
        int j;
        if (subject == null)
        {
            subject = new Subject();
        }
        if (sharedState == null)
        {
            sharedState = new HashMap();
        }
        obj = null;
        ai = new int[4];
        aobj = new int[4];
        amodule = modules;
        j = amodule.length;
        i = 0;
_L29:
        if (i < j) goto _L2; else goto _L1
_L1:
        Object obj1 = obj;
_L23:
        j = 1;
        i = j;
        if (ai[1] != aobj[1]) goto _L4; else goto _L3
_L3:
        i = j;
        if (ai[2] != aobj[2]) goto _L4; else goto _L5
_L5:
        if (aobj[1] != 0 || aobj[2] != 0) goto _L7; else goto _L6
_L6:
        if (ai[0] != 0) goto _L9; else goto _L8
_L8:
        i = j;
        if (ai[3] == 0) goto _L4; else goto _L9
_L9:
        i = 0;
_L4:
        ai = new int[4];
        aobj[3] = 0;
        aobj[2] = 0;
        aobj[1] = 0;
        aobj[0] = 0;
        obj = obj1;
        if (i != 0) goto _L11; else goto _L10
_L10:
        amodule = modules;
        j = amodule.length;
        i = 0;
_L25:
        if (i < j) goto _L13; else goto _L12
_L12:
        obj = obj1;
_L11:
        j = 1;
        i = j;
        if (ai[1] != aobj[1]) goto _L15; else goto _L14
_L14:
        i = j;
        if (ai[2] != aobj[2]) goto _L15; else goto _L16
_L16:
        if (aobj[1] != 0 || aobj[2] != 0) goto _L18; else goto _L17
_L17:
        if (ai[0] != 0) goto _L20; else goto _L19
_L19:
        i = j;
        if (ai[3] == 0) goto _L15; else goto _L20
_L20:
        i = 0;
_L15:
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_647;
        }
        aobj = modules;
        j = aobj.length;
        i = 0;
          goto _L21
_L2:
        module = amodule[i];
        module.create(subject, callbackHandler, sharedState);
        obj2 = obj;
        if (!module.module.login())
        {
            break MISSING_BLOCK_LABEL_417;
        }
        k = module.getFlag();
        aobj[k] = aobj[k] + 1;
        k = module.getFlag();
        ai[k] = ai[k] + 1;
        k = module.getFlag();
        obj1 = obj;
        if (k == 3) goto _L23; else goto _L22
_L22:
        obj2 = obj;
_L24:
        i++;
        obj = obj2;
        continue; /* Loop/switch isn't completed */
        throwable;
        obj1 = obj;
        if (obj == null)
        {
            obj1 = throwable;
        }
        if (module.klass == null)
        {
            aobj[1] = aobj[1] + 1;
            break; /* Loop/switch isn't completed */
        }
        k = module.getFlag();
        aobj[k] = aobj[k] + 1;
        throwable = ((Throwable) (obj1));
        if (module.getFlag() != 2) goto _L24; else goto _L23
_L7:
        i = 0;
          goto _L4
_L13:
        throwable = amodule[i];
        obj = obj1;
        if (((Module) (throwable)).klass == null)
        {
            break MISSING_BLOCK_LABEL_560;
        }
        k = throwable.getFlag();
        aobj[k] = aobj[k] + 1;
        ((Module) (throwable)).module.commit();
        k = throwable.getFlag();
        ai[k] = ai[k] + 1;
        obj = obj1;
_L26:
        i++;
        obj1 = obj;
          goto _L25
        throwable;
        obj = obj1;
        if (obj1 == null)
        {
            obj = throwable;
        }
          goto _L26
_L18:
        i = 0;
          goto _L15
_L21:
        if (i >= j)
        {
            obj1 = obj;
            if (obj instanceof PrivilegedActionException)
            {
                obj1 = obj;
                if (((Throwable) (obj)).getCause() != null)
                {
                    obj1 = ((Throwable) (obj)).getCause();
                }
            }
            Object obj2;
            Throwable throwable;
            Module module;
            int k;
            if (obj1 instanceof LoginException)
            {
                throw (LoginException)obj1;
            } else
            {
                throw (LoginException)(new LoginException("auth.37")).initCause(((Throwable) (obj1)));
            }
        }
        obj1 = aobj[i];
        ((Module) (obj1)).module.abort();
        obj1 = obj;
_L27:
        i++;
        obj = obj1;
          goto _L21
        throwable;
        obj1 = obj;
        if (obj == null)
        {
            obj1 = throwable;
        }
          goto _L27
        loggedIn = true;
        return;
        if (true) goto _L29; else goto _L28
_L28:
    }

    private void logoutImpl()
        throws LoginException
    {
        Object obj;
        Module amodule[];
        int i;
        int j;
        int l;
        i = 0;
        if (subject == null)
        {
            throw new LoginException("auth.38");
        }
        loggedIn = false;
        obj = null;
        j = 0;
        amodule = modules;
        l = amodule.length;
_L1:
        if (i >= l)
        {
            if (obj != null || j == 0)
            {
                Object obj1 = obj;
                if (obj instanceof PrivilegedActionException)
                {
                    obj1 = obj;
                    if (((Throwable) (obj)).getCause() != null)
                    {
                        obj1 = ((Throwable) (obj)).getCause();
                    }
                }
                Throwable throwable;
                int k;
                if (obj1 instanceof LoginException)
                {
                    throw (LoginException)obj1;
                } else
                {
                    throw (LoginException)(new LoginException("auth.37")).initCause(((Throwable) (obj1)));
                }
            } else
            {
                return;
            }
        }
        obj1 = amodule[i];
        ((Module) (obj1)).module.logout();
        k = j + 1;
        obj1 = obj;
_L2:
        i++;
        obj = obj1;
        j = k;
          goto _L1
        throwable;
        obj1 = obj;
        k = j;
        if (obj == null)
        {
            obj1 = throwable;
            k = j;
        }
          goto _L2
    }

    public Subject getSubject()
    {
        if (userProvidedSubject || loggedIn)
        {
            return subject;
        } else
        {
            return null;
        }
    }

    public void login()
        throws LoginException
    {
        PrivilegedExceptionAction privilegedexceptionaction = new PrivilegedExceptionAction() {

            final LoginContext this$0;

            public volatile Object run()
                throws Exception
            {
                return run();
            }

            public Void run()
                throws LoginException
            {
                loginImpl();
                return null;
            }

            
            {
                this$0 = LoginContext.this;
                super();
            }
        };
        try
        {
            if (userProvidedConfig)
            {
                AccessController.doPrivileged(privilegedexceptionaction, userContext);
                return;
            }
        }
        catch (PrivilegedActionException privilegedactionexception)
        {
            throw (LoginException)privilegedactionexception.getException();
        }
        AccessController.doPrivileged(privilegedexceptionaction);
        return;
    }

    public void logout()
        throws LoginException
    {
        PrivilegedExceptionAction privilegedexceptionaction = new PrivilegedExceptionAction() {

            final LoginContext this$0;

            public volatile Object run()
                throws Exception
            {
                return run();
            }

            public Void run()
                throws LoginException
            {
                logoutImpl();
                return null;
            }

            
            {
                this$0 = LoginContext.this;
                super();
            }
        };
        try
        {
            if (userProvidedConfig)
            {
                AccessController.doPrivileged(privilegedexceptionaction, userContext);
                return;
            }
        }
        catch (PrivilegedActionException privilegedactionexception)
        {
            throw (LoginException)privilegedactionexception.getException();
        }
        AccessController.doPrivileged(privilegedexceptionaction);
        return;
    }






}
