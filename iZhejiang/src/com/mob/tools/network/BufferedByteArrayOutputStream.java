// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.network;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

public class BufferedByteArrayOutputStream extends ByteArrayOutputStream
{

    public BufferedByteArrayOutputStream()
    {
    }

    public BufferedByteArrayOutputStream(int i)
    {
        super(i);
    }

    public byte[] getBuffer()
    {
        return buf;
    }

    public int getBufferSize()
    {
        return buf.length;
    }

    public boolean switchBuffer(byte abyte0[])
    {
        if (abyte0 == null || abyte0.length != buf.length)
        {
            return false;
        } else
        {
            byte abyte1[] = buf;
            buf = abyte0;
            abyte0 = (byte[])(byte[])abyte1;
            return true;
        }
    }

    public void write(ByteBuffer bytebuffer, int i)
        throws IOException
    {
        if (buf.length - count >= i)
        {
            bytebuffer.get(buf, count, i);
            count = count + i;
            return;
        } else
        {
            byte abyte0[] = new byte[i];
            bytebuffer.get(abyte0);
            write(abyte0);
            return;
        }
    }
}
