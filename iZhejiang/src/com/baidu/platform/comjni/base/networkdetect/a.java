// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.base.networkdetect;


// Referenced classes of package com.baidu.platform.comjni.base.networkdetect:
//            JNINetworkDetect

public class a
{

    private int a;
    private JNINetworkDetect b;

    public a()
    {
        a = 0;
        b = null;
        b = new JNINetworkDetect();
    }

    public int a()
    {
        a = b.Create();
        return a;
    }
}
