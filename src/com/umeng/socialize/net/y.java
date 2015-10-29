// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.media.BaseMediaObject;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMRichMedia;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socialize.net.a.b;
import com.umeng.socialize.net.utils.a;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.umeng.socialize.net:
//            z

public class y extends b
{

    private static final String a = "/api/upload_pic/";
    private static final int j = 23;
    private Context k;
    private String l;
    private UMediaObject m;

    public y(Context context, SocializeEntity socializeentity, UMediaObject umediaobject, String s)
    {
        super(context, "", com/umeng/socialize/net/z, socializeentity, 23, com.umeng.socialize.net.a.b.b.b);
        k = context;
        l = s;
        m = umediaobject;
    }

    private void b(UMediaObject umediaobject, Map map)
    {
        try
        {
            if (umediaobject instanceof BaseMediaObject)
            {
                Object obj = (BaseMediaObject)umediaobject;
                umediaobject = ((BaseMediaObject) (obj)).getTitle();
                obj = ((BaseMediaObject) (obj)).getThumb();
                if (!TextUtils.isEmpty(umediaobject) || !TextUtils.isEmpty(((CharSequence) (obj))))
                {
                    JSONObject jsonobject = new JSONObject();
                    jsonobject.put(a.A, umediaobject);
                    jsonobject.put(a.B, obj);
                    map.put("ext", jsonobject);
                }
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (UMediaObject umediaobject)
        {
            Log.e(b, "can`t add qzone title & thumb.", umediaobject);
        }
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
        return (new StringBuilder("/api/upload_pic/")).append(SocializeUtils.getAppkey(k)).append("/").toString();
    }

    protected Map a(Map map)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("usid", l);
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        map = a(jsonobject, map);
        map = a(b, map.toString());
        if (m != null)
        {
            if (m.isUrlMedia())
            {
                a(m, map);
            } else
            if ((m instanceof UMImage) || (m instanceof UMRichMedia))
            {
                b(m, map);
                return map;
            }
        }
        return map;
    }

    public Map b()
    {
        Map map;
        if (m == null || m.isUrlMedia())
        {
            return super.b();
        }
        map = super.b();
        if (!(m instanceof UMImage)) goto _L2; else goto _L1
_L1:
        byte abyte0[] = b(((UMImage)m).getImageCachePath());
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
        if (m instanceof UMRichMedia)
        {
            byte abyte1[] = ((UMRichMedia)m).toByte();
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
