// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a.b;

import android.view.View;

public interface c
{

    public abstract boolean c();

    public abstract boolean canGoBack();

    public abstract boolean canGoForward();

    public abstract void clearHistory();

    public abstract boolean d();

    public abstract void e();

    public abstract void g();

    public abstract View getCurrentView();

    public abstract void h();

    public abstract void loadUrl(String s);

    public abstract void postUrl(String s, byte abyte0[]);

    public abstract void reload();
}
