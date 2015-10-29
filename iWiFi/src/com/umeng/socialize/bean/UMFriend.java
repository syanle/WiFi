// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;


public class UMFriend
{
    public static class a
    {

        public String a;
        public String b;

        public a()
        {
        }
    }


    private int a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private a g;
    private long h;
    private boolean i;
    public char mGroup;

    public UMFriend()
    {
        i = true;
    }

    public String getFid()
    {
        return b;
    }

    public String getIcon()
    {
        return e;
    }

    public int getId()
    {
        return a;
    }

    public long getLastAtTime()
    {
        return h;
    }

    public String getLinkName()
    {
        return d;
    }

    public String getName()
    {
        return c;
    }

    public a getPinyin()
    {
        return g;
    }

    public String getUsid()
    {
        return f;
    }

    public boolean isAlive()
    {
        return i;
    }

    public boolean isEquals(String s)
    {
        return s != null && s.equals(Character.valueOf(mGroup));
    }

    public final boolean isUpdate(UMFriend umfriend)
    {
        if (umfriend != null)
        {
            if (umfriend.getLastAtTime() > h)
            {
                return true;
            }
            if (umfriend.isAlive() != isAlive())
            {
                return true;
            }
            if (!umfriend.getName().equals(c))
            {
                return true;
            }
            if (umfriend.getIcon() != null && !umfriend.getIcon().equals(e))
            {
                return true;
            }
        }
        return false;
    }

    public void setAlive(boolean flag)
    {
        i = flag;
    }

    public void setFid(String s)
    {
        b = s;
    }

    public void setIcon(String s)
    {
        e = s;
    }

    public void setId(int j)
    {
        a = j;
    }

    public void setLastAtTime(long l)
    {
        h = l;
    }

    public void setLinkName(String s)
    {
        d = s;
    }

    public void setName(String s)
    {
        c = s;
    }

    public void setPinyin(a a1)
    {
        g = a1;
        if (a1 != null)
        {
            mGroup = a1.b.charAt(0);
        }
    }

    public void setUsid(String s)
    {
        f = s;
    }

    public char upGroup()
    {
        if (mGroup == 0 && g != null)
        {
            mGroup = g.b.charAt(0);
        }
        if (mGroup != 0)
        {
            for (char c1 = mGroup; '@' < c1 && c1 < '[' || '`' < c1 && c1 < '{' || c1 == "\u5E38".charAt(0);)
            {
                return c1;
            }

        }
        return "\u7B26".charAt(0);
    }
}
