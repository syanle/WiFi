// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.map.cloud;

import android.os.Bundle;

public class JniCloud
{

    public JniCloud()
    {
    }

    public native void cloudDetailSearch(int i, Bundle bundle);

    public native void cloudSearch(int i, Bundle bundle);

    public native int create();

    public native String getSearchResult(int i, int j);

    public native int release(int i);
}
