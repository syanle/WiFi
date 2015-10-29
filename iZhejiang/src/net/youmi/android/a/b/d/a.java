// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.d;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

// Referenced classes of package net.youmi.android.a.b.d:
//            c, d

public class a
{

    public static void a(InputStream inputstream, OutputStream outputstream)
    {
        b(new c(inputstream), outputstream);
    }

    public static void a(InputStream inputstream, OutputStream outputstream, int i)
    {
        outputstream = new d(outputstream, i);
        b(inputstream, outputstream);
        outputstream.a();
    }

    public static byte[] a(String s)
    {
        try
        {
            s = b(s.getBytes("UTF-8"));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new RuntimeException("UTF-8 is not supported!", s);
        }
        return s;
    }

    public static byte[] a(byte abyte0[])
    {
        return a(abyte0, 0);
    }

    public static byte[] a(byte abyte0[], int i)
    {
        ByteArrayInputStream bytearrayinputstream;
        bytearrayinputstream = new ByteArrayInputStream(abyte0);
        abyte0 = new ByteArrayOutputStream();
        a(((InputStream) (bytearrayinputstream)), ((OutputStream) (abyte0)), i);
        Object obj;
        try
        {
            bytearrayinputstream.close();
        }
        catch (Throwable throwable) { }
        try
        {
            abyte0.close();
        }
        catch (Throwable throwable1) { }
        return abyte0.toByteArray();
        obj;
        throw new RuntimeException("Unexpected I/O error", ((Throwable) (obj)));
        obj;
        try
        {
            bytearrayinputstream.close();
        }
        catch (Throwable throwable2) { }
        try
        {
            abyte0.close();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[]) { }
        throw obj;
    }

    private static void b(InputStream inputstream, OutputStream outputstream)
    {
        byte abyte0[] = new byte[1024];
        do
        {
            int i = inputstream.read(abyte0);
            if (i != -1)
            {
                outputstream.write(abyte0, 0, i);
            } else
            {
                return;
            }
        } while (true);
    }

    public static byte[] b(byte abyte0[])
    {
        ByteArrayInputStream bytearrayinputstream;
        bytearrayinputstream = new ByteArrayInputStream(abyte0);
        abyte0 = new ByteArrayOutputStream();
        a(bytearrayinputstream, abyte0);
        Object obj;
        try
        {
            bytearrayinputstream.close();
        }
        catch (Throwable throwable) { }
        try
        {
            abyte0.close();
        }
        catch (Throwable throwable1) { }
        return abyte0.toByteArray();
        obj;
        throw new RuntimeException("Unexpected I/O error", ((Throwable) (obj)));
        obj;
        try
        {
            bytearrayinputstream.close();
        }
        catch (Throwable throwable2) { }
        try
        {
            abyte0.close();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[]) { }
        throw obj;
    }
}
