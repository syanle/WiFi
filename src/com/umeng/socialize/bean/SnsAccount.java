// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;


// Referenced classes of package com.umeng.socialize.bean:
//            Gender

public class SnsAccount
{

    private String a;
    private String b;
    private Gender c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;

    public SnsAccount(String s, Gender gender, String s1, String s2)
    {
        b = s;
        c = gender;
        d = s1;
        e = s2;
    }

    public String getAccountIconUrl()
    {
        return d;
    }

    public String getBirthday()
    {
        return g;
    }

    public String getExtendArgs()
    {
        return h;
    }

    public Gender getGender()
    {
        return c;
    }

    public String getPlatform()
    {
        return a;
    }

    public String getProfileUrl()
    {
        return f;
    }

    public String getUserName()
    {
        return b;
    }

    public String getUsid()
    {
        return e;
    }

    public void setAccountIconUrl(String s)
    {
        d = s;
    }

    public void setBirthday(String s)
    {
        g = s;
    }

    public void setExtendArgs(String s)
    {
        h = s;
    }

    public void setGender(Gender gender)
    {
        c = gender;
    }

    public void setPlatform(String s)
    {
        a = s;
    }

    public void setProfileUrl(String s)
    {
        f = s;
    }

    public void setUserName(String s)
    {
        b = s;
    }

    public void setUsid(String s)
    {
        e = s;
    }
}
