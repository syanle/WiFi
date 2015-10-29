// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import android.os.Bundle;

public interface SSOListener
{

    public abstract void onCancel();

    public abstract void onComplete(Bundle bundle);

    public abstract void onFailed(Throwable throwable);
}
