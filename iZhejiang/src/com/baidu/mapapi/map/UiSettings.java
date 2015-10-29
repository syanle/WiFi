// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Point;
import com.baidu.platform.comapi.map.f;

public final class UiSettings
{

    private f a;

    UiSettings(f f1)
    {
        a = f1;
    }

    public boolean isCompassEnabled()
    {
        return a.g();
    }

    public boolean isOverlookingGesturesEnabled()
    {
        return a.m();
    }

    public boolean isRotateGesturesEnabled()
    {
        return a.l();
    }

    public boolean isScrollGesturesEnabled()
    {
        return a.j();
    }

    public boolean isZoomGesturesEnabled()
    {
        return a.k();
    }

    public void setAllGesturesEnabled(boolean flag)
    {
        setRotateGesturesEnabled(flag);
        setScrollGesturesEnabled(flag);
        setOverlookingGesturesEnabled(flag);
        setZoomGesturesEnabled(flag);
    }

    public void setCompassEnabled(boolean flag)
    {
        a.e(flag);
    }

    public void setCompassPosition(Point point)
    {
        a.a(point);
    }

    public void setOverlookingGesturesEnabled(boolean flag)
    {
        a.k(flag);
    }

    public void setRotateGesturesEnabled(boolean flag)
    {
        a.j(flag);
    }

    public void setScrollGesturesEnabled(boolean flag)
    {
        a.h(flag);
    }

    public void setZoomGesturesEnabled(boolean flag)
    {
        a.i(flag);
    }
}
