// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.asyncview;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package m.framework.ui.widget.asyncview:
//            BitmapProcessor

private static class in extends FilterInputStream
{

    InputStream in;

    public long skip(long l)
        throws IOException
    {
        long l1 = 0L;
_L5:
        if (l1 < l) goto _L2; else goto _L1
_L1:
        long l2;
        return l1;
_L2:
        if ((l2 = in.skip(l - l1)) == 0L) goto _L1; else goto _L3
_L3:
        l1 += l2;
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected (InputStream inputstream)
    {
        super(inputstream);
        in = inputstream;
    }
}
