// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location.b.a;

import android.content.Context;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.baidu.location.b.b.a;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.UUID;

// Referenced classes of package com.baidu.location.b.a:
//            c

public final class b
{
    static final class a
    {

        private static final String _flddo = "bd_setting_i";
        public final boolean a;
        public final String _fldif;

        static a a(Context context)
        {
            Object obj;
            boolean flag1;
            flag1 = true;
            obj = "";
            Object obj1 = android.provider.Settings.System.getString(context.getContentResolver(), "bd_setting_i");
            obj = obj1;
            if (!TextUtils.isEmpty(((CharSequence) (obj1)))) goto _L2; else goto _L1
_L1:
            obj = obj1;
            obj1 = a(context, "");
            obj = obj1;
_L7:
            android.provider.Settings.System.putString(context.getContentResolver(), "bd_setting_i", ((String) (obj)));
            boolean flag = false;
_L4:
            if (flag)
            {
                flag1 = false;
            }
            return new a(((String) (obj)), flag1);
            obj1;
_L5:
            Log.e("DeviceId", "Settings.System.getString or putString failed", ((Throwable) (obj1)));
            if (TextUtils.isEmpty(((CharSequence) (obj))))
            {
                obj = a(context, "");
                flag = true;
            } else
            {
                flag = true;
            }
            if (true) goto _L4; else goto _L3
_L3:
            obj1;
              goto _L5
_L2:
            obj = obj1;
            if (true) goto _L7; else goto _L6
_L6:
        }

        private static String a(Context context, String s)
        {
            context = (TelephonyManager)context.getSystemService("phone");
            if (context == null)
            {
                break MISSING_BLOCK_LABEL_38;
            }
            context = context.getDeviceId();
_L1:
            if (TextUtils.isEmpty(context))
            {
                return s;
            } else
            {
                return context;
            }
            context;
            Log.e("DeviceId", "Read IMEI failed", context);
            context = null;
              goto _L1
        }

        private a(String s, boolean flag)
        {
            _fldif = s;
            a = flag;
        }
    }


    private static final boolean a = false;
    private static final String _flddo = "DeviceId";
    private static final String _fldfor = "30212102dicudiab";
    private static final String _fldif = "baidu/.cuid";
    private static final String _fldint = "com.baidu.deviceid";

    private b()
    {
    }

    public static String a(Context context)
    {
        a(context, "android.permission.WRITE_SETTINGS");
        a(context, "android.permission.READ_PHONE_STATE");
        a(context, "android.permission.WRITE_EXTERNAL_STORAGE");
        Object obj = com.baidu.location.b.a.a.a(context);
        String s4 = ((a) (obj))._fldif;
        String s5;
        boolean flag;
        if (!((a) (obj)).a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s5 = _mthif(context);
        if (flag)
        {
            obj = com.baidu.location.b.a.c.a((new StringBuilder()).append("com.baidu").append(s5).toString().getBytes(), true);
        } else
        {
            String s2 = null;
            String s1 = android.provider.Settings.System.getString(context.getContentResolver(), "com.baidu.deviceid");
            obj = s1;
            if (TextUtils.isEmpty(s1))
            {
                s1 = com.baidu.location.b.a.c.a((new StringBuilder()).append("com.baidu").append(s4).append(s5).toString().getBytes(), true);
                String s3 = android.provider.Settings.System.getString(context.getContentResolver(), s1);
                s2 = s1;
                obj = s3;
                if (!TextUtils.isEmpty(s3))
                {
                    android.provider.Settings.System.putString(context.getContentResolver(), "com.baidu.deviceid", s3);
                    a(s4, s3);
                    obj = s3;
                    s2 = s1;
                }
            }
            s1 = ((String) (obj));
            if (TextUtils.isEmpty(((CharSequence) (obj))))
            {
                obj = a(s4);
                s1 = ((String) (obj));
                if (!TextUtils.isEmpty(((CharSequence) (obj))))
                {
                    android.provider.Settings.System.putString(context.getContentResolver(), s2, ((String) (obj)));
                    android.provider.Settings.System.putString(context.getContentResolver(), "com.baidu.deviceid", ((String) (obj)));
                    s1 = ((String) (obj));
                }
            }
            obj = s1;
            if (TextUtils.isEmpty(s1))
            {
                String s = UUID.randomUUID().toString();
                s = com.baidu.location.b.a.c.a((new StringBuilder()).append(s4).append(s5).append(s).toString().getBytes(), true);
                android.provider.Settings.System.putString(context.getContentResolver(), s2, s);
                android.provider.Settings.System.putString(context.getContentResolver(), "com.baidu.deviceid", s);
                a(s4, s);
                return s;
            }
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
_L3:
        String s1 = ((BufferedReader) (obj)).readLine();
label0:
        {
            if (s1 == null)
            {
                break label0;
            }
            String as[];
            try
            {
                stringbuilder.append(s1);
                stringbuilder.append("\r\n");
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
        }
          goto _L3
        ((BufferedReader) (obj)).close();
        as = (new String(com.baidu.location.b.b.a.a("30212102dicudiab", "30212102dicudiab", com.baidu.location.b.b.b.a(stringbuilder.toString().getBytes())))).split("=");
        if (as == null) goto _L1; else goto _L4
_L4:
        if (as.length != 2 || !s.equals(as[0])) goto _L1; else goto _L5
_L5:
        s = as[1];
        return s;
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
            throw new SecurityException((new StringBuilder()).append("Permission Denial: requires permission ").append(s).toString());
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
            s.write(com.baidu.location.b.b.b.a(com.baidu.location.b.b.a._mthif("30212102dicudiab", "30212102dicudiab", stringbuilder.toString().getBytes()), "utf-8"));
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

    public static String _mthdo(Context context)
    {
        return com.baidu.location.b.a.a.a(context)._fldif;
    }

    public static String _mthif(Context context)
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
