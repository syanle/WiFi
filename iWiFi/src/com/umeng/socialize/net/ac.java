// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.socialize.bean.Gender;
import com.umeng.socialize.bean.SnsAccount;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeConstants;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.net.a.b;
import com.umeng.socialize.net.a.e;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class ac extends b
{

    private static final String a = "/user/custom_account/";
    private static final int j = 19;
    private SnsAccount k;

    public ac(Context context, SocializeEntity socializeentity, SnsAccount snsaccount)
    {
        super(context, "", com/umeng/socialize/net/a/e, socializeentity, 19, com.umeng.socialize.net.a.b.b.b);
        k = snsaccount;
    }

    protected String a()
    {
        return (new StringBuilder("/user/custom_account/")).append(SocializeUtils.getAppkey(e)).append("/").append(SocializeConstants.UID).append("/").toString();
    }

    protected Map a(Map map)
    {
        JSONObject jsonobject = new JSONObject();
        String s = k.getUsid();
        if (!TextUtils.isEmpty(s))
        {
            jsonobject.put("usid", s);
        }
        if (k.getGender() == null) goto _L2; else goto _L1
_L1:
        String s1 = k.getGender().toString();
_L3:
        if (!TextUtils.isEmpty(s1))
        {
            jsonobject.put("gender", s1);
        }
        s1 = k.getUserName();
        if (!TextUtils.isEmpty(s1))
        {
            jsonobject.put("username", s1);
        }
        s1 = k.getBirthday();
        if (!TextUtils.isEmpty(s1))
        {
            jsonobject.put("birthday", s1);
        }
        s1 = k.getProfileUrl();
        if (!TextUtils.isEmpty(s1))
        {
            jsonobject.put("profile_url", s1);
        }
        s1 = k.getAccountIconUrl();
        if (!TextUtils.isEmpty(s1))
        {
            jsonobject.put("icon", s1);
        }
        s1 = k.getExtendArgs();
        if (!TextUtils.isEmpty(s1))
        {
            jsonobject.put("extend", s1);
        }
_L4:
        map = a(jsonobject, map);
        return a(b, map.toString());
_L2:
        s1 = null;
          goto _L3
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
          goto _L4
    }
}
