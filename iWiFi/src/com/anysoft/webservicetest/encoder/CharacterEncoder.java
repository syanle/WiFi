// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.anysoft.webservicetest.encoder;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.nio.ByteBuffer;

public abstract class CharacterEncoder
{

    protected PrintStream pStream;

    public CharacterEncoder()
    {
    }

    private byte[] getBytes(ByteBuffer bytebuffer)
    {
        byte abyte1[] = (byte[])null;
        byte abyte0[] = abyte1;
        if (bytebuffer.hasArray())
        {
            byte abyte2[] = bytebuffer.array();
            abyte0 = abyte1;
            if (abyte2.length == bytebuffer.capacity())
            {
                abyte0 = abyte1;
                if (abyte2.length == bytebuffer.remaining())
                {
                    abyte0 = abyte2;
                    bytebuffer.position(bytebuffer.limit());
                }
            }
        }
        abyte1 = abyte0;
        if (abyte0 == null)
        {
            abyte1 = new byte[bytebuffer.remaining()];
            bytebuffer.get(abyte1);
        }
        return abyte1;
    }

    protected abstract int bytesPerAtom();

    protected abstract int bytesPerLine();

    public String encode(ByteBuffer bytebuffer)
    {
        return encode(getBytes(bytebuffer));
    }

    public String encode(byte abyte0[])
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        abyte0 = new ByteArrayInputStream(abyte0);
        try
        {
            encode(((InputStream) (abyte0)), ((OutputStream) (bytearrayoutputstream)));
            abyte0 = bytearrayoutputstream.toString("8859_1");
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new Error("CharacterEncoder.encode internal error");
        }
        return abyte0;
    }

    public void encode(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        byte abyte0[];
        abyte0 = new byte[bytesPerLine()];
        encodeBufferPrefix(outputstream);
_L4:
        int j = readFully(inputstream, abyte0);
        if (j != 0) goto _L2; else goto _L1
_L1:
        encodeBufferSuffix(outputstream);
        return;
_L2:
        int i;
        encodeLinePrefix(outputstream, j);
        i = 0;
_L5:
        if (i < j)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        if (j < bytesPerLine()) goto _L1; else goto _L3
_L3:
        encodeLineSuffix(outputstream);
          goto _L4
        if (bytesPerAtom() + i <= j)
        {
            encodeAtom(outputstream, abyte0, i, bytesPerAtom());
        } else
        {
            encodeAtom(outputstream, abyte0, i, j - i);
        }
        i += bytesPerAtom();
          goto _L5
    }

    public void encode(ByteBuffer bytebuffer, OutputStream outputstream)
        throws IOException
    {
        encode(getBytes(bytebuffer), outputstream);
    }

    public void encode(byte abyte0[], OutputStream outputstream)
        throws IOException
    {
        encode(((InputStream) (new ByteArrayInputStream(abyte0))), outputstream);
    }

    protected abstract void encodeAtom(OutputStream outputstream, byte abyte0[], int i, int j)
        throws IOException;

    public String encodeBuffer(ByteBuffer bytebuffer)
    {
        return encodeBuffer(getBytes(bytebuffer));
    }

    public String encodeBuffer(byte abyte0[])
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        abyte0 = new ByteArrayInputStream(abyte0);
        try
        {
            encodeBuffer(((InputStream) (abyte0)), ((OutputStream) (bytearrayoutputstream)));
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new Error("CharacterEncoder.encodeBuffer internal error");
        }
        return bytearrayoutputstream.toString();
    }

    public void encodeBuffer(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        byte abyte0[];
        abyte0 = new byte[bytesPerLine()];
        encodeBufferPrefix(outputstream);
_L5:
        int j = readFully(inputstream, abyte0);
        if (j != 0) goto _L2; else goto _L1
_L1:
        encodeBufferSuffix(outputstream);
        return;
_L2:
        int i;
        encodeLinePrefix(outputstream, j);
        i = 0;
_L6:
        if (i < j) goto _L4; else goto _L3
_L3:
        encodeLineSuffix(outputstream);
        if (j >= bytesPerLine()) goto _L5; else goto _L1
_L4:
        if (bytesPerAtom() + i <= j)
        {
            encodeAtom(outputstream, abyte0, i, bytesPerAtom());
        } else
        {
            encodeAtom(outputstream, abyte0, i, j - i);
        }
        i += bytesPerAtom();
          goto _L6
    }

    public void encodeBuffer(ByteBuffer bytebuffer, OutputStream outputstream)
        throws IOException
    {
        encodeBuffer(getBytes(bytebuffer), outputstream);
    }

    public void encodeBuffer(byte abyte0[], OutputStream outputstream)
        throws IOException
    {
        encodeBuffer(((InputStream) (new ByteArrayInputStream(abyte0))), outputstream);
    }

    protected void encodeBufferPrefix(OutputStream outputstream)
        throws IOException
    {
        pStream = new PrintStream(outputstream);
    }

    protected void encodeBufferSuffix(OutputStream outputstream)
        throws IOException
    {
    }

    protected void encodeLinePrefix(OutputStream outputstream, int i)
        throws IOException
    {
    }

    protected void encodeLineSuffix(OutputStream outputstream)
        throws IOException
    {
        pStream.println();
    }

    protected int readFully(InputStream inputstream, byte abyte0[])
        throws IOException
    {
        int i = 0;
_L6:
        if (i < abyte0.length) goto _L2; else goto _L1
_L1:
        int j = abyte0.length;
_L4:
        return j;
_L2:
        int k;
        k = inputstream.read();
        j = i;
        if (k == -1) goto _L4; else goto _L3
_L3:
        abyte0[i] = (byte)k;
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
