// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            Platform

public interface PlatformActionListener
{

    public abstract void onCancel(Platform platform, int i);

    public abstract void onComplete(Platform platform, int i, HashMap hashmap);

    public abstract void onError(Platform platform, int i, Throwable throwable);
}
