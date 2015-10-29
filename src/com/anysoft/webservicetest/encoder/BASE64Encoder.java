// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.anysoft.webservicetest.encoder;

import java.io.IOException;
import java.io.OutputStream;

// Referenced classes of package com.anysoft.webservicetest.encoder:
//            CharacterEncoder

public class BASE64Encoder extends CharacterEncoder
{

    private static final char pem_array[] = {
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 
        'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 
        'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 
        'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 
        'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 
        'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', 
        '8', '9', '+', '/'
    };

    public BASE64Encoder()
    {
    }

    protected int bytesPerAtom()
    {
        return 3;
    }

    protected int bytesPerLine()
    {
        return 57;
    }

    protected void encodeAtom(OutputStream outputstream, byte abyte0[], int i, int j)
        throws IOException
    {
        if (j == 1)
        {
            i = abyte0[i];
            outputstream.write(pem_array[i >>> 2 & 0x3f]);
            outputstream.write(pem_array[(i << 4 & 0x30) + 0]);
            outputstream.write(61);
            outputstream.write(61);
            return;
        }
        if (j == 2)
        {
            j = abyte0[i];
            i = abyte0[i + 1];
            outputstream.write(pem_array[j >>> 2 & 0x3f]);
            outputstream.write(pem_array[(j << 4 & 0x30) + (i >>> 4 & 0xf)]);
            outputstream.write(pem_array[(i << 2 & 0x3c) + 0]);
            outputstream.write(61);
            return;
        } else
        {
            j = abyte0[i];
            byte byte0 = abyte0[i + 1];
            i = abyte0[i + 2];
            outputstream.write(pem_array[j >>> 2 & 0x3f]);
            outputstream.write(pem_array[(j << 4 & 0x30) + (byte0 >>> 4 & 0xf)]);
            outputstream.write(pem_array[(byte0 << 2 & 0x3c) + (i >>> 6 & 3)]);
            outputstream.write(pem_array[i & 0x3f]);
            return;
        }
    }

}
