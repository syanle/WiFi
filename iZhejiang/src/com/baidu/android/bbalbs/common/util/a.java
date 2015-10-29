// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.android.bbalbs.common.util;

import android.content.Context;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.android.bbalbs.common.a.b;
import com.baidu.android.bbalbs.common.a.c;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.UUID;

public final class com.baidu.android.bbalbs.common.util.a
{
    static final class a
    {

        public final String a;
        public final boolean b;

        static a a(Context context)
        {
            String s;
            boolean flag;
            flag = false;
            s = "";
            String s1 = android.provider.Settings.System.getString(context.getContentResolver(), "bd_setting_i");
            Object obj;
            obj = s1;
            s = s1;
            if (!TextUtils.isEmpty(s1))
            {
                break MISSING_BLOCK_LABEL_36;
            }
            s = s1;
            obj = a(context, "");
            s = ((String) (obj));
            boolean flag2;
            try
            {
                android.provider.Settings.System.putString(context.getContentResolver(), "bd_setting_i", ((String) (obj)));
            }
            catch (Exception exception)
            {
                Log.e("DeviceId", "Settings.System.getString or putString failed", exception);
                boolean flag1 = true;
                exception = s;
                flag = flag1;
                if (TextUtils.isEmpty(s))
                {
                    exception = a(context, "");
                    flag = flag1;
                }
            }
            if (flag)
            {
                flag2 = false;
            } else
            {
                flag2 = true;
            }
            return new a(((String) (obj)), flag2);
        }

        private static String a(Context context, String s)
        {
            String s1 = null;
            TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
            context = s1;
            if (telephonymanager != null)
            {
                try
                {
                    context = telephonymanager.getDeviceId();
                }
                // Misplaced declaration of an exception variable
                catch (Context context)
                {
                    Log.e("DeviceId", "Read IMEI failed", context);
                    context = s1;
                }
            }
            s1 = a(((String) (context)));
            context = s1;
            if (TextUtils.isEmpty(s1))
            {
                context = s;
            }
            return context;
        }

        private static String a(String s)
        {
            String s1 = s;
            if (s != null)
            {
                s1 = s;
                if (s.contains(":"))
                {
                    s1 = "";
                }
            }
            return s1;
        }

        private a(String s, boolean flag)
        {
            a = s;
            b = flag;
        }
    }


    public static String a(Context context)
    {
        a(context, "android.permission.WRITE_SETTINGS");
        a(context, "android.permission.READ_PHONE_STATE");
        a(context, "android.permission.WRITE_EXTERNAL_STORAGE");
        Object obj = a.a(context);
        String s3 = ((a) (obj)).a;
        String s4;
        boolean flag;
        if (((a) (obj)).b)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        s4 = c(context);
        if (flag)
        {
            return com.baidu.android.bbalbs.common.a.c.a((new StringBuilder("com.baidu")).append(s4).toString().getBytes(), true);
        }
        String s1 = null;
        String s = android.provider.Settings.System.getString(context.getContentResolver(), "com.baidu.deviceid");
        obj = s;
        if (TextUtils.isEmpty(s))
        {
            s = com.baidu.android.bbalbs.common.a.c.a((new StringBuilder("com.baidu")).append(s3).append(s4).toString().getBytes(), true);
            String s2 = android.provider.Settings.System.getString(context.getContentResolver(), s);
            obj = s2;
            s1 = s;
            if (!TextUtils.isEmpty(s2))
            {
                android.provider.Settings.System.putString(context.getContentResolver(), "com.baidu.deviceid", s2);
                a(s3, s2);
                s1 = s;
                obj = s2;
            }
        }
        s = ((String) (obj));
        if (TextUtils.isEmpty(((CharSequence) (obj))))
        {
            obj = a(s3);
            s = ((String) (obj));
            if (!TextUtils.isEmpty(((CharSequence) (obj))))
            {
                android.provider.Settings.System.putString(context.getContentResolver(), s1, ((String) (obj)));
                android.provider.Settings.System.putString(context.getContentResolver(), "com.baidu.deviceid", ((String) (obj)));
                s = ((String) (obj));
            }
        }
        obj = s;
        if (TextUtils.isEmpty(s))
        {
            obj = UUID.randomUUID().toString();
            obj = com.baidu.android.bbalbs.common.a.c.a((new StringBuilder(String.valueOf(s3))).append(s4).append(((String) (obj))).toString().getBytes(), true);
            android.provider.Settings.System.putString(context.getContentResolver(), s1, ((String) (obj)));
            android.provider.Settings.System.putString(context.getContentResolver(), "com.baidu.deviceid", ((String) (obj)));
            a(s3, ((String) (obj)));
        }
        return ((String) (obj));
    }

    private static String a(String s)
    {
        if (!TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        return "";
_L2:
        Object obj = new File(Environment.getExternalStorageDirectory(), "baidu/.cuid");
        StringBuilder stringbuilder;
        obj = new BufferedReader(new FileReader(((File) (obj))));
        stringbuilder = new StringBuilder();
_L5:
        String s1 = ((BufferedReader) (obj)).readLine();
        if (s1 != null)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        String as[];
        try
        {
            ((BufferedReader) (obj)).close();
            as = (new String(com.baidu.android.bbalbs.common.a.a.b("30212102dicudiab", "30212102dicudiab", com.baidu.android.bbalbs.common.a.b.a(stringbuilder.toString().getBytes())))).split("=");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return "";
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return "";
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return "";
        }
        if (as == null) goto _L1; else goto _L3
_L3:
        if (as.length != 2 || !s.equals(as[0])) goto _L1; else goto _L4
_L4:
        return as[1];
        stringbuilder.append(s1);
        stringbuilder.append("\r\n");
          goto _L5
    }

    private static void a(Context context, String s)
    {
        boolean flag;
        if (context.checkCallingOrSelfPermission(s) == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            throw new SecurityException((new StringBuilder("Permission Denial: requires permission ")).append(s).toString());
        } else
        {
            return;
        }
    }

    private static void a(String s, String s1)
    {
        if (TextUtils.isEmpty(s))
        {
            return;
        }
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(s);
        stringbuilder.append("=");
        stringbuilder.append(s1);
        s = new File(Environment.getExternalStorageDirectory(), "baidu/.cuid");
        try
        {
            (new File(s.getParent())).mkdirs();
            s = new FileWriter(s, false);
            s.write(com.baidu.android.bbalbs.common.a.b.a(com.baidu.android.bbalbs.common.a.a.a("30212102dicudiab", "30212102dicudiab", stringbuilder.toString().getBytes()), "utf-8"));
            s.flush();
            s.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }

    public static String b(Context context)
    {
        return a.a(context).a;
    }

    public static String c(Context context)
    {
        String s = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        context = s;
        if (TextUtils.isEmpty(s))
        {
            context = "";
        }
        return context;
    }
}
