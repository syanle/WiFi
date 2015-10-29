// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import com.umeng.analytics.g;
import com.umeng.analytics.j;
import com.umeng.common.b;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics.a:
//            g

public final class o
    implements com.umeng.analytics.a.g
{

    public static final String d = "lng";
    public static final String e = "lat";
    public static final String f = "gps_time";
    private static final String g = "last_gps_change_time";
    public double a;
    public double b;
    public long c;

    public o()
    {
    }

    public o(Location location)
    {
        if (location == null)
        {
            return;
        } else
        {
            a = location.getLongitude();
            b = location.getLatitude();
            c = location.getTime();
            return;
        }
    }

    public static android.content.SharedPreferences.Editor a(Context context, SharedPreferences sharedpreferences)
    {
        if (g.i)
        {
            if (a(((Location) (context = com.umeng.common.b.m(context))), sharedpreferences))
            {
                sharedpreferences = sharedpreferences.edit();
                sharedpreferences.putFloat("lng", (float)context.getLongitude());
                sharedpreferences.putFloat("lat", (float)context.getLatitude());
                sharedpreferences.putLong("gps_time", context.getTime());
                sharedpreferences.commit();
                return sharedpreferences;
            }
        }
        return null;
    }

    public static o a(Context context)
    {
        if (g.i)
        {
            SharedPreferences sharedpreferences = j.e(context);
            context = com.umeng.common.b.m(context);
            if (a(((Location) (context)), sharedpreferences))
            {
                return new o(context);
            }
        }
        return null;
    }

    static boolean a(Location location, SharedPreferences sharedpreferences)
    {
        if (location != null && location.getTime() > sharedpreferences.getLong("last_gps_change_time", 0L))
        {
            sharedpreferences.edit().putLong("last_gps_change_time", location.getTime()).commit();
            return true;
        } else
        {
            return false;
        }
    }

    public static o b(Context context)
    {
        if (g.i)
        {
            context = j.e(context);
            o o1 = new o();
            if (context.contains("gps_time"))
            {
                o1.b = context.getFloat("lat", 0.0F);
                o1.a = context.getFloat("lng", 0.0F);
                o1.c = context.getLong("gps_time", 0L);
                context.edit().remove("gps_time").commit();
                return o1;
            }
        }
        return null;
    }

    public void a(JSONObject jsonobject)
        throws JSONException
    {
        if (jsonobject != null)
        {
            if (jsonobject.has("lng"))
            {
                a = jsonobject.getDouble("lng");
            }
            if (jsonobject.has("lat"))
            {
                b = jsonobject.getDouble("lat");
            }
            if (jsonobject.has("gps_time"))
            {
                c = jsonobject.getLong("gps_time");
                return;
            }
        }
    }

    public boolean a()
    {
        return a != 0.0D || b != 0.0D || c != 0L;
    }

    public void b(JSONObject jsonobject)
        throws Exception
    {
        jsonobject.put("lng", a);
        jsonobject.put("lat", b);
        jsonobject.put("gps_time", c);
    }
}
