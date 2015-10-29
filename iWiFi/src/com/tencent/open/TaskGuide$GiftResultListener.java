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

class index extends 
{

    int index;
    final TaskGuide this$0;

    protected void handleException(final Exception e)
    {
        if (e != null)
        {
            e.printStackTrace();
        }
        mListener.onError(new UiError(101, "error ", "\u91D1\u5238\u9886\u53D6\u65F6\u51FA\u73B0\u5F02\u5E38"));
        class _cls1
            implements Runnable
        {

            final TaskGuide.GiftResultListener this$1;
            final Exception val$e;

            public void run()
            {
                TaskGuide.TaskState taskstate = TaskGuide.TaskState.INIT;
                if (index == 0)
                {
                    taskstate = TaskGuide.access$200(this$0);
                } else
                {
                    taskstate = TaskGuide.access$300(this$0);
                }
                if (taskstate == TaskGuide.TaskState.WAITTING_BACK_REWARD)
                {
                    TaskGuide.access$3600(this$0, index, TaskGuide.TaskState.NORAML);
                    TaskGuide.access$3800(this$0, (new StringBuilder()).append("\u9886\u53D6\u5931\u8D25 :").append(e.getClass().getName()).toString());
                }
                TaskGuide.access$600(this$0, index);
                TaskGuide.access$2400(this$0, 2000);
            }

            _cls1()
            {
                this$1 = TaskGuide.GiftResultListener.this;
                e = exception;
                super();
            }
        }

        if (TaskGuide.access$3200(TaskGuide.this) != null)
        {
            TaskGuide.access$3200(TaskGuide.this).post(new _cls1());
        }
    }

    public void onComplete(JSONObject jsonobject, Object obj)
    {
        JSONObject jsonobject1;
        jsonobject1 = null;
        obj = jsonobject1;
        int i = jsonobject.getInt("code");
        obj = jsonobject1;
        jsonobject = jsonobject.getString("message");
        if (i != 0) goto _L2; else goto _L1
_L1:
        obj = jsonobject;
        TaskGuide.access$3600(TaskGuide.this, index, CCESS);
        obj = jsonobject;
        jsonobject1 = new JSONObject();
        jsonobject1.put("result", "\u91D1\u5238\u9886\u53D6\u6210\u529F");
_L3:
        obj = jsonobject;
        JSONException jsonexception;
        try
        {
            mListener.onComplete(jsonobject1);
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            TaskGuide.access$3600(TaskGuide.this, index, index);
            TaskGuide.access$3800(TaskGuide.this, ((String) (obj)));
            jsonobject.printStackTrace();
        }
_L4:
        TaskGuide.access$600(TaskGuide.this, index);
        TaskGuide.access$2400(TaskGuide.this, 2000);
        return;
        jsonexception;
        obj = jsonobject;
        jsonexception.printStackTrace();
          goto _L3
_L2:
        obj = jsonobject;
        TaskGuide.access$3600(TaskGuide.this, index, index);
        obj = jsonobject;
        TaskGuide.access$3800(TaskGuide.this, jsonobject);
        obj = jsonobject;
        jsonobject1 = new JSONObject();
        jsonobject1.put("result", "\u91D1\u5238\u9886\u53D6\u5931\u8D25");
_L5:
        obj = jsonobject;
        mListener.onComplete(jsonobject1);
          goto _L4
        JSONException jsonexception1;
        jsonexception1;
        obj = jsonobject;
        jsonexception1.printStackTrace();
          goto _L5
    }

    public _cls1(int i)
    {
        this$0 = TaskGuide.this;
        super(TaskGuide.this, null);
        index = -1;
        index = i;
    }
}
