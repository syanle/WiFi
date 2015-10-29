// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.mob.tools.utils.Ln;
import java.security.MessageDigest;

// Referenced classes of package cn.sharesdk.yixin.utils:
//            YixinClientNotExistException, a, YixinHandlerActivity, b, 
//            d

public class c
{

    private Context a;
    private String b;

    public c()
    {
    }

    private String a(byte abyte0[])
    {
        int j = 0;
        char ac[] = new char[16];
        ac;
        ac[0] = '0';
        ac[1] = '1';
        ac[2] = '2';
        ac[3] = '3';
        ac[4] = '4';
        ac[5] = '5';
        ac[6] = '6';
        ac[7] = '7';
        ac[8] = '8';
        ac[9] = '9';
        ac[10] = 'a';
        ac[11] = 'b';
        ac[12] = 'c';
        ac[13] = 'd';
        ac[14] = 'e';
        ac[15] = 'f';
        char ac1[];
        int i;
        byte byte0;
        int k;
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(abyte0);
            abyte0 = messagedigest.digest();
            ac1 = new char[abyte0.length * 2];
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            Ln.e(abyte0);
            return null;
        }
        i = 0;
        while (i < abyte0.length) 
        {
            byte0 = abyte0[i];
            k = j + 1;
            ac1[j] = ac[byte0 >>> 4 & 0xf];
            j = k + 1;
            ac1[k] = ac[byte0 & 0xf];
            i++;
        }
        abyte0 = new String(ac1);
        return abyte0;
    }

    private byte[] a(String s, String s1)
    {
        StringBuffer stringbuffer = new StringBuffer();
        if (s != null)
        {
            stringbuffer.append(s);
        }
        stringbuffer.append(10000L);
        stringbuffer.append(s1);
        stringbuffer.append("wDERqmMcFVCpTr");
        return a(stringbuffer.toString().substring(1, 9).getBytes()).getBytes();
    }

    private boolean c()
    {
        boolean flag1 = false;
        Ln.d("checking signature of yixin client...", new Object[0]);
        PackageInfo packageinfo;
        int i;
        int j;
        try
        {
            packageinfo = a.getPackageManager().getPackageInfo("im.yixin", 64);
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
            return false;
        }
        j = packageinfo.signatures.length;
        i = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (i < j)
                {
                    if (!"3082019f30820108a003020102020450d3f283300d06092a864886f70d010105050030133111300f060355040313086368696e6174656c3020170d3132313232313035323431395a180f32303632313230393035323431395a30133111300f060355040313086368696e6174656c30819f300d06092a864886f70d010101050003818d00308189028181009ec811f81e259d74109087d546a6b5cf0d4372a5c095c3de42db8dad608698bb9885d0afed6b1fb8188eec5a51dc086e7a9ef00a2071ec92f586a8faf9a3587a98d09a6e45bb3858f4a3ff1052140fa3ece902518bafe1935351a822eae166825b31f09fb0f25cd96fe3ee7b6b3f0d6fa20126a110f5af481097325a7f0c442b0203010001300d06092a864886f70d010105050003818100776f185197eb6f104a81269ac79d9f9aa02e570d535ea5082e9838a816eecce344fe70b222ec1a7ccb2c3d5ca9331d305f0925c2b111eebecdc42adbd34c85e1f1eb636c2589fcafe23d63ac48bbce8f0ac0ddbb5a72bbe13ee2273a18a7844365102d6395eebfef266a263c8b3ca8196bfda79375534d22b5be5a8a13c08ea8".equals(packageinfo.signatures[i].toCharsString()))
                    {
                        break label0;
                    }
                    Ln.d("pass!", new Object[0]);
                    flag = true;
                }
                return flag;
            }
            i++;
        } while (true);
    }

    public void a(a a1)
    {
        if (!a())
        {
            throw new YixinClientNotExistException();
        }
        if (a1 == null)
        {
            throw new NullPointerException("sendMsg error param req is null");
        }
        if (!a1.b())
        {
            Ln.e((new StringBuilder()).append("sendMsg: transaction=").append(a1.c).append(",checkArgs fail").toString(), new Object[0]);
            return;
        }
        Intent intent = new Intent("im.yixin.sdk.Intent.ACTION_MESSAGE");
        intent.setClassName("im.yixin", "im.yixin.sdk.communication.YXEntryActivity");
        Object obj = new Bundle();
        a1.b(((Bundle) (obj)));
        intent.putExtras(((Bundle) (obj)));
        a1 = (new StringBuilder()).append("yixin://sendreq?appid=").append(b).toString();
        obj = a.getPackageName();
        intent.putExtra("_yxmessage_sdkVersion", 10000L);
        intent.putExtra("_yxmessage_appPackage", ((String) (obj)));
        intent.putExtra("_yxmessage_content", a1);
        intent.putExtra("_yxmessage_checksum", a(((String) (a1)), ((String) (obj))));
        intent.addFlags(0x10000000);
        intent.addFlags(0x8000000);
        try
        {
            a.startActivity(intent);
        }
        catch (Throwable throwable)
        {
            Ln.e((new StringBuilder()).append("sendToYx failed: action=").append("im.yixin.sdk.Intent.ACTION_MESSAGE").append(",protocolData=").append(a1).append(",package=").append(((String) (obj))).append(", intent=").append(intent).toString(), new Object[0]);
            Ln.e(throwable);
            return;
        }
        Ln.d((new StringBuilder()).append("sendToYx success: action=").append("im.yixin.sdk.Intent.ACTION_MESSAGE").append(",protocolData=").append(a1).append(",package=").append(((String) (obj))).append(", intent=").append(intent).toString(), new Object[0]);
    }

    public boolean a()
    {
        if (c()) goto _L2; else goto _L1
_L1:
        PackageInfo packageinfo;
        return false;
_L2:
        if ((packageinfo = a.getPackageManager().getPackageInfo("im.yixin", 64)) == null || packageinfo.versionCode <= 146) goto _L1; else goto _L3
_L3:
        return true;
        Throwable throwable;
        throwable;
        Ln.e(throwable);
        return false;
    }

    public boolean a(Context context, String s)
    {
        a = context;
        b = s;
        if (!c())
        {
            Ln.e("register app failed for wechat app signature check failed", new Object[0]);
            return false;
        } else
        {
            Intent intent = new Intent("im.yixin.sdk.Intent.ACTION_HANDLE_APP_REG");
            s = (new StringBuilder()).append("yixin://registerapp?appid=").append(s).toString();
            String s1 = context.getPackageName();
            intent.putExtra("_yxmessage_sdkVersion", 10000L);
            intent.putExtra("_yxmessage_appPackage", s1);
            intent.putExtra("_yxmessage_content", s);
            intent.putExtra("_yxmessage_checksum", a(s, s1));
            context.sendBroadcast(intent, "im.yixin.sdk.permission.YIXIN_SDK_MESSAGE");
            Ln.d((new StringBuilder()).append("send success: action=").append("im.yixin.sdk.Intent.ACTION_HANDLE_APP_REG").append(",protocolData=").append(s).append(",package=").append(s1).append(", intent=").append("im.yixin.sdk.Intent.ACTION_HANDLE_APP_REG").append(", perm=").append("im.yixin.sdk.permission.YIXIN_SDK_MESSAGE").toString(), new Object[0]);
            return true;
        }
    }

    public boolean a(YixinHandlerActivity yixinhandleractivity, d d1)
    {
        Intent intent;
        Object obj;
        intent = yixinhandleractivity.getIntent();
        if (intent == null)
        {
            return false;
        }
        String s = intent.getStringExtra("_yxmessage_content");
        if (s == null || !s.startsWith("yixin://"))
        {
            Ln.e("handleIntent failed because !protocol.isValid()", new Object[0]);
            return false;
        }
        obj = Uri.parse(s);
        String s1 = ((Uri) (obj)).getQueryParameter("appid");
        obj = ((Uri) (obj)).getAuthority();
        if (TextUtils.isEmpty(s1) || TextUtils.isEmpty(((CharSequence) (obj))))
        {
            Ln.e("handleIntent failed because !protocol.isValid()", new Object[0]);
            return false;
        }
        long l = intent.getLongExtra("_yxmessage_sdkVersion", 0L);
        if (l < 1L)
        {
            Ln.e("handleIntent failed because !protocol.isValid()", new Object[0]);
            return false;
        }
        String s2 = intent.getStringExtra("_yxmessage_appPackage");
        if (TextUtils.isEmpty(s1))
        {
            Ln.e("handleIntent failed because !protocol.isValid()", new Object[0]);
            return false;
        }
        byte abyte1[] = intent.getByteArrayExtra("_yxmessage_checksum");
        byte abyte0[] = a((new StringBuilder()).append(s).append(l).toString(), s2);
        if (abyte1 == null || abyte0 == null || abyte1.length != abyte0.length)
        {
            Ln.e("handleIntent failed because !protocol.isValid()", new Object[0]);
            return false;
        }
        for (int i = 0; i < abyte1.length; i++)
        {
            if (abyte1[i] != abyte0[i])
            {
                Ln.e("handleIntent failed because !protocol.isValid()", new Object[0]);
                return false;
            }
        }

        intent.getIntExtra("_yxapi_command_type", 0);
        JVM INSTR tableswitch 1 1: default 300
    //                   1 302;
           goto _L1 _L2
_L1:
        return true;
_L2:
        if ("onReq".equalsIgnoreCase(((String) (obj))))
        {
            d1 = new a();
            d1.a(intent.getExtras());
            yixinhandleractivity.onReceiveMessageFromYX(((a) (d1)).a);
        } else
        if ("onResp".equalsIgnoreCase(((String) (obj))))
        {
            yixinhandleractivity = new b();
            yixinhandleractivity.a(intent.getExtras());
            d1.a(yixinhandleractivity);
        } else
        {
            Ln.e((new StringBuilder()).append("handleIntent error command passed from Yixin ").append(((String) (obj))).toString(), new Object[0]);
            return false;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public boolean b()
    {
        return true;
    }
}
