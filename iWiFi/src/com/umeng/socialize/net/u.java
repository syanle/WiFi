// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.net.a.e;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class u extends e
{

    public Map a;

    public u(JSONObject jsonobject)
    {
        super(jsonobject);
    }

    public void a()
    {
        SHARE_MEDIA ashare_media[];
        super.a();
        a = new HashMap();
        ashare_media = SHARE_MEDIA.getDefaultPlatform();
        if (ashare_media == null) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        j = ashare_media.length;
        i = 0;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        return;
_L3:
        SHARE_MEDIA share_media = ashare_media[i];
        String s = share_media.toString();
        if (l.has(s))
        {
            try
            {
                int k = l.getJSONObject(s).optInt("st");
                a.put(share_media, Integer.valueOf(k));
            }
            catch (JSONException jsonexception) { }
        }
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
