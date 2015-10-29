// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.common;

import android.content.Context;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.db.OauthHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.umeng.socialize.common:
//            ResContainer

public class c
{

    public static final String a = "sina";
    public static final String b = "tencent";
    public static final String c = "renren";
    public static final String d = "douban";
    public static final String e = "qzone";
    public static final String f = "qq";
    public static final String g = "weixin";
    public static final String h = "weixin_circle";
    public static final String i = "sms";
    public static final String j = "email";
    public static final String k = "facebook";
    public static final String l = "google+";
    public static final String m = "twitter";
    public static final String n = "generic";
    public static final String o = "yixin";
    public static final String p = "yixin_circle";
    public static final String q = "laiwang";
    public static final String r = "laiwang_dynamic";
    public static final String s = "instagram";
    private static int t[];

    public c()
    {
    }

    public static String a(Context context, SHARE_MEDIA share_media)
    {
        switch (a()[share_media.ordinal()])
        {
        case 3: // '\003'
        case 5: // '\005'
        case 6: // '\006'
        case 9: // '\t'
        case 10: // '\n'
        case 11: // '\013'
        default:
            return "";

        case 7: // '\007'
            return context.getString(ResContainer.getResourceId(context, ResContainer.ResType.STRING, "umeng_socialize_text_tencent_key"));

        case 1: // '\001'
            return context.getString(ResContainer.getResourceId(context, ResContainer.ResType.STRING, "umeng_socialize_text_sina_key"));

        case 4: // '\004'
            return context.getString(ResContainer.getResourceId(context, ResContainer.ResType.STRING, "umeng_socialize_text_renren_key"));

        case 8: // '\b'
            return context.getString(ResContainer.getResourceId(context, ResContainer.ResType.STRING, "umeng_socialize_text_douban_key"));

        case 2: // '\002'
            return context.getString(ResContainer.getResourceId(context, ResContainer.ResType.STRING, "umeng_socialize_text_qq_zone_key"));

        case 12: // '\f'
            return "facebook";
        }
    }

    public static String a(SHARE_MEDIA share_media)
    {
        switch (a()[share_media.ordinal()])
        {
        case 5: // '\005'
        case 6: // '\006'
        case 9: // '\t'
        case 10: // '\n'
        case 11: // '\013'
        default:
            return null;

        case 1: // '\001'
            return "sina";

        case 7: // '\007'
            return "tencent";

        case 4: // '\004'
            return "renren";

        case 8: // '\b'
            return "douban";

        case 2: // '\002'
            return "qzone";

        case 3: // '\003'
            return "qq";

        case 12: // '\f'
            return "facebook";
        }
    }

