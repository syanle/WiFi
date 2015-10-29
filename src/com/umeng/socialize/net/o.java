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

public class o extends b
{

    private static final String a = "/share/auth_delete/";
    private static final int j = 15;
    private SHARE_MEDIA k;

    public o(Context context, SocializeEntity socializeentity, SHARE_MEDIA share_media)
    {
        super(context, "", com/umeng/socialize/net/a/e, socializeentity, 15, com.umeng.socialize.net.a.b.b.b);
        e = context;
        k = share_media;
    }

    protected String a()
    {
        return (new StringBuilder("/share/auth_delete/")).append(SocializeUtils.getAppkey(e)).append("/").toString();
    }

    protected Map a(Map map)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("uid", SocializeConstants.UID);
            jsonobject.put("via", k.toString());
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        map = a(jsonobject, map);
        return a(b, map.toString());
    }
}
