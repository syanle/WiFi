// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.share;

import com.baidu.mapapi.search.core.SearchResult;

public class ShareUrlResult extends SearchResult
{

    private String a;
    private int b;

    ShareUrlResult()
    {
    }

    ShareUrlResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO errorno)
    {
        super(errorno);
    }

    void a(int i)
    {
        b = i;
    }

    void a(String s)
    {
        a = s;
    }

    public String getUrl()
    {
        return a;
    }
}
