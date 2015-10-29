// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.a;
import com.baidu.platform.comapi.a.b;
import com.baidu.platform.comapi.map.e;
import vi.com.gdi.bgl.android.java.EnvDrawText;

// Referenced classes of package com.baidu.mapapi.map:
//            Overlay

public final class Text extends Overlay
{

    private static final String p = com/baidu/mapapi/map/Text.getSimpleName();
    String a;
    LatLng b;
    int c;
    int d;
    int e;
    Typeface f;
    int g;
    int h;
    float i;
    int o;

    Text()
    {
        k = e.e;
    }

    Bundle a()
    {
        if (f != null)
        {
            EnvDrawText.removeFontCache(f.hashCode());
        }
        return super.a();
    }

    Bundle a(Bundle bundle)
    {
        float f2;
        f2 = 0.5F;
        super.a(bundle);
        if (b == null)
        {
            throw new IllegalStateException("when you add a text overlay, you must provide text and the position info.");
        }
        bundle.putString("text", a);
        b b1 = com.baidu.mapapi.model.a.a(b);
        bundle.putInt("location_x", b1.b());
        bundle.putInt("location_y", b1.a());
        int j = d;
        int k = d;
        int l = d;
        bundle.putInt("font_color", Color.argb(j >>> 24, d & 0xff, l >> 8 & 0xff, k >> 16 & 0xff));
        j = c;
        k = c;
        l = c;
        bundle.putInt("bg_color", Color.argb(j >>> 24, c & 0xff, l >> 8 & 0xff, k >> 16 & 0xff));
        bundle.putInt("font_size", e);
        if (f != null)
        {
            EnvDrawText.registFontCache(f.hashCode(), f);
            bundle.putInt("type_face", f.hashCode());
        }
        g;
        JVM INSTR tableswitch 1 4: default 260
    //                   1 349
    //                   2 354
    //                   3 260
    //                   4 343;
           goto _L1 _L2 _L3 _L1 _L4
_L1:
        float f1 = 0.5F;
_L9:
        bundle.putFloat("align_x", f1);
        f1 = f2;
        h;
        JVM INSTR lookupswitch 3: default 312
    //                   8: 359
    //                   16: 364
    //                   32: 314;
           goto _L5 _L6 _L7 _L8
_L7:
        break MISSING_BLOCK_LABEL_364;
_L8:
        break; /* Loop/switch isn't completed */
_L5:
        f1 = f2;
_L10:
        bundle.putFloat("align_y", f1);
        bundle.putFloat("rotate", i);
        bundle.putInt("update", o);
        return bundle;
_L4:
        f1 = 0.5F;
          goto _L9
_L2:
        f1 = 0.0F;
          goto _L9
_L3:
        f1 = 1.0F;
          goto _L9
_L6:
        f1 = 0.0F;
          goto _L10
        f1 = 1.0F;
          goto _L10
    }

    public float getAlignX()
    {
        return (float)g;
    }

    public float getAlignY()
    {
        return (float)h;
    }

    public int getBgColor()
    {
        return c;
    }

    public int getFontColor()
    {
        return d;
    }

    public int getFontSize()
    {
        return e;
    }

    public LatLng getPosition()
    {
        return b;
    }

    public float getRotate()
    {
        return i;
    }

    public String getText()
    {
        return a;
    }

    public Typeface getTypeface()
    {
        return f;
    }

    public void setAlign(int j, int k)
    {
        g = j;
        h = k;
        o = 1;
        listener.b(this);
    }

    public void setBgColor(int j)
    {
        c = j;
        o = 1;
        listener.b(this);
    }

    public void setFontColor(int j)
    {
        d = j;
        o = 1;
        listener.b(this);
    }

    public void setFontSize(int j)
    {
        e = j;
        o = 1;
        listener.b(this);
    }

    public void setPosition(LatLng latlng)
    {
        if (latlng == null)
        {
            throw new IllegalArgumentException("position can not be null");
        } else
        {
            b = latlng;
            o = 1;
            listener.b(this);
            return;
        }
    }

    public void setRotate(float f1)
    {
        i = f1;
        o = 1;
        listener.b(this);
    }

    public void setText(String s)
    {
        if (s == null || s.equals(""))
        {
            throw new IllegalArgumentException("text can not be null or empty");
        } else
        {
            a = s;
            o = 1;
            listener.b(this);
            return;
        }
    }

    public void setTypeface(Typeface typeface)
    {
        f = typeface;
        o = 1;
        listener.b(this);
    }

}
