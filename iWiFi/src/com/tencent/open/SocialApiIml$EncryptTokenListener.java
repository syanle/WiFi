// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.open:
//            SocialApiIml

class mBundle
    implements IUiListener
{

    private String mAction;
    private Bundle mBundle;
    private IUiListener mListener;
    private String mUrl;
    final SocialApiIml this$0;

    public void onCancel()
    {
        mListener.onCancel();
    }

    public void onComplete(JSONObject jsonobject)
    {
        try
        {
            jsonobject = jsonobject.getString("encry_token");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            jsonobject.printStackTrace();
            WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi, EncrytokenListener() onComplete error", jsonobject);
            jsonobject = null;
        }
        mBundle.putString("encrytoken", jsonobject);
        SocialApiIml.access$400(SocialApiIml.this, SocialApiIml.access$100(SocialApiIml.this), mAction, mBundle, mUrl, mListener);
        if (TextUtils.isEmpty(jsonobject))
        {
            Log.d("miles", "The token get from qq or qzone is empty. Write temp token to localstorage.");
            writeEncryToken(SocialApiIml.access$500(SocialApiIml.this));
        }
    }

    public void onError(UiError uierror)
    {
        WnsClientLog.getInstance().d("openSDK_LOG", (new StringBuilder()).append("OpenApi, EncryptTokenListener() onError").append(uierror.errorMessage).toString());
        mListener.onError(uierror);
    }

    (IUiListener iuilistener, String s, String s1, Bundle bundle)
    {
        this$0 = SocialApiIml.this;
        super();
        mListener = iuilistener;
        mAction = s;
        mUrl = s1;
        mBundle = bundle;
    }
}
