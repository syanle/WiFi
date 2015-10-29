// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Point;
import com.baidu.mapapi.model.LatLng;

public final class MapViewLayoutParams extends android.view.ViewGroup.LayoutParams
{
    public static final class Builder
    {

        private int a;
        private int b;
        private LatLng c;
        private Point d;
        private ELayoutMode e;
        private int f;
        private int g;
        private int h;

        public Builder align(int i, int j)
        {
            if (i == 1 || i == 2 || i == 4)
            {
                f = i;
            }
            if (j == 8 || j == 16 || j == 32)
            {
                g = j;
            }
            return this;
        }

        public MapViewLayoutParams build()
        {
            boolean flag = true;
            if (e != ELayoutMode.mapMode ? e != ELayoutMode.absoluteMode || d != null : c != null)
            {
                flag = false;
            }
            if (flag)
            {
                throw new IllegalStateException("if it is map mode, you must supply position info; else if it is absolute mode, you must supply the point info");
            } else
            {
                return new MapViewLayoutParams(a, b, c, d, e, f, g, h);
            }
        }

        public Builder height(int i)
        {
            b = i;
            return this;
        }

        public Builder layoutMode(ELayoutMode elayoutmode)
        {
            e = elayoutmode;
            return this;
        }

        public Builder point(Point point1)
        {
            d = point1;
            return this;
        }

        public Builder position(LatLng latlng)
        {
            c = latlng;
            return this;
        }

        public Builder width(int i)
        {
            a = i;
            return this;
        }

        public Builder yOffset(int i)
        {
            h = i;
            return this;
        }

        public Builder()
        {
            e = ELayoutMode.absoluteMode;
            f = 4;
            g = 16;
        }
    }

    public static final class ELayoutMode extends Enum
    {

        private static final ELayoutMode $VALUES[];
        public static final ELayoutMode absoluteMode;
        public static final ELayoutMode mapMode;

        public static ELayoutMode valueOf(String s)
        {
            return (ELayoutMode)Enum.valueOf(com/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode, s);
        }

        public static ELayoutMode[] values()
        {
            return (ELayoutMode[])$VALUES.clone();
        }

        static 
        {
            mapMode = new ELayoutMode("mapMode", 0);
            absoluteMode = new ELayoutMode("absoluteMode", 1);
            $VALUES = (new ELayoutMode[] {
                mapMode, absoluteMode
            });
        }

        private ELayoutMode(String s, int i)
        {
            super(s, i);
        }
    }


    public static final int ALIGN_BOTTOM = 16;
    public static final int ALIGN_CENTER_HORIZONTAL = 4;
    public static final int ALIGN_CENTER_VERTICAL = 32;
    public static final int ALIGN_LEFT = 1;
    public static final int ALIGN_RIGHT = 2;
    public static final int ALIGN_TOP = 8;
    LatLng a;
    Point b;
    ELayoutMode c;
    float d;
    float e;
    int f;

    MapViewLayoutParams(int i, int j, LatLng latlng, Point point, ELayoutMode elayoutmode, int k, int l, 
            int i1)
    {
        super(i, j);
        a = latlng;
        b = point;
        c = elayoutmode;
        k;
        JVM INSTR tableswitch 1 4: default 56
    //                   1 112
    //                   2 129
    //                   3 56
    //                   4 120;
           goto _L1 _L2 _L3 _L1 _L4
_L1:
        d = 0.5F;
_L9:
        l;
        JVM INSTR lookupswitch 3: default 100
    //                   8: 137
    //                   16: 154
    //                   32: 145;
           goto _L5 _L6 _L7 _L8
_L5:
        e = 1.0F;
_L10:
        f = i1;
        return;
_L2:
        d = 0.0F;
          goto _L9
_L4:
        d = 0.5F;
          goto _L9
_L3:
        d = 1.0F;
          goto _L9
_L6:
        e = 0.0F;
          goto _L10
_L8:
        e = 0.5F;
          goto _L10
_L7:
        e = 1.0F;
          goto _L10
    }
}
