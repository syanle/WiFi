// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.data;

import java.util.List;

public class ComData
{

    private static ComData instance = null;
    private List ApInfoData;
    private List BottomData;
    private List LoginData;
    private List MapCustom;
    private List MapData;
    private List PushListData;
    private List SsidData;
    private List TopData;
    private List UpLoadData;
    private List UserInfoData;
    private List pError;

    public ComData()
    {
    }

    public static ComData getInstance()
    {
        if (instance == null)
        {
            instance = new ComData();
        }
        return instance;
    }

    public List getApInfoData()
    {
        return ApInfoData;
    }

    public List getBottomData()
    {
        return BottomData;
    }

    public List getLoginData()
    {
        return LoginData;
    }

    public List getMapCustom()
    {
        return MapCustom;
    }

    public List getMapData()
    {
        return MapData;
    }

    public List getPushListData()
    {
        return PushListData;
    }

    public List getSsidData()
    {
        return SsidData;
    }

    public List getTopData()
    {
        return TopData;
    }

    public List getUpLoadData()
    {
        return UpLoadData;
    }

    public List getUserInfoData()
    {
        return UserInfoData;
    }

    public List getpError()
    {
        return pError;
    }

    public void setApInfoData(List list)
    {
        ApInfoData = list;
    }

    public void setBottomData(List list)
    {
        BottomData = list;
    }

    public void setLoginData(List list)
    {
        LoginData = list;
    }

    public void setMapCustom(List list)
    {
        MapCustom = list;
    }

    public void setMapData(List list)
    {
        MapData = list;
    }

    public void setPushListData(List list)
    {
        PushListData = list;
    }

    public void setSsidData(List list)
    {
        SsidData = list;
    }

    public void setTopData(List list)
    {
        TopData = list;
    }

    public void setUpLoadData(List list)
    {
        UpLoadData = list;
    }

    public void setUserInfoData(List list)
    {
        UserInfoData = list;
    }

    public void setpError(List list)
    {
        pError = list;
    }

}
