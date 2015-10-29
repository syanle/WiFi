// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.content.Context;
import android.os.SystemClock;
import com.tencent.open.cgireport.ReportManager;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.sdkutil:
//            JsonUtil

class mWeakL
    implements IUiListener
{

    private String mAction;
    String mAppid;
    String mUrl;
    private WeakReference mWeakCtx;
    private IUiListener mWeakL;

    private void onComplete(String s)
    {
        try
        {
            onComplete(JsonUtil.parseJson(s));
            return;
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        onError(new UiError(-4, "\u670D\u52A1\u5668\u8FD4\u56DE\u6570\u636E\u683C\u5F0F\u6709\u8BEF!", s));
    }

    public void onCancel()
    {
        if (mWeakL != null)
        {
            mWeakL.onCancel();
            mWeakL = null;
        }
    }

    public void onComplete(JSONObject jsonobject)
    {
        ReportManager.getInstance().report((Context)mWeakCtx.get(), (new StringBuilder()).append(mAction).append("_H5").toString(), SystemClock.elapsedRealtime(), 0L, 0L, jsonobject.optInt("ret", -6), mAppid, mUrl, "1000067");
        if (mWeakL != null)
        {
            mWeakL.onComplete(jsonobject);
            mWeakL = null;
        }
    }

    public void onError(UiError uierror)
    {
        String s;
        if (uierror.errorMessage != null)
        {
            s = (new StringBuilder()).append(uierror.errorMessage).append(mUrl).toString();
        } else
        {
            s = mUrl;
        }
        ReportManager.getInstance().report((Context)mWeakCtx.get(), (new StringBuilder()).append(mAction).append("_H5").toString(), SystemClock.elapsedRealtime(), 0L, 0L, uierror.errorCode, mAppid, s, "1000067");
        if (mWeakL != null)
        {
            mWeakL.onError(uierror);
            mWeakL = null;
        }
    }


    public (Context context, String s, String s1, String s2, IUiListener iuilistener)
    {
        mWeakCtx = new WeakReference(context);
        mAction = s;
        mUrl = s1;
        mAppid = s2;
        mWeakL = iuilistener;
    }
}
