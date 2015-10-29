// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;
import java.security.MessageDigest;

// Referenced classes of package cn.sharesdk.wechat.utils:
//            WechatClientNotExistException, m, WechatHandlerActivity, b, 
//            k, e, c, f

public class j
{

    private Context a;
    private String b;

    public j()
    {
    }

    private String a(String s)
    {
        Object obj = Uri.parse("content://com.tencent.mm.sdk.plugin.provider/sharedpref");
        try
        {
            obj = a.getContentResolver().query(((Uri) (obj)), new String[] {
                "_id", "key", "type", "value"
            }, "key = ?", new String[] {
                s
            }, null);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.e(s);
            return null;
        }
        if (obj == null)
        {
            return null;
        }
        if (!((Cursor) (obj)).moveToFirst())
        {
            break MISSING_BLOCK_LABEL_99;
        }
        s = ((Cursor) (obj)).getString(((Cursor) (obj)).getColumnIndex("value"));
_L1:
        ((Cursor) (obj)).close();
        return s;
        s = null;
          goto _L1
    }

    private boolean a(byte abyte0[], byte abyte1[])
    {
        if (abyte0 == null || abyte0.length == 0)
        {
            Ln.e("checkSumConsistent fail, invalid arguments, \"_mmessage_checksum\" is empty", new Object[0]);
            return false;
        }
        if (abyte1 == null || abyte1.length == 0)
        {
            Ln.e("checkSumConsistent fail, invalid arguments, checksum is empty", new Object[0]);
            return false;
        }
        if (abyte0.length != abyte1.length)
        {
            Ln.e("checkSumConsistent fail, length is different", new Object[0]);
            return false;
        }
        for (int i = 0; i < abyte0.length; i++)
        {
            if (abyte0[i] != abyte1[i])
            {
                Ln.e("checkSumConsistent fail, not match", new Object[0]);
                return false;
            }
        }

        return true;
    }

    private byte[] a(String s, String s1, int i)
    {
        Object obj;
        boolean flag;
        obj = null;
        flag = false;
        StringBuffer stringbuffer = new StringBuffer();
        if (s != null)
        {
            stringbuffer.append(s);
        }
        stringbuffer.append(i);
        stringbuffer.append(s1);
        stringbuffer.append("mMcShCsTr");
        s1 = stringbuffer.toString().substring(1, 9).getBytes();
        s = new char[16];
        s;
        s[0] = '0';
        s[1] = '1';
        s[2] = '2';
        s[3] = '3';
        s[4] = '4';
        s[5] = '5';
        s[6] = '6';
        s[7] = '7';
        s[8] = '8';
        s[9] = '9';
        s[10] = 'a';
        s[11] = 'b';
        s[12] = 'c';
        s[13] = 'd';
        s[14] = 'e';
        s[15] = 'f';
        char ac[];
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(s1);
        s1 = messagedigest.digest();
        ac = new char[s1.length * 2];
        int l;
        l = 0;
        i = ((flag) ? 1 : 0);
        while (i < s1.length) 
        {
            byte byte0 = s1[i];
            int i1 = l + 1;
            ac[l] = s[byte0 >>> 4 & 0xf];
            l = i1 + 1;
            ac[i1] = s[byte0 & 0xf];
            i++;
        }
        try
        {
            s = new String(ac);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.e(s);
            s = null;
        }
        s1 = obj;
        if (s != null)
        {
            s1 = s.getBytes();
        }
        return s1;
    }

