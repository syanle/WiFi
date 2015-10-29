// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.umeng.socialize.bean.APP_PLATFORM;
import com.umeng.socialize.bean.CustomPlatform;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.controller.impl.c;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socom.Log;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.umeng.socialize.controller:
//            b, c, d

public abstract class a
{

    private static CustomPlatform a = null;
    private static CustomPlatform b = null;
    private static CustomPlatform c = null;
    private static final String d = "facebook";
    private static final String e = "twitter";
    private static final String f = "googleplus";
    private static int g[];

    public a()
    {
    }

    static Intent a(Context context, APP_PLATFORM app_platform, Intent intent)
    {
        return b(context, app_platform, intent);
    }

    static Intent a(Context context, String s, UMediaObject umediaobject)
    {
        return b(context, s, umediaobject);
    }

    public static CustomPlatform a(Context context, SHARE_MEDIA share_media, String s)
    {
        switch (a()[share_media.ordinal()])
        {
        default:
            return null;

        case 12: // '\f'
            share_media = s;
            if (TextUtils.isEmpty(s))
            {
                share_media = "Facebook";
            }
            return c(context.getApplicationContext(), "Facebook", share_media);

        case 13: // '\r'
            share_media = s;
            if (TextUtils.isEmpty(s))
            {
                share_media = "Twitter";
            }
            return b(context.getApplicationContext(), "Twitter", share_media);

        case 11: // '\013'
            share_media = s;
            break;
        }
        if (TextUtils.isEmpty(s))
        {
            share_media = "Google+";
        }
        return a(context, "Google+", ((String) (share_media)));
    }

    private static CustomPlatform a(Context context, String s, String s1)
    {
        if (c == null)
        {
            int i = ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_google");
            c = new CustomPlatform("google+", i);
            c.mTag = APP_PLATFORM.GOOGLE.toString();
            c.mGrayIcon = i;
            c.mClickListener = new b(context, s1);
        }
        return c;
    }

    static int[] a()
    {
        int ai[] = g;
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
        g = ai;
        return ai;
    }

    private static Intent b(Context context, APP_PLATFORM app_platform, Intent intent)
    {
        Iterator iterator = context.getPackageManager().queryIntentActivities(intent, 0).iterator();
_L8:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        context = null;
_L9:
        if (context == null) goto _L4; else goto _L3
_L3:
        intent.setClassName(((ResolveInfo) (context)).activityInfo.packageName, ((ResolveInfo) (context)).activityInfo.name);
        return intent;
_L2:
        context = (ResolveInfo)iterator.next();
        if (app_platform != APP_PLATFORM.FACEBOOK) goto _L6; else goto _L5
_L5:
        if (!((ResolveInfo) (context)).activityInfo.packageName.equals("com.facebook.katana")) goto _L8; else goto _L7
_L7:
        intent.setFlags(0x10200000);
          goto _L9
        context;
        Log.e("com.umeng.socialize", "", context);
_L4:
        return null;
_L6:
        if (app_platform != APP_PLATFORM.TWITTER)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!((ResolveInfo) (context)).activityInfo.packageName.equals("com.twitter.android")) goto _L8; else goto _L10
_L10:
        intent.setFlags(0x10200000);
          goto _L9
        if (app_platform != APP_PLATFORM.GOOGLE || !((ResolveInfo) (context)).activityInfo.packageName.equals("com.google.android.apps.plus")) goto _L8; else goto _L11
_L11:
        intent.setFlags(0x10000000);
          goto _L9
    }

    private static Intent b(Context context, String s, UMediaObject umediaobject)
    {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("image/png;text/plain");
        if (!TextUtils.isEmpty(s))
        {
            intent.putExtra("android.intent.extra.TEXT", s);
        }
        if (umediaobject instanceof UMImage)
        {
            s = ((UMImage)umediaobject).getImageCachePath();
            if (s != null)
            {
                context = SocializeUtils.insertImage(context, s);
                if (context != null)
                {
                    intent.putExtra("android.intent.extra.STREAM", context);
                    c.f.add(context);
                }
            }
        }
        return intent;
    }

    private static CustomPlatform b(Context context, String s, String s1)
    {
        if (b == null)
        {
            int i = ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_twitter");
            b = new CustomPlatform("twitter", i);
            b.mTag = APP_PLATFORM.TWITTER.toString();
            b.mGrayIcon = i;
            b.mClickListener = new com.umeng.socialize.controller.c(context, s1);
        }
        return b;
    }

    private static CustomPlatform c(Context context, String s, String s1)
    {
        if (a == null)
        {
            int i = ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_facebook");
            a = new CustomPlatform("facebook", i);
            a.mTag = APP_PLATFORM.FACEBOOK.toString();
            a.mGrayIcon = i;
            a.mClickListener = new d(context, s1);
        }
        return a;
    }

}
