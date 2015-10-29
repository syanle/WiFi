// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.classic;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import cn.sharesdk.onekeyshare.PlatformListFakeActivity;
import com.mob.tools.utils.R;
import java.util.ArrayList;

// Referenced classes of package cn.sharesdk.onekeyshare.theme.classic:
//            PlatformGridView

public class PlatformListPage extends PlatformListFakeActivity
    implements android.view.View.OnClickListener
{

    private Animation animHide;
    private Animation animShow;
    private Button btnCancel;
    private boolean finishing;
    private FrameLayout flPage;
    private PlatformGridView grid;
    private LinearLayout llPage;

    public PlatformListPage()
    {
    }

    private void initAnim()
    {
        animShow = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
        animShow.setDuration(300L);
        animHide = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, 1.0F);
        animHide.setDuration(300L);
    }

    private void initPageView()
    {
        flPage = new FrameLayout(getContext());
        flPage.setOnClickListener(this);
        flPage.setBackgroundDrawable(new ColorDrawable(0x55000000));
        llPage = new LinearLayout(getContext()) {

            final PlatformListPage this$0;

            public boolean onTouchEvent(MotionEvent motionevent)
            {
                return true;
            }

            
            {
                this$0 = PlatformListPage.this;
                super(context);
            }
        };
        llPage.setOrientation(1);
        llPage.setBackgroundDrawable(new ColorDrawable(-1));
        Object obj = new android.widget.FrameLayout.LayoutParams(-1, -2);
        obj.gravity = 80;
        llPage.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        flPage.addView(llPage);
        grid = new PlatformGridView(getContext());
        grid.setEditPageBackground(getBackgroundView());
        obj = new android.widget.LinearLayout.LayoutParams(-1, -2);
        grid.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        llPage.addView(grid);
        btnCancel = new Button(getContext());
        btnCancel.setTextColor(0xff3a65ff);
        btnCancel.setTextSize(1, 20F);
        int i = R.getStringRes(getContext(), "cancel");
        if (i > 0)
        {
            btnCancel.setText(i);
        }
        btnCancel.setPadding(0, 0, 0, R.dipToPx(getContext(), 5));
        i = R.getBitmapRes(getContext(), "classic_platform_corners_bg");
        if (i > 0)
        {
            btnCancel.setBackgroundResource(i);
        } else
        {
            btnCancel.setBackgroundDrawable(new ColorDrawable(-1));
        }
        obj = new android.widget.LinearLayout.LayoutParams(-1, R.dipToPx(getContext(), 45));
        i = R.dipToPx(getContext(), 10);
        ((android.widget.LinearLayout.LayoutParams) (obj)).setMargins(i, i, i, i);
        btnCancel.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        llPage.addView(btnCancel);
    }

    public void onClick(View view)
    {
        if (view.equals(flPage) || view.equals(btnCancel))
        {
            setCanceled(true);
            finish();
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        if (grid != null)
        {
            grid.onConfigurationChanged();
        }
    }

    public void onCreate()
    {
        super.onCreate();
        finishing = false;
        initPageView();
        initAnim();
        activity.setContentView(flPage);
        grid.setData(shareParamsMap, silent);
        grid.setHiddenPlatforms(hiddenPlatforms);
        grid.setCustomerLogos(customerLogos);
        grid.setParent(this);
        btnCancel.setOnClickListener(this);
        llPage.clearAnimation();
        llPage.startAnimation(animShow);
    }

    public boolean onFinish()
    {
        if (finishing)
        {
            return super.onFinish();
        }
        if (animHide == null)
        {
            finishing = true;
            return false;
        } else
        {
            finishing = true;
            animHide.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final PlatformListPage this$0;

                public void onAnimationEnd(Animation animation)
                {
                    flPage.setVisibility(8);
                    finish();
                }

                public void onAnimationRepeat(Animation animation)
                {
                }

                public void onAnimationStart(Animation animation)
                {
                }

            
            {
                this$0 = PlatformListPage.this;
                super();
            }
            });
            llPage.clearAnimation();
            llPage.startAnimation(animHide);
            return true;
        }
    }

    public void onPlatformIconClick(View view, ArrayList arraylist)
    {
        onShareButtonClick(view, arraylist);
    }

}
