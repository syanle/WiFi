// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.channel;

import android.content.Intent;
import android.net.Uri;

// Referenced classes of package im.yixin.sdk.channel:
//            YXMessageUtil

public class YXMessageProtocol
{

    private String appId;
    private String appPackage;
    private byte checkSum[];
    private String command;
    private long sdkVersion;
    private String uri;

    private YXMessageProtocol()
    {
        uri = null;
        appId = null;
        command = null;
        sdkVersion = 0L;
        appPackage = null;
        checkSum = null;
    }

    public static final YXMessageProtocol parseProtocol(Intent intent)
    {
        YXMessageProtocol yxmessageprotocol = new YXMessageProtocol();
        if (intent != null)
        {
            yxmessageprotocol.parseUri(intent.getStringExtra("_yxmessage_content"));
            yxmessageprotocol.sdkVersion = intent.getLongExtra("_yxmessage_sdkVersion", 0L);
            yxmessageprotocol.appPackage = intent.getStringExtra("_yxmessage_appPackage");
            yxmessageprotocol.checkSum = intent.getByteArrayExtra("_yxmessage_checksum");
        }
        return yxmessageprotocol;
    }

    private void parseUri(String s)
    {
        if (YXMessageUtil.isBlank(s) || !s.startsWith("yixin://"))
        {
            return;
        } else
        {
            uri = s;
            s = Uri.parse(uri);
            appId = s.getQueryParameter("appid");
            command = s.getAuthority();
            return;
        }
    }

    public String getAppId()
    {
        return appId;
    }

    public String getAppPackage()
    {
        return appPackage;
    }

    public String getCommand()
    {
        return command;
    }

    public long getSdkVersion()
    {
        return sdkVersion;
    }

    public final boolean isValid()
    {
_L2:
        return false;
        if (YXMessageUtil.isBlank(appId) || YXMessageUtil.isBlank(command) || sdkVersion < 1L || YXMessageUtil.isBlank(appPackage)) goto _L2; else goto _L1
_L1:
        byte abyte0[] = YXMessageUtil.generateCheckSum((new StringBuilder()).append(uri).append(sdkVersion).toString(), appPackage);
        if (abyte0 != null && checkSum != null && abyte0.length == checkSum.length)
        {
            int i = 0;
label0:
            do
            {
label1:
                {
                    if (i >= checkSum.length)
                    {
                        break label1;
                    }
                    if (checkSum[i] != abyte0[i])
                    {
                        break label0;
                    }
                    i++;
                }
            } while (true);
        }
        if (true) goto _L2; else goto _L3
_L3:
        return true;
    }
}
