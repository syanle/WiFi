// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;


// Referenced classes of package com.umeng.socialize.bean:
//            SNSPair

public class UMToken extends SNSPair
{

    private String a;
    private String b;

    private UMToken(String s, String s1)
    {
        super(s, s1);
    }

    public static UMToken buildToken(SNSPair snspair, String s)
    {
        snspair = new UMToken(snspair.mPaltform, snspair.mUsid);
        snspair.setToken(s);
        return snspair;
    }

    public static UMToken buildToken(SNSPair snspair, String s, String s1)
    {
        snspair = new UMToken(snspair.mPaltform, snspair.mUsid);
        snspair.setToken(s);
        snspair.setOpenId(s1);
        return snspair;
    }

    public String getOpenId()
    {
        return b;
    }

    public String getToken()
    {
        return a;
    }

    public void setOpenId(String s)
    {
        b = s;
    }

    public void setToken(String s)
    {
        a = s;
    }
}
