// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.command;

import com.cat.entity.StudyEntity;
import com.ta.mvc.command.TACommand;
import com.ta.mvc.common.TARequest;
import java.io.PrintStream;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class TestMVCCommand extends TACommand
{

    public TestMVCCommand()
    {
    }

    protected void executeCommand()
    {
        ArrayList arraylist;
        Object obj;
        obj = (String)getRequest().getData();
        arraylist = new ArrayList();
        obj = (JSONArray)(new JSONObject(((String) (obj)))).get("students");
        int i = 0;
_L1:
        int j = ((JSONArray) (obj)).length();
        if (i >= j)
        {
            sendSuccessMessage(arraylist);
            return;
        }
        JSONObject jsonobject = (JSONObject)((JSONArray) (obj)).get(i);
        StudyEntity studyentity = new StudyEntity();
        studyentity.setName(jsonobject.getString("name"));
        studyentity.setAge(jsonobject.getInt("age"));
        arraylist.add(studyentity);
        System.out.println((new StringBuilder("name:")).append(jsonobject.getString("name")).append(",").append("age:").append(jsonobject.getInt("age")).toString());
        i++;
          goto _L1
        Object obj1;
        obj1;
        ((JSONException) (obj1)).printStackTrace();
        sendSuccessMessage(arraylist);
        return;
        obj1;
        sendSuccessMessage(arraylist);
        throw obj1;
    }
}
