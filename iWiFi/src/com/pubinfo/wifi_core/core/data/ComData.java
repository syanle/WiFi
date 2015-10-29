// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.data;

import java.util.ArrayList;
import java.util.List;

public class ComData
{

    private static ComData instance = null;
    private List endPointList;
    private List startPointList;
    private List tianyiWifi;
    private List wifiInfoData;

    public ComData()
    {
        tianyiWifi = new ArrayList();
    }

    public static ComData getInstance()
    {
        if (instance == null)
        {
            instance = new ComData();
        }
        return instance;
    }

    public List getEndPointList()
    {
        return endPointList;
    }

    public List getStartPointList()
    {
        return startPointList;
    }

    public List getTianyiWifi()
    {
        return tianyiWifi;
    }

    public List getWifiInfoData()
    {
        return wifiInfoData;
    }

    public void setEndPointList(List list)
    {
        endPointList = list;
    }

    public void setStartPointList(List list)
    {
        startPointList = list;
    }

    public void setTianyiWifi(List list)
    {
        tianyiWifi = list;
    }

    public void setWifiInfoData(List list)
    {
        wifiInfoData = list;
    }

}
