// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.app.Activity;
import android.content.Context;

public interface SocializeView
{

    public abstract Activity getActivity();

    public abstract void onViewLoad();

    public abstract void onViewRendered(int i, int j);

    public abstract void onViewUpdate();

    public abstract void showError(Context context, Exception exception);
}
