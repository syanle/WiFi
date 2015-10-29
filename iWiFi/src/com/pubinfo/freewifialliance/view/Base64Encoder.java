// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;

public class Base64Encoder extends FilterOutputStream
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
    private int carryOver;
    private int charCount;

    public Base64Encoder(OutputStream outputstream)
    {
        super(outputstream);
    }

    public static String encode(String s)
    {
        Object obj = null;
        try
        {
            s = s.getBytes("UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = obj;
        }
        return encode(((byte []) (s)));
    }

    public static String encode(byte abyte0[])
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream((int)((double)abyte0.length * 1.3700000000000001D));
        Base64Encoder base64encoder = new Base64Encoder(bytearrayoutputstream);
        try
        {
            base64encoder.write(abyte0);
            base64encoder.close();
            abyte0 = bytearrayoutputstream.toString("UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return null;
        }
        return abyte0;
    }

    public static void main(String args[])
        throws Exception
    {
        if (args.length == 1) goto _L2; else goto _L1
_L1:
        System.err.println("Usage: java com.oreilly.servlet.Base64Encoder fileToEncode");
_L4:
        return;
_L2:
        Object aobj[];
        Exception exception;
        exception = null;
        aobj = null;
        Object obj = new Base64Encoder(System.out);
        args = new BufferedInputStream(new FileInputStream(args[0]));
        aobj = new byte[4096];
_L5:
        int i = args.read(((byte []) (aobj)));
        if (i != -1)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        if (args != null)
        {
            args.close();
        }
        if (obj == null) goto _L4; else goto _L3
_L3:
        ((Base64Encoder) (obj)).close();
        return;
        ((Base64Encoder) (obj)).write(((byte []) (aobj)), 0, i);
          goto _L5
        exception;
        aobj = args;
        args = ((String []) (obj));
        obj = exception;
_L7:
        if (aobj != null)
        {
            ((BufferedInputStream) (aobj)).close();
        }
        if (args != null)
        {
            args.close();
        }
        throw obj;
        obj;
        args = exception;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        args = ((String []) (obj));
        obj = exception1;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void close()
        throws IOException
    {
        if (charCount % 3 != 1) goto _L2; else goto _L1
_L1:
        int i = carryOver;
        out.write(chars[i << 4 & 0x3f]);
        out.write(61);
        out.write(61);
_L4:
        super.close();
        return;
_L2:
        if (charCount % 3 == 2)
        {
            int j = carryOver;
            out.write(chars[j << 2 & 0x3f]);
            out.write(61);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void write(int i)
        throws IOException
    {
        int j;
        j = i;
        if (i < 0)
        {
            j = i + 256;
        }
        if (charCount % 3 != 0) goto _L2; else goto _L1
_L1:
        carryOver = j & 3;
        out.write(chars[j >> 2]);
_L4:
        charCount = charCount + 1;
        if (charCount % 57 == 0)
        {
            out.write(10);
        }
        return;
_L2:
        if (charCount % 3 == 1)
        {
            i = carryOver;
            carryOver = j & 0xf;
            out.write(chars[(i << 4) + (j >> 4) & 0x3f]);
        } else
        if (charCount % 3 == 2)
        {
            i = carryOver;
            out.write(chars[(i << 2) + (j >> 6) & 0x3f]);
            out.write(chars[j & 0x3f]);
            carryOver = 0;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void write(byte abyte0[], int i, int j)
        throws IOException
    {
        int k = 0;
        do
        {
            if (k >= j)
            {
                return;
            }
            write(abyte0[i + k]);
            k++;
        } while (true);
    }

}
