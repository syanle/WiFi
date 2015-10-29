// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.connect.common;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.common.OpenConfig;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.sdkutil.JsonUtil;
import com.tencent.sdkutil.Util;
import com.tencent.tauth.Constants;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.QQToken;
import com.tencent.tauth.UiError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.connect.common:
//            AssistActivity, a

public abstract class b
{

    protected static final String ACTION_CHECK_TOKEN = "action_check_token";
    protected static final String ACTIVITY_AGENT = "com.tencent.open.agent.AgentActivity";
    protected static final String ACTIVITY_ENCRY_TOKEN = "com.tencent.open.agent.EncryTokenActivity";
    protected static final String DEFAULT_PF = "openmobile_android";
    private static final String KEY_REQUEST_CODE = "key_request_code";
    private static final int MSG_COMPLETE = 0;
    protected static final String PARAM_ENCRY_EOKEN = "encry_token";
    protected static final String PREFERENCE_PF = "pfStore";
    protected static int sRequestCode = 1000;
    protected Intent mActivityIntent;
    protected Context mContext;
    protected List mTaskList;
    protected QQToken mToken;
    protected IUiListener mUiListener;

    public b(Context context, QQToken qqtoken)
    {
        mTaskList = null;
        mActivityIntent = null;
        mUiListener = null;
        mContext = context;
        mToken = qqtoken;
        mTaskList = new ArrayList();
    }

    protected Bundle composeActivityParams()
    {
        Bundle bundle = new Bundle();
        bundle.putString("appid", mToken.getAppId());
        if (mToken.isSessionValid())
        {
            bundle.putString("keystr", mToken.getAccessToken());
            bundle.putString("keytype", "0x80");
        }
        String s = mToken.getOpenId();
        if (s != null)
        {
            bundle.putString("hopenid", s);
        }
        bundle.putString("platform", "androidqz");
        bundle.putString("pf", mContext.getSharedPreferences("pfStore", 0).getString("pf", "openmobile_android"));
        bundle.putString("pf", "openmobile_android");
        bundle.putString("sdkv", "2.0");
        bundle.putString("sdkp", "a");
        return bundle;
    }

    protected Bundle composeCGIParams()
    {
        Bundle bundle = new Bundle();
        bundle.putString("format", "json");
        bundle.putString("status_os", android.os.Build.VERSION.RELEASE);
        bundle.putString("status_machine", Build.MODEL);
        bundle.putString("status_version", android.os.Build.VERSION.SDK);
        bundle.putString("sdkv", "2.0");
        bundle.putString("sdkp", "a");
        if (mToken != null && mToken.isSessionValid())
        {
            bundle.putString("access_token", mToken.getAccessToken());
            bundle.putString("oauth_consumer_key", mToken.getAppId());
            bundle.putString("openid", mToken.getOpenId());
        }
        bundle.putString("appid_for_getting_config", mToken.getAppId());
        bundle.putString("pf", mContext.getSharedPreferences("pfStore", 0).getString("pf", "openmobile_android"));
        return bundle;
    }

    Intent getActivityIntent()
    {
        return mActivityIntent;
    }

    protected Intent getAgentIntent()
    {
        return getTargetActivityIntent("com.tencent.open.agent.AgentActivity");
    }

    protected Intent getAgentIntentWithTarget(String s)
    {
        Intent intent = new Intent();
        for (s = getTargetActivityIntent(s); s == null || s.getComponent() == null;)
        {
            return null;
        }

        intent.setClassName(s.getComponent().getPackageName(), "com.tencent.open.agent.AgentActivity");
        return intent;
    }

    protected Intent getAssitIntent()
    {
        return new Intent(mContext, com/tencent/connect/common/AssistActivity);
    }

