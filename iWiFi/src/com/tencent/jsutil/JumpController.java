// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.tencent.connect.common.AssistActivity;
import com.tencent.connect.common.b;
import com.tencent.sdkutil.AppUtils;
import com.tencent.sdkutil.JsonUtil;
import com.tencent.sdkutil.TemporaryStorage;
import com.tencent.tauth.QQToken;
import com.tencent.tauth.Tencent;
import org.json.JSONObject;

// Referenced classes of package com.tencent.jsutil:
//            JsBridge, IntentMap

public class JumpController extends b
{

    private static final String KEY_REQUEST_CODE = "key_request_code";
    private static final String TAG = "JumpAction";
    private final int SETAVATAR_REQUESTCODE = 0;
    private Activity activity;
    private QQToken mQQToken;

    public JumpController(Activity activity1, QQToken qqtoken)
    {
        super(activity1, qqtoken);
        activity = activity1;
        mQQToken = qqtoken;
    }

    public void jump(String s)
    {
        Intent intent = AppUtils.parseJsonToIntent(s);
        s = JsonUtil.parseJson(s);
        Log.d("jsonobj", s.toString());
        if (s.has("package_name") && s.has("class_name") && s.has("requestcode"))
        {
            String s1 = s.getString("package_name");
            String s2 = s.getString("class_name");
            int i = s.getInt("requestcode");
            intent.setClassName(s1, s2);
            mActivityIntent = intent;
            AssistActivity.a(this);
            mActivityIntent.putExtra("key_request_code", i);
            activity.startActivity(getAssitIntent());
        }
    }

    public void jumpSchema(String s)
    {
        JSONObject jsonobject = JsonUtil.parseJson(s);
        Object obj = "";
        boolean flag = false;
        int i = ((flag) ? 1 : 0);
        s = ((String) (obj));
        if (jsonobject.has("scheme"))
        {
            i = ((flag) ? 1 : 0);
            s = ((String) (obj));
            if (jsonobject.has("requestcode"))
            {
                s = jsonobject.getString("scheme");
                i = jsonobject.getInt("requestcode");
            }
        }
        Log.d("json", jsonobject.toString());
        obj = new Intent("android.intent.action.VIEW");
        ((Intent) (obj)).setData(Uri.parse(s.toString()));
        mActivityIntent = ((Intent) (obj));
        AssistActivity.a(this);
        mActivityIntent.putExtra("key_request_code", i);
        activity.startActivity(getAssitIntent());
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if (TemporaryStorage.getListener(i) == null || i == 0)
        {
            return;
        } else
        {
            Log.i("currentUrl", (new StringBuilder()).append(Tencent.mBridge.getWebViewCurrentUrl()).append("").toString());
            Tencent.intentmap.setIntentMap(intent);
            Tencent.mBridge.executeMethod("onActivityResult", new String[] {
                (new StringBuilder()).append("").append(i).toString(), (new StringBuilder()).append("").append(j).toString()
            });
            return;
        }
    }

    public void setActivity(Activity activity1)
    {
        activity = activity1;
        mContext = activity1;
    }
}
