// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.net.a.b;
import com.umeng.socom.DeviceConfig;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.net:
//            b

public class a extends b
{

    private static final String a = "/bar/get/";
    private static final int j = 1;
    private SocializeEntity k;
    private int l;

    public a(Context context, SocializeEntity socializeentity, int i)
    {
        super(context, "", com/umeng/socialize/net/b, socializeentity, 1, com.umeng.socialize.net.a.b.b.a);
        l = 0;
        e = context;
        k = socializeentity;
        l = i;
        com.umeng.socom.util.b.a(DeviceConfig.getAppkey(e));
    }

    protected String a()
    {
        return (new StringBuilder("/bar/get/")).append(SocializeUtils.getAppkey(e)).append("/").toString();
    }

    protected Map a(Map map)
    {
        map.put("dc", k.mDescriptor);
        map.put(com.umeng.socialize.net.utils.a.E, Integer.valueOf(l));
        if (!TextUtils.isEmpty(k.getNickName()))
        {
            map.put(com.umeng.socialize.net.utils.a.G, k.getNickName());
        }
        if (!TextUtils.isEmpty(k.mCustomID))
        {
            map.put(com.umeng.socialize.net.utils.a.F, k.mCustomID);
        }
        return map;
    }
}
