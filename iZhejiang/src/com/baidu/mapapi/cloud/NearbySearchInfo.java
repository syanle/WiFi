// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.cloud;


// Referenced classes of package com.baidu.mapapi.cloud:
//            BaseCloudSearchInfo

public class NearbySearchInfo extends BaseCloudSearchInfo
{

    public String location;
    public int radius;

    public NearbySearchInfo()
    {
        a = "http://api.map.baidu.com/geosearch/v2/nearby";
        radius = 1000;
    }

    String a()
    {
        Object obj = null;
        StringBuilder stringbuilder = new StringBuilder();
        String s = obj;
        if (super.a() != null)
        {
            stringbuilder.append(super.a());
            s = obj;
            if (location != null)
            {
                s = obj;
                if (!location.equals(""))
                {
                    stringbuilder.append("&");
                    stringbuilder.append("location");
                    stringbuilder.append("=");
                    stringbuilder.append(location);
                    if (radius >= 0)
                    {
                        stringbuilder.append("&");
                        stringbuilder.append("radius");
                        stringbuilder.append("=");
                        stringbuilder.append(radius);
                    }
                    s = stringbuilder.toString();
                }
            }
        }
        return s;
    }
}
