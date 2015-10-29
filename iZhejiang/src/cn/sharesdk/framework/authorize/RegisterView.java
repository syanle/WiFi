// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.sharesdk.framework.TitleLayout;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;

// Referenced classes of package cn.sharesdk.framework.authorize:
//            ResizeLayout, c, d

public class RegisterView extends ResizeLayout
{

    private TitleLayout a;
    private RelativeLayout b;
    private WebView c;
    private TextView d;

    public RegisterView(Context context)
    {
        super(context);
        a(context);
    }

    public RegisterView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context);
    }

    static TextView a(RegisterView registerview)
    {
        return registerview.d;
    }

    private void a(Context context)
    {
        int i;
        setBackgroundColor(-1);
        setOrientation(1);
        i = b(context);
        a = new TitleLayout(context);
        int j = R.getBitmapRes(context, "ssdk_auth_title_back");
        Object obj;
        if (j > 0)
        {
            try
            {
                a.setBackgroundResource(j);
            }
            catch (Throwable throwable)
            {
                Ln.e(throwable);
            }
        }
        a.getBtnRight().setVisibility(8);
        j = R.getStringRes(getContext(), "weibo_oauth_regiseter");
        a.getTvTitle().setText(j);
        addView(a);
        obj = new ImageView(context);
        ((ImageView) (obj)).setImageResource(R.getBitmapRes(context, "ssdk_logo"));
        ((ImageView) (obj)).setScaleType(android.widget.ImageView.ScaleType.CENTER_INSIDE);
        ((ImageView) (obj)).setPadding(0, 0, R.dipToPx(context, 10), 0);
        ((ImageView) (obj)).setLayoutParams(new android.widget.LinearLayout.LayoutParams(-2, -1));
        ((ImageView) (obj)).setOnClickListener(new c(this));
        a.addView(((View) (obj)));
        b = new RelativeLayout(context);
        obj = new android.widget.LinearLayout.LayoutParams(-1, 0);
        obj.weight = 1.0F;
        b.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        addView(b);
        obj = new LinearLayout(context);
        ((LinearLayout) (obj)).setOrientation(1);
        ((LinearLayout) (obj)).setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
        b.addView(((View) (obj)));
        d = new TextView(context);
        d.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, 5));
        d.setBackgroundColor(0xff3ab6ea);
        ((LinearLayout) (obj)).addView(d);
        d.setVisibility(8);
        c = new WebView(context);
        context = new android.widget.LinearLayout.LayoutParams(-1, -1);
        context.weight = 1.0F;
        c.setLayoutParams(context);
        context = new d(this, i);
        c.setWebChromeClient(context);
        ((LinearLayout) (obj)).addView(c);
        c.requestFocus();
        return;
    }

    private int b(Context context)
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        if (context instanceof Activity)
        {
            if ((context = ((Activity)context).getWindowManager()) != null)
            {
                context.getDefaultDisplay().getMetrics(displaymetrics);
                return displaymetrics.widthPixels;
            }
        }
        return 0;
    }

    public View a()
    {
        return a.getBtnBack();
    }

    public void a(boolean flag)
    {
        TitleLayout titlelayout = a;
        byte byte0;
        if (flag)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        titlelayout.setVisibility(byte0);
    }

    public WebView b()
    {
        return c;
    }

    public TitleLayout c()
    {
        return a;
    }

    public RelativeLayout d()
    {
        return b;
    }
}
