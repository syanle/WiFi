// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.a;
import com.baidu.platform.comapi.a.b;
import com.baidu.platform.comapi.map.e;
import java.util.List;

public abstract class Overlay
{
    static interface a
    {

        public abstract void a(Overlay overlay);

        public abstract void b(Overlay overlay);
    }


    String j;
    e k;
    int l;
    protected a listener;
    boolean m;
    Bundle n;

    protected Overlay()
    {
        j = (new StringBuilder()).append(System.currentTimeMillis()).append("_").append(hashCode()).toString();
    }

    static void a(int i, Bundle bundle)
    {
        Bundle bundle1 = new Bundle();
        bundle1.putFloat("red", (float)(i >> 16 & 0xff) / 255F);
        bundle1.putFloat("green", (float)(i >> 8 & 0xff) / 255F);
        bundle1.putFloat("blue", (float)(i & 0xff) / 255F);
        bundle1.putFloat("alpha", (float)(i >>> 24) / 255F);
        bundle.putBundle("color", bundle1);
    }

    static void a(List list, Bundle bundle)
    {
        int i1 = list.size();
        int ai[] = new int[i1];
        int ai1[] = new int[i1];
        for (int i = 0; i < i1; i++)
        {
            b b1 = com.baidu.mapapi.model.a.a((LatLng)list.get(i));
            ai[i] = b1.b();
            ai1[i] = b1.a();
        }

        bundle.putIntArray("x_array", ai);
        bundle.putIntArray("y_array", ai1);
    }

    Bundle a()
    {
        Bundle bundle = new Bundle();
        bundle.putString("id", j);
        bundle.putInt("type", k.ordinal());
        return bundle;
    }

    Bundle a(Bundle bundle)
    {
        bundle.putString("id", j);
        bundle.putInt("type", k.ordinal());
        int i;
        if (m)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        bundle.putInt("visibility", i);
        bundle.putInt("z_index", l);
        return bundle;
    }

    public Bundle getExtraInfo()
    {
        return n;
    }

    public int getZIndex()
    {
        return l;
    }

    public boolean isVisible()
    {
        return m;
    }

    public void remove()
    {
        listener.a(this);
    }

    public void setExtraInfo(Bundle bundle)
    {
        n = bundle;
    }

    public void setVisible(boolean flag)
    {
        m = flag;
        listener.b(this);
    }

    public void setZIndex(int i)
    {
        l = i;
        listener.b(this);
    }
}
