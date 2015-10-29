// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.widget.Toast;
import im.yixin.sdk.channel.YXMessageActivityChannel;
import im.yixin.sdk.channel.YXMessageChannel;
import im.yixin.sdk.channel.YXMessageProtocol;
import im.yixin.sdk.channel.YXMessageUtil;
import im.yixin.sdk.util.SDKLogger;

// Referenced classes of package im.yixin.sdk.api:
//            IYXAPI, IYXAPICallbackEventHandler, BaseReq

final class YXApiImplementation
    implements IYXAPI
{

    private String appId;
    private Context applicationContext;

    YXApiImplementation(Context context, String s)
    {
        applicationContext = context.getApplicationContext();
        appId = s;
    }

    private PackageInfo getYixinAppPackageInfo()
    {
        PackageInfo packageinfo;
        try
        {
            packageinfo = applicationContext.getPackageManager().getPackageInfo("im.yixin", 64);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return null;
        }
        return packageinfo;
    }

    private void showYixinDownloadPage()
    {
        SDKLogger.i(im/yixin/sdk/api/YXApiImplementation, "showYixinDownloadPage:http://yixin.im/");
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse("http://yixin.im/"));
        intent.addFlags(0x10000000);
        applicationContext.startActivity(intent);
    }

    private boolean validateYixinAppSignature()
    {
        SDKLogger.i(im/yixin/sdk/api/YXApiImplementation, "validateYixinSignature");
        PackageInfo packageinfo;
        try
        {
            packageinfo = getYixinAppPackageInfo();
        }
        catch (Exception exception)
        {
            return false;
        }
        if (packageinfo == null)
        {
            return false;
        } else
        {
            return validateYixinAppSignature(packageinfo.signatures);
        }
    }

    private boolean validateYixinAppSignature(Signature asignature[])
    {
        if (asignature != null)
        {
            int j = asignature.length;
            int i = 0;
            while (i < j) 
            {
                String s = asignature[i].toCharsString();
                if (s.equals("3082019f30820108a003020102020450d3f283300d06092a864886f70d010105050030133111300f060355040313086368696e6174656c3020170d3132313232313035323431395a180f32303632313230393035323431395a30133111300f060355040313086368696e6174656c30819f300d06092a864886f70d010101050003818d00308189028181009ec811f81e259d74109087d546a6b5cf0d4372a5c095c3de42db8dad608698bb9885d0afed6b1fb8188eec5a51dc086e7a9ef00a2071ec92f586a8faf9a3587a98d09a6e45bb3858f4a3ff1052140fa3ece902518bafe1935351a822eae166825b31f09fb0f25cd96fe3ee7b6b3f0d6fa20126a110f5af481097325a7f0c442b0203010001300d06092a864886f70d010105050003818100776f185197eb6f104a81269ac79d9f9aa02e570d535ea5082e9838a816eecce344fe70b222ec1a7ccb2c3d5ca9331d305f0925c2b111eebecdc42adbd34c85e1f1eb636c2589fcafe23d63ac48bbce8f0ac0ddbb5a72bbe13ee2273a18a7844365102d6395eebfef266a263c8b3ca8196bfda79375534d22b5be5a8a13c08ea8") || s.equals("3082030d308201f5a003020102020401cc2ba1300d06092a864886f70d01010b05003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3133303231373232333431305a170d3433303231303232333431305a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730820122300d06092a864886f70d01010105000382010f003082010a0282010100a986894ad9e5faad066d576366d07bb7ab37ad97bb1691b01786d4a37202e7b71115a18392daef2639d8aa6d1c3ac9258c0ab75d006f34bc0273be63000c143843a8ef6ceda0f1de4426fab56c92a59e92d45874831746d39f8982ff89c674d286287b2d749cccd04ce112acb9ffb574a1da7d00188680562adfabe3b03bfef01cdb2e1452e9849f3269378d291bb7525b2f02d0a68725ab1237fd09d3c7e24746160b6a105fc4c781a89cd2aaeec98bcff24cc9916baab82bba79a14299593a543523bb1f327a56947908300b5713b6dd490bc7339d661bd356f2d4c453b78074974b48fd1c5b4ea48e3cb8603ef3cde0dfbf1e3bc2b9d7cb6505f9861b49150203010001a321301f301d0603551d0e041604147f7ead059498d489e43eb0e1a3a8fa57798aa205300d06092a864886f70d01010b050003820101007b650f42089d53e4486c4f0f0eb0fcda466aecd52cf9ce1af4bb48e540031e3b1cd76dc153173b823951882ba8c1790b7eb8f735deb222e0705884980d3fd1507777a82c9ff0cc8b4f6f98cb8ee219fc816fcbea1969055a913e0b7c10fa6af8dfeefc5cb79c88c3d420bb25bb7823610fdc48398b42486b0797d15ac4275138d7a4c7aa49f907efd80c26fc3e498492d633dbb1b866ac1fa42e39e26d27b9512d2cb1850e07ae924c0b2842d2a52c5216b927ed5267876ace7c6b737c05740c623f24cff28c9b23a514bc0daa510d25c646b5c45bf3c5a0f81d176eb9f454d1ef611aaae461cb8fb3ed01baf9017cda4801bd99d2bf3ef327a4ba7b7a0dc517"))
                {
                    return true;
                }
                i++;
            }
        }
        return false;
    }

    private boolean validateYixinAppVersion(PackageInfo packageinfo)
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("(packageInfo != null)=");
        boolean flag;
        if (packageinfo != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        SDKLogger.e(im/yixin/sdk/api/YXApiImplementation, stringbuilder.append(flag).append(",packageInfo.versionCode=").append(packageinfo.versionCode).toString());
        return packageinfo != null && packageinfo.versionCode > 146;
    }

    public String getAppId()
    {
        return appId;
    }

    public boolean handleIntent(Intent intent, IYXAPICallbackEventHandler iyxapicallbackeventhandler)
    {
        YXMessageProtocol yxmessageprotocol = YXMessageProtocol.parseProtocol(intent);
        if (yxmessageprotocol == null || !yxmessageprotocol.isValid())
        {
            SDKLogger.e(im/yixin/sdk/api/YXApiImplementation, "handleIntent failed because !protocol.isValid()");
            return false;
        }
        if ("onReq".equalsIgnoreCase(yxmessageprotocol.getCommand()))
        {
            switch (intent.getIntExtra("_yxapi_command_type", 0))
            {
            default:
                return true;

            case 1: // '\001'
                iyxapicallbackeventhandler.onReq(new SendMessageToYX.Req(intent.getExtras()));
                break;
            }
            return true;
        }
        if ("onResp".equalsIgnoreCase(yxmessageprotocol.getCommand()))
        {
            switch (intent.getIntExtra("_yxapi_command_type", 0))
            {
            default:
                return true;

            case 1: // '\001'
                iyxapicallbackeventhandler.onResp(new SendMessageToYX.Resp(intent.getExtras()));
                break;
            }
            return true;
        } else
        {
            SDKLogger.e(im/yixin/sdk/api/YXApiImplementation, (new StringBuilder()).append("handleIntent error command passed from Yixin ").append(yxmessageprotocol.getCommand()).toString());
            return true;
        }
    }

    public boolean isYXAppInstalled()
    {
        SDKLogger.i(im/yixin/sdk/api/YXApiImplementation, "isYXAppInstalled");
        return validateYixinAppSignature();
    }

    public boolean registerApp()
    {
        SDKLogger.i(im/yixin/sdk/api/YXApiImplementation, "registerApp");
        if (!validateYixinAppSignature() || YXMessageUtil.isBlank(appId))
        {
            SDKLogger.i(im/yixin/sdk/api/YXApiImplementation, "registerApp: validateYixinSignature - false or isBlank(this.appId)!");
            return false;
        } else
        {
            YXMessageChannel.sendData2Yixin(applicationContext, "im.yixin", "im.yixin.sdk.Intent.ACTION_HANDLE_APP_REG", (new StringBuilder()).append("yixin://registerapp?appid=").append(appId).toString());
            return true;
        }
    }

    public void sendMsg(BaseReq basereq)
    {
        Object obj = getYixinAppPackageInfo();
        if (obj == null || !validateYixinAppSignature(((PackageInfo) (obj)).signatures))
        {
            showYixinDownloadPage();
            return;
        }
        if (!validateYixinAppVersion(((PackageInfo) (obj))))
        {
            (new Handler()).post(new Runnable() {

                final YXApiImplementation this$0;

                public void run()
                {
                    Toast.makeText(applicationContext, "\u60A8\u7684\u6613\u4FE1\u7248\u672C\u8FC7\u4F4E\uFF0C\u8BF7\u5148\u5347\u7EA7!", 0).show();
                    showYixinDownloadPage();
                }

            
            {
                this$0 = YXApiImplementation.this;
                super();
            }
            });
            return;
        }
        if (basereq == null)
        {
            SDKLogger.i(im/yixin/sdk/api/YXApiImplementation, "sendMsg error param paramBaseReq is null");
            return;
        }
        SDKLogger.i(im/yixin/sdk/api/YXApiImplementation, (new StringBuilder()).append("sendMsg: transaction=").append(basereq.transaction).toString());
        obj = new Bundle();
        if (!basereq.checkArgs())
        {
            SDKLogger.i(im/yixin/sdk/api/YXApiImplementation, (new StringBuilder()).append("sendMsg: transaction=").append(basereq.transaction).append(",checkArgs fail").toString());
            return;
        } else
        {
            basereq.toBundle(((Bundle) (obj)));
            YXMessageChannel.sendData2Yixin(applicationContext, "im.yixin", "im.yixin.sdk.Intent.ACTION_MESSAGE", (new StringBuilder()).append("yixin://sendmsg?appid=").append(appId).toString(), ((Bundle) (obj)));
            return;
        }
    }

    public boolean sendRequest(BaseReq basereq)
    {
        PackageInfo packageinfo = getYixinAppPackageInfo();
        if (packageinfo == null || !validateYixinAppSignature(packageinfo.signatures))
        {
            showYixinDownloadPage();
            return false;
        }
        if (!validateYixinAppVersion(packageinfo))
        {
            (new Handler()).post(new Runnable() {

                final YXApiImplementation this$0;

                public void run()
                {
                    Toast.makeText(applicationContext.getApplicationContext(), "\u60A8\u7684\u6613\u4FE1\u7248\u672C\u8FC7\u4F4E\uFF0C\u8BF7\u5148\u5347\u7EA7!", 0).show();
                    showYixinDownloadPage();
                }

            
            {
                this$0 = YXApiImplementation.this;
                super();
            }
            });
            return false;
        }
        if (basereq == null)
        {
            SDKLogger.i(im/yixin/sdk/api/YXApiImplementation, "sendReq error parameter paramBaseReq is null.");
            return false;
        }
        SDKLogger.i(im/yixin/sdk/api/YXApiImplementation, (new StringBuilder()).append("sendReq: transaction=").append(basereq.transaction).toString());
        if (!basereq.checkArgs())
        {
            SDKLogger.i(im/yixin/sdk/api/YXApiImplementation, (new StringBuilder()).append("sendReq: transaction=").append(basereq.transaction).append(", checkArgs fail.").toString());
            return false;
        } else
        {
            Bundle bundle = new Bundle();
            basereq.toBundle(bundle);
            return YXMessageActivityChannel.sendData2Yixin(applicationContext, "im.yixin", "im.yixin.sdk.communication.YXEntryActivity", (new StringBuilder()).append("yixin://sendreq?appid=").append(appId).toString(), bundle);
        }
    }

    public void unRegisterApp()
    {
        SDKLogger.i(im/yixin/sdk/api/YXApiImplementation, "unregisterApp");
        if (!validateYixinAppSignature() || YXMessageUtil.isBlank(appId))
        {
            SDKLogger.i(im/yixin/sdk/api/YXApiImplementation, "unregisterApp: validateYixinSignature - false or isBlank(this.appId)!");
            return;
        } else
        {
            YXMessageChannel.sendData2Yixin(applicationContext, "im.yixin", "im.yixin.sdk.Intent.ACTION_HANDLE_APP_UNREGISTER", (new StringBuilder()).append("yixin://unregisterapp?appid=").append(appId).toString());
            return;
        }
    }


}
