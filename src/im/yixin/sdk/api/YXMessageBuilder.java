// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.graphics.Bitmap;
import im.yixin.sdk.util.BitmapUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

// Referenced classes of package im.yixin.sdk.api:
//            YXImageMessageData, YXMessage

public final class YXMessageBuilder
{

    public YXMessageBuilder()
    {
    }

    public static YXMessage buildImageMessage(Bitmap bitmap, String s, String s1)
    {
        ByteArrayOutputStream bytearrayoutputstream;
        Object obj1;
        obj1 = new YXImageMessageData();
        bytearrayoutputstream = new ByteArrayOutputStream();
        Object obj = bytearrayoutputstream;
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 85, bytearrayoutputstream);
        obj = bytearrayoutputstream;
        obj1.imageData = bytearrayoutputstream.toByteArray();
        obj = bytearrayoutputstream;
        obj1 = new YXMessage(((YXMessage.YXMessageData) (obj1)));
        obj = bytearrayoutputstream;
        obj1.title = s;
        obj = bytearrayoutputstream;
        obj1.description = s1;
        obj = bytearrayoutputstream;
        obj1.thumbData = BitmapUtil.bmpToByteArray(Bitmap.createScaledBitmap(bitmap, 150, 150, true), true);
        if (bytearrayoutputstream != null)
        {
            try
            {
                bytearrayoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (Bitmap bitmap)
            {
                bitmap.printStackTrace();
                return ((YXMessage) (obj1));
            }
        }
        return ((YXMessage) (obj1));
        s;
        bitmap = null;
_L4:
        obj = bitmap;
        s.printStackTrace();
        if (bitmap != null)
        {
            try
            {
                bitmap.close();
            }
            // Misplaced declaration of an exception variable
            catch (Bitmap bitmap)
            {
                bitmap.printStackTrace();
            }
        }
        return null;
        bitmap;
        obj = null;
_L2:
        if (obj != null)
        {
            try
            {
                ((ByteArrayOutputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
            }
        }
        throw bitmap;
        bitmap;
        if (true) goto _L2; else goto _L1
_L1:
        s;
        bitmap = bytearrayoutputstream;
        if (true) goto _L4; else goto _L3
_L3:
    }
}
