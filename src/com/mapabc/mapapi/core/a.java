// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import android.view.View;
import com.mapabc.mapapi.map.MapView;
import com.mapabc.mapapi.map.RouteMessageHandler;
import com.mapabc.mapapi.map.RouteOverlay;

public class a
{

    private RouteMessageHandler a;
    private int b;
    private int c;
    private MapView d;
    private RouteOverlay e;

    public a(MapView mapview, RouteMessageHandler routemessagehandler, RouteOverlay routeoverlay, int i, int j)
    {
        d = mapview;
        a = routemessagehandler;
        b = j;
        c = i;
        e = routeoverlay;
    }

    static MapView a(a a1)
    {
        return a1.d;
    }

    static RouteOverlay b(a a1)
    {
        return a1.e;
    }

    static int c(a a1)
    {
        return a1.c;
    }

    static int d(a a1)
    {
        return a1.b;
    }

    static RouteMessageHandler e(a a1)
    {
        return a1.a;
    }

    public void a(View view)
    {
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final a a;

            public void onClick(View view1)
            {
                a.e(a).onRouteEvent(a.a(a), a.b(a), a.c(a), a.d(a));
            }

            
            {
                a = a.this;
                super();
            }
        });
    }
}
