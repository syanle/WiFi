// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socom.Log;
import java.lang.reflect.Array;

// Referenced classes of package com.umeng.socialize.view.wigets:
//            a

public class h extends ViewGroup
{

    private static final int a = 3;
    private static final int b = 1;
    private static final int c = 2;
    private int d;
    private int e;
    private int f[][];
    private a g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private Context m;

    public h(Context context)
    {
        super(context);
        d = 4;
        e = 0;
        f = null;
        j = 0;
        k = -1;
        l = 2;
        m = null;
        j = context.getResources().getColor(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.COLOR, "umeng_socialize_grid_divider_line"));
        m = context;
    }

    public h(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = 4;
        e = 0;
        f = null;
        j = 0;
        k = -1;
        l = 2;
        m = null;
        j = context.getResources().getColor(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.COLOR, "umeng_socialize_grid_divider_line"));
        m = context;
    }

    public h(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        d = 4;
        e = 0;
        f = null;
        j = 0;
        k = -1;
        l = 2;
        m = null;
        j = context.getResources().getColor(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.COLOR, "umeng_socialize_grid_divider_line"));
        m = context;
    }

    private void b()
    {
        if (m == null || g == null)
        {
            f = (int[][])Array.newInstance(Integer.TYPE, new int[] {
                4, 2
            });
            return;
        }
        if (m.getResources().getConfiguration().orientation == 2)
        {
            d = 6;
        }
        int i1 = g.a();
        e = g.a() / d;
        if (i1 % d > 0)
        {
            e = e + 1;
        }
        Log.c("", (new StringBuilder("###### row = ")).append(e).append(", column = ").append(d).toString());
        i1 = d;
        int j1 = e;
        f = (int[][])Array.newInstance(Integer.TYPE, new int[] {
            i1, j1
        });
    }

    public a a()
    {
        return g;
    }

    public void a(int i1)
    {
        int j1;
        int i2;
        int k2;
        int l2;
        i2 = f.length;
        int j2 = f[0].length;
        int k1 = i2 * j2;
        j1 = i1;
        if (i1 > k1)
        {
            j1 = k1;
        }
        i1 = j1 % i2;
        if (i1 > 0)
        {
            i1 = i2 - i1;
        } else
        {
            i1 = 0;
        }
        k2 = k1 - j1 - i1;
        l2 = k2 + j1;
        j1 = 0;
        i1 = 0;
_L2:
        if (j1 >= j2)
        {
            return;
        }
        int l1 = 0;
        do
        {
label0:
            {
                if (l1 < i2)
                {
                    break label0;
                }
                j1++;
            }
            if (true)
            {
                continue;
            }
            if (i1 >= k2 && i1 < l2)
            {
                f[l1][j1] = 1;
            } else
            if (i1 >= l2)
            {
                f[l1][j1] = 2;
            } else
            {
                f[l1][j1] = 3;
            }
            i1++;
            l1++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void a(a a1)
    {
        g = a1;
        b();
        requestLayout();
    }

    public void b(int i1)
    {
        j = i1;
    }

    public void c(int i1)
    {
        k = i1;
    }

    public void d(int i1)
    {
        l = i1;
    }

    public int e(int i1)
    {
        return ((i1 - (d - 1) * l) / d) * e + (e - 1) * l;
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        if (g != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Context context;
        int i2;
        int j2;
        int j3;
        int k3;
        int l3;
        int i4;
        context = getContext();
        a(g.a());
        removeAllViews();
        j3 = f.length;
        k3 = f[0].length;
        l3 = (i - (j3 - 1) * l) / j3;
        i4 = (h - (k3 - 1) * l) / k3;
        j1 = 0;
        j2 = 0;
        i2 = 0;
_L4:
        l1 = 0;
        if (j2 >= k3) goto _L1; else goto _L3
_L3:
        int k2 = 0;
_L5:
label0:
        {
            if (k2 < j3)
            {
                break label0;
            }
            View view1;
            android.view.ViewGroup.LayoutParams layoutparams;
            int l2;
            int j4;
            int k4;
            int l4;
            int i5;
            if (j2 > 0)
            {
                if (f[0][j2 - 1] == 1)
                {
                    l1 = 1;
                } else
                {
                    l1 = 0;
                }
            } else
            {
                l1 = 0;
            }
            if (l1 != 0)
            {
                View view = new View(context);
                view.setBackgroundColor(j);
                addView(view);
                l1 = j2 * i4 + i2;
                view.layout(i1, l1 - l, k1, l1);
            }
            l1 = l;
            j2++;
            i2 += l1;
        }
          goto _L4
        if (f[k2][j2] == 1)
        {
            view1 = g.a(j1, this);
            layoutparams = view1.getLayoutParams();
            if (layoutparams == null)
            {
                view1.setLayoutParams(new android.view.ViewGroup.LayoutParams(l3, i4));
            } else
            {
                layoutparams.height = i4;
                layoutparams.width = l3;
            }
            if (k2 == j3 - 1)
            {
                l2 = 1;
            } else
            {
                l2 = 0;
            }
            j4 = k2 * l3 + l1;
            k4 = j4 + l3;
            l4 = j2 * i4 + i2;
            i5 = l4 + i4;
            addView(view1);
            measureChild(view1, l3, i4);
            view1.layout(j4, l4, k4, i5);
            if (l2 == 0 && f[k2 + 1][j2] == 2)
            {
                view1 = new View(context);
                view1.setBackgroundColor(k);
                addView(view1);
                view1.layout(j4 + l3, l4, k1, i5);
            }
            view1 = new View(context);
            if (l2 == 0)
            {
                view1.setBackgroundColor(j);
                l1 = l + l1;
            } else
            {
                view1.setBackgroundColor(k);
                l1 = 0;
            }
            addView(view1);
            view1.layout(j4 + l3, l4, l + k4, i5);
            l2 = j1 + 1;
            j1 = l1;
            l1 = l2;
        } else
        {
            int i3 = l1;
            l1 = j1;
            j1 = i3;
        }
        l2 = k2 + 1;
        k2 = j1;
        j1 = l1;
        l1 = k2;
        k2 = l2;
          goto _L5
    }

    protected void onMeasure(int i1, int j1)
    {
        super.onMeasure(i1, j1);
        h = android.view.View.MeasureSpec.getSize(j1);
        i = android.view.View.MeasureSpec.getSize(i1);
        setMeasuredDimension(i, h);
    }
}
