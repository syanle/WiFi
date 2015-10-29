// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.graphics.Bitmap;
import android.os.Bundle;
import im.yixin.sdk.util.SDKHttpUtils;
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
            bitmap.printStackTrace();
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
        if ((imageData == null || imageData.length == 0) && (imagePath == null || imagePath.length() == 0) && (imageUrl == null || imageUrl.length() == 0))
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXImageMessageData, "imageData imagePath imageUrl is all blank");
            return false;
        }
        if (imageData != null && imageData.length > 0xa00000)
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXImageMessageData, (new StringBuilder()).append("imageData.length ").append(imageData.length).append(">10485760").toString());
            return false;
        }
        if (imagePath != null)
        {
            Object obj = new File(imagePath);
            if (!((File) (obj)).exists() || ((File) (obj)).length() > 0xa00000L)
            {
                SDKHttpUtils sdkhttputils = SDKHttpUtils.getInstance();
                if (!((File) (obj)).exists())
                {
                    obj = "file not exist or can not read";
                } else
                {
                    obj = (new StringBuilder()).append("file.length ").append(((File) (obj)).length()).append(">10485760").toString();
                }
                sdkhttputils.get4ErrorLog(im/yixin/sdk/api/YXImageMessageData, ((String) (obj)));
                return false;
            }
        }
        if (imageUrl != null && imageUrl.length() > 10240)
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXImageMessageData, (new StringBuilder()).append("imageUrl.length ").append(imageUrl.length()).append(">10240").toString());
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
