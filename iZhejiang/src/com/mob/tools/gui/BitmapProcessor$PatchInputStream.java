// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.gui;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.mob.tools.gui:
//            BitmapProcessor

private static class in extends FilterInputStream
{

    InputStream in;

    public long skip(long l)
        throws IOException
    {
        long l1 = 0L;
        do
        {
            long l2;
label0:
            {
                if (l1 < l)
                {
                    l2 = in.skip(l - l1);
                    if (l2 != 0L)
                    {
                        break label0;
                    }
                }
                return l1;
            }
            l1 += l2;
        } while (true);
    }

    protected (InputStream inputstream)
    {
        super(inputstream);
        in = inputstream;
    }
}
