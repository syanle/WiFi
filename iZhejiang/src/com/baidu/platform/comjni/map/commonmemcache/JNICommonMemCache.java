// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.map.commonmemcache;

import android.os.Bundle;

public class JNICommonMemCache
{

    public JNICommonMemCache()
    {
    }

    public native int Create();

    public native void Init(int i, Bundle bundle);

    public native int Release(int i);
}
