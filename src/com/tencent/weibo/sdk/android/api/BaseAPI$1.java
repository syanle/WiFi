// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api;

import android.util.Log;
import com.tencent.weibo.sdk.android.api.util.Util;
import com.tencent.weibo.sdk.android.model.ModelResult;
import com.tencent.weibo.sdk.android.network.HttpCallback;
import com.tencent.weibo.sdk.android.network.HttpReqWeiBo;
import com.tencent.weibo.sdk.android.network.HttpService;
import com.tencent.weibo.sdk.android.network.ReqParam;

// Referenced classes of package com.tencent.weibo.sdk.android.api:
//            BaseAPI

class this._cls0
    implements HttpCallback
{

    final BaseAPI this$0;

    public void onResult(Object obj)
    {
        Log.d("sss", (new StringBuilder()).append(obj).toString());
        if (obj != null)
        {
            String as[] = ((ModelResult)obj).getObj().toString().split("&");
            obj = as[0].split("=")[1];
            BaseAPI.access$0(BaseAPI.this, ((String) (obj)));
            String s = as[1].split("=")[1];
            String s1 = as[2].split("=")[1];
            String s2 = as[3].split("=")[1];
            String s3 = as[4].split("=")[1];
            String s4 = as[5].split("=")[1];
            Util.saveSharePersistent(BaseAPI.access$1(BaseAPI.this), "ACCESS_TOKEN", ((String) (obj)));
            Util.saveSharePersistent(BaseAPI.access$1(BaseAPI.this), "EXPIRES_IN", s);
            Util.saveSharePersistent(BaseAPI.access$1(BaseAPI.this), "OPEN_ID", s2);
            Util.saveSharePersistent(BaseAPI.access$1(BaseAPI.this), "REFRESH_TOKEN", s1);
            Util.saveSharePersistent(BaseAPI.access$1(BaseAPI.this), "NAME", s3);
            Util.saveSharePersistent(BaseAPI.access$1(BaseAPI.this), "NICK", s4);
            Util.saveSharePersistent(BaseAPI.access$1(BaseAPI.this), "AUTHORIZETIME", String.valueOf(System.currentTimeMillis() / 1000L));
            BaseAPI.access$7(BaseAPI.this, new HttpReqWeiBo(BaseAPI.access$1(BaseAPI.this), BaseAPI.access$2(BaseAPI.this), BaseAPI.access$3(BaseAPI.this), BaseAPI.access$4(BaseAPI.this), BaseAPI.access$5(BaseAPI.this), Integer.valueOf(BaseAPI.access$6(BaseAPI.this))));
            BaseAPI.access$8(BaseAPI.this).addParam("access_token", BaseAPI.access$9(BaseAPI.this));
            BaseAPI.access$10(BaseAPI.this).setParam(BaseAPI.access$8(BaseAPI.this));
            HttpService.getInstance().addImmediateReq(BaseAPI.access$10(BaseAPI.this));
        }
    }

    rvice()
    {
        this$0 = BaseAPI.this;
        super();
    }
}
