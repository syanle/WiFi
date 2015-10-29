// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import com.mob.tools.utils.Ln;
import java.io.File;

public class WXAppExtendObject
    implements WXMediaMessage.IMediaObject
{

    public String extInfo;
    public byte fileData[];
    public String filePath;

    public WXAppExtendObject()
    {
    }

    public WXAppExtendObject(String s, String s1)
    {
        extInfo = s;
        filePath = s1;
    }

    public WXAppExtendObject(String s, byte abyte0[])
    {
        extInfo = s;
        fileData = abyte0;
    }

    public boolean checkArgs()
    {
        if ((extInfo == null || extInfo.length() == 0) && (filePath == null || filePath.length() == 0) && (fileData == null || fileData.length == 0))
        {
            Ln.e("checkArgs fail, all arguments is null", new Object[0]);
            return false;
        }
        if (extInfo != null && extInfo.length() > 2048)
        {
            Ln.e("checkArgs fail, extInfo is invalid", new Object[0]);
            return false;
        }
        if (filePath != null && filePath.length() > 10240)
        {
            Ln.e("checkArgs fail, filePath is invalid", new Object[0]);
            return false;
        }
        if (filePath != null && (new File(filePath)).length() > 0xa00000L)
        {
            Ln.e("checkArgs fail, fileSize is too large", new Object[0]);
            return false;
        }
        if (fileData != null && fileData.length > 0xa00000)
        {
            Ln.e("checkArgs fail, fileData is too large", new Object[0]);
            return false;
        } else
        {
            return true;
        }
    }

    public void serialize(Bundle bundle)
    {
        bundle.putString("_wxappextendobject_extInfo", extInfo);
        bundle.putByteArray("_wxappextendobject_fileData", fileData);
        bundle.putString("_wxappextendobject_filePath", filePath);
    }

    public int type()
    {
        return 7;
    }

    public void unserialize(Bundle bundle)
    {
        extInfo = bundle.getString("_wxappextendobject_extInfo");
        fileData = bundle.getByteArray("_wxappextendobject_fileData");
        filePath = bundle.getString("_wxappextendobject_filePath");
    }
}
