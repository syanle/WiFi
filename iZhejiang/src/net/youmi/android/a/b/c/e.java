// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.c;


// Referenced classes of package net.youmi.android.a.b.c:
//            g, c

public class e
{

    private String a;
    private g b;

    e(String s, g g1)
    {
        a = s;
        b = g1;
    }

    protected String a()
    {
        return a;
    }

    protected boolean a(String s)
    {
        return b.b(s);
    }

    protected boolean a(String s, byte abyte0[], long l, int i)
    {
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        if (b == null)
        {
            return false;
        }
        boolean flag;
        if (net.youmi.android.a.b.b.e.a(s))
        {
            break MISSING_BLOCK_LABEL_54;
        }
        abyte0 = c.a(abyte0, a, i);
        flag = b.a(s, abyte0, l);
        return flag;
        s;
        return false;
    }

    protected byte[] a(String s, int i)
    {
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        if (a == null)
        {
            return null;
        }
        if (net.youmi.android.a.b.b.e.a(s))
        {
            break MISSING_BLOCK_LABEL_49;
        }
        s = b.a(s);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        s = c.b(s, a, i);
        return s;
        s;
        return null;
    }

    protected g b()
    {
        return b;
    }
}
