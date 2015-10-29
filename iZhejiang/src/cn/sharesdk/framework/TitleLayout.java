// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.mob.tools.utils.R;

// Referenced classes of package cn.sharesdk.framework:
//            n

public class TitleLayout extends LinearLayout
{

    private ImageView btnBack;
    private TextView btnRight;
    private TextView tvTitle;

    public TitleLayout(Context context)
    {
        super(context);
        init(context);
    }

    public TitleLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init(context);
    }

    private void init(Context context)
    {
        btnBack = new ImageView(context);
        btnBack.setBackgroundDrawable(null);
        int i = R.getBitmapRes(context, "ssdk_back_arr");
        if (i > 0)
        {
            btnBack.setImageResource(i);
        }
        btnBack.setScaleType(android.widget.ImageView.ScaleType.CENTER_INSIDE);
        i = R.dipToPx(context, 48);
        btnBack.setLayoutParams(new android.widget.LinearLayout.LayoutParams(i, -1));
        addView(btnBack);
        Object obj = new ImageView(context);
        i = R.dipToPx(context, 2);
        int j = R.getBitmapRes(context, "ssdk_title_div");
        if (j > 0)
        {
            ((ImageView) (obj)).setImageResource(j);
        }
        ((ImageView) (obj)).setLayoutParams(new android.widget.LinearLayout.LayoutParams(i, -1));
        addView(((android.view.View) (obj)));
        tvTitle = new TextView(context);
        j = R.dipToPx(context, 23);
        tvTitle.setPadding(j, 0, j, 0);
        tvTitle.setSingleLine();
        tvTitle.setTextColor(-1);
        tvTitle.setTextSize(1, 18F);
        tvTitle.setTypeface(Typeface.DEFAULT_BOLD);
        tvTitle.setGravity(16);
        obj = new android.widget.LinearLayout.LayoutParams(-2, -1);
        obj.weight = 1.0F;
        tvTitle.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        addView(tvTitle);
        obj = new ImageView(context);
        j = R.getBitmapRes(context, "ssdk_title_div");
        if (j > 0)
        {
            ((ImageView) (obj)).setImageResource(j);
        }
        ((ImageView) (obj)).setLayoutParams(new android.widget.LinearLayout.LayoutParams(i, -1));
        addView(((android.view.View) (obj)));
        btnRight = new n(this, context, ((ImageView) (obj)));
        btnRight.setVisibility(4);
        btnRight.setBackgroundDrawable(null);
        i = R.dipToPx(context, 50);
        btnRight.setMinWidth(i);
        btnRight.setTextColor(-1);
        btnRight.setTextSize(1, 12F);
        btnRight.setGravity(17);
        btnRight.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-2, -1));
        addView(btnRight);
    }

    public ImageView getBtnBack()
    {
        return btnBack;
    }

    public TextView getBtnRight()
    {
        return btnRight;
    }

    public TextView getTvTitle()
    {
        return tvTitle;
    }
}
