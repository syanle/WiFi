// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.c;


// Referenced classes of package net.youmi.android.a.b.c:
//            e, g

public class i
{

    e a;
    private int b;

    public i(String s, g g)
    {
        b = 1;
        a = new e(s, g);
    }

    public i(String s, g g, int j)
    {
        this(s, g);
        b = j;
    }

    public int a()
    {
        return b;
    }

    public String a(String s, String s1)
    {
        byte abyte0[];
        String s2;
        int j;
        try
        {
            abyte0 = a.a(s, b);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return s1;
        }
        s = s1;
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        s2 = new String(abyte0, "UTF-8");
        s = s1;
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        s2 = s2.trim();
        j = s2.length();
        s = s1;
        if (j > 0)
        {
            s = s2;
        }
        return s;
    }

    public boolean a(String s)
    {
        return a.a(s);
    }

    public boolean a(String s, String s1, long l)
    {
        if (s1 == null || s == null)
        {
            return false;
        }
        boolean flag;
        try
        {
            s1 = s1.getBytes("UTF-8");
            flag = a.a(s, s1, l, b);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return flag;
    }

    public String b()
    {
        return a.a();
    }

    public g c()
    {
        return a.b();
    }
}
