// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.mvc.controller;

import com.ta.mvc.common.TARequest;
import com.ta.mvc.common.TAResponse;

public class ActivityStackInfo
{

    private Class activityClass;
    private String commandKey;
    private boolean record;
    private TARequest request;
    private boolean resetStack;
    private TAResponse response;

    public ActivityStackInfo()
    {
    }

    public ActivityStackInfo(Class class1, String s, TARequest tarequest)
    {
        activityClass = class1;
        commandKey = s;
        request = tarequest;
    }

    public ActivityStackInfo(Class class1, String s, TARequest tarequest, boolean flag, boolean flag1)
    {
        activityClass = class1;
        commandKey = s;
        request = tarequest;
        record = flag;
        resetStack = flag1;
    }

    public ActivityStackInfo(String s, TARequest tarequest, boolean flag, boolean flag1)
    {
        commandKey = s;
        request = tarequest;
        record = flag;
        resetStack = flag1;
    }

    public Class getActivityClass()
    {
        return activityClass;
    }

    public String getCommandKey()
    {
        return commandKey;
    }

    public TARequest getRequest()
    {
        return request;
    }

    public TAResponse getResponse()
    {
        return response;
    }

    public boolean isRecord()
    {
        return record;
    }

    public boolean isResetStack()
    {
        return resetStack;
    }

    public void setActivityClass(Class class1)
    {
        activityClass = class1;
    }

    public void setCommandKey(String s)
    {
        commandKey = s;
    }

    public void setRecord(boolean flag)
    {
        record = flag;
    }

    public void setRequest(TARequest tarequest)
    {
        request = tarequest;
    }

    public void setResetStack(boolean flag)
    {
        resetStack = flag;
    }

    public void setResponse(TAResponse taresponse)
    {
        response = taresponse;
    }
}
