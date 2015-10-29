// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.login;


// Referenced classes of package org.apache.harmony.javax.security.auth.login:
//            AppConfigurationEntry

public static class flag
{

    public static final flag OPTIONAL = new <init>("LoginModuleControlFlag: optional");
    public static final <init> REQUIRED = new <init>("LoginModuleControlFlag: required");
    public static final <init> REQUISITE = new <init>("LoginModuleControlFlag: requisite");
    public static final <init> SUFFICIENT = new <init>("LoginModuleControlFlag: sufficient");
    private final String flag;

    public String toString()
    {
        return flag;
    }


    private (String s)
    {
        flag = s;
    }
}
