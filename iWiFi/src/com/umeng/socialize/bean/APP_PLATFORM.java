// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;


// Referenced classes of package com.umeng.socialize.bean:
//            a, b, c, d, 
//            e, f, g, h

public class APP_PLATFORM extends Enum
{

    public static final APP_PLATFORM EMAIL;
    public static final APP_PLATFORM FACEBOOK;
    public static final APP_PLATFORM GOOGLE;
    public static final APP_PLATFORM QQ;
    public static final APP_PLATFORM SMS;
    public static final APP_PLATFORM TWITTER;
    public static final APP_PLATFORM WEIXIN;
    public static final APP_PLATFORM WEIXIN_SIRCLE;
    private static final APP_PLATFORM a[];

    private APP_PLATFORM(String s, int i)
    {
        super(s, i);
    }

    APP_PLATFORM(String s, int i, APP_PLATFORM app_platform)
    {
        this(s, i);
    }

    public static APP_PLATFORM valueOf(String s)
    {
        return (APP_PLATFORM)Enum.valueOf(com/umeng/socialize/bean/APP_PLATFORM, s);
    }

    public static APP_PLATFORM[] values()
    {
        APP_PLATFORM aapp_platform[] = a;
        int i = aapp_platform.length;
        APP_PLATFORM aapp_platform1[] = new APP_PLATFORM[i];
        System.arraycopy(aapp_platform, 0, aapp_platform1, 0, i);
        return aapp_platform1;
    }

    static 
    {
        QQ = new a("QQ", 0);
        WEIXIN = new b("WEIXIN", 1);
        WEIXIN_SIRCLE = new c("WEIXIN_SIRCLE", 2);
        SMS = new d("SMS", 3);
        EMAIL = new e("EMAIL", 4);
        FACEBOOK = new f("FACEBOOK", 5);
        TWITTER = new g("TWITTER", 6);
        GOOGLE = new h("GOOGLE", 7);
        a = (new APP_PLATFORM[] {
            QQ, WEIXIN, WEIXIN_SIRCLE, SMS, EMAIL, FACEBOOK, TWITTER, GOOGLE
        });
    }
}
