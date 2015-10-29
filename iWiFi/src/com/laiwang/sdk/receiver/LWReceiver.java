// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class LWReceiver extends BroadcastReceiver
{

    public LWReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        Log.e("Test", "Ireceive");
    }
}
