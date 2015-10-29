// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.utils;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import com.mob.tools.utils.Ln;
import java.io.ByteArrayOutputStream;
import java.io.File;

public class YXImageMessageData
    implements YXMessage.YXMessageData
{

    public byte imageData[];
    public String imagePath;
    public String imageUrl;

    public YXImageMessageData()
    {
    }

    public YXImageMessageData(Bitmap bitmap)
    {
        try
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 85, bytearrayoutputstream);
            imageData = bytearrayoutputstream.toByteArray();
            bytearrayoutputstream.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            Ln.e(bitmap);
        }
    }

    public YXImageMessageData(byte abyte0[])
    {
        imageData = abyte0;
    }

    public YXMessage.MessageType dataType()
    {
        return YXMessage.MessageType.IMAGE;
    }

    public void read(Bundle bundle)
    {
        imageData = bundle.getByteArray("_yixinImageMessageData_imageData");
        imagePath = bundle.getString("_yixinImageMessageData_imagePath");
        imageUrl = bundle.getString("_yixinImageMessageData_imageUrl");
    }

    public boolean verifyData()
    {
        if ((imageData == null || imageData.length == 0) && TextUtils.isEmpty(imagePath) && TextUtils.isEmpty(imageUrl))
        {
            Ln.e("imageData imagePath imageUrl is all blank", new Object[0]);
            return false;
        }
        if (imageData != null && imageData.length > 0xa00000)
        {
            Ln.e((new StringBuilder()).append("imageData.length ").append(imageData.length).append(">10485760").toString(), new Object[0]);
            return false;
        }
        if (imagePath != null)
        {
            File file = new File(imagePath);
            if (!file.exists() || file.length() > 0xa00000L)
            {
                Ln.e((new StringBuilder()).append("file.length ").append(file.length()).append(">10485760").toString(), new Object[0]);
                return false;
            }
        }
        if (imageUrl != null && imageUrl.length() > 10240)
        {
            Ln.e((new StringBuilder()).append("imageUrl.length ").append(imageUrl.length()).append(">10240").toString(), new Object[0]);
            return false;
        } else
        {
            return true;
        }
    }

    public void write(Bundle bundle)
    {
        bundle.putByteArray("_yixinImageMessageData_imageData", imageData);
        bundle.putString("_yixinImageMessageData_imagePath", imagePath);
        bundle.putString("_yixinImageMessageData_imageUrl", imageUrl);
    }
}
