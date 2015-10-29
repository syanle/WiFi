// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.githang.android.apnbb;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import org.androidpn.client.LogUtil;

public class NetworkUtil
{

    private static final String LOGTAG = LogUtil.makeLogTag(com/githang/android/apnbb/NetworkUtil);

    public NetworkUtil()
    {
    }

    public static final boolean isNetworkAvaible(Context context)
    {
        context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (context != null)
        {
            Log.d(LOGTAG, (new StringBuilder("Network Type  = ")).append(context.getTypeName()).toString());
            Log.d(LOGTAG, (new StringBuilder("Network State = ")).append(context.getState()).toString());
            if (context.isConnected())
            {
                return true;
            }
        }
        return false;
    }

}