    protected Intent getTargetActivityIntent(String s)
    {
        Intent intent;
        Object obj;
        Intent intent1;
        String s2;
        obj = null;
        intent = new Intent();
        intent.setClassName(Constants.PACKAGE_QZONE, s);
        intent1 = new Intent();
        intent1.setClassName(Constants.PACKAGE_QQ, s);
        s2 = Util.getAppVersionName(mContext, Constants.PACKAGE_QZONE);
        if (s2 != null) goto _L2; else goto _L1
_L1:
        if (!Util.isActivityExist(mContext, intent1)) goto _L4; else goto _L3
_L3:
        return intent1;
_L4:
        return null;
_L2:
        String s1 = OpenConfig.a(mContext, mToken.getAppId()).a("Common_SSO_QzoneVersion");
        s = s1;
        if (TextUtils.isEmpty(s1))
        {
            s = "4.0";
        }
        if (Util.compareVersion(s2, "3.4") >= 0 && Util.compareVersion(s2, s) < 0)
        {
            s = obj;
            if (Util.isActivityExist(mContext, intent))
            {
                s = obj;
                if (Util.isAppSignatureValid(mContext, intent.getComponent().getPackageName(), Constants.SIGNATRUE_QZONE))
                {
                    s = intent;
                }
            }
            return s;
        }
        if (!Util.isActivityExist(mContext, intent1))
        {
            if (!Util.isActivityExist(mContext, intent) || !Util.isAppSignatureValid(mContext, intent.getComponent().getPackageName(), Constants.SIGNATRUE_QZONE))
            {
                intent = null;
            }
            return intent;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    protected boolean hasActivityForIntent()
    {
        if (mActivityIntent != null)
        {
            return Util.isActivityExist(mContext, mActivityIntent);
        } else
        {
            return false;
        }
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        Object obj = null;
        Iterator iterator = mTaskList.iterator();
        IUiListener iuilistener;
        do
        {
            iuilistener = obj;
            if (!iterator.hasNext())
            {
                break;
            }
            a a1 = (a)iterator.next();
            if (a1.a != i)
            {
                continue;
            }
            iuilistener = a1.b;
            mTaskList.remove(a1);
            break;
        } while (true);
        if (iuilistener == null)
        {
            return;
        }
        if (j == -1)
        {
            i = intent.getIntExtra("key_error_code", 0);
            if (i == 0)
            {
                intent = intent.getStringExtra("key_response");
                if (intent != null)
                {
                    try
                    {
                        iuilistener.onComplete(JsonUtil.parseJson(intent));
                    }
                    catch (JSONException jsonexception)
                    {
                        iuilistener.onError(new UiError(-4, "\u670D\u52A1\u5668\u8FD4\u56DE\u6570\u636E\u683C\u5F0F\u6709\u8BEF!", intent));
                        WnsClientLog.getInstance().e("openSDK_LOG", "OpenUi, onActivityResult, json error", jsonexception);
                    }
                } else
                {
                    WnsClientLog.getInstance().d("openSDK_LOG", "OpenUi, onActivityResult, onComplete");
                    iuilistener.onComplete(new JSONObject());
                }
            } else
            {
                WnsClientLog.getInstance().e("openSDK_LOG", (new StringBuilder()).append("OpenUi, onActivityResult, onError = ").append(i).append("").toString());
                iuilistener.onError(new UiError(i, intent.getStringExtra("key_error_msg"), intent.getStringExtra("key_error_detail")));
            }
        } else
        {
            WnsClientLog.getInstance().d("openSDK_LOG", "OpenUi, onActivityResult, Constants.ACTIVITY_CANCEL");
            iuilistener.onCancel();
        }
        WnsClientLog.getInstance().stop();
    }

    protected void startAssitActivity(Activity activity, IUiListener iuilistener)
    {
        AssistActivity.a(this);
        int i = sRequestCode;
        sRequestCode = i + 1;
        mActivityIntent.putExtra("key_request_code", i);
        mTaskList.add(new a(this, i, iuilistener));
        activity.startActivity(getAssitIntent());
    }

}
