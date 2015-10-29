// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.parser;

import com.pubinfo.freewifialliance.data.DeviceId;
import org.json.JSONObject;

public class GetDeviceIdParser
{

    public GetDeviceIdParser()
    {
    }

    public static DeviceId GetDeviceIdList(String s)
        throws Exception
    {
        DeviceId deviceid = new DeviceId();
        s = new JSONObject(s);
        deviceid.setDev_id(s.getString("dev_id"));
        deviceid.setMessage(s.getString("message"));
        deviceid.setResult(s.getString("result"));
        return deviceid;
    }
}
