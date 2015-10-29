// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import com.umeng.socialize.bean.LIKESTATUS;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.net.a.b;
import com.umeng.socialize.net.a.e;
import java.util.Map;
import org.json.JSONObject;

public class h extends b
{

    private static final String a = "/like/update/";
    private static final int j = 6;
    private LIKESTATUS k;
    private SocializeEntity l;

    public h(Context context, SocializeEntity socializeentity, LIKESTATUS likestatus)
    {
        super(context, "", com/umeng/socialize/net/a/e, socializeentity, 6, com.umeng.socialize.net.a.b.b.b);
        e = context;
        k = likestatus;
        l = socializeentity;
    }

    protected String a()
    {
        return (new StringBuilder("/like/update/")).append(SocializeUtils.getAppkey(e)).append("/").append(l.mEntityKey).append("/").toString();
    }

    protected Map a(Map map)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("st", Integer.parseInt(k.toString()));
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        map = a(jsonobject, map);
        return a(b, map.toString());
    }
}
