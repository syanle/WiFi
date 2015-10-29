// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.cloud;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

// Referenced classes of package com.baidu.mapapi.cloud:
//            BaseSearchInfo

public abstract class BaseCloudSearchInfo extends BaseSearchInfo
{

    public String filter;
    public int pageIndex;
    public int pageSize;
    public String q;
    public String sortby;
    public String tags;

    public BaseCloudSearchInfo()
    {
        pageSize = 10;
    }

    String a()
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (super.a() != null)
        {
            stringbuilder.append(super.a());
            if (q != null && !q.equals("") && q.length() <= 45)
            {
                stringbuilder.append("&");
                stringbuilder.append("q");
                stringbuilder.append("=");
                try
                {
                    stringbuilder.append(URLEncoder.encode(q, "UTF-8"));
                }
                catch (UnsupportedEncodingException unsupportedencodingexception)
                {
                    unsupportedencodingexception.printStackTrace();
                }
            }
            if (tags != null && !tags.equals("") && tags.length() <= 45)
            {
                stringbuilder.append("&");
                stringbuilder.append("tags");
                stringbuilder.append("=");
                try
                {
                    stringbuilder.append(URLEncoder.encode(tags, "UTF-8"));
                }
                catch (UnsupportedEncodingException unsupportedencodingexception1)
                {
                    unsupportedencodingexception1.printStackTrace();
                }
            }
            if (sortby != null && !sortby.equals(""))
            {
                stringbuilder.append("&");
                stringbuilder.append("sortby");
                stringbuilder.append("=");
                stringbuilder.append(sortby);
            }
            if (filter != null && !filter.equals(""))
            {
                stringbuilder.append("&");
                stringbuilder.append("filter");
                stringbuilder.append("=");
                stringbuilder.append(filter);
            }
            if (pageIndex >= 0)
            {
                stringbuilder.append("&");
                stringbuilder.append("page_index");
                stringbuilder.append("=");
                stringbuilder.append(pageIndex);
            }
            if (pageSize >= 0 && pageSize <= 50)
            {
                stringbuilder.append("&");
                stringbuilder.append("page_size");
                stringbuilder.append("=");
                stringbuilder.append(pageSize);
            }
            return stringbuilder.toString();
        } else
        {
            return null;
        }
    }
}
