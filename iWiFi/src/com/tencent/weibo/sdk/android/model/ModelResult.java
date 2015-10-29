// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.model;

import java.util.List;

// Referenced classes of package com.tencent.weibo.sdk.android.model:
//            BaseVO

public class ModelResult
{

    private String error_message;
    private boolean isExpires;
    private boolean isLastPage;
    private String lat;
    private List list;
    private String lon;
    private Object obj;
    private int p;
    private int ps;
    private boolean success;
    private int total;

    public ModelResult()
    {
        success = true;
        error_message = "success";
        isExpires = false;
    }

    public void add(BaseVO basevo)
    {
        list.add(basevo);
    }

    public BaseVO get()
    {
        return (BaseVO)list.get(0);
    }

    public String getError_message()
    {
        return error_message;
    }

    public String getLat()
    {
        return lat;
    }

    public List getList()
    {
        return list;
    }

    public String getLon()
    {
        return lon;
    }

    public Object getObj()
    {
        return obj;
    }

    public int getP()
    {
        return p;
    }

    public int getPs()
    {
        return ps;
    }

    public int getTotal()
    {
        return total;
    }

    public boolean isExpires()
    {
        return isExpires;
    }

    public boolean isLastPage()
    {
        return isLastPage;
    }

    public boolean isSuccess()
    {
        return success;
    }

    public void setError_message(String s)
    {
        error_message = s;
    }

    public void setExpires(boolean flag)
    {
        isExpires = flag;
    }

    public void setLastPage(boolean flag)
    {
        isLastPage = flag;
    }

    public void setLat(String s)
    {
        lat = s;
    }

    public void setList(List list1)
    {
        list = list1;
    }

    public void setLon(String s)
    {
        lon = s;
    }

    public void setObj(Object obj1)
    {
        obj = obj1;
    }

    public void setP(int i)
    {
        p = i;
    }

    public void setPs(int i)
    {
        ps = i;
    }

    public void setSuccess(boolean flag)
    {
        success = flag;
    }

    public void setTotal(int i)
    {
        total = i;
    }
}