    public static List a(Context context, SocializeConfig socializeconfig)
    {
        SHARE_MEDIA share_media;
        Object obj;
        int i1;
        obj = socializeconfig.getPlatforms();
        socializeconfig = new ArrayList();
        share_media = com.umeng.socialize.db.c.b(context);
        obj = ((List) (obj)).iterator();
        i1 = 0;
_L2:
        SnsPlatform snsplatform;
        SHARE_MEDIA share_media1;
        if (!((Iterator) (obj)).hasNext())
        {
            return socializeconfig;
        }
        share_media1 = (SHARE_MEDIA)((Iterator) (obj)).next();
        snsplatform = new SnsPlatform();
        snsplatform.mKeyword = share_media1.toString();
        snsplatform.mIcon = b(context, share_media1);
        snsplatform.mGrayIcon = c(context, share_media1);
        snsplatform.mShowWord = a(context, share_media1);
        if (OauthHelper.isAuthenticated(context, share_media1))
        {
            snsplatform.mOauth = true;
            snsplatform.mUsid = OauthHelper.getUsid(context, share_media1);
        }
        if (share_media != null && share_media == share_media1)
        {
            try
            {
                snsplatform.mBind = true;
            }
            catch (Exception exception) { }
        }
        snsplatform.mIndex = i1;
        socializeconfig.add(snsplatform);
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static int[] a()
    {
        int ai[] = t;
        if (ai != null)
        {
            return ai;
        }
        ai = new int[SHARE_MEDIA.values().length];
        try
        {
            ai[SHARE_MEDIA.DOUBAN.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror18) { }
        try
        {
            ai[SHARE_MEDIA.EMAIL.ordinal()] = 10;
        }
        catch (NoSuchFieldError nosuchfielderror17) { }
        try
        {
            ai[SHARE_MEDIA.FACEBOOK.ordinal()] = 12;
        }
        catch (NoSuchFieldError nosuchfielderror16) { }
        try
        {
            ai[SHARE_MEDIA.GENERIC.ordinal()] = 19;
        }
        catch (NoSuchFieldError nosuchfielderror15) { }
        try
        {
            ai[SHARE_MEDIA.GOOGLEPLUS.ordinal()] = 11;
        }
        catch (NoSuchFieldError nosuchfielderror14) { }
        try
        {
            ai[SHARE_MEDIA.INSTAGRAM.ordinal()] = 18;
        }
        catch (NoSuchFieldError nosuchfielderror13) { }
        try
        {
            ai[SHARE_MEDIA.LAIWANG.ordinal()] = 14;
        }
        catch (NoSuchFieldError nosuchfielderror12) { }
        try
        {
            ai[SHARE_MEDIA.LAIWANG_DYNAMIC.ordinal()] = 15;
        }
        catch (NoSuchFieldError nosuchfielderror11) { }
        try
        {
            ai[SHARE_MEDIA.QQ.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror10) { }
        try
        {
            ai[SHARE_MEDIA.QZONE.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        try
        {
            ai[SHARE_MEDIA.RENREN.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            ai[SHARE_MEDIA.SINA.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            ai[SHARE_MEDIA.SMS.ordinal()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            ai[SHARE_MEDIA.TENCENT.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai[SHARE_MEDIA.TWITTER.ordinal()] = 13;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai[SHARE_MEDIA.WEIXIN.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai[SHARE_MEDIA.WEIXIN_CIRCLE.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai[SHARE_MEDIA.YIXIN.ordinal()] = 16;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai[SHARE_MEDIA.YIXIN_CIRCLE.ordinal()] = 17;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        t = ai;
        return ai;
    }

    private static int b(Context context, SHARE_MEDIA share_media)
    {
        switch (a()[share_media.ordinal()])
        {
        case 3: // '\003'
        case 5: // '\005'
        case 6: // '\006'
        default:
            return -1;

        case 7: // '\007'
            return ResContainer.getResourceId(context, ResContainer.ResType.DRAWABLE, "umeng_socialize_tx_on");

        case 1: // '\001'
            return ResContainer.getResourceId(context, ResContainer.ResType.DRAWABLE, "umeng_socialize_sina_on");

        case 4: // '\004'
            return ResContainer.getResourceId(context, ResContainer.ResType.DRAWABLE, "umeng_socialize_renren_on");

        case 8: // '\b'
            return ResContainer.getResourceId(context, ResContainer.ResType.DRAWABLE, "umeng_socialize_douban_on");

        case 2: // '\002'
            return ResContainer.getResourceId(context, ResContainer.ResType.DRAWABLE, "umeng_socialize_qzone_on");
        }
    }

    public static boolean b(SHARE_MEDIA share_media)
    {
        return share_media != SHARE_MEDIA.DOUBAN && share_media != SHARE_MEDIA.QZONE;
    }

    private static int c(Context context, SHARE_MEDIA share_media)
    {
        switch (a()[share_media.ordinal()])
        {
        case 3: // '\003'
        case 5: // '\005'
        case 6: // '\006'
        default:
            return -1;

        case 7: // '\007'
            return ResContainer.getResourceId(context, ResContainer.ResType.DRAWABLE, "umeng_socialize_tx_off");

        case 1: // '\001'
            return ResContainer.getResourceId(context, ResContainer.ResType.DRAWABLE, "umeng_socialize_sina_off");

        case 4: // '\004'
            return ResContainer.getResourceId(context, ResContainer.ResType.DRAWABLE, "umeng_socialize_renren_off");

        case 8: // '\b'
            return ResContainer.getResourceId(context, ResContainer.ResType.DRAWABLE, "umeng_socialize_douban_off");

        case 2: // '\002'
            return ResContainer.getResourceId(context, ResContainer.ResType.DRAWABLE, "umeng_socialize_qzone_off");
        }
    }
}
