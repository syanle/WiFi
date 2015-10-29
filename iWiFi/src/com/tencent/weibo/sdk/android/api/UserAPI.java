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

public class UserAPI extends BaseAPI
{

    private static final String SERVER_URL_USERINFO = "https://open.t.qq.com/api/user/info";
    private static final String SERVER_URL_USERINFOS = "https://open.t.qq.com/api/user/infos";
    private static final String SERVER_URL_USEROTHERINFO = "https://open.t.qq.com/api/user/other_info";

    public UserAPI(AccountModel accountmodel)
    {
        super(accountmodel);
    }

    public void getUserInfo(Context context, String s, HttpCallback httpcallback, Class class1, int i)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("scope", "all");
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("format", s);
        startRequest(context, "https://open.t.qq.com/api/user/info", reqparam, httpcallback, class1, "GET", i);
    }

    public void getUserInfos(Context context, String s, String s1, String s2, HttpCallback httpcallback, Class class1, int i)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("scope", "all");
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("format", s);
        if (s1 != null && !"".equals(s1))
        {
            reqparam.addParam("names", s1);
        }
        if (s2 != null && !"".equals(s2))
        {
            reqparam.addParam("fopenids", s2);
        }
        startRequest(context, "https://open.t.qq.com/api/user/infos", reqparam, httpcallback, class1, "GET", i);
    }

    public void getUserOtherInfo(Context context, String s, String s1, String s2, HttpCallback httpcallback, Class class1, int i)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("scope", "all");
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("format", s);
        if (s1 != null && !"".equals(s1))
        {
            reqparam.addParam("name", s1);
        }
        if (s2 != null && !"".equals(s2))
        {
            reqparam.addParam("fopenid", s2);
        }
        startRequest(context, "https://open.t.qq.com/api/user/other_info", reqparam, httpcallback, class1, "GET", i);
    }
}
