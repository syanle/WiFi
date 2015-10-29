// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.util.DisplayMetrics;
import java.io.InputStream;
import java.lang.reflect.Field;

// Referenced classes of package com.mapabc.mapapi.core:
//            c

public class u
{

    private Context a;
    private String b[] = {
        "nomap.png", "beta.png", "poi_1.png", "compass_bg.png", "compass_pointer.png", "loc1.png", "loc2.png", "zoom_in_true_HVGA.9.png", "zoom_out_true_HVGA.9.png", "zoom_in_disabled_HVGA.9.png", 
        "zoom_out_disabled_HVGA.9.png", "zoom_in_selected_HVGA.9.png", "zoom_out_selected_HVGA.9.png"
    };
    private String c[] = {
        "nomap.png", "beta.png", "poi_1_WVGA.png", "compass_bg.png", "compass_pointer.png", "loc1.png", "loc2.png", "zoom_in_true_WVGA.9.png", "zoom_out_true_WVGA.9.png", "zoom_in_disabled_WVGA.9.png", 
        "zoom_out_disabled_WVGA.9.png", "zoom_in_selected_WVGA.9.png", "zoom_out_selected_WVGA.9.png"
    };
    private String d[] = {
        "nomap.png", "beta.png", "poi_1_QVGA.png", "compass_bg__QVGA.png", "compass_pointer_QVGA.png", "loc1_QVGA.png", "loc2_QVGA.png", "zoom_in_true_QVGA.9.png", "zoom_out_true_QVGA.9.png", "zoom_in_disabled_QVGA.9.png", 
        "zoom_out_disabled_QVGA.9.png", "zoom_in_selected_QVGA.9.png", "zoom_out_selected_QVGA.9.png"
    };
    private Bitmap e[];

    public u(Context context)
    {
        a = null;
        e = null;
        a = context;
    }

    public final Bitmap a(int i)
    {
        Object obj;
        if (e == null)
        {
            e = new Bitmap[b.length];
        }
        if (e[i] != null && !e[i].isRecycled())
        {
            return e[i];
        }
        obj = "";
        if (c.f != 2) goto _L2; else goto _L1
_L1:
        obj = c[i];
_L4:
        obj = a(a, ((String) (obj)));
        if (obj != null)
        {
            e[i] = ((Bitmap) (obj));
        }
        return e[i];
_L2:
        if (c.f == 1)
        {
            obj = d[i];
        } else
        if (c.f == 3)
        {
            obj = b[i];
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final Bitmap a(Context context, String s)
    {
        context = context.getAssets();
        s = context.open(s);
        context = BitmapFactory.decodeStream(s);
        s.close();
        return context;
        s;
        context = null;
_L2:
        s.printStackTrace();
        return context;
        s;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final NinePatchDrawable a(Context context, String s, byte abyte0[], Rect rect)
    {
        return new NinePatchDrawable(a(context, s), abyte0, rect, null);
    }

    public void a()
    {
        if (e == null)
        {
            return;
        }
        int j = e.length;
        int i = 0;
        while (i < j) 
        {
            if (e[i] != null)
            {
                e[i] = null;
            }
            i++;
        }
        e = null;
    }

    public final Drawable b(Context context, String s)
    {
        context = new BitmapDrawable(a(context, s));
        context.setBounds(0, 0, context.getIntrinsicWidth(), context.getIntrinsicHeight());
        return context;
    }

    public void b()
    {
        Field field;
        DisplayMetrics displaymetrics;
        new DisplayMetrics();
        displaymetrics = a.getApplicationContext().getResources().getDisplayMetrics();
        field = null;
        Field field1 = displaymetrics.getClass().getField("densityDpi");
        field = field1;
_L2:
        if (field != null)
        {
            long l = displaymetrics.widthPixels * displaymetrics.heightPixels;
            int i;
            try
            {
                i = field.getInt(displaymetrics);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                illegalargumentexception.printStackTrace();
                i = 160;
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                illegalaccessexception.printStackTrace();
                i = 160;
            }
            if (i <= 120)
            {
                c.f = 1;
                return;
            }
            if (i <= 160)
            {
                c.f = 3;
                return;
            }
            if (i <= 240)
            {
                c.f = 2;
                return;
            }
            if (l > 0x25800L)
            {
                c.f = 2;
                return;
            }
            if (l < 0x25800L)
            {
                c.f = 1;
                return;
            } else
            {
                c.f = 3;
                return;
            }
        }
        long l1 = displaymetrics.widthPixels * displaymetrics.heightPixels;
        if (l1 > 0x25800L)
        {
            c.f = 2;
            return;
        }
        if (l1 < 0x25800L)
        {
            c.f = 1;
            return;
        } else
        {
            c.f = 3;
            return;
        }
        Object obj;
        obj;
        continue; /* Loop/switch isn't completed */
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
