// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SNSPair;
import com.umeng.socialize.bean.ShareType;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMLocation;
import com.umeng.socialize.bean.UMShareMsg;
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
//            u

public class t extends b
{

    public static boolean a = false;
    private static final String j = "/share/multi_add/";
    private static final int k = 17;
    private SocializeEntity l;
    private SNSPair m[];
    private UMShareMsg n;

    public t(Context context, SocializeEntity socializeentity, SNSPair asnspair[], UMShareMsg umsharemsg)
    {
        super(context, "", com/umeng/socialize/net/u, socializeentity, 17, com.umeng.socialize.net.a.b.b.b);
        e = context;
        l = socializeentity;
        n = umsharemsg;
        m = asnspair;
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
        return (new StringBuilder("/share/multi_add/")).append(SocializeUtils.getAppkey(e)).append("/").append(l.mEntityKey).append("/").toString();
    }

    protected Map a(Map map)
    {
        JSONObject jsonobject = new JSONObject();
        if (m == null || m.length <= 0) goto _L2; else goto _L1
_L1:
        int i = 0;
_L6:
        if (i < m.length) goto _L3; else goto _L2
_L2:
        Object obj = new JSONObject();
        String s;
        try
        {
            ((JSONObject) (obj)).put("sns", jsonobject.toString());
            if (!TextUtils.isEmpty(n.mText))
            {
                ((JSONObject) (obj)).put(a.s, n.mText);
            }
            ((JSONObject) (obj)).put("ak", SocializeUtils.getAppkey(e));
            if (n.mLocation != null)
            {
                ((JSONObject) (obj)).put(a.t, n.mLocation.toString());
            }
            ((JSONObject) (obj)).put("type", l.getShareType());
            Log.d(b, (new StringBuilder("##### share type : ")).append(((JSONObject) (obj)).toString()).toString());
            l.setShareType(ShareType.NORMAL);
        }
        catch (Exception exception) { }
        map = a(((JSONObject) (obj)), map);
        map = a(b, map.toString());
        a(n.getMedia(), map);
        return map;
_L3:
        obj = m[i];
        if (TextUtils.isEmpty(((SNSPair) (obj)).mPaltform))
        {
            break MISSING_BLOCK_LABEL_269;
        }
        s = ((SNSPair) (obj)).mPaltform;
        if (!TextUtils.isEmpty(((SNSPair) (obj)).mUsid))
        {
            break MISSING_BLOCK_LABEL_256;
        }
        obj = "";
_L4:
        try
        {
            jsonobject.put(s, obj);
        }
        catch (JSONException jsonexception) { }
        break MISSING_BLOCK_LABEL_269;
        obj = ((SNSPair) (obj)).mUsid;
          goto _L4
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(UMediaObject umediaobject, Map map)
    {
        Object obj;
        String s;
        String s1;
        if (m != null)
        {
            if (m.length == 1)
            {
                obj = SHARE_MEDIA.convertToEmun(m[0].mPaltform);
                break MISSING_BLOCK_LABEL_29;
            } else
            {
                if (m.length > 1)
                {
                    obj = SHARE_MEDIA.GENERIC;
                    continue; /* Loop/switch isn't completed */
                }
                break;
            }
        }
          goto _L1
_L3:
        s1 = SocializeEntity.getAppWebSite(((SHARE_MEDIA) (obj)));
        if (umediaobject != null)
        {
label0:
            {
                JSONObject jsonobject;
                if (umediaobject.isUrlMedia())
                {
                    map.putAll(umediaobject.toUrlExtraParams());
                } else
                {
                    obj = umediaobject.toByte();
                    if (obj != null)
                    {
                        a(((byte []) (obj)), com.umeng.socialize.net.a.b.a.a, null);
                    }
                }
                if (umediaobject instanceof BaseMediaObject)
                {
                    umediaobject = (BaseMediaObject)umediaobject;
                    s = umediaobject.getTitle();
                    obj = umediaobject.getThumb();
                    break label0;
                }
            }
        }
        obj = "";
        s = "";
        while (true) 
        {
            if (TextUtils.isEmpty(SocializeEntity.mAppName) && e != null)
            {
                umediaobject = e.getApplicationInfo().loadLabel(e.getPackageManager());
                if (!TextUtils.isEmpty(umediaobject))
                {
                    umediaobject = umediaobject.toString();
                    SocializeEntity.mAppName = umediaobject;
                } else
                {
                    umediaobject = "";
                }
            } else
            {
                umediaobject = SocializeEntity.mAppName;
            }
            try
            {
                jsonobject = new JSONObject();
                if (!TextUtils.isEmpty(umediaobject))
                {
                    jsonobject.put("app_name", umediaobject);
                }
                if (!TextUtils.isEmpty(s) && !s.equals("\u672A\u77E5"))
                {
                    jsonobject.put(a.A, s);
                }
                if (!TextUtils.isEmpty(((CharSequence) (obj))))
                {
                    jsonobject.put(a.B, obj);
                }
                if (!TextUtils.isEmpty(s1))
                {
                    jsonobject.put("app_website", s1);
                }
                map.put("ext", jsonobject);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (UMediaObject umediaobject)
            {
                umediaobject.printStackTrace();
            }
            return;
        }
_L1:
        obj = null;
        if (true) goto _L3; else goto _L2
_L2:
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

    static 
    {
        a = false;
    }
}
