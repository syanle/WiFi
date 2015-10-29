// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.NinePatch;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ZoomControls;
import com.baidu.mapapi.a;
import com.baidu.platform.comapi.c.c;
import com.baidu.platform.comapi.map.f;
import com.baidu.platform.comapi.map.h;
import com.baidu.platform.comapi.map.z;
import java.io.IOException;

// Referenced classes of package com.baidu.mapapi.map:
//            BaiduMap, BaiduMapOptions, g, h, 
//            f, MapViewLayoutParams

public final class MapView extends ViewGroup
{

    private static final String a = com/baidu/mapapi/map/MapView.getSimpleName();
    private static final SparseArray m;
    private f b;
    private BaiduMap c;
    private ImageView d;
    private Bitmap e;
    private ZoomControls f;
    private Point g;
    private Point h;
    private RelativeLayout i;
    private TextView j;
    private TextView k;
    private ImageView l;
    private float n;
    private h o;

    public MapView(Context context)
    {
        super(context);
        a(context, ((BaiduMapOptions) (null)));
    }

    public MapView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context, ((BaiduMapOptions) (null)));
    }

    public MapView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        a(context, ((BaiduMapOptions) (null)));
    }

    public MapView(Context context, BaiduMapOptions baidumapoptions)
    {
        super(context);
        a(context, baidumapoptions);
    }

    static float a(MapView mapview, float f1)
    {
        mapview.n = f1;
        return f1;
    }

    static SparseArray a()
    {
        return m;
    }

    static f a(MapView mapview)
    {
        return mapview.b;
    }

    private void a(Context context)
    {
        Object obj;
        int i1;
        obj = context.getAssets();
        i1 = com.baidu.platform.comapi.c.c.n();
        if (i1 < 180) goto _L2; else goto _L1
_L1:
        obj = ((AssetManager) (obj)).open("logo_h.png");
          goto _L3
_L2:
        obj = ((AssetManager) (obj)).open("logo_l.png");
          goto _L3
_L8:
        obj = BitmapFactory.decodeStream(((java.io.InputStream) (obj)));
        if (i1 <= 480) goto _L5; else goto _L4
_L4:
        try
        {
            Matrix matrix = new Matrix();
            matrix.postScale(2.0F, 2.0F);
            e = Bitmap.createBitmap(((Bitmap) (obj)), 0, 0, ((Bitmap) (obj)).getWidth(), ((Bitmap) (obj)).getHeight(), matrix, true);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
        }
_L6:
        if (e != null)
        {
            d = new ImageView(context);
            d.setImageBitmap(e);
            addView(d);
            return;
        }
        break; /* Loop/switch isn't completed */
_L5:
        if (i1 <= 320 || i1 > 480)
        {
            break MISSING_BLOCK_LABEL_189;
        }
        Matrix matrix1 = new Matrix();
        matrix1.postScale(1.5F, 1.5F);
        e = Bitmap.createBitmap(((Bitmap) (obj)), 0, 0, ((Bitmap) (obj)).getWidth(), ((Bitmap) (obj)).getHeight(), matrix1, true);
        continue; /* Loop/switch isn't completed */
        e = ((Bitmap) (obj));
        if (true) goto _L6; else goto _L3
_L3:
        if (obj != null) goto _L8; else goto _L7
_L7:
    }

    private void a(Context context, BaiduMapOptions baidumapoptions)
    {
        com.baidu.mapapi.a.a().b();
        b(context, baidumapoptions);
        c = new BaiduMap(b);
        a(context);
        b(context);
        if (baidumapoptions != null && !baidumapoptions.h)
        {
            f.setVisibility(4);
        }
        c(context);
        if (baidumapoptions != null && !baidumapoptions.i)
        {
            i.setVisibility(4);
        }
    }

    private void a(View view)
    {
        android.view.ViewGroup.LayoutParams layoutparams1 = view.getLayoutParams();
        android.view.ViewGroup.LayoutParams layoutparams = layoutparams1;
        if (layoutparams1 == null)
        {
            layoutparams = new android.view.ViewGroup.LayoutParams(-2, -2);
        }
        int i1 = layoutparams.width;
        int j1;
        if (i1 > 0)
        {
            i1 = android.view.View.MeasureSpec.makeMeasureSpec(i1, 0x40000000);
        } else
        {
            i1 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        j1 = layoutparams.height;
        if (j1 > 0)
        {
            j1 = android.view.View.MeasureSpec.makeMeasureSpec(j1, 0x40000000);
        } else
        {
            j1 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(i1, j1);
    }

    static float b(MapView mapview)
    {
        return mapview.n;
    }

    private void b()
    {
        boolean flag1 = false;
        float f1 = b.o().a;
        ZoomControls zoomcontrols = f;
        boolean flag;
        if (f1 <= b.b)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        zoomcontrols.setIsZoomOutEnabled(flag);
        zoomcontrols = f;
        if (f1 >= b.a)
        {
            flag = flag1;
        } else
        {
            flag = true;
        }
        zoomcontrols.setIsZoomInEnabled(flag);
    }

    private void b(Context context)
    {
        f = new ZoomControls(context);
        f.setOnZoomOutClickListener(new g(this));
        f.setOnZoomInClickListener(new com.baidu.mapapi.map.h(this));
        addView(f);
    }

    private void b(Context context, BaiduMapOptions baidumapoptions)
    {
        if (baidumapoptions == null)
        {
            b = new f(context, null);
        } else
        {
            b = new f(context, baidumapoptions.a());
        }
        addView(b);
        o = new com.baidu.mapapi.map.f(this);
        b.a(o);
    }

    static ImageView c(MapView mapview)
    {
        return mapview.l;
    }

    private void c(Context context)
    {
        i = new RelativeLayout(context);
        Object obj = new android.view.ViewGroup.LayoutParams(-2, -2);
        i.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        j = new TextView(context);
        obj = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(14);
        j.setTextColor(Color.parseColor("#FFFFFF"));
        j.setTextSize(2, 11F);
        j.setTypeface(j.getTypeface(), 1);
        j.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        j.setId(0x7fffffff);
        i.addView(j);
        k = new TextView(context);
        obj = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        obj.width = -2;
        obj.height = -2;
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(14);
        k.setTextColor(Color.parseColor("#000000"));
        k.setTextSize(2, 11F);
        k.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        i.addView(k);
        l = new ImageView(context);
        obj = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        obj.width = -2;
        obj.height = -2;
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(14);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(3, j.getId());
        l.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        context = context.getAssets();
        try
        {
            context = BitmapFactory.decodeStream(context.open("icon_scale.9.png"));
            byte abyte0[] = context.getNinePatchChunk();
            NinePatch.isNinePatchChunk(abyte0);
            context = new NinePatchDrawable(context, abyte0, new Rect(), null);
            l.setBackgroundDrawable(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
        i.addView(l);
        addView(i);
    }

    static TextView d(MapView mapview)
    {
        return mapview.j;
    }

    static TextView e(MapView mapview)
    {
        return mapview.k;
    }

    static void f(MapView mapview)
    {
        mapview.b();
    }

    public void addView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (layoutparams instanceof MapViewLayoutParams)
        {
            super.addView(view, layoutparams);
        }
    }

    public final BaiduMap getMap()
    {
        c.a = this;
        return c;
    }

    public final void onDestroy()
    {
        b.n();
        e.recycle();
        com.baidu.mapapi.a.a().c();
    }

    protected final void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        k1 = getChildCount();
        i1 = 0;
        do
        {
            if (i1 < k1)
            {
                View view = getChildAt(i1);
                if (view == b)
                {
                    b.layout(0, 0, getWidth(), getHeight());
                } else
                if (view == d)
                {
                    a(d);
                    int i2 = getHeight() - 5;
                    int i3 = d.getMeasuredWidth();
                    int i4 = d.getMeasuredHeight();
                    d.layout(5, i2 - i4, i3 + 5, i2);
                } else
                if (view == f)
                {
                    a(f);
                    if (h == null)
                    {
                        int j2 = getHeight() - 5;
                        int j3 = getWidth() - 5;
                        int j4 = f.getMeasuredWidth();
                        int l4 = f.getMeasuredHeight();
                        f.layout(j3 - j4, j2 - l4, j3, j2);
                    } else
                    {
                        f.layout(h.x, h.y, h.x + f.getMeasuredWidth(), h.y + f.getMeasuredHeight());
                    }
                } else
                if (view == i)
                {
                    a(i);
                    if (g == null)
                    {
                        int k2 = i.getMeasuredWidth();
                        int k3 = i.getMeasuredHeight();
                        i.layout(5, l1 - j1 - k3 - 56, k2 + 5, l1 - j1 - 56);
                    } else
                    {
                        i.layout(g.x, g.y, g.x + i.getMeasuredWidth(), g.y + i.getMeasuredHeight());
                    }
                } else
                {
                    Object obj = view.getLayoutParams();
                    if (obj instanceof MapViewLayoutParams)
                    {
                        MapViewLayoutParams mapviewlayoutparams = (MapViewLayoutParams)obj;
                        float f1;
                        float f2;
                        int l2;
                        int l3;
                        int k4;
                        int i5;
                        if (mapviewlayoutparams.c == MapViewLayoutParams.ELayoutMode.absoluteMode)
                        {
                            obj = mapviewlayoutparams.b;
                        } else
                        {
                            obj = com.baidu.mapapi.model.a.a(mapviewlayoutparams.a);
                            obj = b.a(((com.baidu.platform.comapi.a.b) (obj)));
                        }
                        a(view);
                        l2 = view.getMeasuredWidth();
                        l3 = view.getMeasuredHeight();
                        f1 = mapviewlayoutparams.d;
                        f2 = mapviewlayoutparams.e;
                        k4 = (int)((float)((Point) (obj)).x - f1 * (float)l2);
                        i5 = (int)((float)((Point) (obj)).y - f2 * (float)l3);
                        i5 = mapviewlayoutparams.f + i5;
                        view.layout(k4, i5, k4 + l2, i5 + l3);
                    }
                }
            } else
            {
                return;
            }
            i1++;
        } while (true);
    }

    public final void onPause()
    {
        b.onPause();
    }

    public final void onResume()
    {
        b.onResume();
    }

    public void removeView(View view)
    {
        if (view == d)
        {
            return;
        } else
        {
            super.removeView(view);
            return;
        }
    }

    public void setScaleControlPosition(Point point)
    {
        while (point == null || point.x < 0 || point.y < 0 || point.x > getWidth() || point.y > getHeight()) 
        {
            return;
        }
        g = point;
        requestLayout();
    }

    public void setZoomControlsPosition(Point point)
    {
        while (point == null || point.x < 0 || point.y < 0 || point.x > getWidth() || point.y > getHeight()) 
        {
            return;
        }
        h = point;
        requestLayout();
    }

    public void showScaleControl(boolean flag)
    {
        RelativeLayout relativelayout = i;
        int i1;
        if (flag)
        {
            i1 = 0;
        } else
        {
            i1 = 8;
        }
        relativelayout.setVisibility(i1);
    }

    public void showZoomControls(boolean flag)
    {
        ZoomControls zoomcontrols = f;
        int i1;
        if (flag)
        {
            i1 = 0;
        } else
        {
            i1 = 8;
        }
        zoomcontrols.setVisibility(i1);
    }

    static 
    {
        m = new SparseArray();
        m.append(3, Integer.valueOf(0x1e8480));
        m.append(4, Integer.valueOf(0xf4240));
        m.append(5, Integer.valueOf(0x7a120));
        m.append(6, Integer.valueOf(0x30d40));
        m.append(7, Integer.valueOf(0x186a0));
        m.append(8, Integer.valueOf(50000));
        m.append(9, Integer.valueOf(25000));
        m.append(10, Integer.valueOf(20000));
        m.append(11, Integer.valueOf(10000));
        m.append(12, Integer.valueOf(5000));
        m.append(13, Integer.valueOf(2000));
        m.append(14, Integer.valueOf(1000));
        m.append(15, Integer.valueOf(500));
        m.append(16, Integer.valueOf(200));
        m.append(17, Integer.valueOf(100));
        m.append(18, Integer.valueOf(50));
        m.append(19, Integer.valueOf(20));
    }
}
