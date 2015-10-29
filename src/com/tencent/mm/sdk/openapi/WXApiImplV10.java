// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.openapi;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Bundle;
import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.sdk.MMSharedPreferences;
import com.tencent.mm.sdk.channel.MMessage;
import com.tencent.mm.sdk.channel.MMessageAct;
import com.tencent.mm.sdk.platformtools.Log;

// Referenced classes of package com.tencent.mm.sdk.openapi:
//            IWXAPI, IWXAPIEventHandler, BaseReq, BaseResp

final class WXApiImplV10
    implements IWXAPI
{

    private Context q;
    private String r;
    private boolean s;

    protected WXApiImplV10(Context context, String s1)
    {
        this(context, s1, false);
    }

    protected WXApiImplV10(Context context, String s1, boolean flag)
    {
        s = false;
        q = context;
        r = s1;
        s = flag;
    }

    private boolean a(String s1)
    {
        if (!s)
        {
            Log.d("MicroMsg.SDK.WXApiImplV10", "ignore wechat app signature validation");
            return true;
        }
        try
        {
            s1 = q.getPackageManager().getPackageInfo(s1, 64);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            return false;
        }
        return a(((PackageInfo) (s1)).signatures);
    }

    private static boolean a(byte abyte0[], byte abyte1[])
    {
        if (abyte0 != null && abyte0.length != 0 && abyte1 != null && abyte1.length != 0) goto _L2; else goto _L1
_L1:
        Log.e("MicroMsg.SDK.WXApiImplV10", "checkSumConsistent fail, invalid arguments");
_L4:
        return false;
_L2:
        if (abyte0.length != abyte1.length)
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "checkSumConsistent fail, length is different");
            return false;
        }
        int i = 0;
