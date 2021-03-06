// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.openapi;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.laiwang.sdk.openapi:
//            LWAPI

public class LwSecurity
{

    private static final String LW_SIGNATURE_DEBUG = "308201e53082014ea00302010202044e51feda300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3131303832323037303134365a170d3431303831343037303134365a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d0030818902818100d863f4f3100ca2bc9d15503284e09b64cad4008144bc48f0bc7e5d0e097f07041e5a2e29520dfbd4e0746401438cb20819de56dc9cf26cdc6c5d1a9da4b32ffa80bc960e7d01c7b067167c5df676d64d916d09d37f9ccad935275dd2e480c360cd95a045263a298b2718a03217ea822c5cef78035cd2b114baac552a104e48670203010001300d06092a864886f70d0101050500038181006d929e4f794c5849e13ae90c8803307778257a6d27be8a32bccee13b370888afefcffeeae52eb2eea985112f46301d3e386bb8dfe8560f1bce2c64e5744be5abbc6b73320c2f2a774a189574d2fafe7ec942455bcdcac51e4805e916321f06356e03b44e8e449c87fd33152ff9d294f3ae85da83fd880a5c4671da7c75d0da0d";
    private static final String LW_SIGNATURE_RELEASE = "308201e730820150a00302010202044eca1289300d06092a864886f70d010105050030383111300f0603550407130868616e677a686f753110300e060355040a1307616c69626162613111300f06035504031308786965716962616f301e170d3131313132313038353734355a170d3434313131323038353734355a30383111300f0603550407130868616e677a686f753110300e060355040a1307616c69626162613111300f06035504031308786965716962616f30819f300d06092a864886f70d010101050003818d0030818902818100cb09f672e5ab59a06281794326367a90d306c123e4328536a215d9f0c7c021cf1b1b2a3a2a232ad0b8492e77181cef510bd3c008e0baea3094df301a2f11d90ae89cf6be8a811c66093622f5cf00952fdf53e5bb1d653b1664c839a3d47c3512f882d7c728e9f5f94f281ac5cdb9bd3fe3ffe33021f553c010e3313acf7008d70203010001300d06092a864886f70d010105050003818100ba4fde6c721b3cdf4aa27d0990cb3c764c78d2af888648f0b9593c5c82795b5df057cca2524ea6d38c2105894cc02af04ed2712950d4e3c30bb5f716aba72c012f6576669df95fa9fd0fd8e2559322d48f6c2c3796e1905aaa46f09acbc7755628061246f365301e22e85ca50e27682829d0ff89ba4700c2452d9a373bdab7eb";
    public static boolean sIsSecuritySahreSDK = false;
    private static LwSecurity sLwSecurity = null;
    public Context mContext;

    public LwSecurity(Context context)
    {
        mContext = null;
        mContext = context;
    }

    public static LwSecurity getInstance()
    {
        if (sLwSecurity == null)
        {
            sLwSecurity = new LwSecurity(LWAPI.getApplication());
        }
        return sLwSecurity;
    }

    private String[] getPackageNameByPID(int i)
    {
        Object obj = ((ActivityManager)mContext.getSystemService("activity")).getRunningAppProcesses();
        if (obj != null && ((List) (obj)).size() > 0) goto _L2; else goto _L1
_L1:
        Log.e("LWAPI", "runningProcess err");
_L4:
        return null;
_L2:
        android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo;
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)((Iterator) (obj)).next();
        } while (runningappprocessinfo.pid != i);
        break; /* Loop/switch isn't completed */
        if (true) goto _L4; else goto _L3
