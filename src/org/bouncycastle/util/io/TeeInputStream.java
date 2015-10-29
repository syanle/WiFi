// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.util.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class TeeInputStream extends InputStream
{

    private final InputStream input;
    private final OutputStream output;

    public TeeInputStream(InputStream inputstream, OutputStream outputstream)
    {
        input = inputstream;
        output = outputstream;
    }

    public void close()
        throws IOException
    {
        input.close();
        output.close();
    }

    public int read()
        throws IOException
    {
        int i = input.read();
        if (i >= 0)
        {
            output.write(i);
        }
        return i;
    }

    public int read(byte abyte0[])
        throws IOException
    {
        return read(abyte0, 0, abyte0.length);
    }

    public int read(byte abyte0[], int i, int j)
        throws IOException
    {
        j = input.read(abyte0, i, j);
        if (j > 0)
        {
            output.write(abyte0, i, j);
        }
        return j;
    }
}
