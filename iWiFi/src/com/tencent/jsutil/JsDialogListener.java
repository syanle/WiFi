// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.tencent.tauth.QQToken;

public class JsDialogListener
{

    private static final String KEY_ACTION = "action";
    private static final String KEY_LISTENNER = "listenerKey";
    private static final String KEY_URL = "actionUrl";
    private static final int PK_DIALOG = 1;
    private static final int T_DIALOG = 2;
    private static final int WEB_DIALOG = 3;
    private Activity mActivity;
    private Handler mHandler;
    private QQToken mQQToken;

    public JsDialogListener(QQToken qqtoken, Activity activity)
    {
        mHandler = new _cls1();
        mQQToken = qqtoken;
        mActivity = activity;
    }

    public Activity getActivity()
    {
        return mActivity;
    }

    public void onOpenDialog(String s, String s1, int i)
    {
        Log.e("opendialog", mActivity.toString());
        Log.d("JsDialogListener", (new StringBuilder()).append("onOpenDialog action =").append(s).append(" url=").append(s1).append("key=").append(i).toString());
        Bundle bundle = new Bundle();
        bundle.putString("action", s);
        bundle.putString("actionUrl", s1);
        bundle.putInt("listenerKey", i);
        s1 = new Message();
        s1.setData(bundle);
        if ("action_brag".equals(s) || "action_challenge".equals(s))
        {
            s1.what = 1;
            mHandler.sendMessage(s1);
            return;
        } else
        {
            s1.what = 2;
            mHandler.sendMessage(s1);
            return;
        }
    }

    public void onOpenWebViewDialog(String s, String s1, int i)
    {
        Message message = new Message();
        Bundle bundle = new Bundle();
        bundle.putString("action", s1);
        bundle.putString("actionUrl", s);
        bundle.putInt("listenerKey", i);
        message.setData(bundle);
        message.what = 3;
        mHandler.sendMessage(message);
    }

    public void setActivity(Activity activity)
    {
        mActivity = activity;
    }



    private class _cls1 extends Handler
    {

        final JsDialogListener this$0;

        public void handleMessage(Message message)
        {
            Object obj = message.getData();
            String s = ((Bundle) (obj)).getString("action");
            String s1 = ((Bundle) (obj)).getString("actionUrl");
            obj = TemporaryStorage.getListener(((Bundle) (obj)).getInt("listenerKey"));
            if (message.what == 1)
            {
                (new PKDialog(mActivity, s, s1, ((com.tencent.tauth.IUiListener) (obj)), mQQToken)).show();
            } else
            {
                if (message.what == 2)
                {
                    Log.d("JsDialogListener", "creatDialog");
                    if (mActivity == null)
                    {
                        Log.e("mActivity", "null");
                    }
                    if (obj == null)
                    {
                        Log.e("listener", "null");
                    }
                    if (obj == null)
                    {
                        Log.e("mQQToken", "null");
                    }
                    Log.e("TDialog activity", mActivity.toString());
                    (new TDialog(mActivity, s, s1, ((com.tencent.tauth.IUiListener) (obj)), mQQToken)).show();
                    return;
                }
                if (message.what == 3)
                {
                    (new WebViewDialog(mActivity, s, s1, ((com.tencent.tauth.IUiListener) (obj)), mQQToken)).show();
                    return;
                }
            }
        }

        _cls1()
        {
            this$0 = JsDialogListener.this;
            super();
        }
    }

}
