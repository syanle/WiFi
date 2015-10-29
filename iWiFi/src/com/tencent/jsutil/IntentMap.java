// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.content.Intent;
import android.util.Log;

public class IntentMap
{

    private Intent mIntent;

    public IntentMap(Intent intent)
    {
        mIntent = intent;
    }

    public boolean getBoolean(String s, boolean flag)
    {
        return mIntent.getBooleanExtra(s, flag);
    }

    public float getFloat(String s, float f)
    {
        return mIntent.getFloatExtra(s, f);
    }

    public int getInt(String s, int i)
    {
        Log.i("IntentMap", (new StringBuilder()).append("getInt key =").append(s).toString());
        return mIntent.getIntExtra(s, i);
    }

    public String getString(String s)
    {
        Log.i("IntentMap", (new StringBuilder()).append("getString key =").append(s).toString());
        return mIntent.getStringExtra(s);
    }

    public String getString(String s, int i)
    {
        Log.i("IntentMap", (new StringBuilder()).append("getString key =").append(s).toString());
        return mIntent.getStringExtra(s);
    }

    public void setIntentMap(Intent intent)
    {
        mIntent = intent;
    }

    public String test(String s)
    {
        Log.i("sss", mIntent.getStringExtra("hello"));
        Log.i("ssss", (new StringBuilder()).append("getInt key =").append(mIntent.getStringExtra(s)).toString());
        return "";
    }
}
