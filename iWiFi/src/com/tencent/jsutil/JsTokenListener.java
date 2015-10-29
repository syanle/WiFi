// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import com.tencent.mta.TencentStat;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.QQToken;
import com.tencent.tauth.UiError;
import org.json.JSONException;
import org.json.JSONObject;

public class JsTokenListener
    implements IUiListener
{

    private static final int ONCANCEL_MSG = 2;
    private static final int ONCOMPLETE_MSG = 0;
    private static final int ONERROR_MSG = 1;
    private Context ctx;
    private Handler mHandler;
    private IUiListener mIUiListener;
    private QQToken mQqToken;

    public JsTokenListener(IUiListener iuilistener, QQToken qqtoken, Context context)
    {
        mIUiListener = null;
        mHandler = new _cls1();
        mIUiListener = iuilistener;
        mQqToken = qqtoken;
        ctx = context;
    }

    private void doCancel()
    {
        mIUiListener.onCancel();
    }

    private void doComplete(JSONObject jsonobject)
    {
        String s;
        Exception exception;
        String s1;
        String s2;
        try
        {
            s = jsonobject.getString("access_token");
            s1 = jsonobject.getString("expires_in");
            s2 = jsonobject.getString("openid");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            jsonobject.printStackTrace();
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        if (mQqToken == null || s2 == null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        mQqToken.setAccessToken(s, s1);
        mQqToken.setOpenId(s2);
        TencentStat.c(ctx, mQqToken);
        s = jsonobject.getString("pf");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_110;
        }
        mQqToken.getAppContext().getSharedPreferences("pfStore", 0).edit().putString("pf", s).commit();
_L1:
        mIUiListener.onComplete(jsonobject);
        return;
        exception;
        exception.printStackTrace();
        WnsClientLog.getInstance().e("openSDK_LOG", "JsTokenListener, JsTokenListener() onComplete error", exception);
          goto _L1
    }

    private void doError(UiError uierror)
    {
        mIUiListener.onError(uierror);
    }

    public void onCancel()
    {
        mHandler.sendEmptyMessage(2);
    }

    public void onComplete(JSONObject jsonobject)
    {
        Message message = new Message();
        message.what = 0;
        message.obj = jsonobject;
        mHandler.sendMessage(message);
    }

    public void onError(UiError uierror)
    {
        Message message = new Message();
        message.what = 1;
        message.obj = uierror;
        mHandler.sendMessage(message);
    }




    private class _cls1 extends Handler
    {

        final JsTokenListener this$0;

        public void handleMessage(Message message)
        {
            switch (message.what)
            {
            default:
                return;

            case 0: // '\0'
                message = (JSONObject)message.obj;
                doComplete(message);
                return;

            case 1: // '\001'
                message = (UiError)message.obj;
                doError(message);
                return;

            case 2: // '\002'
                doCancel();
                break;
            }
        }

        _cls1()
        {
            this$0 = JsTokenListener.this;
            super();
        }
    }

}
