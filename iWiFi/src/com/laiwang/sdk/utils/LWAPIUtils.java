// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.utils;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.util.Log;
import com.laiwang.sdk.channel.IILWAPIChannel;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

public class LWAPIUtils
{

    public LWAPIUtils()
    {
    }

    public static void getActivityStack(Context context)
    {
        context = (ActivityManager)context.getSystemService("activity");
        int j = context.getRunningTasks(2).size();
        int i = 0;
        do
        {
            if (i >= j)
            {
                return;
            }
            Log.d("", ((android.app.ActivityManager.RunningTaskInfo)context.getRunningTasks(2).get(i)).topActivity.getClassName());
            i++;
        } while (true);
    }

    public static PackageInfo getAppPackageInfo(Context context, String s)
    {
        context = context.getPackageManager();
        try
        {
            context = context.getPackageInfo(s, 1);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        return context;
    }

    public static void invokeBrowser(Context context, String s)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(0x10000000);
        intent.setData(Uri.parse(s));
        context.startActivity(intent);
    }

    public static boolean isIntentAvailable(Context context, Intent intent, String s)
    {
        context = context.getPackageManager().queryIntentActivities(intent, 0x10000).iterator();
        do
        {
            if (!context.hasNext())
            {
                return false;
            }
        } while (!s.equals(((ResolveInfo)context.next()).activityInfo.applicationInfo.className));
        return true;
    }

    public static Object remoteProcedureCall(IILWAPIChannel iilwapichannel, Class class1, Object obj, String s, Class aclass[], Object aobj[])
    {
        if (iilwapichannel == null)
        {
            return obj;
        }
        try
        {
            iilwapichannel = ((IILWAPIChannel) (com/laiwang/sdk/channel/IILWAPIChannel.getMethod(s, aclass).invoke(iilwapichannel, aobj)));
        }
        // Misplaced declaration of an exception variable
        catch (IILWAPIChannel iilwapichannel)
        {
            iilwapichannel.printStackTrace();
            return obj;
        }
        // Misplaced declaration of an exception variable
        catch (IILWAPIChannel iilwapichannel)
        {
            iilwapichannel.printStackTrace();
            return obj;
        }
        // Misplaced declaration of an exception variable
        catch (IILWAPIChannel iilwapichannel)
        {
            iilwapichannel.printStackTrace();
            return obj;
        }
        // Misplaced declaration of an exception variable
        catch (IILWAPIChannel iilwapichannel)
        {
            iilwapichannel.printStackTrace();
            return obj;
        }
        return iilwapichannel;
    }
}
