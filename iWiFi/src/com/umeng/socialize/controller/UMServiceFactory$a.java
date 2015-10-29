// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import com.umeng.socialize.controller.permission.Permit;
import java.io.PrintStream;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

// Referenced classes of package com.umeng.socialize.controller:
//            UMServiceFactory, UMSocialService

private static final class b
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
            if (UMServiceFactory.a())
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

    public (UMSocialService umsocialservice, Class class1)
    {
        a = umsocialservice;
        b = class1;
    }
}
