// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.content.Context;
import java.util.Arrays;

// Referenced classes of package u.aly:
//            bl, z, bn

public class ak
{

    private static final int a = 0;
    private static final int b = 1;
    private static final int c = 2;
    private static final int d = 3;
    private static final long e = 0xdbba00L;
    private static final long f = 0x1b77400L;
    private static final long g = 0x5265c00L;
    private int h;
    private final long i = 60000L;

    public ak()
    {
        h = 0;
    }

    public long a()
    {
        switch (h)
        {
        default:
            return 0L;

        case 1: // '\001'
            return 0xdbba00L;

        case 2: // '\002'
            return 0x1b77400L;

        case 3: // '\003'
            return 0x5265c00L;
        }
    }

    public bl a(Context context)
    {
        long l = System.currentTimeMillis();
        bl bl1 = new bl();
        bl1.a(z.g(context));
        bl1.a(l);
        bl1.b(l + 60000L);
        bl1.c(60000L);
        return bl1;
    }

    public bn a(Context context, bn bn1)
    {
        if (bn1 == null)
        {
            context = null;
        } else
        {
            if (h == 1)
            {
                bn1.a(null);
                return bn1;
            }
            if (h == 2)
            {
                bn1.b(Arrays.asList(new bl[] {
                    a(context)
                }));
                bn1.a(null);
                return bn1;
            }
            context = bn1;
            if (h == 3)
            {
                bn1.b(null);
                bn1.a(null);
                return bn1;
            }
        }
        return context;
    }

    public void a(int j)
    {
        if (j >= 0 && j <= 3)
        {
            h = j;
        }
    }

    public long b()
    {
        return h != 0 ? 0x493e0L : 0L;
    }

    public boolean c()
    {
        return h != 0;
    }
}
