// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.mvc.common;

import com.ta.common.TABaseEntity;

public class TAResponse extends TABaseEntity
{

    private static final long serialVersionUID = 0x25ae1f03bd8d2fbfL;
    private String activityKey;
    private int activityKeyResID;
    private Object data;
    private Object tag;

    public TAResponse()
    {
    }

    public TAResponse(Object obj, Object obj1)
    {
        tag = obj;
        data = obj1;
    }

    public String getActivityKey()
    {
        return activityKey;
    }

    public int getActivityKeyResID()
    {
        return activityKeyResID;
    }

    public Object getData()
    {
        return data;
    }

    public Object getTag()
    {
        return tag;
    }

    public void setActivityKey(String s)
    {
        activityKey = s;
    }

    public void setActivityKeyResID(int i)
    {
        activityKeyResID = i;
    }

    public void setData(Object obj)
    {
        data = obj;
    }

    public void setTag(Object obj)
    {
        tag = obj;
    }
}
