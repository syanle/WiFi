// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.share;


// Referenced classes of package com.baidu.mapapi.search.share:
//            ShareUrlResult

public interface OnGetShareUrlResultListener
{

    public abstract void onGetLocationShareUrlResult(ShareUrlResult shareurlresult);

    public abstract void onGetPoiDetailShareUrlResult(ShareUrlResult shareurlresult);
}
