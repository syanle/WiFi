// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.cloud;


// Referenced classes of package com.baidu.mapapi.cloud:
//            BaseCloudSearchInfo

public class BoundSearchInfo extends BaseCloudSearchInfo
{

    public String bound;

    public BoundSearchInfo()
    {
        a = "http://api.map.baidu.com/geosearch/v2/bound";
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
            if (bound != null)
            {
                s = obj;
                if (!bound.equals(""))
                {
                    stringbuilder.append("&");
                    stringbuilder.append("bounds");
                    stringbuilder.append("=");
                    stringbuilder.append(bound);
                    s = stringbuilder.toString();
                }
            }
        }
        return s;
    }
}
