// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

public final class BitmapUtil
{

    private BitmapUtil()
    {
    }

    public static byte[] bmpToByteArray(Bitmap bitmap, boolean flag)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        byte abyte0[];
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, bytearrayoutputstream);
        abyte0 = bytearrayoutputstream.toByteArray();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        bitmap.recycle();
        try
        {
            bytearrayoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            bitmap.printStackTrace();
            return abyte0;
        }
        return abyte0;
        bitmap;
        try
        {
            bytearrayoutputstream.close();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        throw bitmap;
    }

    public static Bitmap byteArrayToBmp(byte abyte0[])
    {
        Bitmap bitmap = null;
        if (abyte0 != null)
        {
            try
            {
                bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                return null;
            }
        }
        return bitmap;
    }
}
