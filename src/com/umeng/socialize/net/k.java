// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMToken;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.net.a.b;
import com.umeng.socialize.net.a.e;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class k extends b
{

    private static final String a = "/share/token/";
    private static final int j = 21;
    private UMToken k;

    public k(Context context, SocializeEntity socializeentity, UMToken umtoken)
    {
        super(context, "", com/umeng/socialize/net/a/e, socializeentity, 21, com.umeng.socialize.net.a.b.b.b);
        k = umtoken;
    }

    protected String a()
    {
        return (new StringBuilder("/share/token/")).append(SocializeUtils.getAppkey(e)).append("/").toString();
    }

    protected Map a(Map map)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("usid", k.mUsid);
            jsonobject.put("to", k.mPaltform);
            jsonobject.put("access_token", k.getToken());
            if (!TextUtils.isEmpty(k.getOpenId()))
            {
                jsonobject.put("openid", k.getOpenId());
            }
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        map = a(jsonobject, map);
        return a(b, map.toString());
    }
}
