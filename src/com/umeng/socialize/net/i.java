// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.net.a.b;
import com.umeng.socialize.net.a.e;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class i extends b
{

    private static final String a = "/comment/binding/";
    private static final int j = 13;
    private SocializeEntity k;
    private SHARE_MEDIA l;

    public i(Context context, SocializeEntity socializeentity, SHARE_MEDIA share_media)
    {
        super(context, "", com/umeng/socialize/net/a/e, socializeentity, 13, com.umeng.socialize.net.a.b.b.b);
        e = context;
        k = socializeentity;
        l = share_media;
    }

    protected String a()
    {
        return (new StringBuilder("/comment/binding/")).append(SocializeUtils.getAppkey(e)).append("/").toString();
    }

    protected Map a(Map map)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("sns", l.toString());
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        map = a(jsonobject, map);
        return a(b, map.toString());
    }
}
