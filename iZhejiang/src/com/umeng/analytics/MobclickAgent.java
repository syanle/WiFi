// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.onlineconfig.UmengOnlineConfigureListener;
import com.umeng.analytics.social.UMPlatformData;
import com.umeng.analytics.social.UMSocialService;
import com.umeng.analytics.social.e;
import java.util.HashMap;
import java.util.Map;
import javax.microedition.khronos.opengles.GL10;
import u.aly.bq;
import u.aly.br;

// Referenced classes of package com.umeng.analytics:
//            d, h, AnalyticsConfig, Gender

public class MobclickAgent
{

    private static final String a = "input map is null";
    private static final d b = new d();

    public MobclickAgent()
    {
    }

    public static void flush(Context context)
    {
    }

    public static d getAgent()
    {
        return b;
    }

    public static String getConfigParams(Context context, String s)
    {
        return h.a(context).j().getString(s, "");
    }

    public static void onEvent(Context context, String s)
    {
        b.a(context, s, null, -1L, 1);
    }

    public static void onEvent(Context context, String s, int i)
    {
        b.a(context, s, null, -1L, i);
    }

    public static void onEvent(Context context, String s, String s1)
    {
        if (TextUtils.isEmpty(s1))
        {
            br.a("MobclickAgent", "label is null or empty");
            return;
        } else
        {
            b.a(context, s, s1, -1L, 1);
            return;
        }
    }

    public static void onEvent(Context context, String s, String s1, int i)
    {
        if (TextUtils.isEmpty(s1))
        {
            br.a("MobclickAgent", "label is null or empty");
            return;
        } else
        {
            b.a(context, s, s1, -1L, i);
            return;
        }
    }

    public static void onEvent(Context context, String s, Map map)
    {
        if (map == null)
        {
            br.b("MobclickAgent", "input map is null");
            return;
        } else
        {
            b.a(context, s, new HashMap(map), -1L);
            return;
        }
    }

    public static void onEventBegin(Context context, String s)
    {
        b.a(context, s, null);
    }

    public static void onEventBegin(Context context, String s, String s1)
    {
        b.a(context, s, s1);
    }

    public static void onEventDuration(Context context, String s, long l)
    {
        if (l <= 0L)
        {
            br.a("MobclickAgent", "duration is not valid in onEventDuration");
            return;
        } else
        {
            b.a(context, s, null, l, 1);
            return;
        }
    }

    public static void onEventDuration(Context context, String s, String s1, long l)
    {
        if (TextUtils.isEmpty(s1))
        {
            br.a("MobclickAgent", "label is null or empty");
            return;
        }
        if (l <= 0L)
        {
            br.a("MobclickAgent", "duration is not valid in onEventDuration");
            return;
        } else
        {
            b.a(context, s, s1, l, 1);
            return;
        }
    }

    public static void onEventDuration(Context context, String s, Map map, long l)
    {
        if (l <= 0L)
        {
            br.a("MobclickAgent", "duration is not valid in onEventDuration");
            return;
        }
        if (map == null)
        {
            br.b("MobclickAgent", "input map is null");
            return;
        } else
        {
            b.a(context, s, new HashMap(map), l);
            return;
        }
    }

    public static void onEventEnd(Context context, String s)
    {
        b.b(context, s, null);
    }

    public static void onEventEnd(Context context, String s, String s1)
    {
        b.b(context, s, s1);
    }

    public static void onEventValue(Context context, String s, Map map, int i)
    {
        if (map == null)
        {
            map = new HashMap();
        } else
        {
            map = new HashMap(map);
        }
        map.put("__ct__", Integer.valueOf(i));
        b.a(context, s, map, -1L);
    }

    public static void onKVEventBegin(Context context, String s, Map map, String s1)
    {
        if (map == null)
        {
            br.b("MobclickAgent", "input map is null");
            return;
        } else
        {
            b.a(context, s, new HashMap(map), s1);
            return;
        }
    }

