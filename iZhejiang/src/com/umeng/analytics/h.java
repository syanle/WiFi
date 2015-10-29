// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Locale;
import u.aly.bq;
import u.aly.br;
import u.aly.cd;

public final class h
{
    public static class a
    {

        private final int a;
        private File b;
        private FilenameFilter c = new _cls1(this);

        public void a(b b1)
        {
            File afile[];
            int i1;
            int j1;
            afile = b.listFiles(c);
            if (afile == null || afile.length <= 0)
            {
                break MISSING_BLOCK_LABEL_104;
            }
            b1.a(b);
            j1 = afile.length;
            i1 = 0;
_L2:
            if (i1 >= j1)
            {
                break; /* Loop/switch isn't completed */
            }
            boolean flag = b1.b(afile[i1]);
            if (flag)
            {
                afile[i1].delete();
            }
_L3:
            i1++;
            if (true) goto _L2; else goto _L1
            Throwable throwable;
            throwable;
            afile[i1].delete();
              goto _L3
            b1;
            throw b1;
_L1:
            b1.c(b);
        }

        public void a(byte abyte0[])
        {
            int i1 = 0;
            if (abyte0 != null && abyte0.length != 0) goto _L2; else goto _L1
_L1:
            return;
_L2:
            Object obj = String.format(Locale.US, "um_cache_%d.env", new Object[] {
                Long.valueOf(System.currentTimeMillis())
            });
            obj = new File(b, ((String) (obj)));
            try
            {
                cd.a(((File) (obj)), abyte0);
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[]) { }
            abyte0 = b.listFiles(c);
            if (abyte0 != null && abyte0.length >= 10)
            {
                Arrays.sort(abyte0);
                int j1 = abyte0.length;
                while (i1 < j1 - 10) 
                {
                    abyte0[i1].delete();
                    i1++;
                }
            }
            if (true) goto _L1; else goto _L3
_L3:
        }

        public boolean a()
        {
            File afile[] = b.listFiles();
            return afile != null && afile.length > 0;
        }

        public void b()
        {
            File afile[] = b.listFiles(c);
            if (afile != null && afile.length > 0)
            {
                int j1 = afile.length;
                for (int i1 = 0; i1 < j1; i1++)
                {
                    afile[i1].delete();
                }

            }
        }

        public int c()
        {
            File afile[] = b.listFiles(c);
            if (afile != null && afile.length > 0)
            {
                return afile.length;
            } else
            {
                return 0;
            }
        }

        public a(Context context)
        {
            this(context, ".um");
        }

        public a(Context context, String s)
        {
            a = 10;
            b = new File(context.getFilesDir(), s);
            if (!b.exists() || !b.isDirectory())
            {
                b.mkdir();
            }
        }
    }

    public static interface b
    {

        public abstract void a(File file);

        public abstract boolean b(File file);

        public abstract void c(File file);
    }


    private static h a = null;
    private static Context b;
    private static String c;
    private static long e = 0L;
    private static long f = 0L;
    private static final String g = "mobclick_agent_user_";
    private static final String h = "mobclick_agent_online_setting_";
    private static final String i = "mobclick_agent_header_";
    private static final String j = "mobclick_agent_update_";
    private static final String k = "mobclick_agent_state_";
    private static final String l = "mobclick_agent_cached_";
    private a d;

    public h(Context context)
    {
        d = new a(context);
        b = context.getApplicationContext();
        c = context.getPackageName();
    }

    public static h a(Context context)
    {
        com/umeng/analytics/h;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new h(context);
        }
        context = a;
        com/umeng/analytics/h;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    private static boolean a(File file)
    {
        long l1 = file.length();
        return file.exists() && l1 > f;
    }

    private SharedPreferences n()
    {
        return b.getSharedPreferences((new StringBuilder()).append("mobclick_agent_user_").append(c).toString(), 0);
    }

    private String o()
    {
        return (new StringBuilder()).append("mobclick_agent_header_").append(c).toString();
    }

    private String p()
    {
        return (new StringBuilder()).append("mobclick_agent_cached_").append(c).append(bq.c(b)).toString();
    }

    public void a(int i1)
    {
        if (i1 >= 0 && i1 <= 3)
        {
            SharedPreferences sharedpreferences = j();
            if (sharedpreferences != null)
            {
                sharedpreferences.edit().putInt("oc_dc", i1).commit();
            }
        }
    }

    public void a(int i1, int j1)
    {
        android.content.SharedPreferences.Editor editor = a(b).j().edit();
        editor.putInt("umeng_net_report_policy", i1);
        editor.putLong("umeng_net_report_interval", j1);
        editor.commit();
    }

    public void a(String s, String s1)
    {
        if (!TextUtils.isEmpty(s) && !TextUtils.isEmpty(s1))
        {
            android.content.SharedPreferences.Editor editor = n().edit();
            editor.putString("au_p", s);
            editor.putString("au_u", s1);
            editor.commit();
        }
    }

