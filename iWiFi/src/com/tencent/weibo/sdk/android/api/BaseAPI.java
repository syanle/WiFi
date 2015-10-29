// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api;

import android.content.Context;
import android.util.Log;
import com.tencent.weibo.sdk.android.api.util.Util;
import com.tencent.weibo.sdk.android.model.AccountModel;
import com.tencent.weibo.sdk.android.model.ModelResult;
import com.tencent.weibo.sdk.android.network.HttpCallback;
import com.tencent.weibo.sdk.android.network.HttpReqWeiBo;
import com.tencent.weibo.sdk.android.network.HttpService;
import com.tencent.weibo.sdk.android.network.ReqParam;
import java.io.PrintStream;

public abstract class BaseAPI
{

    public static final String API_SERVER = "https://open.t.qq.com/api";
    public static final String HTTPMETHOD_GET = "GET";
    public static final String HTTPMETHOD_POST = "POST";
    public static final String REQUEST_METHOD_GET = "GET";
    public static final String REQUEST_METHOD_POST = "POST";
    private HttpCallback callback;
    private String mAccessToken;
    private AccountModel mAccount;
    private Context mContext;
    private ReqParam mParams;
    private String mRequestMethod;
    private String mRequestUrl;
    private int mResultType;
    private HttpCallback mmCallBack;
    private Class mmTargetClass;
    private HttpReqWeiBo weibo;

    public BaseAPI(AccountModel accountmodel)
    {
        callback = new HttpCallback() {

            final BaseAPI this$0;

            public void onResult(Object obj)
            {
                Log.d("sss", (new StringBuilder()).append(obj).toString());
                if (obj != null)
                {
                    String as[] = ((ModelResult)obj).getObj().toString().split("&");
                    obj = as[0].split("=")[1];
                    mAccessToken = ((String) (obj));
                    String s = as[1].split("=")[1];
                    String s1 = as[2].split("=")[1];
                    String s2 = as[3].split("=")[1];
                    String s3 = as[4].split("=")[1];
                    String s4 = as[5].split("=")[1];
                    Util.saveSharePersistent(mContext, "ACCESS_TOKEN", ((String) (obj)));
                    Util.saveSharePersistent(mContext, "EXPIRES_IN", s);
                    Util.saveSharePersistent(mContext, "OPEN_ID", s2);
                    Util.saveSharePersistent(mContext, "REFRESH_TOKEN", s1);
                    Util.saveSharePersistent(mContext, "NAME", s3);
                    Util.saveSharePersistent(mContext, "NICK", s4);
                    Util.saveSharePersistent(mContext, "AUTHORIZETIME", String.valueOf(System.currentTimeMillis() / 1000L));
                    weibo = new HttpReqWeiBo(mContext, mRequestUrl, mmCallBack, mmTargetClass, mRequestMethod, Integer.valueOf(mResultType));
                    mParams.addParam("access_token", mAccessToken);
                    weibo.setParam(mParams);
                    HttpService.getInstance().addImmediateReq(weibo);
                }
            }

            
            {
                this$0 = BaseAPI.this;
                super();
            }
        };
        mAccount = accountmodel;
        if (mAccount != null)
        {
            mAccessToken = mAccount.getAccessToken();
        }
    }

    private ReqParam refreshToken(Context context)
    {
        ReqParam reqparam = new ReqParam();
        String s = Util.getSharePersistent(context, "CLIENT_ID");
        context = Util.getSharePersistent(context, "REFRESH_TOKEN");
        reqparam.addParam("client_id", s);
        reqparam.addParam("grant_type", "refresh_token");
        reqparam.addParam("refresh_token", context);
        reqparam.addParam("state", Integer.valueOf((int)Math.random() * 1000 + 111));
        return reqparam;
    }

    public boolean isAuthorizeExpired(Context context)
    {
        boolean flag1 = false;
        String s = Util.getSharePersistent(context, "AUTHORIZETIME");
        System.out.println((new StringBuilder("===== : ")).append(s).toString());
        context = Util.getSharePersistent(context, "EXPIRES_IN");
        System.out.println((new StringBuilder("====== : ")).append(context).toString());
        long l = System.currentTimeMillis() / 1000L;
        boolean flag = flag1;
        if (context != null)
        {
            flag = flag1;
            if (s != null)
            {
                flag = flag1;
                if (Long.valueOf(s).longValue() + Long.valueOf(context).longValue() < l)
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    protected void startRequest(Context context, String s, ReqParam reqparam, HttpCallback httpcallback, Class class1, String s1, int i)
    {
        if (isAuthorizeExpired(context))
        {
            mContext = context;
            mRequestUrl = s;
            mParams = reqparam;
            mmCallBack = httpcallback;
            mmTargetClass = class1;
            mRequestMethod = s1;
            mResultType = i;
            weibo = new HttpReqWeiBo(context, "https://open.t.qq.com/cgi-bin/oauth2/access_token", callback, null, "GET", Integer.valueOf(4));
            weibo.setParam(refreshToken(context));
            HttpService.getInstance().addImmediateReq(weibo);
            return;
        } else
        {
            weibo = new HttpReqWeiBo(context, s, httpcallback, class1, s1, Integer.valueOf(i));
            reqparam.addParam("access_token", mAccessToken);
            weibo.setParam(reqparam);
            HttpService.getInstance().addImmediateReq(weibo);
            return;
        }
    }











}
