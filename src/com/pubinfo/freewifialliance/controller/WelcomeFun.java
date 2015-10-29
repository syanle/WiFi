// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.controller;

import android.content.SharedPreferences;
import com.iwifi.sdk.data.SsidList;
import com.iwifi.sdk.protocol.UpdateSsidListInterface;
import com.iwifi.sdk.protocol.impl.UpdateSsidListConn_iWiFi_20;
import com.pubinfo.wifi_core.AppBaseActivity;
import java.util.Calendar;

public class WelcomeFun extends AppBaseActivity
    implements UpdateSsidListInterface
{

    final Calendar c = Calendar.getInstance();
    String data;

    public WelcomeFun()
    {
        data = (new StringBuilder(String.valueOf(c.get(1)))).append("-").append(c.get(2) + 1).append("-").append(c.get(5)).toString();
    }

    public void updateSsidErr(String s)
    {
    }

    public void updateSsidList()
    {
        new UpdateSsidListConn_iWiFi_20(this);
    }

    public void updateSsidListSucc(SsidList ssidlist)
    {
        Object obj = getSharedPreferences("ssidlist", 0);
        if (!((SharedPreferences) (obj)).getString("version", "").trim().equals(ssidlist.getVersion().trim()))
        {
            obj = ((SharedPreferences) (obj)).edit();
            ((android.content.SharedPreferences.Editor) (obj)).putString("data", ssidlist.getData());
            ((android.content.SharedPreferences.Editor) (obj)).putString("version", ssidlist.getVersion());
            ((android.content.SharedPreferences.Editor) (obj)).putString("time", data);
            ((android.content.SharedPreferences.Editor) (obj)).commit();
        }
    }
}