label0:
        do
        {
label1:
            {
                if (i >= abyte0.length)
                {
                    break label1;
                }
                if (abyte0[i] != abyte1[i])
                {
                    break label0;
                }
                i++;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return true;
    }

    private boolean a(Signature asignature[])
    {
        if (!s)
        {
            Log.d("MicroMsg.SDK.WXApiImplV10", "ignore wechat app signature validation");
            return true;
        }
        int j = asignature.length;
        for (int i = 0; i < j; i++)
        {
            String s1 = asignature[i].toCharsString();
            Log.d("MicroMsg.SDK.WXApiImplV10", (new StringBuilder("check signature:")).append(s1).toString());
            if (s1.equals("308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499"))
            {
                Log.d("MicroMsg.SDK.WXApiImplV10", "pass");
                return true;
            }
        }

        return false;
    }

    public final int getWXAppSupportAPI()
    {
        if (!isWXAppInstalled())
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "open wx app failed, not installed or signature check failed");
            return 0;
        } else
        {
            return (new MMSharedPreferences(q)).getInt("_build_info_sdk_int_", 0);
        }
    }

    public final boolean handleIntent(Intent intent, IWXAPIEventHandler iwxapieventhandler)
    {
        boolean flag;
        if (intent == null)
        {
            flag = false;
        } else
        {
            String s1 = intent.getStringExtra("wx_token_key");
            if (s1 == null || !s1.equals("com.tencent.mm.openapi.token"))
            {
                flag = false;
            } else
            {
                flag = true;
            }
        }
        if (!flag)
        {
            return false;
        }
        String s2 = intent.getStringExtra("_mmessage_content");
        int i = intent.getIntExtra("_mmessage_sdkVersion", 0);
        String s3 = intent.getStringExtra("_mmessage_appPackage");
        if (s3 == null || s3.length() == 0)
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "invalid argument");
            return false;
        }
        byte abyte0[] = intent.getByteArrayExtra("_mmessage_checksum");
        StringBuffer stringbuffer = new StringBuffer();
        if (s2 != null)
        {
            stringbuffer.append(s2);
        }
        stringbuffer.append(i);
        stringbuffer.append(s3);
        stringbuffer.append("mMcShCsTr");
        if (!a(abyte0, MD5.getMessageDigest(stringbuffer.toString().substring(1, 9).getBytes()).getBytes()))
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "checksum fail");
            return false;
        }
        switch (intent.getIntExtra("_wxapi_command_type", 0))
        {
        default:
            return false;

        case 1: // '\001'
            iwxapieventhandler.onResp(new SendAuth.Resp(intent.getExtras()));
            return true;

        case 2: // '\002'
            iwxapieventhandler.onResp(new SendMessageToWX.Resp(intent.getExtras()));
            return true;

        case 3: // '\003'
            iwxapieventhandler.onReq(new GetMessageFromWX.Req(intent.getExtras()));
            return true;

        case 4: // '\004'
            iwxapieventhandler.onReq(new ShowMessageFromWX.Req(intent.getExtras()));
            break;
        }
        return true;
    }

    public final boolean isWXAppInstalled()
    {
        PackageInfo packageinfo;
        boolean flag;
        try
        {
            packageinfo = q.getPackageManager().getPackageInfo("com.tencent.mm", 64);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        if (packageinfo == null)
        {
            return false;
        }
        flag = a(packageinfo.signatures);
        return flag;
    }

    public final boolean isWXAppSupportAPI()
    {
        return getWXAppSupportAPI() >= 0x21040001;
    }

    public final boolean openWXApp()
    {
        if (!isWXAppInstalled())
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "open wx app failed, not installed or signature check failed");
            return false;
        }
        try
        {
            q.startActivity(q.getPackageManager().getLaunchIntentForPackage("com.tencent.mm"));
        }
        catch (Exception exception)
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", (new StringBuilder("startActivity fail, exception = ")).append(exception.getMessage()).toString());
            return false;
        }
        return true;
    }

    public final boolean registerApp(String s1)
    {
        if (!a("com.tencent.mm"))
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "register app failed for wechat app signature check failed");
            return false;
        }
        if (s1 != null)
        {
            r = s1;
        }
        Log.d("MicroMsg.SDK.WXApiImplV10", (new StringBuilder("register app ")).append(q.getPackageName()).toString());
        MMessage.send(q, "com.tencent.mm", "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER", (new StringBuilder("weixin://registerapp?appid=")).append(r).toString());
        return true;
    }

    public final boolean sendReq(BaseReq basereq)
    {
        if (!a("com.tencent.mm"))
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "sendReq failed for wechat app signature check failed");
            return false;
        }
        if (!basereq.checkArgs())
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "sendReq checkArgs fail");
            return false;
        } else
        {
            Bundle bundle = new Bundle();
            basereq.toBundle(bundle);
            return MMessageAct.sendToWx(q, (new StringBuilder("weixin://sendreq?appid=")).append(r).toString(), bundle);
        }
    }

    public final boolean sendResp(BaseResp baseresp)
    {
        if (!a("com.tencent.mm"))
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "sendResp failed for wechat app signature check failed");
            return false;
        }
        if (!baseresp.checkArgs())
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "sendResp checkArgs fail");
            return false;
        } else
        {
            Bundle bundle = new Bundle();
            baseresp.toBundle(bundle);
            return MMessageAct.sendToWx(q, (new StringBuilder("weixin://sendresp?appid=")).append(r).toString(), bundle);
        }
    }

    public final void unregisterApp()
    {
        if (!a("com.tencent.mm"))
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "unregister app failed for wechat app signature check failed");
            return;
        }
        if (r == null || r.length() == 0)
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "unregisterApp fail, appId is empty");
            return;
        } else
        {
            Log.d("MicroMsg.SDK.WXApiImplV10", (new StringBuilder("unregister app ")).append(q.getPackageName()).toString());
            MMessage.send(q, "com.tencent.mm", "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_UNREGISTER", (new StringBuilder("weixin://unregisterapp?appid=")).append(r).toString());
            return;
        }
    }
}
