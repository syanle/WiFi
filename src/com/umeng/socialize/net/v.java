// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMLocation;
import com.umeng.socialize.bean.UMShareMsg;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMRichMedia;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socialize.net.a.b;
import com.umeng.socialize.net.a.e;
import com.umeng.socialize.net.utils.a;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class v extends b
{

    private static final String a = "/share/add/";
    private static final int j = 9;
    private SocializeEntity k;
    private String l;
    private String m;
    private UMShareMsg n;

    public v(Context context, SocializeEntity socializeentity, String s, String s1, UMShareMsg umsharemsg)
    {
        super(context, "", com/umeng/socialize/net/a/e, socializeentity, 9, com.umeng.socialize.net.a.b.b.b);
        e = context;
        k = socializeentity;
        l = s;
        m = s1;
        n = umsharemsg;
    }

    private byte[] b(String s)
    {
        ByteArrayOutputStream bytearrayoutputstream;
        byte abyte0[];
        s = new FileInputStream(s);
        bytearrayoutputstream = new ByteArrayOutputStream(s.available());
        abyte0 = new byte[1024];
_L1:
        int i = s.read(abyte0);
        if (i != -1)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        return bytearrayoutputstream.toByteArray();
        bytearrayoutputstream.write(abyte0, 0, i);
          goto _L1
        s;
        s.printStackTrace();
        return null;
    }

    protected String a()
    {
        return (new StringBuilder("/share/add/")).append(SocializeUtils.getAppkey(e)).append("/").append(k.mEntityKey).append("/").toString();
    }

    protected Map a(Map map)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("to", l);
            if (!TextUtils.isEmpty(n.mText))
            {
                jsonobject.put(a.s, n.mText);
            }
            jsonobject.put("usid", m);
            jsonobject.put("ak", SocializeUtils.getAppkey(e));
            if (!TextUtils.isEmpty(n.mWeiBoId))
            {
                jsonobject.put("wid", n.mWeiBoId);
            }
            if (n.mLocation != null)
            {
                jsonobject.put(a.t, n.mLocation.toString());
            }
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        map = a(jsonobject, map);
        map = a(b, map.toString());
        if (n.getMedia() != null && n.getMedia().isUrlMedia())
        {
            a(n.getMedia(), map);
        }
        return map;
    }

    public Map b()
    {
        Map map;
        if (n == null || n.getMedia() == null || n.getMedia().isUrlMedia())
        {
            return super.b();
        }
        map = super.b();
        if (!(n.getMedia() instanceof UMImage)) goto _L2; else goto _L1
_L1:
        byte abyte0[] = b(((UMImage)n.getMedia()).getImageCachePath());
        String s = com.umeng.socialize.common.a.a(abyte0);
        Object obj = s;
        if (TextUtils.isEmpty(s))
        {
            obj = "png";
        }
        obj = new com.umeng.socom.net.s.a((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(System.currentTimeMillis()))).toString()))).append(".").append(((String) (obj))).toString(), abyte0);
        map.put(a.v, obj);
_L4:
        return map;
_L2:
        if (n.getMedia() instanceof UMRichMedia)
        {
            byte abyte1[] = ((UMRichMedia)n.getMedia()).toByte();
            String s1 = com.umeng.socialize.common.a.a(abyte1);
            Object obj1 = s1;
            if (TextUtils.isEmpty(s1))
            {
                obj1 = "png";
            }
            obj1 = new com.umeng.socom.net.s.a((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(System.currentTimeMillis()))).toString()))).append(".").append(((String) (obj1))).toString(), abyte1);
            map.put(a.v, obj1);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
