// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.cloud;


// Referenced classes of package com.baidu.mapapi.cloud:
//            BaseSearchInfo

public class DetailSearchInfo extends BaseSearchInfo
{

    public int uid;

    public DetailSearchInfo()
    {
        a = "http://api.map.baidu.com/geosearch/v2/detail/";
    }

    String a()
    {
        Object obj = null;
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(a);
        stringbuilder.append(uid).append('?');
        String s = obj;
        if (ak != null)
        {
            s = obj;
            if (!ak.equals(""))
            {
                s = obj;
                if (ak.length() <= 50)
                {
                    stringbuilder.append("ak");
                    stringbuilder.append("=");
                    stringbuilder.append(ak);
                    s = obj;
                    if (geoTableId != 0)
                    {
                        stringbuilder.append("&");
                        stringbuilder.append("geotable_id");
                        stringbuilder.append("=");
                        stringbuilder.append(geoTableId);
                        if (sn != null && !sn.equals("") && sn.length() <= 50)
                        {
                            stringbuilder.append("&");
                            stringbuilder.append("sn");
                            stringbuilder.append("=");
                            stringbuilder.append(sn);
                        }
                        s = stringbuilder.toString();
                    }
                }
            }
        }
        return s;
    }
}
