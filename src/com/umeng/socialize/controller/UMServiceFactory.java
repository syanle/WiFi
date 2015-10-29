// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.app.Activity;
import android.content.Context;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.controller.impl.c;
import com.umeng.socialize.controller.permission.Implement;
import com.umeng.socialize.controller.permission.Permit;
import com.umeng.socialize.controller.permission.a;
import com.umeng.socialize.controller.permission.b;
import com.umeng.socom.Log;
import java.io.PrintStream;
import java.lang.annotation.AnnotationFormatError;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.controller:
//            UMSocialService, RequestType, UMQQSsoHandler, UMWXHandler

public abstract class UMServiceFactory
{
    private static final class a
        implements InvocationHandler
    {

        private UMSocialService a;
        private Class b;

        public Object invoke(Object obj, Method method, Object aobj[])
            throws Throwable
        {
            obj = b.getMethod(method.getName(), method.getParameterTypes());
            if ((Permit)((Method) (obj)).getAnnotation(com/umeng/socialize/controller/permission/Permit) != null)
            {
                if (com.umeng.socialize.controller.UMServiceFactory.a())
                {
                    if (((Method) (obj)).getReturnType() == Boolean.TYPE)
                    {
                        System.out.println((new StringBuilder(String.valueOf(((Method) (obj)).getName()))).append(" return type is boolean.").toString());
                        return Boolean.valueOf(false);
                    } else
                    {
                        return null;
                    }
                } else
                {
                    return method.invoke(a, aobj);
                }
            } else
            {
                throw new SecurityException("\u5F53\u524D\u7528\u6237\u4E0D\u5141\u8BB8\u6267\u884C\u6B64\u64CD\u4F5C");
            }
        }

        public a(UMSocialService umsocialservice, Class class1)
        {
            a = umsocialservice;
            b = class1;
        }
    }


    private static boolean a = false;
    private static UMQQSsoHandler b = null;
    private static int c[];

    public UMServiceFactory()
    {
    }

    private static UMSocialService a(Class class1, SocializeEntity socializeentity)
    {
        Object obj = (Implement)class1.getAnnotation(com/umeng/socialize/controller/permission/Implement);
        if (obj == null)
        {
            throw new AnnotationFormatError("\u8BE5\u63A5\u53E3\u672A\u5B9A\u4E49\u5B9E\u73B0\u7C7B\u7684\u6CE8\u89E3");
        }
        try
        {
            obj = (UMSocialService)((Implement) (obj)).a().getConstructor(new Class[] {
                com/umeng/socialize/bean/SocializeEntity
            }).newInstance(new Object[] {
                socializeentity
            });
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            throw new RuntimeException("\u8BE5\u63A5\u53E3\u6240\u5B9A\u4E49\u7684\u5B9E\u73B0\u7C7B\u4E0D\u80FD\u88AB\u5B9E\u4F8B\u5316", class1);
        }
        socializeentity = com/umeng/socialize/controller/UMServiceFactory.getClassLoader();
        class1 = new a(((UMSocialService) (obj)), class1);
        return (UMSocialService)Proxy.newProxyInstance(socializeentity, new Class[] {
            com/umeng/socialize/controller/UMSocialService
        }, class1);
    }

    static boolean a()
    {
        return a;
    }

    static int[] b()
    {
        int ai[] = c;
        if (ai != null)
        {
            return ai;
        }
        ai = new int[RequestType.values().length];
        try
        {
            ai[RequestType.ANALYTICS.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai[RequestType.API.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai[RequestType.SOCIAL.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        c = ai;
        return ai;
    }

    public static UMQQSsoHandler getUMQQHandler()
    {
        if (b == null)
        {
            Log.c("", "UMQQSsoHandler object is null, please call UMServiceFactory.getUMQQHandler(Activity activity, String appid) first.");
        }
        return b;
    }

    public static UMQQSsoHandler getUMQQHandler(Activity activity, String s)
    {
        if (b == null || UMQQSsoHandler.mActivity == null || UMQQSsoHandler.mActivity.isFinishing())
        {
            if (activity != null)
            {
                b = null;
                b = new UMQQSsoHandler(activity, s);
            } else
            {
                Log.c("", "getUMQQHandler(Activity activity, String appid)\u4E2D\u7684activity\u4E3A\u7A7A.");
            }
        }
        return b;
    }

    public static UMSocialService getUMSocialService(String s, RequestType requesttype)
    {
        Object obj;
        Object obj1;
        if (RequestType.ANALYTICS == requesttype)
        {
            if (c.d.containsKey((new StringBuilder(String.valueOf(s))).append(requesttype).toString()))
            {
                s = (SocializeEntity)c.d.get((new StringBuilder(String.valueOf(s))).append(requesttype).toString());
            } else
            if (c.d.containsKey((new StringBuilder(String.valueOf(s))).append(RequestType.SOCIAL).toString()))
            {
                s = SocializeEntity.cloneNew((SocializeEntity)c.d.get((new StringBuilder(String.valueOf(s))).append(RequestType.SOCIAL).toString()), requesttype);
            } else
            {
                s = new SocializeEntity(s, requesttype);
            }
        } else
        if (c.d.containsKey((new StringBuilder(String.valueOf(s))).append(requesttype).toString()))
        {
            s = (SocializeEntity)c.d.get((new StringBuilder(String.valueOf(s))).append(requesttype).toString());
        } else
        {
            s = new SocializeEntity(s, requesttype);
        }
        obj1 = null;
        obj = obj1;
        b()[requesttype.ordinal()];
        JVM INSTR tableswitch 1 3: default 104
    //                   1 280
    //                   2 274
    //                   3 106;
           goto _L1 _L2 _L3 _L4
_L2:
        break MISSING_BLOCK_LABEL_280;
_L4:
        break; /* Loop/switch isn't completed */
_L1:
        obj = obj1;
_L5:
        if (obj != null)
        {
            return a(((Class) (obj)), s);
        } else
        {
            throw new RuntimeException((new StringBuilder("RequestType [")).append(requesttype).append("] is unusable.").toString());
        }
_L3:
        obj = com/umeng/socialize/controller/permission/a;
          goto _L5
        obj = com/umeng/socialize/controller/permission/b;
          goto _L5
    }

    public static UMWXHandler getUMWXHandler(Context context, String s)
    {
        return new UMWXHandler(context, s);
    }

}