    public void a(byte abyte0[])
    {
        String s = p();
        try
        {
            cd.a(new File(b.getFilesDir(), s), abyte0);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            br.b("MobclickAgent", abyte0.getMessage());
        }
    }

    public String[] a()
    {
        Object obj = null;
        SharedPreferences sharedpreferences = n();
        String s = sharedpreferences.getString("au_p", null);
        String s1 = sharedpreferences.getString("au_u", null);
        String as[] = obj;
        if (s != null)
        {
            as = obj;
            if (s1 != null)
            {
                as = new String[2];
                as[0] = s;
                as[1] = s1;
            }
        }
        return as;
    }

    public void b()
    {
        n().edit().remove("au_p").remove("au_u").commit();
    }

    public void b(int i1)
    {
        if (i1 > 0)
        {
            SharedPreferences sharedpreferences = j();
            if (sharedpreferences != null)
            {
                sharedpreferences.edit().putInt("oc_lt", i1).commit();
            }
        }
    }

    public void b(byte abyte0[])
    {
        d.a(abyte0);
    }

    public void c(int i1)
    {
        SharedPreferences sharedpreferences = j();
        if (sharedpreferences != null)
        {
            sharedpreferences.edit().putInt("oc_ec", i1).commit();
        }
    }

    public int[] c()
    {
        SharedPreferences sharedpreferences = j();
        int ai[] = new int[2];
        if (sharedpreferences.getInt("umeng_net_report_policy", -1) != -1)
        {
            ai[0] = sharedpreferences.getInt("umeng_net_report_policy", 1);
            ai[1] = (int)sharedpreferences.getLong("umeng_net_report_interval", 0L);
            return ai;
        } else
        {
            ai[0] = sharedpreferences.getInt("umeng_local_report_policy", 1);
            ai[1] = (int)sharedpreferences.getLong("umeng_local_report_interval", 0L);
            return ai;
        }
    }

    public int d()
    {
        int i1 = 0;
        SharedPreferences sharedpreferences = j();
        if (sharedpreferences != null)
        {
            i1 = sharedpreferences.getInt("oc_dc", 0);
        }
        return i1;
    }

    public int d(int i1)
    {
        SharedPreferences sharedpreferences = j();
        int j1 = i1;
        if (sharedpreferences != null)
        {
            j1 = sharedpreferences.getInt("oc_ec", i1);
        }
        return j1;
    }

    public int e()
    {
        int i1 = 0;
        SharedPreferences sharedpreferences = j();
        if (sharedpreferences != null)
        {
            i1 = sharedpreferences.getInt("oc_lt", 0);
        }
        return i1;
    }

    public byte[] f()
    {
        Object obj;
        Object obj1;
        obj = p();
        obj1 = new File(b.getFilesDir(), ((String) (obj)));
        if (!a(((File) (obj1)))) goto _L2; else goto _L1
_L1:
        ((File) (obj1)).delete();
_L4:
        return null;
_L2:
        if (!((File) (obj1)).exists()) goto _L4; else goto _L3
_L3:
        obj1 = b.openFileInput(((String) (obj)));
        obj = obj1;
        byte abyte0[] = cd.b(((java.io.InputStream) (obj1)));
        cd.c(((java.io.InputStream) (obj1)));
        return abyte0;
        Object obj2;
        obj2;
        obj1 = null;
_L8:
        obj = obj1;
        ((Exception) (obj2)).printStackTrace();
        cd.c(((java.io.InputStream) (obj1)));
        return null;
        obj;
        java.io.InputStream inputstream;
        inputstream = null;
        obj1 = obj;
_L6:
        cd.c(inputstream);
        throw obj1;
        obj1;
        inputstream = ((java.io.InputStream) (obj));
        if (true) goto _L6; else goto _L5
_L5:
        inputstream;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void g()
    {
        b.deleteFile(o());
        b.deleteFile(p());
    }

    public boolean h()
    {
        return d.a();
    }

    public a i()
    {
        return d;
    }

    public SharedPreferences j()
    {
        return b.getSharedPreferences((new StringBuilder()).append("mobclick_agent_online_setting_").append(c).toString(), 0);
    }

    public SharedPreferences k()
    {
        return b.getSharedPreferences((new StringBuilder()).append("mobclick_agent_header_").append(c).toString(), 0);
    }

    public SharedPreferences l()
    {
        return b.getSharedPreferences((new StringBuilder()).append("mobclick_agent_update_").append(c).toString(), 0);
    }

    public SharedPreferences m()
    {
        return b.getSharedPreferences((new StringBuilder()).append("mobclick_agent_state_").append(c).toString(), 0);
    }

    static 
    {
        e = 0x48190800L;
        f = 0x200000L;
    }

    // Unreferenced inner class com/umeng/analytics/h$a$1

/* anonymous class */
    class a._cls1
        implements FilenameFilter
    {

        final a a;

        public boolean accept(File file, String s)
        {
            return s.startsWith("um");
        }

            
            {
                a = a1;
                super();
            }
    }

}
