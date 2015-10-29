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

public class LbsAPI extends BaseAPI
{

    private static final String SERVER_URL_GetAROUNDNEW = "https://open.t.qq.com/api/lbs/get_around_new";
    private static final String SERVER_URL_GetAROUNDPEOPLE = "https://open.t.qq.com/api/lbs/get_around_people";

    public LbsAPI(AccountModel accountmodel)
    {
        super(accountmodel);
    }

    public void getAroundNew(Context context, String s, double d, double d1, String s1, 
            int i, HttpCallback httpcallback, Class class1, int j)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("scope", "all");
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("format", s);
        reqparam.addParam("longitude", Double.valueOf(d));
        reqparam.addParam("latitude", Double.valueOf(d1));
        reqparam.addParam("pageinfo", s1);
        reqparam.addParam("pagesize", Integer.valueOf(i));
        startRequest(context, "https://open.t.qq.com/api/lbs/get_around_new", reqparam, httpcallback, class1, "POST", j);
    }

    public void getAroundPeople(Context context, String s, double d, double d1, String s1, 
            int i, int j, HttpCallback httpcallback, Class class1, int k)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("scope", "all");
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("format", s);
        reqparam.addParam("longitude", Double.valueOf(d));
        reqparam.addParam("latitude", Double.valueOf(d1));
        reqparam.addParam("pageinfo", s1);
        reqparam.addParam("pagesize", Integer.valueOf(i));
        reqparam.addParam("gender", Integer.valueOf(j));
        startRequest(context, "https://open.t.qq.com/api/lbs/get_around_people", reqparam, httpcallback, class1, "POST", k);
    }
}
