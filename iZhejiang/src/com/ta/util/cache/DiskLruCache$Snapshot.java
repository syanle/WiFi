// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.cache;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.ta.util.cache:
//            DiskLruCache

public final class <init>
    implements Closeable
{

    private final InputStream ins[];
    private final String key;
    private final long sequenceNumber;
    final DiskLruCache this$0;

    public void close()
    {
        InputStream ainputstream[] = ins;
        int j = ainputstream.length;
        int i = 0;
        do
        {
            if (i >= j)
            {
                return;
            }
            DiskLruCache.closeQuietly(ainputstream[i]);
            i++;
        } while (true);
    }

    public tly edit()
        throws IOException
    {
        return DiskLruCache.access$5(DiskLruCache.this, key, sequenceNumber);
    }

    public InputStream getInputStream(int i)
    {
        return ins[i];
    }

    public String getString(int i)
        throws IOException
    {
        return DiskLruCache.access$6(getInputStream(i));
    }

    private (String s, long l, InputStream ainputstream[])
    {
        this$0 = DiskLruCache.this;
        super();
        key = s;
        sequenceNumber = l;
        ins = ainputstream;
    }

    ins(String s, long l, InputStream ainputstream[], ins ins1)
    {
        this(s, l, ainputstream);
    }
}
