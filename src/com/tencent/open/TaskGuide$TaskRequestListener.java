// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;

import android.os.Handler;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.open:
//            TaskGuide

class <init> extends <init>
{

    final TaskGuide this$0;

    protected void handleException(Exception exception)
    {
        if (exception != null)
        {
            exception.printStackTrace();
        }
        if (exception == null)
        {
            exception = new JSONObject();
            class _cls1
                implements Runnable
            {

                final TaskGuide.TaskRequestListener this$1;

                public void run()
                {
                    TaskGuide.access$3600(this$0, 2, TaskGuide.TaskState.INIT);
                }

            _cls1()
            {
                this$1 = TaskGuide.TaskRequestListener.this;
                super();
            }
            }

            try
            {
                exception.put("result", "\u6682\u65E0\u4EFB\u52A1");
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
            }
            mListener.onComplete(exception);
        } else
        {
            mListener.onError(new UiError(100, "error ", "\u83B7\u53D6\u4EFB\u52A1\u5931\u8D25"));
        }
        TaskGuide.access$3200(TaskGuide.this).post(new _cls1());
    }

    public void onComplete(JSONObject jsonobject, Object obj)
    {
        try
        {
            TaskGuide.access$3502(TaskGuide.this, mJSONObject(jsonobject));
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            mListener.onError(new UiError(100, "error ", "\u83B7\u53D6\u4EFB\u52A1\u5931\u8D25"));
            jsonobject.printStackTrace();
        }
        if (TaskGuide.access$3500(TaskGuide.this) != null && TaskGuide.access$3500(TaskGuide.this).())
        {
            showWindow();
            TaskGuide.access$3600(TaskGuide.this, 2, this._fld0);
            jsonobject = new JSONObject();
            try
            {
                jsonobject.put("result", "\u83B7\u53D6\u6210\u529F");
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((JSONException) (obj)).printStackTrace();
            }
            mListener.onComplete(jsonobject);
            return;
        } else
        {
            handleException(null);
            return;
        }
    }

    private _cls1()
    {
        this$0 = TaskGuide.this;
        super(TaskGuide.this, null);
    }

    <init>(<init> <init>1)
    {
        this();
    }
}
