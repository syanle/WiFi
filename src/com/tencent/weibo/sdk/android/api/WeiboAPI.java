// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api;

import android.content.Context;
import android.graphics.Bitmap;
import com.tencent.weibo.sdk.android.api.util.Util;
import com.tencent.weibo.sdk.android.model.AccountModel;
import com.tencent.weibo.sdk.android.network.HttpCallback;
import com.tencent.weibo.sdk.android.network.ReqParam;
import java.io.ByteArrayOutputStream;

// Referenced classes of package com.tencent.weibo.sdk.android.api:
//            BaseAPI

public class WeiboAPI extends BaseAPI
{

    private static final String SERVER_URL_ADD = "https://open.t.qq.com/api/t/add_multi";
    private static final String SERVER_URL_ADDPIC = "https://open.t.qq.com/api/t/add_pic";
    private static final String SERVER_URL_ADDPICURL = "https://open.t.qq.com/api/t/add_pic_url";
    private static final String SERVER_URL_ADDWEIBO = "https://open.t.qq.com/api/t/add";
    private static final String SERVER_URL_RLIST = "https://open.t.qq.com/api/t/re_list";
    private static final String SERVER_URL_VIDEO = "https://open.t.qq.com/api/t/getvideoinfo";

    public WeiboAPI(AccountModel accountmodel)
    {
        super(accountmodel);
    }

    public void addPic(Context context, String s, String s1, double d, double d1, 
            Bitmap bitmap, int i, int j, HttpCallback httpcallback, Class class1, int k)
    {
        ReqParam reqparam;
label0:
        {
            reqparam = new ReqParam();
            reqparam.addParam("oauth_version", "2.a");
            reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
            reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
            reqparam.addParam("scope", "all");
            reqparam.addParam("format", s1);
            if (s != null)
            {
                s1 = s;
                if (!"".equals(s))
                {
                    break label0;
                }
            }
            s1 = "#\u5206\u4EAB\u56FE\u7247#";
        }
        reqparam.addParam("content", s1);
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        if (d != 0.0D)
        {
            reqparam.addParam("longitude", Double.valueOf(d));
        }
        if (d1 != 0.0D)
        {
            reqparam.addParam("latitude", Double.valueOf(d1));
        }
        reqparam.addParam("syncflag", Integer.valueOf(i));
        reqparam.addParam("compatibleflag", Integer.valueOf(j));
        reqparam.setBitmap(bitmap);
        s = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, s);
        reqparam.addParam("pic", s.toByteArray());
        startRequest(context, "https://open.t.qq.com/api/t/add_pic", reqparam, httpcallback, class1, "POST", k);
    }

    public void addPicUrl(Context context, String s, String s1, double d, double d1, 
            String s2, int i, int j, HttpCallback httpcallback, Class class1, int k)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("scope", "all");
        reqparam.addParam("format", s1);
        reqparam.addParam("content", s);
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        if (d != 0.0D)
        {
            reqparam.addParam("longitude", Double.valueOf(d));
        }
        if (d1 != 0.0D)
        {
            reqparam.addParam("latitude", Double.valueOf(d1));
        }
        reqparam.addParam("syncflag", Integer.valueOf(i));
        reqparam.addParam("compatibleflag", Integer.valueOf(j));
        reqparam.addParam("pic_url", s2);
        startRequest(context, "https://open.t.qq.com/api/t/add_pic_url", reqparam, httpcallback, class1, "POST", k);
    }

    public void addWeibo(Context context, String s, String s1, double d, double d1, 
            int i, int j, HttpCallback httpcallback, Class class1, int k)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("scope", "all");
        reqparam.addParam("format", s1);
        reqparam.addParam("content", s);
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        if (d != 0.0D)
        {
            reqparam.addParam("longitude", Double.valueOf(d));
        }
        if (d1 != 0.0D)
        {
            reqparam.addParam("latitude", Double.valueOf(d1));
        }
        reqparam.addParam("syncflag", Integer.valueOf(i));
        reqparam.addParam("compatibleflag", Integer.valueOf(j));
        startRequest(context, "https://open.t.qq.com/api/t/add", reqparam, httpcallback, class1, "POST", k);
    }

    public void getVideoInfo(Context context, String s, HttpCallback httpcallback, Class class1, int i)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("scope", "all");
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("format", "json");
        reqparam.addParam("video_url", s);
        startRequest(context, "https://open.t.qq.com/api/t/getvideoinfo", reqparam, httpcallback, class1, "POST", i);
    }

    public void reAddWeibo(Context context, String s, String s1, String s2, String s3, String s4, String s5, 
            HttpCallback httpcallback, Class class1, int i)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("scope", "all");
        reqparam.addParam("content", s);
        reqparam.addParam("pic_url", s1);
        reqparam.addParam("video_url", s2);
        reqparam.addParam("music_url", s3);
        reqparam.addParam("music_title", s4);
        reqparam.addParam("music_author", s5);
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("pageflag", "0");
        reqparam.addParam("type", "0");
        reqparam.addParam("format", "json");
        reqparam.addParam("reqnum", "30");
        reqparam.addParam("pagetime", "0");
        reqparam.addParam("contenttype", "0");
        startRequest(context, "https://open.t.qq.com/api/t/add_multi", reqparam, httpcallback, class1, "POST", i);
    }

    public void reList(Context context, String s, int i, String s1, int j, String s2, int k, 
            String s3, HttpCallback httpcallback, Class class1, int l)
    {
        ReqParam reqparam = new ReqParam();
        reqparam.addParam("oauth_version", "2.a");
        reqparam.addParam("oauth_consumer_key", Util.getSharePersistent(context, "CLIENT_ID"));
        reqparam.addParam("openid", Util.getSharePersistent(context, "OPEN_ID"));
        reqparam.addParam("scope", "all");
        reqparam.addParam("clientip", Util.getLocalIPAddress(context));
        reqparam.addParam("format", s);
        reqparam.addParam("flag", Integer.valueOf(i));
        reqparam.addParam("rootid", s1);
        reqparam.addParam("pageflag", Integer.valueOf(j));
        reqparam.addParam("pagetime", s2);
        reqparam.addParam("reqnum", Integer.valueOf(k));
        reqparam.addParam("twitterid", s3);
        startRequest(context, "https://open.t.qq.com/api/t/re_list", reqparam, httpcallback, class1, "GET", l);
    }
}
