// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.command;

import com.cat.data.CodeResult;
import com.ta.mvc.command.TACommand;
import com.ta.mvc.common.TARequest;
import org.json.JSONException;
import org.json.JSONObject;

public class SendMsgCommand extends TACommand
{

    public SendMsgCommand()
    {
    }

    protected void executeCommand()
    {
        CodeResult coderesult;
        Object obj;
        obj = (String)getRequest().getData();
        coderesult = new CodeResult();
        obj = new JSONObject(((String) (obj)));
        coderesult.setCode(((JSONObject) (obj)).getString("code"));
        coderesult.setData(((JSONObject) (obj)).getString("data"));
        coderesult.setMsg(((JSONObject) (obj)).getString("message"));
        coderesult.setResult(((JSONObject) (obj)).getString("result"));
        sendSuccessMessage(coderesult);
        return;
        Object obj1;
        obj1;
        ((JSONException) (obj1)).printStackTrace();
        sendSuccessMessage(coderesult);
        return;
        obj1;
        sendSuccessMessage(coderesult);
        throw obj1;
    }
}
