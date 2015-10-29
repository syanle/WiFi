// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.text.TextUtils;
import com.umeng.socialize.bean.UMFriend;
import com.umeng.socialize.net.a.e;
import com.umeng.socom.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class q extends e
{

    public List a;
    private boolean b;

    public q(JSONObject jsonobject)
    {
        super(jsonobject);
        b = true;
    }

    public static char a(char c)
    {
        char c1 = c;
        if (c >= 'a')
        {
            c1 = c;
            if (c <= 'z')
            {
                c1 = (char)(c - 32);
            }
        }
        return c1;
    }

    public void a()
    {
        Object obj = l;
        if (obj != null) goto _L2; else goto _L1
_L1:
        Log.b(e.k, "data json is null....");
_L6:
        return;
_L2:
        Iterator iterator;
        a = new ArrayList();
        iterator = ((JSONObject) (obj)).keys();
_L4:
        if (!iterator.hasNext())
        {
            continue; /* Loop/switch isn't completed */
        }
        Object obj1;
        JSONObject jsonobject;
        UMFriend umfriend;
        obj1 = iterator.next().toString();
        jsonobject = (JSONObject)l.get(((String) (obj1)));
        if (!jsonobject.has("name"))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = jsonobject.getString("name");
        if (TextUtils.isEmpty(((CharSequence) (obj1))) || TextUtils.isEmpty(((CharSequence) (obj))))
        {
            break; /* Loop/switch isn't completed */
        }
        umfriend = new UMFriend();
        umfriend.setFid(((String) (obj1)));
        umfriend.setName(((String) (obj)));
        obj1 = jsonobject.optString("link_name", "");
        if (!TextUtils.isEmpty(((CharSequence) (obj1))))
        {
            obj = obj1;
        }
        umfriend.setLinkName(((String) (obj)));
        obj = jsonobject.optString("pinyin", "");
        if (!TextUtils.isEmpty(((CharSequence) (obj))))
        {
            obj1 = new com.umeng.socialize.bean.UMFriend.a();
            obj1.b = String.valueOf(a(((String) (obj)).charAt(0)));
            obj1.a = ((String) (obj));
            umfriend.setPinyin(((com.umeng.socialize.bean.UMFriend.a) (obj1)));
        }
        if (jsonobject.has("profile_image_url"))
        {
            umfriend.setIcon(jsonobject.getString("profile_image_url"));
        }
        a.add(umfriend);
        break; /* Loop/switch isn't completed */
        obj;
        Log.b(k, "Parse friend data error", ((Exception) (obj)));
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L6; else goto _L5
_L5:
    }
}
