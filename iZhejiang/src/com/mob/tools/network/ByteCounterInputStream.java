// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.network;

import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.mob.tools.network:
//            OnReadListener

public class ByteCounterInputStream extends InputStream
{

    private InputStream is;
    private OnReadListener listener;
    private long readBytes;

    public ByteCounterInputStream(InputStream inputstream)
    {
        is = inputstream;
    }

    public int available()
        throws IOException
    {
        return is.available();
    }

    public void close()
        throws IOException
    {
        is.close();
    }

    public void mark(int i)
    {
        is.mark(i);
    }

    public boolean markSupported()
    {
        return is.markSupported();
    }

    public int read()
        throws IOException
    {
        int i = is.read();
        if (i >= 0)
        {
            readBytes = readBytes + 1L;
            if (listener != null)
            {
                listener.onRead(readBytes);
            }
        }
        return i;
    }

    public int read(byte abyte0[], int i, int j)
        throws IOException
    {
        i = is.read(abyte0, i, j);
        if (i > 0)
        {
            readBytes = readBytes + (long)i;
            if (listener != null)
            {
                listener.onRead(readBytes);
            }
        }
        return i;
    }

    public void reset()
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        is.reset();
        readBytes = 0L;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setOnInputStreamReadListener(OnReadListener onreadlistener)
    {
        listener = onreadlistener;
    }

    public long skip(long l)
        throws IOException
    {
        return is.skip(l);
    }
}
