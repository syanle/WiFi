// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.cloud;


public abstract class BaseSearchInfo
{

    String a;
    public String ak;
    public int geoTableId;
    public String sn;

    public BaseSearchInfo()
    {
    }

    String a()
    {
        Object obj = null;
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(a);
        stringbuilder.append("?");
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
