// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.anysoft.webservicetest.encoder;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PushbackInputStream;

// Referenced classes of package com.anysoft.webservicetest.encoder:
//            CharacterDecoder, CEFormatException, CEStreamExhausted

public class BASE64Decoder extends CharacterDecoder
{

    private static final char pem_array[];
    private static final byte pem_convert_array[];
    byte decode_buffer[];

    public BASE64Decoder()
    {
        decode_buffer = new byte[4];
    }

    protected int bytesPerAtom()
    {
        return 4;
    }

    protected int bytesPerLine()
    {
        return 72;
    }

    protected void decodeAtom(PushbackInputStream pushbackinputstream, OutputStream outputstream, int i)
        throws IOException
    {
        byte byte0;
        int j;
        byte byte1;
        int k;
        byte byte2;
        byte byte3;
        byte byte4;
        byte3 = -1;
        byte4 = -1;
        byte2 = -1;
        byte0 = -1;
        if (i < 2)
        {
            throw new CEFormatException("BASE64Decoder: Not enough bytes for an atom.");
        }
        do
        {
            j = pushbackinputstream.read();
            if (j == -1)
            {
                throw new CEStreamExhausted();
            }
        } while (j == 10 || j == 13);
        decode_buffer[0] = (byte)j;
        if (readFully(pushbackinputstream, decode_buffer, 1, i - 1) == -1)
        {
            throw new CEStreamExhausted();
        }
        j = i;
        if (i > 3)
        {
            j = i;
            if (decode_buffer[3] == 61)
            {
                j = 3;
            }
        }
        k = j;
        if (j > 2)
        {
            k = j;
            if (decode_buffer[2] == 61)
            {
                k = 2;
            }
        }
        byte1 = byte0;
        j = byte2;
        i = byte0;
        k;
        JVM INSTR tableswitch 2 4: default 188
    //                   2 268
    //                   3 249
    //                   4 233;
           goto _L1 _L2 _L3 _L4
_L2:
        break MISSING_BLOCK_LABEL_268;
_L1:
        i = byte0;
        j = byte2;
        byte1 = byte4;
        byte0 = byte3;
_L5:
        switch (k)
        {
        default:
            return;

        case 2: // '\002'
            outputstream.write((byte)(byte0 << 2 & 0xfc | byte1 >>> 4 & 3));
            return;

        case 3: // '\003'
            outputstream.write((byte)(byte0 << 2 & 0xfc | byte1 >>> 4 & 3));
            outputstream.write((byte)(byte1 << 4 & 0xf0 | j >>> 2 & 0xf));
            return;

        case 4: // '\004'
            outputstream.write((byte)(byte0 << 2 & 0xfc | byte1 >>> 4 & 3));
            break;
        }
        break MISSING_BLOCK_LABEL_386;
_L4:
        byte1 = pem_convert_array[decode_buffer[3] & 0xff];
_L3:
        j = pem_convert_array[decode_buffer[2] & 0xff];
        i = byte1;
        byte1 = pem_convert_array[decode_buffer[1] & 0xff];
        byte0 = pem_convert_array[decode_buffer[0] & 0xff];
          goto _L5
        outputstream.write((byte)(byte1 << 4 & 0xf0 | j >>> 2 & 0xf));
        outputstream.write((byte)(j << 6 & 0xc0 | i & 0x3f));
        return;
    }

    static 
    {
        int i;
        pem_array = (new char[] {
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 
            'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 
            'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 
            'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 
            'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 
            'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', 
            '8', '9', '+', '/'
        });
        pem_convert_array = new byte[256];
        i = 0;
_L3:
        if (i < 255) goto _L2; else goto _L1
_L1:
        i = 0;
_L4:
        if (i >= pem_array.length)
        {
            return;
        }
        break MISSING_BLOCK_LABEL_426;
_L2:
        pem_convert_array[i] = -1;
        i++;
          goto _L3
        pem_convert_array[pem_array[i]] = (byte)i;
        i++;
          goto _L4
    }
}
