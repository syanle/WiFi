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

public class TimeLineAPI extends BaseAPI
{

    private static final String SERVER_URL_HOMETIMELINE = "https://open.t.qq.com/api/statuses/home_timeline";
    private static final String SERVER_URL_HTTIMELINE = "https://open.t.qq.com/api/statuses/ht_timeline_ext";
    private static final String SERVER_URL_USERTIMELINE = "https://open.t.qq.com/api/statuses/user_timeline";

    public TimeLineAPI(AccountModel accountmodel)
    {
        super(accountmodel);
    }

    public void getHTTimeLine(Context context, String s, int i, String s1, String s2, int j, int k, 
            String s3, String s4, int l, int i1, HttpCallback httpcallback, Class class1, int j1)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("scope", "all");
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("format", s);
        reqparam.addParam("pageflag", Integer.valueOf(j));
        reqparam.addParam("reqnum", Integer.valueOf(i));
        reqparam.addParam("tweetid", s1);
        reqparam.addParam("time", s2);
        reqparam.addParam("flag", Integer.valueOf(k));
        if (s3 != null && !"".equals(s3))
        {
            reqparam.addParam("httext", s3);
        }
        if (s4 != null && !"".equals(s4) && !"0".equals(s4))
        {
            reqparam.addParam("htid", s4);
        }
        reqparam.addParam("type", Integer.valueOf(l));
        reqparam.addParam("contenttype", Integer.valueOf(i1));
        startRequest(context, "https://open.t.qq.com/api/statuses/ht_timeline_ext", reqparam, httpcallback, class1, "GET", j1);
    }

    public void getHomeTimeLine(Context context, int i, int j, int k, int l, int i1, String s, 
            HttpCallback httpcallback, Class class1, int j1)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("scope", "all");
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("format", s);
        reqparam.addParam("pageflag", Integer.valueOf(i));
        reqparam.addParam("type", Integer.valueOf(l));
        reqparam.addParam("reqnum", Integer.valueOf(k));
        reqparam.addParam("pagetime", Integer.valueOf(j));
        reqparam.addParam("contenttype", Integer.valueOf(i1));
        startRequest(context, "https://open.t.qq.com/api/statuses/home_timeline", reqparam, httpcallback, class1, "GET", j1);
    }

    public void getUserTimeLine(Context context, int i, int j, int k, int l, String s, String s1, 
            int i1, int j1, String s2, HttpCallback httpcallback, Class class1, int k1)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("scope", "all");
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("format", s2);
        reqparam.addParam("pageflag", Integer.valueOf(i));
        reqparam.addParam("pagetime", Integer.valueOf(j));
        reqparam.addParam("reqnum", Integer.valueOf(k));
        reqparam.addParam("lastid", Integer.valueOf(l));
        if (s != null && !"".equals(s))
        {
            reqparam.addParam("name", s);
        }
        if (s1 != null && !"".equals(s1))
        {
            reqparam.addParam("fopenid", s1);
        }
        reqparam.addParam("type", Integer.valueOf(i1));
        reqparam.addParam("contenttype", Integer.valueOf(j1));
        startRequest(context, "https://open.t.qq.com/api/statuses/user_timeline", reqparam, httpcallback, class1, "GET", k1);
    }
}
