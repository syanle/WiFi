// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.os.Bundle;
import android.util.Log;

public class BundleMap
{

    Bundle mBundle;

    public BundleMap(Bundle bundle)
    {
        mBundle = bundle;
    }

    public boolean containsKey(String s)
    {
        return mBundle.containsKey(s);
    }

    public boolean getBoolean(String s, boolean flag)
    {
        return mBundle.getBoolean(s, flag);
    }

    public float getFloat(String s, float f)
    {
        return mBundle.getFloat(s, f);
    }

    public int getInt(String s, int i)
    {
        Log.i("BundleMap", (new StringBuilder()).append("getInt key =").append(s).toString());
        return mBundle.getInt(s, i);
    }

    public String getString(String s)
    {
        Log.i("BundleMap", (new StringBuilder()).append("getString key =").append(s).append(" value = ").append(mBundle.getString(s)).toString());
        return mBundle.getString(s);
    }

    public String getStringArray(String s)
    {
        Log.i("BundleMap", (new StringBuilder()).append("getStringArray key = ").append(s).toString());
        StringBuffer stringbuffer = new StringBuffer("[");
        s = mBundle.getStringArray(s);
        if (s == null)
        {
            return null;
        }
        int i = 0;
        while (i < s.length) 
        {
            Log.i("BundleMap", s[i]);
            if (i != s.length - 1)
            {
                stringbuffer.append(s[i]).append(",");
            } else
            {
                stringbuffer.append(s[i]);
            }
            i++;
        }
        stringbuffer.append("]");
        Log.d("BundleMap", (new StringBuilder()).append("buffer = ").append(stringbuffer.toString()).toString());
        return stringbuffer.toString();
    }
}
