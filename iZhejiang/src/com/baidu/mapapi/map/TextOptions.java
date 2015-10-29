// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Typeface;
import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;

// Referenced classes of package com.baidu.mapapi.map:
//            OverlayOptions, Text, Overlay

public final class TextOptions extends OverlayOptions
{

    public static final int ALIGN_BOTTOM = 16;
    public static final int ALIGN_CENTER_HORIZONTAL = 4;
    public static final int ALIGN_CENTER_VERTICAL = 32;
    public static final int ALIGN_LEFT = 1;
    public static final int ALIGN_RIGHT = 2;
    public static final int ALIGN_TOP = 8;
    int a;
    boolean b;
    Bundle c;
    private String d;
    private LatLng e;
    private int f;
    private int g;
    private int h;
    private Typeface i;
    private int j;
    private int k;
    private float l;

    public TextOptions()
    {
        g = 0xff000000;
        h = 12;
        j = 4;
        k = 32;
        b = true;
    }

    Overlay a()
    {
        Text text1 = new Text();
        text1.m = b;
        text1.l = a;
        text1.n = c;
        text1.a = d;
        text1.b = e;
        text1.c = f;
        text1.d = g;
        text1.e = h;
        text1.f = i;
        text1.g = j;
        text1.h = k;
        text1.i = l;
        return text1;
    }

    public TextOptions align(int i1, int j1)
    {
        j = i1;
        k = j1;
        return this;
    }

    public TextOptions bgColor(int i1)
    {
        f = i1;
        return this;
    }

    public TextOptions extraInfo(Bundle bundle)
    {
        c = bundle;
        return this;
    }

    public TextOptions fontColor(int i1)
    {
        g = i1;
        return this;
    }

    public TextOptions fontSize(int i1)
    {
        h = i1;
        return this;
    }

    public float getAlignX()
    {
        return (float)j;
    }

    public float getAlignY()
    {
        return (float)k;
    }

    public int getBgColor()
    {
        return f;
    }

    public Bundle getExtraInfo()
    {
        return c;
    }

    public int getFontColor()
    {
        return g;
    }

    public int getFontSize()
    {
        return h;
    }

    public LatLng getPosition()
    {
        return e;
    }

    public float getRotate()
    {
        return l;
    }

    public String getText()
    {
        return d;
    }

    public Typeface getTypeface()
    {
        return i;
    }

    public int getZIndex()
    {
        return a;
    }

    public boolean isVisible()
    {
        return b;
    }

    public TextOptions position(LatLng latlng)
    {
        if (latlng == null)
        {
            throw new IllegalArgumentException("position can not be null");
        } else
        {
            e = latlng;
            return this;
        }
    }

    public TextOptions rotate(float f1)
    {
        l = f1;
        return this;
    }

    public TextOptions text(String s)
    {
        if (s == null || s.equals(""))
        {
            throw new IllegalArgumentException("text can not be null or empty");
        } else
        {
            d = s;
            return this;
        }
    }

    public TextOptions typeface(Typeface typeface1)
    {
        i = typeface1;
        return this;
    }

    public TextOptions visible(boolean flag)
    {
        b = flag;
        return this;
    }

    public TextOptions zIndex(int i1)
    {
        a = i1;
        return this;
    }
}
