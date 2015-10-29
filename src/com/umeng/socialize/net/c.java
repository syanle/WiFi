// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.bean.SNSPair;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMComment;
import com.umeng.socialize.bean.UMLocation;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.net.a.b;
import com.umeng.socialize.net.a.e;
import com.umeng.socialize.net.utils.a;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class c extends b
{

    private static final String a = "/comment/add/";
    private static final int j = 5;
    private UMComment k;
    private SocializeEntity l;
    private SNSPair m[];

    public c(Context context, SocializeEntity socializeentity, UMComment umcomment, SNSPair asnspair[])
    {
        super(context, "", com/umeng/socialize/net/a/e, socializeentity, 5, com.umeng.socialize.net.a.b.b.b);
        e = context;
        k = umcomment;
        l = socializeentity;
        m = asnspair;
    }

    protected String a()
    {
        return (new StringBuilder("/comment/add/")).append(SocializeUtils.getAppkey(e)).append("/").append(l.mEntityKey).append("/").toString();
    }

    protected Map a(Map map)
    {
        Object obj = new JSONObject();
        ((JSONObject) (obj)).put(a.s, k.mText);
        if (k.mLocation != null)
        {
            ((JSONObject) (obj)).put(a.t, k.mLocation.toString());
        }
        if (!TextUtils.isEmpty(k.mSignature))
        {
            ((JSONObject) (obj)).put(a.x, k.mSignature);
        }
        if (m == null || m.length <= 0) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = new JSONObject();
        SNSPair asnspair[];
        int i1;
        asnspair = m;
        i1 = asnspair.length;
        int i = 0;
_L6:
        if (i < i1) goto _L4; else goto _L3
_L3:
        SNSPair snspair;
        try
        {
            if (jsonobject.toString().length() > 2)
            {
                ((JSONObject) (obj)).put("sns", jsonobject.toString());
            }
        }
        catch (JSONException jsonexception) { }
        catch (Exception exception)
        {
            Log.e(b, (new StringBuilder("\u6570\u636E\u6253\u5305\u5931\u8D25 :")).append(exception.toString()).toString());
        }
_L2:
        map = a(((JSONObject) (obj)), map);
        map = a(b, map.toString());
        obj = k.getMedia();
        if (obj != null)
        {
            a(((com.umeng.socialize.media.UMediaObject) (obj)), map);
        }
        return map;
_L4:
        snspair = asnspair[i];
        if (snspair == null)
        {
            break MISSING_BLOCK_LABEL_214;
        }
        jsonobject.put(snspair.mPaltform.toString(), snspair.mUsid);
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
