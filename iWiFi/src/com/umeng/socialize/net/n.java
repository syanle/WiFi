// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeConstants;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.net.a.b;
import com.umeng.socialize.net.a.e;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class n extends b
{

    private static final String a = "/share/auth/report/";
    private static final int j = 11;
    private SocializeEntity k;
    private String l;
    private SHARE_MEDIA m;

    public n(Context context, SocializeEntity socializeentity, SHARE_MEDIA share_media, String s)
    {
        super(context, "", com/umeng/socialize/net/a/e, socializeentity, 11, com.umeng.socialize.net.a.b.b.b);
        e = context;
        k = socializeentity;
        l = s;
        m = share_media;
    }

    protected String a()
    {
        return (new StringBuilder("/share/auth/report/")).append(SocializeUtils.getAppkey(e)).append("/").append(k.mEntityKey).append("/").toString();
    }

    protected Map a(Map map)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("usid", l);
            jsonobject.put("uid", SocializeConstants.UID);
            jsonobject.put("to", m.toString());
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        map = a(jsonobject, map);
        return a(b, map.toString());
    }
}
