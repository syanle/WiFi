// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;

public class Base64Decoder extends FilterInputStream
{

    private static final char chars[] = {
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 
        'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 
        'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 
        'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 
        'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 
        'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', 
        '8', '9', '+', '/'
    };
    private static final int ints[];
    private int carryOver;
    private int charCount;

    public Base64Decoder(InputStream inputstream)
    {
        super(inputstream);
    }

    public static String decode(String s)
    {
        return new String(decodeToBytes(s));
    }

    public static byte[] decodeToBytes(String s)
    {
        Base64Decoder base64decoder = null;
        byte abyte0[];
        int i;
        try
        {
            s = s.getBytes("UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = base64decoder;
        }
        base64decoder = new Base64Decoder(new ByteArrayInputStream(s));
        s = new ByteArrayOutputStream((int)((double)s.length * 0.67000000000000004D));
        abyte0 = new byte[4096];
_L1:
        i = base64decoder.read(abyte0);
        if (i != -1)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        s.close();
        return s.toByteArray();
        s.write(abyte0, 0, i);
          goto _L1
        s;
        return null;
    }

    public static void main(String args[])
        throws Exception
    {
        if (args.length == 1) goto _L2; else goto _L1
_L1:
        System.err.println("Usage: java Base64Decoder fileToDecode");
_L4:
        return;
_L2:
        Object obj = null;
        args = new Base64Decoder(new BufferedInputStream(new FileInputStream(args[0])));
        obj = new byte[4096];
_L5:
        int i = args.read(((byte []) (obj)));
        if (i != -1)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        if (args == null) goto _L4; else goto _L3
_L3:
        args.close();
        return;
        System.out.write(((byte []) (obj)), 0, i);
          goto _L5
        obj;
_L7:
        if (args != null)
        {
            args.close();
        }
        throw obj;
        Exception exception;
        exception;
        args = ((String []) (obj));
        obj = exception;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public int read()
        throws IOException
    {
_L2:
        int i;
        i = in.read();
        if (i != -1)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        return -1;
        if (Character.isWhitespace((char)i)) goto _L2; else goto _L1
_L1:
        charCount = charCount + 1;
        if (i != 61)
        {
            i = ints[i];
            int j = (charCount - 1) % 4;
            if (j == 0)
            {
                carryOver = i & 0x3f;
                return read();
            }
            if (j == 1)
            {
                j = carryOver;
                carryOver = i & 0xf;
                return (j << 2) + (i >> 4) & 0xff;
            }
            if (j == 2)
            {
                j = carryOver;
                carryOver = i & 3;
                return (j << 4) + (i >> 2) & 0xff;
            }
            if (j == 3)
            {
                return (carryOver << 6) + i & 0xff;
            }
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public int read(byte abyte0[], int i, int j)
        throws IOException
    {
        int k;
        if (abyte0.length < (j + i) - 1)
        {
            throw new IOException((new StringBuilder("The input buffer is too small: ")).append(j).append(" bytes requested starting at offset ").append(i).append(" while the buffer ").append(" is only ").append(abyte0.length).append(" bytes long.").toString());
        }
        k = 0;
_L5:
        if (k < j) goto _L2; else goto _L1
_L1:
        return k;
_L2:
        int l;
        l = read();
        if (l == -1 && k == 0)
        {
            return -1;
        }
        if (l == -1) goto _L1; else goto _L3
_L3:
        abyte0[i + k] = (byte)l;
        k++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    static 
    {
        ints = new int[128];
        int i = 0;
        do
        {
            if (i >= 64)
            {
                return;
            }
            ints[chars[i]] = i;
            i++;
        } while (true);
    }
}
