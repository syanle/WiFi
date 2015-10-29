// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.AnalyticsConfig;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package u.aly:
//            l, aj, br, x, 
//            be, ac, ad, bq, 
//            cd

public class z
{

    private static final String a = "session_start_time";
    private static final String b = "session_end_time";
    private static final String c = "session_id";
    private static final String f = "activities";
    private static String g = null;
    private final String d = "a_start_time";
    private final String e = "a_end_time";

    public z()
    {
    }

    private String a(Context context, SharedPreferences sharedpreferences)
    {
        l l1 = l.a(context);
        String s = b(context);
        context = a(context);
        sharedpreferences = sharedpreferences.edit();
        sharedpreferences.putString("session_id", s);
        sharedpreferences.putLong("session_start_time", System.currentTimeMillis());
        sharedpreferences.putLong("session_end_time", 0L);
        sharedpreferences.putLong("a_start_time", System.currentTimeMillis());
        sharedpreferences.putLong("a_end_time", 0L);
        sharedpreferences.commit();
        if (context != null)
        {
            l1.a(context);
            return s;
        } else
        {
            l1.a((aj)null);
            return s;
        }
    }

    private void a(SharedPreferences sharedpreferences)
    {
        sharedpreferences = sharedpreferences.edit();
        sharedpreferences.remove("session_start_time");
        sharedpreferences.remove("session_end_time");
        sharedpreferences.remove("a_start_time");
        sharedpreferences.remove("a_end_time");
        sharedpreferences.putString("activities", "");
        sharedpreferences.commit();
    }

    private boolean b(SharedPreferences sharedpreferences)
    {
        long l1 = sharedpreferences.getLong("a_start_time", 0L);
        long l2 = sharedpreferences.getLong("a_end_time", 0L);
        long l3 = System.currentTimeMillis();
        if (l1 != 0L && l3 - l1 < AnalyticsConfig.kContinueSessionMillis)
        {
            br.b("MobclickAgent", "onResume called before onPause");
        } else
        if (l3 - l2 > AnalyticsConfig.kContinueSessionMillis)
        {
            return true;
        }
        return false;
    }

    public static String g(Context context)
    {
        if (g == null)
        {
            g = x.a(context).getString("session_id", null);
        }
        return g;
    }

    public aj a(Context context)
    {
        SharedPreferences sharedpreferences = x.a(context);
        String s = sharedpreferences.getString("session_id", null);
        if (s == null)
        {
            return null;
        }
        long l3 = sharedpreferences.getLong("session_start_time", 0L);
        long l4 = sharedpreferences.getLong("session_end_time", 0L);
        long l1 = 0L;
        if (l4 != 0L)
        {
            long l2 = l4 - l3;
            l1 = l2;
            if (Math.abs(l2) > 0x5265c00L)
            {
                l1 = 0L;
            }
        }
        aj aj1 = new aj();
        aj1.a(s);
        aj1.a(l3);
        aj1.b(l4);
        aj1.c(l1);
        double ad1[] = AnalyticsConfig.getLocation();
        if (ad1 != null)
        {
            be be1 = new be(ad1[0], ad1[1], System.currentTimeMillis());
            if (aj1.y())
            {
                aj1.a(be1);
            } else
            {
                aj1.b(Arrays.asList(new be[] {
                    be1
                }));
            }
        }
        context = ac.a(context);
        if (context != null)
        {
            aj1.a(context);
        }
        context = ad.a(sharedpreferences);
        if (context != null && context.size() > 0)
        {
            aj1.a(context);
        }
        a(sharedpreferences);
        return aj1;
    }

    public String b(Context context)
    {
        String s = bq.f(context);
        context = AnalyticsConfig.getAppkey(context);
        long l1 = System.currentTimeMillis();
        if (context == null)
        {
            throw new RuntimeException("Appkey is null or empty, Please check AndroidManifest.xml");
        } else
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append(l1).append(context).append(s);
            g = cd.a(stringbuilder.toString());
            return g;
        }
    }

    public void c(Context context)
    {
        Object obj = x.a(context);
        if (obj == null)
        {
            return;
        }
        if (b(((SharedPreferences) (obj))))
        {
            context = a(context, ((SharedPreferences) (obj)));
            br.a("MobclickAgent", (new StringBuilder()).append("Start new session: ").append(context).toString());
            return;
        } else
        {
            context = ((SharedPreferences) (obj)).getString("session_id", null);
            obj = ((SharedPreferences) (obj)).edit();
            ((android.content.SharedPreferences.Editor) (obj)).putLong("a_start_time", System.currentTimeMillis());
            ((android.content.SharedPreferences.Editor) (obj)).putLong("a_end_time", 0L);
            ((android.content.SharedPreferences.Editor) (obj)).commit();
            br.a("MobclickAgent", (new StringBuilder()).append("Extend current session: ").append(context).toString());
            return;
        }
    }

    public void d(Context context)
    {
        context = x.a(context);
        if (context == null)
        {
            return;
        }
        if (context.getLong("a_start_time", 0L) == 0L && AnalyticsConfig.ACTIVITY_DURATION_OPEN)
        {
            br.b("MobclickAgent", "onPause called before onResume");
            return;
        } else
        {
            long l1 = System.currentTimeMillis();
            context = context.edit();
            context.putLong("a_start_time", 0L);
            context.putLong("a_end_time", l1);
            context.putLong("session_end_time", l1);
            context.commit();
            return;
        }
    }

    public boolean e(Context context)
    {
        Object obj;
        boolean flag1;
        boolean flag2;
        flag2 = false;
        flag1 = false;
        obj = x.a(context);
        break MISSING_BLOCK_LABEL_11;
        if (obj != null && ((SharedPreferences) (obj)).getString("session_id", null) != null)
        {
            long l1 = ((SharedPreferences) (obj)).getLong("a_start_time", 0L);
            long l2 = ((SharedPreferences) (obj)).getLong("a_end_time", 0L);
            boolean flag = flag2;
            if (l1 > 0L)
            {
                flag = flag2;
                if (l2 == 0L)
                {
                    flag = true;
                    d(context);
                }
            }
            obj = l.a(context);
            context = a(context);
            flag1 = flag;
            if (context != null)
            {
                ((l) (obj)).b(context);
                return flag;
            }
        }
        return flag1;
    }

    public void f(Context context)
    {
        Object obj = x.a(context);
        if (obj == null)
        {
            return;
        } else
        {
            context = b(context);
            obj = ((SharedPreferences) (obj)).edit();
            ((android.content.SharedPreferences.Editor) (obj)).putString("session_id", context);
            ((android.content.SharedPreferences.Editor) (obj)).putLong("session_start_time", System.currentTimeMillis());
            ((android.content.SharedPreferences.Editor) (obj)).putLong("session_end_time", 0L);
            ((android.content.SharedPreferences.Editor) (obj)).putLong("a_start_time", System.currentTimeMillis());
            ((android.content.SharedPreferences.Editor) (obj)).putLong("a_end_time", 0L);
            ((android.content.SharedPreferences.Editor) (obj)).commit();
            br.a("MobclickAgent", (new StringBuilder()).append("Restart session: ").append(context).toString());
            return;
        }
    }

}
