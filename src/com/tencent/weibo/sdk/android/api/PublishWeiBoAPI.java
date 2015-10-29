// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api;

import android.content.Context;
import com.tencent.weibo.sdk.android.api.util.Util;
import com.tencent.weibo.sdk.android.model.AccountModel;
import com.tencent.weibo.sdk.android.network.HttpCallback;
import com.tencent.weibo.sdk.android.network.ReqParam;

// Referenced classes of package com.tencent.weibo.sdk.android.api:
//            BaseAPI

public class PublishWeiBoAPI extends BaseAPI
{

    public static final String MUTUAL_LIST_URL = "https://open.t.qq.com/api/friends/mutual_list";
    public static final String RECENT_USED_URL = "https://open.t.qq.com/api/ht/recent_used";

    public PublishWeiBoAPI(AccountModel accountmodel)
    {
        super(accountmodel);
    }

    public void mutual_list(Context context, HttpCallback httpcallback, Class class1, int i, int j, int k, int l)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("format", "json");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("scope", "all");
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        if (i != 0)
        {
            reqparam.addParam("fopenid", Integer.valueOf(i));
        }
        reqparam.addParam("startindex", Integer.valueOf(j));
        reqparam.addParam("install", Integer.valueOf(k));
        reqparam.addParam("reqnum", Integer.valueOf(l));
        reqparam.addParam("name", Util.getSharePersistent(context, "NAME"));
        startRequest(context, "https://open.t.qq.com/api/friends/mutual_list", reqparam, httpcallback, class1, "GET", 4);
    }

    public void recent_used(Context context, HttpCallback httpcallback, Class class1, int i, int j, int k)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("scope", "all");
        reqparam.addParam("format", "json");
        reqparam.addParam("reqnum", Integer.valueOf(i));
        reqparam.addParam("page", Integer.valueOf(j));
        reqparam.addParam("sorttype", Integer.valueOf(k));
        startRequest(context, "https://open.t.qq.com/api/ht/recent_used", reqparam, httpcallback, class1, "GET", 4);
    }
}
