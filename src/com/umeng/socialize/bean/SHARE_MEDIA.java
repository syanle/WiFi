// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.bean:
//            o, z, aa, ab, 
//            ac, ad, ae, af, 
//            ag, p, q, r, 
//            s, t, u, v, 
//            w, x, y

public class SHARE_MEDIA extends Enum
{

    public static final SHARE_MEDIA DOUBAN;
    public static final SHARE_MEDIA EMAIL;
    public static final SHARE_MEDIA FACEBOOK;
    public static final SHARE_MEDIA GENERIC;
    public static final SHARE_MEDIA GOOGLEPLUS;
    public static final SHARE_MEDIA INSTAGRAM;
    public static final SHARE_MEDIA LAIWANG;
    public static final SHARE_MEDIA LAIWANG_DYNAMIC;
    public static final SHARE_MEDIA QQ;
    public static final SHARE_MEDIA QZONE;
    public static final SHARE_MEDIA RENREN;
    public static final SHARE_MEDIA SINA;
    public static final SHARE_MEDIA SMS;
    public static final SHARE_MEDIA TENCENT;
    public static final SHARE_MEDIA TWITTER;
    public static final SHARE_MEDIA WEIXIN;
    public static final SHARE_MEDIA WEIXIN_CIRCLE;
    public static final SHARE_MEDIA YIXIN;
    public static final SHARE_MEDIA YIXIN_CIRCLE;
    private static Map a;
    private static final SHARE_MEDIA b[];

    private SHARE_MEDIA(String s1, int i)
    {
        super(s1, i);
    }

    SHARE_MEDIA(String s1, int i, SHARE_MEDIA share_media)
    {
        this(s1, i);
    }

    public static SHARE_MEDIA convertToEmun(String s1)
    {
        SHARE_MEDIA ashare_media[];
        int i;
        int j;
        ashare_media = values();
        j = ashare_media.length;
        i = 0;
_L6:
        if (i < j) goto _L2; else goto _L1
_L1:
        SHARE_MEDIA share_media;
        if (TextUtils.isEmpty(s1))
        {
            break MISSING_BLOCK_LABEL_83;
        }
        if (!s1.equals("wxtimeline"))
        {
            break; /* Loop/switch isn't completed */
        }
        share_media = WEIXIN_CIRCLE;
_L4:
        return share_media;
_L2:
        SHARE_MEDIA share_media1;
        share_media1 = ashare_media[i];
        share_media = share_media1;
        if (share_media1.toString().trim().equals(s1)) goto _L4; else goto _L3
_L3:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
        if (s1.equals("wxsession"))
        {
            return WEIXIN;
        }
        return null;
    }

    public static SHARE_MEDIA[] getDefaultPlatform()
    {
        return (new SHARE_MEDIA[] {
            SINA, DOUBAN, QZONE, TENCENT, RENREN, SMS, EMAIL
        });
    }

    public static int getPlatformOperation(SHARE_MEDIA share_media)
    {
label0:
        {
            if (share_media == null)
            {
                break label0;
            }
            int i;
            try
            {
                if (share_media == GENERIC)
                {
                    break label0;
                }
                i = ((Integer)a.get(share_media)).intValue();
            }
            // Misplaced declaration of an exception variable
            catch (SHARE_MEDIA share_media)
            {
                return -1;
            }
            return i;
        }
        return -1;
    }

    public static SHARE_MEDIA valueOf(String s1)
    {
        return (SHARE_MEDIA)Enum.valueOf(com/umeng/socialize/bean/SHARE_MEDIA, s1);
    }

    public static SHARE_MEDIA[] values()
    {
        SHARE_MEDIA ashare_media[] = b;
        int i = ashare_media.length;
        SHARE_MEDIA ashare_media1[] = new SHARE_MEDIA[i];
        System.arraycopy(ashare_media, 0, ashare_media1, 0, i);
        return ashare_media1;
    }

    static 
    {
        SINA = new o("SINA", 0);
        QZONE = new z("QZONE", 1);
        QQ = new aa("QQ", 2);
        RENREN = new ab("RENREN", 3);
        WEIXIN = new ac("WEIXIN", 4);
        WEIXIN_CIRCLE = new ad("WEIXIN_CIRCLE", 5);
        TENCENT = new ae("TENCENT", 6);
        DOUBAN = new af("DOUBAN", 7);
        SMS = new ag("SMS", 8);
        EMAIL = new p("EMAIL", 9);
        GOOGLEPLUS = new q("GOOGLEPLUS", 10);
        FACEBOOK = new r("FACEBOOK", 11);
        TWITTER = new s("TWITTER", 12);
        LAIWANG = new t("LAIWANG", 13);
        LAIWANG_DYNAMIC = new u("LAIWANG_DYNAMIC", 14);
        YIXIN = new v("YIXIN", 15);
        YIXIN_CIRCLE = new w("YIXIN_CIRCLE", 16);
        INSTAGRAM = new x("INSTAGRAM", 17);
        GENERIC = new y("GENERIC", 18);
        b = (new SHARE_MEDIA[] {
            SINA, QZONE, QQ, RENREN, WEIXIN, WEIXIN_CIRCLE, TENCENT, DOUBAN, SMS, EMAIL, 
            GOOGLEPLUS, FACEBOOK, TWITTER, LAIWANG, LAIWANG_DYNAMIC, YIXIN, YIXIN_CIRCLE, INSTAGRAM, GENERIC
        });
        a = new HashMap();
        a.put(QZONE, Integer.valueOf(1));
        a.put(SINA, Integer.valueOf(2));
        a.put(TENCENT, Integer.valueOf(3));
        a.put(RENREN, Integer.valueOf(4));
        a.put(DOUBAN, Integer.valueOf(5));
        a.put(EMAIL, Integer.valueOf(6));
        a.put(SMS, Integer.valueOf(7));
        a.put(WEIXIN, Integer.valueOf(8));
        a.put(WEIXIN_CIRCLE, Integer.valueOf(9));
        a.put(QQ, Integer.valueOf(10));
        a.put(FACEBOOK, Integer.valueOf(11));
        a.put(TWITTER, Integer.valueOf(12));
        a.put(GOOGLEPLUS, Integer.valueOf(13));
        a.put(YIXIN, Integer.valueOf(14));
        a.put(YIXIN_CIRCLE, Integer.valueOf(15));
        a.put(LAIWANG, Integer.valueOf(16));
        a.put(LAIWANG_DYNAMIC, Integer.valueOf(17));
        a.put(INSTAGRAM, Integer.valueOf(18));
    }
}
