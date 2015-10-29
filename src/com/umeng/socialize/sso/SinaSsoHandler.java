// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sso;

import android.app.Activity;
import android.app.Application;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.controller.UMSsoHandler;
import com.umeng.socialize.controller.impl.c;
import com.umeng.socialize.exception.SocializeException;

// Referenced classes of package com.umeng.socialize.sso:
//            a

public class SinaSsoHandler extends UMSsoHandler
{

    private static final String REDIRECT_URL = "http://sns.whalecloud.com";
    private static final String WEIBO_SIGNATURE = "30820295308201fea00302010202044b4ef1bf300d06092a864886f70d010105050030818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c74643020170d3130303131343130323831355a180f32303630303130323130323831355a30818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c746430819f300d06092a864886f70d010101050003818d00308189028181009d367115bc206c86c237bb56c8e9033111889b5691f051b28d1aa8e42b66b7413657635b44786ea7e85d451a12a82a331fced99c48717922170b7fc9bc1040753c0d38b4cf2b22094b1df7c55705b0989441e75913a1a8bd2bc591aa729a1013c277c01c98cbec7da5ad7778b2fad62b85ac29ca28ced588638c98d6b7df5a130203010001300d06092a864886f70d0101050500038181000ad4b4c4dec800bd8fd2991adfd70676fce8ba9692ae50475f60ec468d1b758a665e961a3aedbece9fd4d7ce9295cd83f5f19dc441a065689d9820faedbb7c4a4c4635f5ba1293f6da4b72ed32fb8795f736a20c95cda776402099054fccefb4a1a558664ab8d637288feceba9508aa907fc1fe2b1ae5a0dec954ed831c0bea4";
    private static String ssoActivityName = "";
    private static String ssoPackageName = "";
    private String TAG;
    private Activity mAuthActivity;
    private com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener mAuthListener;
    private SHARE_MEDIA mPlatform;
    private ServiceConnection mServiceConnection;

    public SinaSsoHandler()
    {
        mServiceConnection = null;
        mPlatform = SHARE_MEDIA.SINA;
        TAG = "SinaSsoHandler";
    }

    private void authorize(int i, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        mAuthListener = umauthlistener;
        if (!bindRemoteSSOService(mAuthActivity) && umauthlistener != null)
        {
            umauthlistener.onError(new SocializeException("start sina remote service failed."), mPlatform);
        }
        SocializeConfig.setSelectedPlatfrom(SHARE_MEDIA.SINA);
    }

    private boolean bindRemoteSSOService(Activity activity)
    {
        return activity.getApplicationContext().bindService(new Intent("com.sina.weibo.remotessoservice"), mServiceConnection, 1);
    }

    private boolean startSingleSignOn(Activity activity, String s, String as[], int i)
    {
        boolean flag = true;
        Intent intent = new Intent();
        intent.setClassName(ssoPackageName, ssoActivityName);
        intent.putExtra("appKey", s);
        intent.putExtra("redirectUri", "http://sns.whalecloud.com");
        if (as.length > 0)
        {
            intent.putExtra("scope", TextUtils.join(",", as));
        }
        if (!validateAppSignatureForIntent(activity, intent))
        {
            return false;
        }
        try
        {
            activity.startActivityForResult(intent, i);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            flag = false;
        }
        activity.getApplication().unbindService(mServiceConnection);
        return flag;
    }

    private boolean validateAppSignatureForIntent(Activity activity, Intent intent)
    {
        intent = activity.getPackageManager().resolveActivity(intent, 0);
        if (intent != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        intent = ((ResolveInfo) (intent)).activityInfo.packageName;
        int i;
        int j;
        boolean flag;
        try
        {
            activity = activity.getPackageManager().getPackageInfo(intent, 64).signatures;
            j = activity.length;
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            return false;
        }
        i = 0;
        if (i >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        flag = "30820295308201fea00302010202044b4ef1bf300d06092a864886f70d010105050030818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c74643020170d3130303131343130323831355a180f32303630303130323130323831355a30818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c746430819f300d06092a864886f70d010101050003818d00308189028181009d367115bc206c86c237bb56c8e9033111889b5691f051b28d1aa8e42b66b7413657635b44786ea7e85d451a12a82a331fced99c48717922170b7fc9bc1040753c0d38b4cf2b22094b1df7c55705b0989441e75913a1a8bd2bc591aa729a1013c277c01c98cbec7da5ad7778b2fad62b85ac29ca28ced588638c98d6b7df5a130203010001300d06092a864886f70d0101050500038181000ad4b4c4dec800bd8fd2991adfd70676fce8ba9692ae50475f60ec468d1b758a665e961a3aedbece9fd4d7ce9295cd83f5f19dc441a065689d9820faedbb7c4a4c4635f5ba1293f6da4b72ed32fb8795f736a20c95cda776402099054fccefb4a1a558664ab8d637288feceba9508aa907fc1fe2b1ae5a0dec954ed831c0bea4".equals(activity[i].toCharsString());
        if (flag)
        {
            return true;
        }
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_73;
_L4:
        break MISSING_BLOCK_LABEL_44;
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void authorize(Activity activity, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        mAuthActivity = activity;
        mServiceConnection = new a(this, umauthlistener);
        authorize(5668, umauthlistener);
    }

    public void authorizeCallBack(int i, int j, Intent intent)
    {
        Log.i(TAG, "had been sina sso authorizeCallBack...");
        if (c.c != null)
        {
            c.c.setMessage("\u8DF3\u8F6C\u7F16\u8F91\u9875\u4E2D\uFF0C\u8BF7\u7A0D\u5019...");
        }
        if (i != 5668) goto _L2; else goto _L1
_L1:
        if (j != -1) goto _L4; else goto _L3
_L3:
        String s;
        String s1 = intent.getStringExtra("error");
        s = s1;
        if (s1 == null)
        {
            s = intent.getStringExtra("error_type");
        }
        if (s == null) goto _L6; else goto _L5
_L5:
        if (!s.equals("access_denied") && !s.equals("OAuthAccessDeniedException")) goto _L8; else goto _L7
_L7:
        Log.d("Weibo-authorize", "Login canceled by user.");
        mAuthListener.onCancel(mPlatform);
_L2:
        return;
_L8:
        String s2 = intent.getStringExtra("error_description");
        intent = s;
        if (s2 != null)
        {
            intent = (new StringBuilder(String.valueOf(s))).append(":").append(s2).toString();
        }
        Log.d("Weibo-authorize", (new StringBuilder("Login failed: ")).append(intent).toString());
        mAuthListener.onError(new SocializeException(j, s2), mPlatform);
        return;
_L6:
        if (mAuthListener != null)
        {
            mAuthListener.onComplete(intent.getExtras(), mPlatform);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (j == 0)
        {
            if (intent != null)
            {
                Log.d("Weibo-authorize", (new StringBuilder("Login failed: ")).append(intent.getStringExtra("error")).toString());
                mAuthListener.onError(new SocializeException(intent.getIntExtra("error_code", -1), (new StringBuilder(String.valueOf(intent.getStringExtra("error")))).append(" : ").append(intent.getStringExtra("failing_url")).toString()), mPlatform);
                return;
            }
            if (mAuthListener != null)
            {
                Log.d("Weibo-authorize", "Login canceled by user.");
                mAuthListener.onCancel(mPlatform);
                return;
            }
        }
        if (true) goto _L2; else goto _L9
_L9:
    }

    public int getRequstCode()
    {
        return 5668;
    }






}
