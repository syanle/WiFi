// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;

// Referenced classes of package com.umeng.common.util:
//            h

public class f
{

    public static int a;

    public f()
    {
    }

    public static String a(byte abyte0[], String s)
        throws UnsupportedEncodingException, DataFormatException
    {
        if (abyte0 == null || abyte0.length == 0)
        {
            return null;
        }
        Inflater inflater = new Inflater();
        byte abyte1[] = new byte[100];
        inflater.setInput(abyte0, 0, abyte0.length);
        abyte0 = new StringBuilder();
        for (; !inflater.needsInput(); abyte0.append(new String(abyte1, 0, inflater.inflate(abyte1), s))) { }
        inflater.end();
        return abyte0.toString();
    }

    public static byte[] a(String s, String s1)
        throws IOException
    {
        Deflater deflater;
        if (h.d(s))
        {
            return null;
        }
        deflater = new Deflater();
        deflater.setInput(s.getBytes(s1));
        deflater.finish();
        s = new byte[8192];
        a = 0;
        s1 = new ByteArrayOutputStream();
        int i;
        for (; !deflater.finished(); s1.write(s, 0, i))
        {
            i = deflater.deflate(s);
            a += i;
        }

          goto _L1
        s;
_L3:
        if (s1 != null)
        {
            s1.close();
        }
        throw s;
_L1:
        deflater.end();
        if (s1 != null)
        {
            s1.close();
        }
        return s1.toByteArray();
        s;
        s1 = null;
        if (true) goto _L3; else goto _L2
_L2:
    }
}
