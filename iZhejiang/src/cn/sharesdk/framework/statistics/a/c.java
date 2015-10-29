// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics.a;

import android.content.Context;
import android.content.SharedPreferences;

public class c
{

    private static c c;
    private Context a;
    private SharedPreferences b;

    private c(Context context)
    {
        a = context.getApplicationContext();
        b = a.getSharedPreferences("share_sdk_0", 0);
    }

    public static c a(Context context)
    {
        if (c == null)
        {
            c = new c(context.getApplicationContext());
        }
        return c;
    }

    public long a()
    {
        return b.getLong("service_time", 0L);
    }

    public String a(String s)
    {
        return b.getString(s, "");
    }

    public void a(long l)
    {
        a("device_time", Long.valueOf(l));
    }

    public void a(String s, int j)
    {
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putInt(s, j);
        editor.commit();
    }

    public void a(String s, Boolean boolean1)
    {
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putBoolean(s, boolean1.booleanValue());
        editor.commit();
    }

    public void a(String s, Long long1)
    {
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putLong(s, long1.longValue());
        editor.commit();
    }

    public void a(String s, String s1)
    {
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putString(s, s1);
        editor.commit();
    }

    public void a(boolean flag)
    {
        a("connect_server", Boolean.valueOf(flag));
    }

    public long b(String s)
    {
        return b.getLong(s, 0L);
    }

    public void b(long l)
    {
        a("connect_server_time", Long.valueOf(l));
    }

    public void b(String s, String s1)
    {
        a((new StringBuilder()).append("buffered_snsconf_").append(s).toString(), s1);
    }

    public boolean b()
    {
        return Boolean.parseBoolean(b.getString("upload_device_info", "true"));
    }

    public int c(String s)
    {
        return b.getInt(s, 0);
    }

    public boolean c()
    {
        return Boolean.parseBoolean(b.getString("upload_user_info", "true"));
    }

    public int d()
    {
        String s = b.getString("upload_share_content", "0");
        if ("true".equals(s))
        {
            return 1;
        }
        return !"false".equals(s) ? 0 : -1;
    }

    public void d(String s)
    {
        a("upload_device_info", s);
    }

    public String e()
    {
        return a("device_data");
    }

    public void e(String s)
    {
        a("upload_user_info", s);
    }

    public String f()
    {
        return a("device_ext_data");
    }

    public void f(String s)
    {
        a("upload_share_content", s);
    }

    public Long g()
    {
        return Long.valueOf(b("device_time"));
    }

    public String g(String s)
    {
        return a((new StringBuilder()).append("buffered_snsconf_").append(s).toString());
    }

    public void h(String s)
    {
        a("device_data", s);
    }

    public boolean h()
    {
        return b.getBoolean("connect_server", true);
    }

    public Long i()
    {
        return Long.valueOf(b("connect_server_time"));
    }

    public void i(String s)
    {
        a("device_ext_data", s);
    }
}
