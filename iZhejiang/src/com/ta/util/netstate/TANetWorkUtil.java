// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.netstate;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class TANetWorkUtil
{
    public static final class netType extends Enum
    {

        public static final netType CMNET;
        public static final netType CMWAP;
        private static final netType ENUM$VALUES[];
        public static final netType noneNet;
        public static final netType wifi;

        public static netType valueOf(String s)
        {
            return (netType)Enum.valueOf(com/ta/util/netstate/TANetWorkUtil$netType, s);
        }

        public static netType[] values()
        {
            netType anettype[] = ENUM$VALUES;
            int i = anettype.length;
            netType anettype1[] = new netType[i];
            System.arraycopy(anettype, 0, anettype1, 0, i);
            return anettype1;
        }

        static 
        {
            wifi = new netType("wifi", 0);
            CMNET = new netType("CMNET", 1);
            CMWAP = new netType("CMWAP", 2);
            noneNet = new netType("noneNet", 3);
            ENUM$VALUES = (new netType[] {
                wifi, CMNET, CMWAP, noneNet
            });
        }

        private netType(String s, int i)
        {
            super(s, i);
        }
    }


    public TANetWorkUtil()
    {
    }

    public static netType getAPNType(Context context)
    {
        context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (context == null)
        {
            return netType.noneNet;
        }
        int i = context.getType();
        if (i == 0)
        {
            if (context.getExtraInfo().toLowerCase().equals("cmnet"))
            {
                return netType.CMNET;
            } else
            {
                return netType.CMWAP;
            }
        }
        if (i == 1)
        {
            return netType.wifi;
        } else
        {
            return netType.noneNet;
        }
    }

    public static int getConnectedType(Context context)
    {
        if (context != null)
        {
            context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (context != null && context.isAvailable())
            {
                return context.getType();
            }
        }
        return -1;
    }

    public static boolean isMobileConnected(Context context)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (context != null)
        {
            context = ((ConnectivityManager)context.getSystemService("connectivity")).getNetworkInfo(0);
            flag = flag1;
            if (context != null)
            {
                flag = context.isAvailable();
            }
        }
        return flag;
    }

    public static boolean isNetworkAvailable(Context context)
    {
        context = ((ConnectivityManager)context.getSystemService("connectivity")).getAllNetworkInfo();
        if (context == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L5:
        if (i < context.length) goto _L3; else goto _L2
_L2:
        return false;
_L3:
        if (context[i].getState() == android.net.NetworkInfo.State.CONNECTED)
        {
            return true;
        }
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static boolean isNetworkConnected(Context context)
    {
        if (context != null)
        {
            context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (context != null)
            {
                return context.isAvailable();
            }
        }
        return false;
    }

    public static boolean isWifiConnected(Context context)
    {
        if (context != null)
        {
            context = ((ConnectivityManager)context.getSystemService("connectivity")).getNetworkInfo(1);
            if (context != null)
            {
                return context.isAvailable();
            }
        }
        return false;
    }
}
