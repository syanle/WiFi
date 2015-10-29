// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.graphics.Bitmap;
import android.os.Bundle;
import com.mob.tools.utils.Ln;
import java.io.ByteArrayOutputStream;
import java.io.File;

public class WXImageObject
    implements WXMediaMessage.IMediaObject
{

    public byte imageData[];
    public String imagePath;
    public String imageUrl;

    public WXImageObject()
    {
    }

    public WXImageObject(Bitmap bitmap)
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

    public WXImageObject(byte abyte0[])
    {
        imageData = abyte0;
    }

    public boolean checkArgs()
    {
        if ((imageData == null || imageData.length == 0) && (imagePath == null || imagePath.length() == 0) && (imageUrl == null || imageUrl.length() == 0))
        {
            Ln.e("checkArgs fail, all arguments are null", new Object[0]);
            return false;
        }
        if (imageData != null && imageData.length > 0xa00000)
        {
            Ln.e("checkArgs fail, content is too large", new Object[0]);
            return false;
        }
        if (imagePath != null && imagePath.length() > 10240)
        {
            Ln.e("checkArgs fail, path is invalid", new Object[0]);
            return false;
        }
        if (imagePath != null && (new File(imagePath)).length() > 0xa00000L)
        {
            Ln.e("checkArgs fail, image content is too large", new Object[0]);
            return false;
        }
        if (imageUrl != null && imageUrl.length() > 10240)
        {
            Ln.e("checkArgs fail, url is invalid", new Object[0]);
            return false;
        } else
        {
            return true;
        }
    }

    public void serialize(Bundle bundle)
    {
        bundle.putByteArray("_wximageobject_imageData", imageData);
        bundle.putString("_wximageobject_imagePath", imagePath);
        bundle.putString("_wximageobject_imageUrl", imageUrl);
    }

    public int type()
    {
        return 2;
    }

    public void unserialize(Bundle bundle)
    {
        imageData = bundle.getByteArray("_wximageobject_imageData");
        imagePath = bundle.getString("_wximageobject_imagePath");
        imageUrl = bundle.getString("_wximageobject_imageUrl");
    }
}