    public static void onKVEventEnd(Context context, String s, String s1)
    {
        b.c(context, s, s1);
    }

    public static void onKillProcess(Context context)
    {
        b.e(context);
    }

    public static void onPageEnd(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            b.b(s);
            return;
        } else
        {
            br.b("MobclickAgent", "pageName is null or empty");
            return;
        }
    }

    public static void onPageStart(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            b.a(s);
            return;
        } else
        {
            br.b("MobclickAgent", "pageName is null or empty");
            return;
        }
    }

    public static void onPause(Context context)
    {
        b.c(context);
    }

    public static void onResume(Context context)
    {
        if (context == null)
        {
            br.b("MobclickAgent", "unexpected null context in onResume");
            return;
        } else
        {
            b.b(context);
            return;
        }
    }

    public static void onResume(Context context, String s, String s1)
    {
        if (context == null)
        {
            br.b("MobclickAgent", "unexpected null context in onResume");
            return;
        }
        if (s == null || s.length() == 0)
        {
            br.b("MobclickAgent", "unexpected empty appkey in onResume");
            return;
        } else
        {
            AnalyticsConfig.setAppkey(s);
            AnalyticsConfig.setChannel(s1);
            b.b(context);
            return;
        }
    }

    public static transient void onSocialEvent(Context context, String s, UMPlatformData aumplatformdata[])
    {
        if (context == null)
        {
            br.b("MobclickAgent", "context is null in onShareEvent");
            return;
        } else
        {
            e.e = "3";
            UMSocialService.share(context, s, aumplatformdata);
            return;
        }
    }

    public static transient void onSocialEvent(Context context, UMPlatformData aumplatformdata[])
    {
        if (context == null)
        {
            br.b("MobclickAgent", "context is null in onShareEvent");
            return;
        } else
        {
            e.e = "3";
            UMSocialService.share(context, aumplatformdata);
            return;
        }
    }

    public static void openActivityDurationTrack(boolean flag)
    {
        AnalyticsConfig.ACTIVITY_DURATION_OPEN = flag;
    }

    public static void reportError(Context context, String s)
    {
        b.a(context, s);
    }

    public static void reportError(Context context, Throwable throwable)
    {
        b.a(context, throwable);
    }

    public static void setAutoLocation(boolean flag)
    {
    }

    public static void setCatchUncaughtExceptions(boolean flag)
    {
        AnalyticsConfig.CATCH_EXCEPTION = flag;
    }

    public static void setDebugMode(boolean flag)
    {
        br.a = flag;
        e.v = flag;
    }

    public static void setEnableEventBuffer(boolean flag)
    {
        AnalyticsConfig.ENABLE_MEMORY_BUFFER = flag;
    }

    public static void setOnlineConfigureListener(UmengOnlineConfigureListener umengonlineconfigurelistener)
    {
        b.a(umengonlineconfigurelistener);
    }

    public static void setOpenGLContext(GL10 gl10)
    {
        if (gl10 != null)
        {
            gl10 = bq.a(gl10);
            if (gl10.length == 2)
            {
                AnalyticsConfig.GPU_VENDER = gl10[0];
                AnalyticsConfig.GPU_RENDERER = gl10[1];
            }
        }
    }

    public static void setSessionContinueMillis(long l)
    {
        AnalyticsConfig.kContinueSessionMillis = l;
    }

    public static void setUserID(Context context, String s, String s1, Gender gender, int i)
    {
    }

    public static void setWrapper(String s, String s1)
    {
        b.a(s, s1);
    }

    public static void updateOnlineConfig(Context context)
    {
        b.a(context);
    }

    public static void updateOnlineConfig(Context context, String s, String s1)
    {
        if (s == null || s.length() == 0)
        {
            br.b("MobclickAgent", "unexpected empty appkey in onResume");
            return;
        } else
        {
            AnalyticsConfig.setAppkey(s);
            AnalyticsConfig.setChannel(s1);
            b.a(context);
            return;
        }
    }

}
