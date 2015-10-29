// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.list;

import android.app.Activity;
import android.content.Context;
import android.os.Environment;
import java.io.File;

public class Util
{

    public static int flag = 0;
    private static Util util;

    private Util()
    {
    }

    public static Util getInstance()
    {
        if (util == null)
        {
            util = new Util();
        }
        return util;
    }

    private static String getSubStr(String s, int i)
    {
        String s1 = "";
        int j = 0;
        do
        {
            if (j >= i)
            {
                return s1.substring(1);
            }
            int k = s.lastIndexOf('/');
            s1 = (new StringBuilder(String.valueOf(s.substring(k)))).append(s1).toString();
            s = s.substring(0, k);
            j++;
        } while (true);
    }

    public String getExtPath()
    {
        String s = "";
        if (hasSDCard())
        {
            s = Environment.getExternalStorageDirectory().getPath();
        }
        return s;
    }

    public String getImageName(String s)
    {
        String s1 = "";
        if (s != null)
        {
            s1 = s.substring(s.lastIndexOf("/") + 1);
        }
        return s1;
    }

    public String getImageName2(String s)
    {
        String s1 = "";
        if (s != null)
        {
            s = getSubStr(s, 2);
            s1 = (new StringBuilder(String.valueOf(s.substring(0, s.lastIndexOf("/"))))).append(s.substring(s.lastIndexOf("/") + 1)).toString();
        }
        return s1;
    }

    public String getPackagePath(Activity activity)
    {
        return activity.getFilesDir().toString();
    }

    public String getPackagePath2(Context context)
    {
        return context.getFilesDir().toString();
    }

    public boolean hasSDCard()
    {
        boolean flag1 = false;
        if ("mounted".equals(Environment.getExternalStorageState()))
        {
            flag1 = true;
        }
        return flag1;
    }

}
