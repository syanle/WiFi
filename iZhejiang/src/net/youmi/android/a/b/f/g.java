// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.f;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package net.youmi.android.a.b.f:
//            h, j, i, e, 
//            f, b

public class g
{

    private int a;
    private h b;
    private List c[];
    private i d;
    private byte e[];

    public g(String s)
    {
        c = new List[4];
        b = new h(this);
        s = a(j.a(s), j.a);
        i k = new i(this);
        k.a = s;
        d = k;
        a(k, 0);
    }

    g(e e1)
    {
        int k;
        c = new List[4];
        b = new h(this, e1);
        k = 0;
_L9:
        if (k >= 4) goto _L2; else goto _L1
_L1:
        int i1 = b.a(k);
        int l;
        if (i1 <= 0)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        byte abyte0[];
        try
        {
            c[k] = new ArrayList(i1);
            break MISSING_BLOCK_LABEL_135;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
          goto _L2
_L8:
        if (l >= i1) goto _L4; else goto _L3
_L3:
        e1.a();
        abyte0 = a(e1, k);
        if (abyte0 == null) goto _L6; else goto _L5
_L5:
        e = abyte0;
_L4:
        abyte0 = e;
        if (abyte0 == null) goto _L7; else goto _L2
_L2:
        a = e1.a();
        return;
_L6:
        l++;
          goto _L8
_L7:
        k++;
          goto _L9
        l = 0;
          goto _L8
    }

    public g(byte abyte0[])
    {
        this(new e(abyte0));
    }

    private j a(j j1, j j2)
    {
        if (j2 == null)
        {
            return j1;
        }
        try
        {
            j1 = j.a(j1, j2);
        }
        // Misplaced declaration of an exception variable
        catch (j j1)
        {
            j1.printStackTrace();
            return null;
        }
        return j1;
    }

    public void a(i k, int l)
    {
        if (c[l] == null)
        {
            c[l] = new LinkedList();
        }
        b.b(l);
        c[l].add(k);
    }

    public byte[] a()
    {
        return e;
    }

    byte[] a(e e1, int k)
    {
        new j(e1);
        int l = e1.f();
        e1.f();
        if (k == 0)
        {
            return null;
        }
        e1.g();
        e1.f();
        switch (l)
        {
        case 3: // '\003'
        case 4: // '\004'
        default:
            return null;

        case 1: // '\001'
            return e1.b(4);

        case 2: // '\002'
        case 5: // '\005'
            new j(e1);
            break;
        }
        return null;
    }

    public byte[] b()
    {
        f f1 = new f();
        b.a(f1);
        b b1 = new b();
        int k = 0;
        while (k < 4) 
        {
            if (c[k] != null)
            {
                int l = 0;
                while (l < c[k].size()) 
                {
                    ((i)c[k].get(l)).a(f1, k, b1);
                    l++;
                }
            }
            k++;
        }
        a = f1.a();
        return f1.b();
    }
}