_L3:
        return runningappprocessinfo.pkgList;
    }

    public static String getPackageSignature(Context context, String s)
    {
        context = context.getPackageManager().getInstalledPackages(64).iterator();
        PackageInfo packageinfo;
        do
        {
            if (!context.hasNext())
            {
                return null;
            }
            packageinfo = (PackageInfo)context.next();
        } while (!packageinfo.packageName.equals(s));
        return packageinfo.signatures[0].toCharsString();
    }

    public static boolean isLWAPPImpl(Context context, String s)
    {
        context = getPackageSignature(context, s);
        return "308201e53082014ea00302010202044e51feda300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3131303832323037303134365a170d3431303831343037303134365a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d0030818902818100d863f4f3100ca2bc9d15503284e09b64cad4008144bc48f0bc7e5d0e097f07041e5a2e29520dfbd4e0746401438cb20819de56dc9cf26cdc6c5d1a9da4b32ffa80bc960e7d01c7b067167c5df676d64d916d09d37f9ccad935275dd2e480c360cd95a045263a298b2718a03217ea822c5cef78035cd2b114baac552a104e48670203010001300d06092a864886f70d0101050500038181006d929e4f794c5849e13ae90c8803307778257a6d27be8a32bccee13b370888afefcffeeae52eb2eea985112f46301d3e386bb8dfe8560f1bce2c64e5744be5abbc6b73320c2f2a774a189574d2fafe7ec942455bcdcac51e4805e916321f06356e03b44e8e449c87fd33152ff9d294f3ae85da83fd880a5c4671da7c75d0da0d".equals(context) || "308201e730820150a00302010202044eca1289300d06092a864886f70d010105050030383111300f0603550407130868616e677a686f753110300e060355040a1307616c69626162613111300f06035504031308786965716962616f301e170d3131313132313038353734355a170d3434313131323038353734355a30383111300f0603550407130868616e677a686f753110300e060355040a1307616c69626162613111300f06035504031308786965716962616f30819f300d06092a864886f70d010101050003818d0030818902818100cb09f672e5ab59a06281794326367a90d306c123e4328536a215d9f0c7c021cf1b1b2a3a2a232ad0b8492e77181cef510bd3c008e0baea3094df301a2f11d90ae89cf6be8a811c66093622f5cf00952fdf53e5bb1d653b1664c839a3d47c3512f882d7c728e9f5f94f281ac5cdb9bd3fe3ffe33021f553c010e3313acf7008d70203010001300d06092a864886f70d010105050003818100ba4fde6c721b3cdf4aa27d0990cb3c764c78d2af888648f0b9593c5c82795b5df057cca2524ea6d38c2105894cc02af04ed2712950d4e3c30bb5f716aba72c012f6576669df95fa9fd0fd8e2559322d48f6c2c3796e1905aaa46f09acbc7755628061246f365301e22e85ca50e27682829d0ff89ba4700c2452d9a373bdab7eb".equals(context);
    }

    public static boolean load()
    {
        try
        {
            System.loadLibrary("LwUtils");
        }
        catch (UnsatisfiedLinkError unsatisfiedlinkerror)
        {
            unsatisfiedlinkerror.printStackTrace();
            sIsSecuritySahreSDK = false;
            return false;
        }
        return true;
    }

    public native boolean checkCertificate(String s);

    public boolean checkCertificateByPID(int i)
    {
        if (sIsSecuritySahreSDK) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        String as[];
        int j;
        as = getPackageNameByPID(i);
        if (as == null)
        {
            return false;
        }
        flag = false;
        j = as.length;
        i = 0;
_L6:
        if (i >= j) goto _L4; else goto _L3
_L3:
        boolean flag1;
        String s = as[i];
        if (TextUtils.isEmpty(s))
        {
            return false;
        }
        flag1 = checkCertificate(s);
        flag = flag1;
        if (flag1) goto _L4; else goto _L5
_L5:
        i++;
        flag = flag1;
          goto _L6
    }

    public boolean checkCertificateByUID(int i)
    {
        boolean flag = true;
        if (sIsSecuritySahreSDK) goto _L2; else goto _L1
_L1:
        String as[];
        return flag;
_L2:
        if ((as = getPackageNameByUID(i)) == null) goto _L1; else goto _L3
_L3:
        int j;
        flag = false;
        j = as.length;
        i = 0;
_L6:
        if (i >= j) goto _L1; else goto _L4
_L4:
        boolean flag1;
        String s = as[i];
        if (TextUtils.isEmpty(s))
        {
            return false;
        }
        Log.i("LWAPI", (new StringBuilder("packageName:")).append(s).toString());
        flag1 = checkCertificate(s);
        flag = flag1;
        if (flag1) goto _L1; else goto _L5
_L5:
        i++;
        flag = flag1;
          goto _L6
    }

    public String[] getPackageNameByUID(int i)
    {
        Object obj = ((ActivityManager)mContext.getSystemService("activity")).getRunningAppProcesses();
        if (obj != null && ((List) (obj)).size() > 0) goto _L2; else goto _L1
_L1:
        Log.e("LWAPI", "runningProcess err");
_L4:
        return null;
_L2:
        android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo;
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)((Iterator) (obj)).next();
        } while (runningappprocessinfo.uid != i);
        break; /* Loop/switch isn't completed */
        if (true) goto _L4; else goto _L3
_L3:
        return runningappprocessinfo.pkgList;
    }

}
