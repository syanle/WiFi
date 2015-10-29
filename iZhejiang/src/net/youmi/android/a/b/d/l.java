// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.d;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.Deflater;

public class l
{

    public static byte[] a(byte abyte0[])
    {
        Deflater deflater;
        ByteArrayOutputStream bytearrayoutputstream;
        deflater = new Deflater();
        deflater.reset();
        deflater.setInput(abyte0);
        deflater.finish();
        bytearrayoutputstream = new ByteArrayOutputStream(abyte0.length);
        byte abyte1[] = new byte[1024];
        for (; !deflater.finished(); bytearrayoutputstream.write(abyte1, 0, deflater.deflate(abyte1))) { }
        break MISSING_BLOCK_LABEL_73;
        Exception exception;
        exception;
        exception.printStackTrace();
        byte abyte2[];
        try
        {
            bytearrayoutputstream.close();
        }
        catch (IOException ioexception1)
        {
            ioexception1.printStackTrace();
        }
        deflater.end();
        return abyte0;
        abyte2 = bytearrayoutputstream.toByteArray();
        abyte0 = abyte2;
        try
        {
            bytearrayoutputstream.close();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_67;
        }
        abyte0;
        try
        {
            bytearrayoutputstream.close();
        }
        catch (IOException ioexception2)
        {
            ioexception2.printStackTrace();
        }
        throw abyte0;
    }
}
