// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.os.Handler;
import android.os.Message;
import com.tencent.sdkutil.TemporaryStorage;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.jsutil:
//            JsIUiListener

public class PackIUiListener
    implements JsIUiListener
{

    private static final int CANCEL = 1;
    private static final int COMPLETE = 0;
    private static final int ERROR = 2;
    Handler mHandler;
    private IUiListener mIUiListener;

    public PackIUiListener()
    {
        mHandler = new _cls1();
    }

    public void onCancel(int i)
    {
        mIUiListener = TemporaryStorage.getListener(i);
        if (mIUiListener != null)
        {
            Message message = new Message();
            message.what = 1;
            mHandler.sendMessage(message);
        }
    }

    public void onComplete(String s, int i)
    {
        boolean flag = true;
        mIUiListener = TemporaryStorage.getListener(Integer.valueOf(i).intValue());
        if (mIUiListener != null)
        {
            i = 1;
        } else
        {
            i = 0;
        }
          goto _L1
_L2:
        if ((flag & i) == 0)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        Message message = new Message();
        message.what = 0;
        message.obj = new JSONObject(s);
        mHandler.sendMessage(message);
        return;
_L3:
        flag = false;
        if (false)
        {
        } else
        {
            break; /* Loop/switch isn't completed */
        }
        s;
        s.printStackTrace();
        return;
_L1:
        if (s == null) goto _L3; else goto _L2
    }

    public void onError(int i, String s, String s1, int j)
    {
        mIUiListener = TemporaryStorage.getListener(j);
        if (mIUiListener != null)
        {
            Message message = new Message();
            message.what = 2;
            message.obj = new UiError(i, s, s1);
            mHandler.sendMessage(message);
        }
    }


    private class _cls1 extends Handler
    {

        final PackIUiListener this$0;

        public void handleMessage(Message message)
        {
            switch (message.what)
            {
            default:
                return;

            case 0: // '\0'
                message = (JSONObject)message.obj;
                mIUiListener.onComplete(message);
                return;

            case 1: // '\001'
                mIUiListener.onCancel();
                return;

            case 2: // '\002'
                message = (UiError)message.obj;
                break;
            }
            mIUiListener.onError(message);
        }

        _cls1()
        {
            this$0 = PackIUiListener.this;
            super();
        }
    }

}
