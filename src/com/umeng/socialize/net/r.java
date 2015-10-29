// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import com.umeng.socialize.bean.SNSPair;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.net.a.b;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.umeng.socialize.net:
//            s

public class r extends b
{

    private static final String a = "/share/follow/";
    private static final int j = 18;
    private SNSPair k;
    private String l[];

    public transient r(Context context, SocializeEntity socializeentity, SNSPair snspair, String as[])
    {
        super(context, "", com/umeng/socialize/net/s, socializeentity, 18, com.umeng.socialize.net.a.b.b.b);
        e = context;
        k = snspair;
        l = as;
    }

    protected String a()
    {
        return (new StringBuilder("/share/follow/")).append(SocializeUtils.getAppkey(e)).append("/").append(k.mUsid).append("/").toString();
    }

    protected Map a(Map map)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (l == null) goto _L2; else goto _L1
_L1:
        Object obj;
        int i;
        int i1;
        obj = l;
        i1 = obj.length;
        i = 0;
_L5:
        if (i < i1) goto _L3; else goto _L2
_L2:
        if (stringbuilder.length() > 0)
        {
            stringbuilder.deleteCharAt(stringbuilder.length() - 1);
        }
        obj = new JSONObject();
        try
        {
            ((JSONObject) (obj)).put("to", k.mPaltform.toString());
            ((JSONObject) (obj)).put("fusid", stringbuilder.toString());
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        map = a(((JSONObject) (obj)), map);
        return a(b, map.toString());
_L3:
        stringbuilder.append((new StringBuilder(String.valueOf(obj[i]))).append(",").toString());
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
