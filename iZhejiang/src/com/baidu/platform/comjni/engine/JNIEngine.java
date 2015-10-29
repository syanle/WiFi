// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.engine;

import android.content.Context;
import android.os.Bundle;

public class JNIEngine
{

    public static native boolean InitEngine(Context context, Bundle bundle);

    public static native void SetProxyInfo(String s, int i);

    public static native boolean StartSocketProc();

    public static native boolean UnInitEngine();

    public static native int initClass(Object obj, int i);
}
