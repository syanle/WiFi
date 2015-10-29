// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import com.mob.tools.utils.Ln;
import java.io.File;

public class WXFileObject
    implements WXMediaMessage.IMediaObject
{

    public byte fileData[];
    public String filePath;

    public WXFileObject()
    {
        fileData = null;
        filePath = null;
    }

    public WXFileObject(String s)
    {
        filePath = s;
    }

    public WXFileObject(byte abyte0[])
    {
        fileData = abyte0;
    }

    public boolean checkArgs()
    {
        if ((fileData == null || fileData.length == 0) && (filePath == null || filePath.length() == 0))
        {
            Ln.e("checkArgs fail, both arguments is null", new Object[0]);
            return false;
        }
        if (fileData != null && fileData.length > 0xa00000)
        {
            Ln.e("checkArgs fail, fileData is too large", new Object[0]);
            return false;
        }
        if (filePath != null && (new File(filePath)).length() > 0xa00000L)
        {
            Ln.e("checkArgs fail, fileSize is too large", new Object[0]);
            return false;
        } else
        {
            return true;
        }
    }

    public void serialize(Bundle bundle)
    {
        bundle.putByteArray("_wxfileobject_fileData", fileData);
        bundle.putString("_wxfileobject_filePath", filePath);
    }

    public void setFileData(byte abyte0[])
    {
        fileData = abyte0;
    }

    public void setFilePath(String s)
    {
        filePath = s;
    }

    public int type()
    {
        return 6;
    }

    public void unserialize(Bundle bundle)
    {
        fileData = bundle.getByteArray("_wxfileobject_fileData");
        filePath = bundle.getString("_wxfileobject_filePath");
    }
}
