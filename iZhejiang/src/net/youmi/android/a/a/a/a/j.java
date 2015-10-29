// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.a.a;

import java.util.ArrayList;
import java.util.List;

// Referenced classes of package net.youmi.android.a.a.a.a:
//            i

public class j
{

    private long a;
    private List b;

    public j()
    {
        a = 0L;
    }

    public long a()
    {
        return a;
    }

    public void a(long l)
    {
        a = l;
    }

    public void a(i k)
    {
        this;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new ArrayList();
        }
        if (k != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        int l;
        int i1;
        i1 = -1;
        l = 0;
_L3:
        if (l < b.size())
        {
            if (((i)b.get(l)).b() == k.b())
            {
                i1 = l;
            }
            break MISSING_BLOCK_LABEL_123;
        }
        if (i1 < 0)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        if (i1 < b.size())
        {
            b.remove(i1);
        }
        b.add(k);
          goto _L1
        k;
          goto _L1
        k;
        throw k;
        l++;
          goto _L3
    }

    public List b()
    {
        if (b == null)
        {
            b = new ArrayList();
        }
        return b;
    }

    public String toString()
    {
        Object obj = new StringBuilder();
        if (b != null)
        {
            int l = 0;
            do
            {
                try
                {
                    if (l >= b.size())
                    {
                        break;
                    }
                    i k = (i)b.get(l);
                    ((StringBuilder) (obj)).append(String.format("[\u7B2C%d\u5957\u865A\u62DF\u8D27\u5E01:%s,\u6C47\u7387=$d,\u7F16\u53F7:%d]", new Object[] {
                        Integer.valueOf(l), k.a(), Integer.valueOf(k.c()), Integer.valueOf(k.b())
                    }));
                }
                catch (Throwable throwable)
                {
                    return super.toString();
                }
                l++;
            } while (true);
        }
        obj = String.format("Update:[%d],Currencys:%s", new Object[] {
            Long.valueOf(a), ((StringBuilder) (obj)).toString()
        });
        return ((String) (obj));
    }
}
