// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;

import android.text.TextUtils;
import org.json.JSONArray;
import org.json.JSONObject;

class 
{

    private static final String STEP_INFO_KEY = "step_info";
    private static final String TASK_DESC_KEY = "task_desc";
    private static final String TASK_ID_KEY = "task_id";
    stepInfoArray stepInfoArray[];
    String taskDesc;
    String taskId;

    static  generateFromJSONObject(JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            return null;
        }
          = new <init>();
        jsonobject = jsonobject.getJSONObject("task_info");
        .taskId = jsonobject.getString("task_id");
        .taskDesc = jsonobject.getString("task_desc");
        jsonobject = jsonobject.getJSONArray("step_info");
        int j = jsonobject.length();
        if (j > 0)
        {
            .stepInfoArray = new stepInfoArray[j];
        }
        for (int i = 0; i < j; i++)
        {
            Object obj = jsonobject.getJSONObject(i);
            int k = ((JSONObject) (obj)).getInt("step_no");
            int l = ((JSONObject) (obj)).getInt("status");
            obj = new <init>(k, ((JSONObject) (obj)).getString("step_desc"), ((JSONObject) (obj)).getString("step_gift"), ((JSONObject) (obj)).getLong("end_time"), l);
            .stepInfoArray[i] = ((stepInfoArray) (obj));
        }

        return ;
    }

    static stepInfoArray manualGenerateTaskInfo()
    {
        stepInfoArray stepinfoarray = new <init>();
        stepinfoarray.taskId = "1111133333";
        stepinfoarray.taskDesc = "xxxxx";
        stepinfoarray.stepInfoArray = new stepInfoArray[2];
        stepInfoArray stepinfoarray1 = new <init>(0, "\u4E00\u8D70\u4E86\u4E4B\u4F60\u597D", "4\u91D1\u52B5", 0L, 2);
        stepinfoarray.stepInfoArray[0] = stepinfoarray1;
        stepinfoarray1 = new <init>(0, "\u7535\u8111\u63A8\u9001QQ\u6CE1\u6CE1\u6BDB\u4F60\u597D", "500\u91D1\u52B5", 0L, 1);
        stepinfoarray.stepInfoArray[1] = stepinfoarray1;
        return stepinfoarray;
    }

    public boolean isValidTask()
    {
        return !TextUtils.isEmpty(taskId) && stepInfoArray != null && stepInfoArray.length > 0;
    }

    private ()
    {
    }
}
