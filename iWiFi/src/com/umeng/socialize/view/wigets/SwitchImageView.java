// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import com.umeng.socialize.common.ResContainer;

// Referenced classes of package com.umeng.socialize.view.wigets:
//            f, g

public class SwitchImageView extends ImageView
{
    public static interface OnCheckedChangeListener
    {

        public abstract void a(boolean flag);
    }


    public boolean a;
    public boolean b;
    private boolean c;
    private OnCheckedChangeListener d;
    private OnCheckedChangeListener e;
    private int f;
    private int g;
    private Animation h;
    private android.view.animation.Animation.AnimationListener i;

    public SwitchImageView(Context context)
    {
        super(context);
        a = false;
        b = false;
        h = new AlphaAnimation(1.0F, 0.5F);
        i = new f(this);
        a(context);
    }

    public SwitchImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = false;
        b = false;
        h = new AlphaAnimation(1.0F, 0.5F);
        i = new f(this);
        a(context);
    }

    public SwitchImageView(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
        a = false;
        b = false;
        h = new AlphaAnimation(1.0F, 0.5F);
        i = new f(this);
        a(context);
    }

    static Animation a(SwitchImageView switchimageview)
    {
        return switchimageview.h;
    }

    private void a(Context context)
    {
        f = ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_switchimage_choose");
        g = ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_switchimage_unchoose");
        setImageResource(g);
        h.setDuration(300L);
        h.setAnimationListener(i);
    }

    public OnCheckedChangeListener a()
    {
        return d;
    }

    public void a(OnCheckedChangeListener oncheckedchangelistener)
    {
        d = oncheckedchangelistener;
    }

    public void a(boolean flag)
    {
label0:
        {
            if (b != flag)
            {
                b = flag;
                if (b)
                {
                    setImageResource(f);
                } else
                {
                    setImageResource(g);
                }
                invalidate();
                if (!c)
                {
                    break label0;
                }
            }
            return;
        }
        c = true;
        if (d != null)
        {
            d.a(b);
        }
        if (e != null)
        {
            e.a(b);
        }
        c = false;
    }

    public void b()
    {
        setOnClickListener(new g(this));
    }
}
