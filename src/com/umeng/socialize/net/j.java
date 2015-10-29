// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.net.a.b;
import com.umeng.socialize.net.a.e;
import java.util.Map;
import org.json.JSONObject;

public class j extends b
{

    private static final String a = "/comment/unbinding/";
    private static final int j = 15;

    public j(Context context, SocializeEntity socializeentity)
    {
        super(context, "", com/umeng/socialize/net/a/e, socializeentity, 15, com.umeng.socialize.net.a.b.b.b);
        e = context;
    }

    protected String a()
    {
        return (new StringBuilder("/comment/unbinding/")).append(SocializeUtils.getAppkey(e)).append("/").toString();
    }

    protected Map a(Map map)
    {
        map = a(new JSONObject(), map);
        return a(b, map.toString());
    }
}
