// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.cloud;


// Referenced classes of package com.baidu.mapapi.cloud:
//            DetailSearchResult, CloudSearchResult

public interface CloudListener
{

    public abstract void onGetDetailSearchResult(DetailSearchResult detailsearchresult, int i);

    public abstract void onGetSearchResult(CloudSearchResult cloudsearchresult, int i);
}
