// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.anysoft.webservicetest.encoder;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.nio.ByteBuffer;

// Referenced classes of package com.anysoft.webservicetest.encoder:
//            CEStreamExhausted

public abstract class CharacterDecoder
{

    public CharacterDecoder()
    {
    }

    protected abstract int bytesPerAtom();

    protected abstract int bytesPerLine();

    protected void decodeAtom(PushbackInputStream pushbackinputstream, OutputStream outputstream, int i)
        throws IOException
    {
        throw new CEStreamExhausted();
    }

    public void decodeBuffer(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        int i;
        i = 0;
        inputstream = new PushbackInputStream(inputstream);
        decodeBufferPrefix(inputstream, outputstream);
_L5:
        int j;
        int k;
        boolean flag;
        try
        {
            k = decodeLinePrefix(inputstream, outputstream);
        }
        catch (CEStreamExhausted cestreamexhausted)
        {
            decodeBufferSuffix(inputstream, outputstream);
            return;
        }
        flag = false;
        j = i;
        i = ((flag) ? 1 : 0);
_L6:
        if (bytesPerAtom() + i < k) goto _L2; else goto _L1
_L1:
        if (bytesPerAtom() + i != k) goto _L4; else goto _L3
_L3:
        decodeAtom(inputstream, outputstream, bytesPerAtom());
        i = j + bytesPerAtom();
_L7:
        decodeLineSuffix(inputstream, outputstream);
          goto _L5
_L2:
        decodeAtom(inputstream, outputstream, bytesPerAtom());
        j += bytesPerAtom();
        i += bytesPerAtom();
          goto _L6
_L4:
        decodeAtom(inputstream, outputstream, k - i);
        i = j + (k - i);
          goto _L7
    }

    public byte[] decodeBuffer(InputStream inputstream)
        throws IOException
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        decodeBuffer(inputstream, ((OutputStream) (bytearrayoutputstream)));
        return bytearrayoutputstream.toByteArray();
    }

    public byte[] decodeBuffer(String s)
        throws IOException
    {
        byte abyte0[] = new byte[s.length()];
        s.getBytes(0, s.length(), abyte0, 0);
        s = new ByteArrayInputStream(abyte0);
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        decodeBuffer(((InputStream) (s)), ((OutputStream) (bytearrayoutputstream)));
        return bytearrayoutputstream.toByteArray();
    }

    protected void decodeBufferPrefix(PushbackInputStream pushbackinputstream, OutputStream outputstream)
        throws IOException
    {
    }

    protected void decodeBufferSuffix(PushbackInputStream pushbackinputstream, OutputStream outputstream)
        throws IOException
    {
    }

    public ByteBuffer decodeBufferToByteBuffer(InputStream inputstream)
        throws IOException
    {
        return ByteBuffer.wrap(decodeBuffer(inputstream));
    }

    public ByteBuffer decodeBufferToByteBuffer(String s)
        throws IOException
    {
        return ByteBuffer.wrap(decodeBuffer(s));
    }

    protected int decodeLinePrefix(PushbackInputStream pushbackinputstream, OutputStream outputstream)
        throws IOException
    {
        return bytesPerLine();
    }

    protected void decodeLineSuffix(PushbackInputStream pushbackinputstream, OutputStream outputstream)
        throws IOException
    {
    }

    protected int readFully(InputStream inputstream, byte abyte0[], int i, int j)
        throws IOException
    {
        int k = 0;
_L6:
        if (k < j) goto _L2; else goto _L1
_L1:
        i = j;
_L4:
        return i;
_L2:
        int l;
        l = inputstream.read();
        if (l != -1)
        {
            break; /* Loop/switch isn't completed */
        }
        i = k;
        if (k == 0)
        {
            return -1;
        }
        if (true) goto _L4; else goto _L3
_L3:
        abyte0[k + i] = (byte)l;
        k++;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
