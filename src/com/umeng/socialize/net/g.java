// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.net.a.e;
import com.umeng.socom.Log;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class g extends e
{

    public Map a;
    public Map b;

    public g(JSONObject jsonobject)
    {
        super(jsonobject);
    }

    public void a()
    {
        JSONObject jsonobject;
        jsonobject = l;
        a = new HashMap();
        b = new HashMap();
        if (jsonobject == null)
        {
            Log.b(e.k, "data json is null....");
            return;
        }
        Object obj;
        int j;
        obj = SHARE_MEDIA.getDefaultPlatform();
        j = obj.length;
        int i = 0;
_L2:
        SHARE_MEDIA share_media;
        if (i >= j)
        {
            try
            {
                Log.a(k, (new StringBuilder("platform key found: ")).append(a.keySet().toString()).toString());
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Log.b(k, (new StringBuilder("Parse json error[ ")).append(jsonobject.toString()).append(" ]").toString(), ((Exception) (obj)));
            }
            return;
        }
        share_media = obj[i];
        JSONObject jsonobject1 = jsonobject.optJSONObject(share_media.toString());
        if (jsonobject1 == null)
        {
            break MISSING_BLOCK_LABEL_191;
        }
        String s = jsonobject1.getString("key");
        a.put(share_media.toString(), s);
        b.put(share_media.toString(), jsonobject1.optString("secret"));
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        Log.b(k, (new StringBuilder("Parse json error[ ")).append(jsonobject.toString()).append(" ]").toString(), exception);
          goto _L3
    }
}
