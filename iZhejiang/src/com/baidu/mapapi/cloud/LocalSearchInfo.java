// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.cloud;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

// Referenced classes of package com.baidu.mapapi.cloud:
//            BaseCloudSearchInfo

public class LocalSearchInfo extends BaseCloudSearchInfo
{

    public String region;

    public LocalSearchInfo()
    {
        a = "http://api.map.baidu.com/geosearch/v2/local";
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
            if (region != null)
            {
                s = obj;
                if (!region.equals(""))
                {
                    s = obj;
                    if (region.length() <= 25)
                    {
                        stringbuilder.append("&");
                        stringbuilder.append("region");
                        stringbuilder.append("=");
                        try
                        {
                            stringbuilder.append(URLEncoder.encode(region, "UTF-8"));
                        }
                        catch (UnsupportedEncodingException unsupportedencodingexception)
                        {
                            unsupportedencodingexception.printStackTrace();
                        }
                        s = stringbuilder.toString();
                    }
                }
            }
        }
        return s;
    }
}
