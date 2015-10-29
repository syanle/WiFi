// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component.sso;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.Uri;
import com.tencent.weibo.sdk.android.component.sso.tools.Base64;
import com.tencent.weibo.sdk.android.component.sso.tools.Cryptor;
import com.tencent.weibo.sdk.android.component.sso.tools.MD5Tools;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Random;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package com.tencent.weibo.sdk.android.component.sso:
//            AuthReceiver, OnAuthListener

public final class AuthHelper
{

    static final String ENCRYPT_KEY = "&-*)Wb5_U,[^!9'+";
    static final int ERROR_WEIBO_INSTALL_NEEDED = -2;
    static final int ERROR_WEIBO_UPGRADE_NEEDED = -1;
    static final byte SDK_VERSION = 1;
    static final int SUPPORT_WEIBO_MIN_VERSION = 44;
    static final String WEIBO_AUTH_URL = "TencentAuth://weibo";
    static final String WEIBO_PACKAGE = "com.tencent.WBlog";
    static final int WEIBO_VALIDATE_OK = 0;
    protected static String appSecret;
    protected static long appid;
    protected static OnAuthListener listener;
    private static AuthReceiver mReceiver = new AuthReceiver();

    public AuthHelper()
    {
    }

    public static final boolean auth(Context context, String s)
    {
        int i = validateWeiboApp(context);
        if (i != 0) goto _L2; else goto _L1
_L1:
        String s1;
        Object obj;
        String s2;
        byte abyte1[];
        String s3;
        long l;
        long l1;
        l = System.currentTimeMillis() / 1000L;
        l1 = Math.abs((new Random()).nextInt());
        s2 = getApkSignature(context);
        byte abyte0[] = generateSignature(appid, appSecret, l, l1);
        if (abyte0 == null)
        {
            if (listener != null)
            {
                listener.onAuthFail(-1, "");
            }
            return false;
        }
        abyte1 = encypt(abyte0);
        s3 = context.getPackageName();
        obj = context.getPackageManager();
        s1 = "";
        obj = ((PackageManager) (obj)).getApplicationLabel(((PackageManager) (obj)).getApplicationInfo(s3, 0)).toString();
        s1 = ((String) (obj));
_L4:
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("TencentAuth://weibo"));
        intent.putExtra("com.tencent.sso.APP_ID", appid);
        intent.putExtra("com.tencent.sso.TIMESTAMP", l);
        intent.putExtra("com.tencent.sso.NONCE", l1);
        intent.putExtra("com.tencent.sso.SDK_VERSION", (byte)1);
        intent.putExtra("com.tencent.sso.PACKAGE_NAME", s3);
        intent.putExtra("com.tencent.sso.ICON_MD5", s2);
        intent.putExtra("com.tencent.sso.APP_NAME", s1);
        intent.putExtra("com.tencent.sso.SIGNATURE", abyte1);
        intent.putExtra("com.tencent.sso.RESERVER", s);
        context.startActivity(intent);
        return true;
_L2:
        if (i == -1)
        {
            if (listener != null)
            {
                listener.onWeiboVersionMisMatch();
            }
            return false;
        }
        if (i == -2)
        {
            if (listener != null)
            {
                listener.onWeiBoNotInstalled();
            }
            return false;
        } else
        {
            return false;
        }
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static byte[] encypt(byte abyte0[])
    {
        return (new Cryptor()).encrypt(abyte0, "&-*)Wb5_U,[^!9'+".getBytes());
    }

    private static byte[] generateSignature(long l, String s, long l1, long l2)
    {
        Object obj = null;
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(l);
        stringbuffer.append(l1);
        stringbuffer.append(l2);
        stringbuffer.append(1);
        try
        {
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(new SecretKeySpec(s.getBytes("UTF-8"), mac.getAlgorithm()));
            s = mac.doFinal(stringbuffer.toString().getBytes("UTF-8"));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = obj;
        }
        return Base64.encode(s).getBytes();
    }

    private static String getApkSignature(Context context)
    {
        context = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures[0];
        context = (X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(context.toByteArray()));
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(context.getPublicKey().toString());
        stringbuffer.append(context.getSerialNumber().toString());
        context = MD5Tools.toMD5(stringbuffer.toString());
        return context;
        context;
        context.printStackTrace();
_L2:
        return "";
        context;
        context.printStackTrace();
        continue; /* Loop/switch isn't completed */
        context;
        context.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static final void register(Context context, long l, String s, OnAuthListener onauthlistener)
    {
        appid = l;
        appSecret = s;
        listener = onauthlistener;
        s = new IntentFilter("com.tencent.sso.AUTH");
        s.addCategory("android.intent.category.DEFAULT");
        context.registerReceiver(mReceiver, s);
    }

    public static final void unregister(Context context)
    {
        context.unregisterReceiver(mReceiver);
    }

    private static int validateWeiboApp(Context context)
    {
        context = context.getPackageManager();
        PackageInfo packageinfo;
        int i;
        try
        {
            packageinfo = context.getPackageInfo("com.tencent.WBlog", 16);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return -2;
        }
        if (packageinfo == null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        if (packageinfo.versionCode < 44)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        i = context.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("TencentAuth://weibo")), 0x10000).size();
        if (i > 0)
        {
            return 0;
        }
        return -1;
    }

}