    private boolean d()
    {
        boolean flag1 = false;
        Ln.d("checking signature of wechat client...", new Object[0]);
        PackageInfo packageinfo;
        int i;
        int l;
        try
        {
            packageinfo = a.getPackageManager().getPackageInfo("com.tencent.mm", 64);
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
            return false;
        }
        l = packageinfo.signatures.length;
        i = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (i < l)
                {
                    if (!"308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499".equals(packageinfo.signatures[i].toCharsString()))
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

    public void a(m m1)
    {
        if (!b())
        {
            throw new WechatClientNotExistException();
        }
        if (!m1.b())
        {
            throw new Throwable("sendReq checkArgs fail");
        }
        String s = a.getPackageName();
        String s1 = (new StringBuilder()).append("weixin://sendreq?appid=").append(b).toString();
        Intent intent = new Intent();
        intent.setClassName("com.tencent.mm", "com.tencent.mm.plugin.base.stub.WXEntryActivity");
        Bundle bundle = new Bundle();
        m1.a(bundle);
        if (bundle != null)
        {
            intent.putExtras(bundle);
        }
        intent.putExtra("_mmessage_sdkVersion", 0x21030001);
        intent.putExtra("_mmessage_appPackage", s);
        intent.putExtra("_mmessage_content", s1);
        intent.putExtra("_mmessage_checksum", a(s1, s, 0x21030001));
        intent.addFlags(0x10000000);
        intent.addFlags(0x8000000);
        a.startActivity(intent);
        Ln.d("starting activity, packageName=com.tencent.mm, className=com.tencent.mm.plugin.base.stub.WXEntryActivity", new Object[0]);
    }

    public boolean a()
    {
        boolean flag1 = false;
        Object obj;
        int ai[];
        int i;
        try
        {
            obj = a.getPackageManager().getPackageInfo("com.tencent.mm", 0).versionName;
            Ln.i((new StringBuilder()).append("wechat versionName ==>> ").append(((String) (obj))).toString(), new Object[0]);
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
            throwable = "0";
        }
        obj = ((String) (obj)).split("_")[0].split("\\.");
        ai = new int[obj.length];
        i = 0;
        do
        {
            if (i >= ai.length)
            {
                break;
            }
            try
            {
                ai[i] = R.parseInt(obj[i]);
            }
            catch (Throwable throwable1)
            {
                Ln.e(throwable1);
                ai[i] = 0;
            }
            i++;
        } while (true);
        boolean flag = flag1;
        if (ai.length >= 4)
        {
            flag = flag1;
            if (ai[0] == 6)
            {
                flag = flag1;
                if (ai[1] == 0)
                {
                    flag = flag1;
                    if (ai[2] == 2)
                    {
                        flag = flag1;
                        if (ai[3] <= 56)
                        {
                            flag = true;
                        }
                    }
                }
            }
        }
        return flag;
    }

    public boolean a(Context context, String s)
    {
        a = context;
        b = s;
        if (!d())
        {
            Ln.e("register app failed for wechat app signature check failed", new Object[0]);
            return false;
        } else
        {
            s = (new StringBuilder()).append("weixin://registerapp?appid=").append(s).toString();
            String s1 = context.getPackageName();
            Intent intent = new Intent("com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER");
            intent.putExtra("_mmessage_sdkVersion", 0x21040001);
            intent.putExtra("_mmessage_appPackage", s1);
            intent.putExtra("_mmessage_content", s);
            intent.putExtra("_mmessage_checksum", a(s, s1, 0x21040001));
            context.sendBroadcast(intent, "com.tencent.mm.permission.MM_MESSAGE");
            Ln.d((new StringBuilder()).append("sending broadcast, intent=").append("com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER").append(", perm=").append("com.tencent.mm.permission.MM_MESSAGE").toString(), new Object[0]);
            return true;
        }
    }

    public boolean a(WechatHandlerActivity wechathandleractivity, k k1)
    {
        Object obj;
        obj = wechathandleractivity.getIntent();
        if (obj == null)
        {
            return false;
        }
        String s = ((Intent) (obj)).getStringExtra("wx_token_key");
        if (s == null || !s.equals("com.tencent.mm.openapi.token"))
        {
            Ln.e("invalid argument, \"wx_token_key\" is empty or does not equals \"com.tencent.mm.openapi.token\"", new Object[0]);
            return false;
        }
        s = ((Intent) (obj)).getStringExtra("_mmessage_appPackage");
        if (TextUtils.isEmpty(s))
        {
            Ln.e("invalid argument, \"_mmessage_appPackage\" is empty", new Object[0]);
            return false;
        }
        String s1 = ((Intent) (obj)).getStringExtra("_mmessage_content");
        int i = ((Intent) (obj)).getIntExtra("_mmessage_sdkVersion", 0);
        if (!a(((Intent) (obj)).getByteArrayExtra("_mmessage_checksum"), a(s1, s, i)))
        {
            Ln.e("checksum fail", new Object[0]);
            return false;
        }
        obj = ((Intent) (obj)).getExtras();
        ((Bundle) (obj)).getInt("_wxapi_command_type", 0);
        JVM INSTR tableswitch 1 4: default 176
    //                   1 178
    //                   2 192
    //                   3 207
    //                   4 225;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return false;
_L2:
        k1.a(new b(((Bundle) (obj))));
_L7:
        return true;
_L3:
        k1.a(new e(((Bundle) (obj))));
        continue; /* Loop/switch isn't completed */
_L4:
        wechathandleractivity.onGetMessageFromWXReq((new c(((Bundle) (obj)))).a);
        continue; /* Loop/switch isn't completed */
_L5:
        wechathandleractivity.onShowMessageFromWXReq((new f(((Bundle) (obj)))).a);
        if (true) goto _L7; else goto _L6
_L6:
    }

    public boolean b()
    {
        if (d())
        {
            String s = a("_build_info_sdk_int_");
            int i;
            try
            {
                i = R.parseInt(s);
            }
            catch (Throwable throwable)
            {
                Ln.e(throwable);
                i = -1;
            }
            if (i >= 0x21030001)
            {
                return true;
            }
        }
        return false;
    }

    public boolean c()
    {
        String s = a("_build_info_sdk_int_");
        int i;
        try
        {
            i = R.parseInt(s);
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
            i = -1;
        }
        return i >= 0x21020001;
    }
}
