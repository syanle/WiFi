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

public class FriendAPI extends BaseAPI
{

    private static final String SERVER_URL_ADD = "https://open.t.qq.com/api/friends/add";
    private static final String SERVER_URL_CHECK = "https://open.t.qq.com/api/friends/check";
    private static final String SERVER_URL_FANSLIST = "https://open.t.qq.com/api/friends/fanslist";
    private static final String SERVER_URL_GetINTIMATEFRIENDS = "https://open.t.qq.com/api/friends/get_intimate_friends";
    private static final String SERVER_URL_IDOLLIST = "https://open.t.qq.com/api/friends/idollist";
    private static final String SERVER_URL_MUTUALLIST = "https://open.t.qq.com/api/friends/mutual_list";

    public FriendAPI(AccountModel accountmodel)
    {
        super(accountmodel);
    }

    public void addFriend(Context context, String s, String s1, String s2, HttpCallback httpcallback, Class class1, int i)
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
            reqparam.addParam("fopenids", s2);
        }
        startRequest(context, "https://open.t.qq.com/api/friends/add", reqparam, httpcallback, class1, "POST", i);
    }

    public void friendCheck(Context context, String s, String s1, String s2, int i, HttpCallback httpcallback, Class class1, 
            int j)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("scope", "all");
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("format", s);
        reqparam.addParam("names", s1);
        reqparam.addParam("fopenids", s2);
        reqparam.addParam("flag", Integer.valueOf(i));
        startRequest(context, "https://open.t.qq.com/api/friends/check", reqparam, httpcallback, class1, "GET", j);
    }

    public void friendFansList(Context context, String s, int i, int j, int k, int l, int i1, 
            HttpCallback httpcallback, Class class1, int j1)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("scope", "all");
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("format", s);
        reqparam.addParam("reqnum", Integer.valueOf(i));
        reqparam.addParam("startindex", Integer.valueOf(j));
        reqparam.addParam("mode", Integer.valueOf(k));
        reqparam.addParam("install", Integer.valueOf(l));
        reqparam.addParam("sex", Integer.valueOf(i1));
        startRequest(context, "https://open.t.qq.com/api/friends/fanslist", reqparam, httpcallback, class1, "GET", j1);
    }

    public void friendIDolList(Context context, String s, int i, int j, int k, int l, HttpCallback httpcallback, 
            Class class1, int i1)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("scope", "all");
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("format", s);
        reqparam.addParam("reqnum", Integer.valueOf(i));
        reqparam.addParam("startindex", Integer.valueOf(j));
        reqparam.addParam("mode", Integer.valueOf(k));
        reqparam.addParam("install", Integer.valueOf(l));
        startRequest(context, "https://open.t.qq.com/api/friends/idollist", reqparam, httpcallback, class1, "GET", i1);
    }

    public void getIntimateFriends(Context context, String s, int i, HttpCallback httpcallback, Class class1, int j)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("scope", "all");
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("format", s);
        reqparam.addParam("reqnum", Integer.valueOf(i));
        startRequest(context, "https://open.t.qq.com/api/friends/get_intimate_friends", reqparam, httpcallback, class1, "GET", j);
    }

    public void getMutualList(Context context, String s, String s1, String s2, int i, int j, int k, 
            HttpCallback httpcallback, Class class1, int l)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("scope", "all");
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("format", s);
        reqparam.addParam("reqnum", Integer.valueOf(j));
        reqparam.addParam("install", Integer.valueOf(k));
        reqparam.addParam("startindex", Integer.valueOf(i));
        if (s1 != null && !"".equals(s1))
        {
            reqparam.addParam("name", s1);
        }
        if (s2 != null && !"".equals(s2))
        {
            reqparam.addParam("fopenid", s2);
        }
        startRequest(context, "https://open.t.qq.com/api/friends/mutual_list", reqparam, httpcallback, class1, "GET", l);
    }
}
