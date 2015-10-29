// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.d;

import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package net.youmi.android.a.b.d:
//            e

class c extends InputStream
{

    private InputStream a;
    private int b[];
    private int c;
    private boolean d;

    public c(InputStream inputstream)
    {
        c = 0;
        d = false;
        a = inputstream;
    }

    private void a()
    {
        char ac[];
        int i;
        int j1;
        boolean flag;
        j1 = 1;
        flag = false;
        ac = new char[4];
        i = 0;
_L2:
        int j = a.read();
        if (j == -1)
        {
            if (i != 0)
            {
                throw new IOException("Bad base64 stream");
            }
            b = new int[0];
            d = true;
        } else
        {
            char c1 = (char)j;
            if (e.a.indexOf(c1) != -1 || c1 == e.b)
            {
                ac[i] = c1;
                j = i + 1;
            } else
            {
                j = i;
                if (c1 != '\r')
                {
                    j = i;
                    if (c1 != '\n')
                    {
                        throw new IOException("Bad base64 stream");
                    }
                }
            }
            i = j;
            if (j < 4)
            {
                continue; /* Loop/switch isn't completed */
            }
            j = 0;
            for (i = 0; i < 4;)
            {
                int k;
                if (ac[i] != e.b)
                {
                    k = j;
                    if (j != 0)
                    {
                        throw new IOException("Bad base64 stream");
                    }
                } else
                {
                    k = j;
                    if (j == 0)
                    {
                        k = 1;
                    }
                }
                i++;
                j = k;
            }

            if (ac[3] == e.b)
            {
                if (a.read() != -1)
                {
                    throw new IOException("Bad base64 stream");
                }
                d = true;
                int l;
                if (ac[2] == e.b)
                {
                    i = j1;
                } else
                {
                    i = 2;
                }
            } else
            {
                i = 3;
            }
            j = 0;
            for (l = 0; l < 4;)
            {
                j1 = j;
                if (ac[l] != e.b)
                {
                    j1 = j | e.a.indexOf(ac[l]) << (3 - l) * 6;
                }
                l++;
                j = j1;
            }

            b = new int[i];
            int i1 = ((flag) ? 1 : 0);
            while (i1 < i) 
            {
                b[i1] = j >>> (2 - i1) * 8 & 0xff;
                i1++;
            }
        }
        return;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void close()
    {
        a.close();
    }

    public int read()
    {
        if (b == null || c == b.length)
        {
            if (d)
            {
                return -1;
            }
            a();
            if (b.length == 0)
            {
                b = null;
                return -1;
            }
            c = 0;
        }
        int ai[] = b;
        int i = c;
        c = i + 1;
        return ai[i];
    }
}
