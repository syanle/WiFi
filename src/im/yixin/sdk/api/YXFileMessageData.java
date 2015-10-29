// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.os.Bundle;
import im.yixin.sdk.util.SDKHttpUtils;
import java.io.File;

public class YXFileMessageData
    implements YXMessage.YXMessageData
{

    public byte fileData[];
    public String filePath;

    public YXFileMessageData()
    {
        fileData = null;
        filePath = null;
    }

    public YXFileMessageData(String s)
    {
        filePath = s;
    }

    public YXFileMessageData(byte abyte0[])
    {
        fileData = abyte0;
    }

    public YXMessage.MessageType dataType()
    {
        return YXMessage.MessageType.FILE;
    }

    public void read(Bundle bundle)
    {
        fileData = bundle.getByteArray("_yixinFileMessageData_fileData");
        filePath = bundle.getString("_yixinFileMessageData_filePath");
    }

    public boolean verifyData()
    {
        if ((fileData == null || fileData.length == 0) && (filePath == null || filePath.length() == 0))
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXFileMessageData, "filePath fileData is all blank");
            return false;
        }
        if (fileData != null && fileData.length > 0xa00000)
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXFileMessageData, (new StringBuilder()).append("fileData.length ").append(fileData.length).append(">10485760").toString());
            return false;
        }
        if (filePath != null)
        {
            Object obj = new File(filePath);
            if (!((File) (obj)).exists() || !((File) (obj)).canRead() || ((File) (obj)).length() > 0xa00000L)
            {
                SDKHttpUtils sdkhttputils = SDKHttpUtils.getInstance();
                if (!((File) (obj)).exists() || !((File) (obj)).canRead())
                {
                    obj = "file not exist or can not read";
                } else
                {
                    obj = (new StringBuilder()).append("file.length ").append(((File) (obj)).length()).append(">10485760").toString();
                }
                sdkhttputils.get4ErrorLog(im/yixin/sdk/api/YXFileMessageData, ((String) (obj)));
                return false;
            }
        }
        return true;
    }

    public void write(Bundle bundle)
    {
        bundle.putByteArray("_yixinFileMessageData_fileData", fileData);
        bundle.putString("_yixinFileMessageData_filePath", filePath);
    }
}
