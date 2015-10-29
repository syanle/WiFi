// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bread.breadservice;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class BRD
{

    private static final String TAG = "BRD";

    public BRD()
    {
    }

    public static void disableBRDService(Context context)
    {
        Log.i("BRD", "disableBRDService*****");
        Intent intent = new Intent("com.bread.breadservice.action.brservice");
        intent.putExtra("actioncode", 4100);
        context.startService(intent);
    }

    public static void enableBRDService(Context context)
    {
        Log.i("BRD", "enableBRDService*****");
        Intent intent = new Intent("com.bread.breadservice.action.brservice");
        intent.putExtra("actioncode", 4099);
        context.startService(intent);
    }

    public static void receiverBRDService(Context context)
    {
        Log.i("BRD", "receiverBRDService*****");
        Intent intent = new Intent("com.bread.breadservice.action.brservice");
        intent.putExtra("actioncode", 4098);
        context.startService(intent);
    }

    public static void startBRDService(Context context)
    {
        Log.i("BRD", "startBRDService*****");
        Intent intent = new Intent("com.bread.breadservice.action.brservice");
        intent.putExtra("actioncode", 4097);
        context.startService(intent);
    }

    public static void stopBRDService(Context context)
    {
        Log.i("BRD", "stopBRDService*****");
        Intent intent = new Intent("com.bread.breadservice.action.brservice");
        intent.putExtra("actioncode", 4096);
        context.startService(intent);
    }
}
