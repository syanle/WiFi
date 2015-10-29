// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.d;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

// Referenced classes of package net.youmi.android.a.b.d:
//            h

public class f
{

    private static void a(ByteArrayInputStream bytearrayinputstream)
    {
        if (bytearrayinputstream == null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        bytearrayinputstream.close();
        return;
        bytearrayinputstream;
        throw bytearrayinputstream;
        bytearrayinputstream;
    }

    private static void a(ByteArrayOutputStream bytearrayoutputstream)
    {
        if (bytearrayoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        bytearrayoutputstream.close();
        return;
        bytearrayoutputstream;
        throw bytearrayoutputstream;
        bytearrayoutputstream;
    }

    private static void a(GZIPInputStream gzipinputstream)
    {
        if (gzipinputstream == null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        gzipinputstream.close();
        return;
        gzipinputstream;
        throw gzipinputstream;
        gzipinputstream;
    }

    private static void a(GZIPOutputStream gzipoutputstream)
    {
        if (gzipoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        gzipoutputstream.close();
        return;
        gzipoutputstream;
        throw gzipoutputstream;
        gzipoutputstream;
    }

    public static byte[] a(byte abyte0[], String s)
    {
        while (abyte0 == null || abyte0.length == 0) 
        {
            return null;
        }
        System.currentTimeMillis();
        int i = abyte0.length;
        ByteArrayOutputStream bytearrayoutputstream;
        System.currentTimeMillis();
        bytearrayoutputstream = new ByteArrayOutputStream();
        byte abyte1[];
        try
        {
            GZIPOutputStream gzipoutputstream = new GZIPOutputStream(bytearrayoutputstream);
            gzipoutputstream.write(abyte0);
            gzipoutputstream.flush();
            a(gzipoutputstream);
            bytearrayoutputstream.size();
            System.currentTimeMillis();
            abyte0 = h.a();
            abyte1 = h.a(bytearrayoutputstream.toByteArray(), s, abyte0);
            s = new ByteArrayOutputStream();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            abyte0 = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            s = null;
        }
        s.write(abyte0);
        s.flush();
        s.write(abyte1);
        s.flush();
        System.currentTimeMillis();
        s.size();
        abyte0 = s.toByteArray();
        a(((ByteArrayOutputStream) (s)));
        a(bytearrayoutputstream);
        return abyte0;
        abyte0;
        abyte0 = null;
        bytearrayoutputstream = null;
_L4:
        a(((ByteArrayOutputStream) (abyte0)));
        a(bytearrayoutputstream);
        return null;
        abyte0;
        bytearrayoutputstream = null;
        s = null;
_L2:
        a(((ByteArrayOutputStream) (s)));
        a(bytearrayoutputstream);
        throw abyte0;
        abyte0;
        if (true) goto _L2; else goto _L1
_L1:
        abyte0;
        abyte0 = s;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static byte[] b(byte abyte0[], String s)
    {
        Object obj;
        ByteArrayInputStream bytearrayinputstream;
        GZIPInputStream gzipinputstream;
        while (abyte0 == null || abyte0.length == 0) 
        {
            return null;
        }
        System.currentTimeMillis();
        int i = abyte0.length;
        ByteArrayInputStream bytearrayinputstream1;
        ByteArrayOutputStream bytearrayoutputstream;
        try
        {
            bytearrayinputstream1 = new ByteArrayInputStream(abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            abyte0 = null;
            s = null;
            obj = null;
            bytearrayinputstream1 = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            obj = null;
            bytearrayinputstream = null;
            bytearrayinputstream1 = null;
            s = null;
        }
        try
        {
_L4:
            byte abyte1[] = new byte[8];
            abyte0 = new byte[abyte0.length - 8];
            bytearrayinputstream1.read(abyte1, 0, 8);
            bytearrayinputstream1.read(abyte0);
            System.currentTimeMillis();
            abyte0 = h.b(abyte0, s, abyte1);
            i = abyte0.length;
            System.currentTimeMillis();
            bytearrayinputstream = new ByteArrayInputStream(abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            abyte0 = null;
            s = null;
            obj = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            obj = null;
            bytearrayinputstream = null;
            s = null;
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            gzipinputstream = new GZIPInputStream(bytearrayinputstream);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            abyte0 = null;
            s = null;
            obj = bytearrayinputstream;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            obj = null;
            s = null;
            continue; /* Loop/switch isn't completed */
        }
        bytearrayoutputstream = new ByteArrayOutputStream();
        abyte0 = new byte[1024];
_L3:
        i = gzipinputstream.read(abyte0);
        if (i <= 0) goto _L2; else goto _L1
_L1:
        bytearrayoutputstream.write(abyte0, 0, i);
          goto _L3
        abyte0;
        obj = bytearrayinputstream;
        s = gzipinputstream;
        abyte0 = bytearrayoutputstream;
_L7:
        a(abyte0);
        a(s);
        a(((ByteArrayInputStream) (obj)));
        a(bytearrayinputstream1);
        return null;
_L2:
        bytearrayoutputstream.flush();
        bytearrayoutputstream.size();
        System.currentTimeMillis();
        abyte0 = bytearrayoutputstream.toByteArray();
        a(bytearrayoutputstream);
        a(gzipinputstream);
        a(bytearrayinputstream);
        a(bytearrayinputstream1);
        return abyte0;
_L5:
        a(s);
        a(((GZIPInputStream) (obj)));
        a(bytearrayinputstream);
        a(bytearrayinputstream1);
        throw abyte0;
        abyte0;
        s = null;
        obj = gzipinputstream;
        continue; /* Loop/switch isn't completed */
        abyte0;
        s = bytearrayoutputstream;
        obj = gzipinputstream;
        if (true) goto _L5; else goto _L4
        abyte0;
        abyte0 = null;
        s = gzipinputstream;
        obj = bytearrayinputstream;
        if (true) goto _L7; else goto _L6
_L6:
    }
}
