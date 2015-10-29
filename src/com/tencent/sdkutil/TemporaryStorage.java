// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.util.SparseArray;
import com.tencent.tauth.IUiListener;
import java.util.HashMap;
import java.util.UUID;

public class TemporaryStorage
{

    private static HashMap hashMap = new HashMap();
    public static int mNextRequestCode = 5656;
    private static SparseArray mRecords = new SparseArray();

    public TemporaryStorage()
    {
    }

    public static Object get(String s)
    {
        return hashMap.remove(s);
    }

    public static String getId()
    {
        return UUID.randomUUID().toString();
    }

    public static IUiListener getListener(int i)
    {
        return (IUiListener)mRecords.get(i);
    }

    public static int nextRequestCode()
    {
        return mNextRequestCode;
    }

    public static Object set(String s, Object obj)
    {
        return hashMap.put(s, obj);
    }

    public static void setListener(IUiListener iuilistener)
    {
        mNextRequestCode++;
        if (mNextRequestCode == 6656)
        {
            mNextRequestCode = 5656;
        }
        mRecords.put(mNextRequestCode, iuilistener);
    }

    public static void setListener(IUiListener iuilistener, int i)
    {
        mRecords.put(i, iuilistener);
    }

}
