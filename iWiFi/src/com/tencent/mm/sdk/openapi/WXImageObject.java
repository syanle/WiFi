// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.openapi;

import android.graphics.Bitmap;
import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.Log;
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
            bitmap.printStackTrace();
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
            Log.e("MicroMsg.SDK.WXImageObject", "checkArgs fail, all arguments are null");
            return false;
        }
        if (imageData != null && imageData.length > 0xa00000)
        {
            Log.e("MicroMsg.SDK.WXImageObject", "checkArgs fail, content is too large");
            return false;
        }
        if (imagePath != null && imagePath.length() > 10240)
        {
            Log.e("MicroMsg.SDK.WXImageObject", "checkArgs fail, path is invalid");
            return false;
        }
        if (imagePath != null)
        {
            Object obj = imagePath;
            int i;
            if (obj == null || ((String) (obj)).length() == 0)
            {
                i = 0;
            } else
            {
                obj = new File(((String) (obj)));
                if (!((File) (obj)).exists())
                {
                    i = 0;
                } else
                {
                    i = (int)((File) (obj)).length();
                }
            }
            if (i > 0xa00000)
            {
                Log.e("MicroMsg.SDK.WXImageObject", "checkArgs fail, image content is too large");
                return false;
            }
        }
        if (imageUrl != null && imageUrl.length() > 10240)
        {
            Log.e("MicroMsg.SDK.WXImageObject", "checkArgs fail, url is invalid");
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

    public void setImagePath(String s)
    {
        imagePath = s;
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
