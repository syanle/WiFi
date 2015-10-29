// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.slidingmenu;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import java.lang.reflect.Method;
import java.util.HashMap;

// Referenced classes of package m.framework.ui.widget.slidingmenu:
//            MenuConfig, BodyContainer, MenuAdapter, SlidingMenuGroup, 
//            SlidingMenuItem

public class SlidingMenu extends RelativeLayout
{

    private MenuAdapter adapter;
    private MenuConfig config;
    private View curBody;
    private FrameLayout flMenu;
    private HashMap itemToView;
    private LinearLayout llBody;
    private LinearLayout llMenu;
    private boolean menuShown;
    private int menuWidth;
    private android.view.View.OnClickListener ocListener;
    private android.view.View.OnTouchListener otListener;
    private int screenWidth;
    private int showMenuWidth;
    private BodyContainer svBody;
    private View vCover;

    public SlidingMenu(Context context)
    {
        super(context);
        init(context);
    }

    public SlidingMenu(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init(context);
    }

    public SlidingMenu(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init(context);
    }

    private void disableOverScrollMode(View view)
    {
        if (android.os.Build.VERSION.SDK_INT < 9)
        {
            return;
        }
        try
        {
            Method method = android/view/View.getMethod("setOverScrollMode", new Class[] {
                Integer.TYPE
            });
            method.setAccessible(true);
            method.invoke(view, new Object[] {
                Integer.valueOf(2)
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (View view)
        {
            view.printStackTrace();
        }
    }

    private View getSepView(Context context)
    {
        context = new View(context);
        context.setBackgroundResource(config.menuSep);
        context.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, 2));
        return context;
    }

    private void init(Context context)
    {
        config = new MenuConfig();
        itemToView = new HashMap();
        ocListener = new android.view.View.OnClickListener() {

            final SlidingMenu this$0;

            public void onClick(View view)
            {
                for (view = (SlidingMenuItem)view.getTag(); view == null || adapter == null || adapter.onItemTrigger(view);)
                {
                    return;
                }

                postDelayed(new Runnable() {

                    final _cls1 this$1;

                    public void run()
                    {
                        hideMenu();
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                }, 500L);
            }


            
            {
                this$0 = SlidingMenu.this;
                super();
            }
        };
        otListener = new android.view.View.OnTouchListener() {

            final SlidingMenu this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                motionevent.getAction();
                JVM INSTR tableswitch 0 3: default 36
            //                           0 38
            //                           1 55
            //                           2 36
            //                           3 55;
                   goto _L1 _L2 _L3 _L1 _L3
_L1:
                return false;
_L2:
                view.setBackgroundResource(config.itemDownBack);
                continue; /* Loop/switch isn't completed */
_L3:
                view.setBackgroundResource(config.itemDownRelease);
                if (true) goto _L1; else goto _L4
_L4:
            }

            
            {
                this$0 = SlidingMenu.this;
                super();
            }
        };
        screenWidth = context.getResources().getDisplayMetrics().widthPixels;
        menuWidth = (int)((float)screenWidth * config.menuWeight);
        showMenuWidth = (screenWidth - menuWidth) / 2;
        setBackgroundResource(config.menuBackground);
        initMenu(context);
        initBody(context);
        getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final SlidingMenu this$0;

            public void onGlobalLayout()
            {
                getViewTreeObserver().removeGlobalOnLayoutListener(this);
                post(new Runnable() {

                    final _cls3 this$1;

                    public void run()
                    {
                        hideMenu();
                    }

            
            {
                this$1 = _cls3.this;
                super();
            }
                });
            }


            
            {
                this$0 = SlidingMenu.this;
                super();
            }
        });
    }

    private void initBody(Context context)
    {
        svBody = new BodyContainer(this);
        svBody.setHorizontalScrollBarEnabled(false);
        svBody.setHorizontalFadingEdgeEnabled(false);
        disableOverScrollMode(svBody);
        svBody.setLayoutParams(new android.widget.FrameLayout.LayoutParams(screenWidth, -1));
        addView(svBody);
        LinearLayout linearlayout = new LinearLayout(context);
        linearlayout.setLayoutParams(new android.widget.FrameLayout.LayoutParams(screenWidth + menuWidth, -1));
        svBody.addView(linearlayout);
        FrameLayout framelayout = new FrameLayout(getContext());
        framelayout.setLayoutParams(new android.widget.LinearLayout.LayoutParams(menuWidth, -1));
        linearlayout.addView(framelayout);
        ImageView imageview = new ImageView(context);
        imageview.setImageResource(config.rightShadow);
        imageview.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -1);
        layoutparams.gravity = 5;
        imageview.setLayoutParams(layoutparams);
        framelayout.addView(imageview);
        llBody = new LinearLayout(context) {

            final SlidingMenu this$0;

            public boolean onTouchEvent(MotionEvent motionevent)
            {
                return true;
            }

            
            {
                this$0 = SlidingMenu.this;
                super(context);
            }
        };
        llBody.setBackgroundResource(config.bodyBackground);
        context = new android.widget.LinearLayout.LayoutParams(screenWidth, -1);
        llBody.setLayoutParams(context);
        linearlayout.addView(llBody);
    }

    private void initMenu(Context context)
    {
        flMenu = new FrameLayout(context) {

            final SlidingMenu this$0;

            public boolean onInterceptTouchEvent(MotionEvent motionevent)
            {
                if (!menuShown)
                {
                    return true;
                } else
                {
                    return super.onInterceptTouchEvent(motionevent);
                }
            }

            
            {
                this$0 = SlidingMenu.this;
                super(context);
            }
        };
        flMenu.setLayoutParams(new android.widget.FrameLayout.LayoutParams(menuWidth, -1));
        addView(flMenu);
        LinearLayout linearlayout = new LinearLayout(context);
        linearlayout.setOrientation(1);
        linearlayout.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
        flMenu.addView(linearlayout);
        ScrollView scrollview = new ScrollView(context);
        scrollview.setVerticalScrollBarEnabled(false);
        scrollview.setVerticalFadingEdgeEnabled(false);
        disableOverScrollMode(scrollview);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -1);
        layoutparams.weight = 1.0F;
        scrollview.setLayoutParams(layoutparams);
        linearlayout.addView(scrollview);
        llMenu = new LinearLayout(context);
        llMenu.setOrientation(1);
        llMenu.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
        scrollview.addView(llMenu);
        vCover = new View(context);
        vCover.setBackgroundColor(0);
        vCover.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
        flMenu.addView(vCover);
    }

    private void invalidateMenu()
    {
        Context context;
        int i;
        int k;
        context = getContext();
        llMenu.removeAllViews();
        k = adapter.getGroupCount();
        i = 0;
_L2:
        if (i >= k)
        {
            return;
        }
        View view = adapter.getGroupView(i, llMenu);
        llMenu.addView(view);
        int l = adapter.getGroup(i).getCount();
        int j = 0;
        do
        {
label0:
            {
                if (j < l)
                {
                    break label0;
                }
                j = llMenu.getChildCount();
                if (j > 0)
                {
                    llMenu.removeViewAt(j - 1);
                }
                i++;
            }
            if (true)
            {
                continue;
            }
            SlidingMenuItem slidingmenuitem = adapter.getItem(i, j);
            View view1 = adapter.getItemView(slidingmenuitem, llMenu);
            llMenu.addView(view1);
            llMenu.addView(getSepView(context));
            itemToView.put(slidingmenuitem, view1);
            view1.setTag(slidingmenuitem);
            view1.setOnClickListener(ocListener);
            view1.setOnTouchListener(otListener);
            j++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void reInit(Context context)
    {
        screenWidth = context.getResources().getDisplayMetrics().widthPixels;
        menuWidth = (int)((float)screenWidth * config.menuWeight);
        showMenuWidth = (screenWidth - menuWidth) / 2;
        setBackgroundResource(config.menuBackground);
        reInitMenu(context);
        reInitBody(context);
    }

    private void reInitBody(Context context)
    {
        context = svBody.getLayoutParams();
        context.width = screenWidth;
        svBody.setLayoutParams(context);
        context = (LinearLayout)svBody.getChildAt(0);
        android.view.ViewGroup.LayoutParams layoutparams = context.getLayoutParams();
        layoutparams.width = screenWidth + menuWidth;
        context.setLayoutParams(layoutparams);
        context = (FrameLayout)context.getChildAt(0);
        layoutparams = context.getLayoutParams();
        layoutparams.width = menuWidth;
        context.setLayoutParams(layoutparams);
        layoutparams = llBody.getLayoutParams();
        layoutparams.width = screenWidth;
        llBody.setLayoutParams(layoutparams);
        llBody.setBackgroundResource(config.bodyBackground);
        ((ImageView)context.getChildAt(0)).setImageResource(config.rightShadow);
        if (!menuShown)
        {
            getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                final SlidingMenu this$0;

                public void onGlobalLayout()
                {
                    getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    post(new Runnable() {

                        final _cls6 this$1;

                        public void run()
                        {
                            svBody.scrollTo(menuWidth, 0);
                        }

            
            {
                this$1 = _cls6.this;
                super();
            }
                    });
                }


            
            {
                this$0 = SlidingMenu.this;
                super();
            }
            });
        }
    }

    private void reInitMenu(Context context)
    {
        context = flMenu.getLayoutParams();
        context.width = menuWidth;
        flMenu.setLayoutParams(context);
        llMenu.setPadding(config.paddingLeft, config.paddingTop, config.paddingRight, config.paddingBottom);
        if (adapter != null)
        {
            context = adapter.getMenuTitle();
            if (context != null)
            {
                android.view.ViewGroup.LayoutParams layoutparams = context.getLayoutParams();
                int i = -2;
                if (layoutparams != null)
                {
                    i = layoutparams.height;
                }
                context.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, i));
                ((LinearLayout)flMenu.getChildAt(0)).addView(context);
            }
        }
    }

    public View getBodyView()
    {
        return curBody;
    }

    MenuConfig getMenuConfig()
    {
        return config;
    }

    View getMenuCover()
    {
        return vCover;
    }

    int getMenuWidth()
    {
        return menuWidth;
    }

    int getShowMenuWidth()
    {
        return showMenuWidth;
    }

    public void hideMenu()
    {
        menuShown = false;
        svBody.smoothScrollTo(menuWidth, 0);
        if (adapter != null)
        {
            adapter.onMenuSwitch(menuShown);
        }
    }

    public boolean isMenuShown()
    {
        return menuShown;
    }

    View itemToView(SlidingMenuItem slidingmenuitem)
    {
        return (View)itemToView.get(slidingmenuitem);
    }

    public void refresh()
    {
        if (adapter != null)
        {
            reInit(getContext());
            invalidateMenu();
        }
    }

    public void setAdapter(MenuAdapter menuadapter)
    {
        adapter = menuadapter;
        refresh();
    }

    public void setBodyBackground(int i)
    {
        config.bodyBackground = i;
    }

    public void setBodyView(View view)
    {
        curBody = view;
        llBody.removeAllViews();
        if (curBody != null)
        {
            curBody.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -1));
            llBody.addView(curBody);
        }
    }

    public void setMenuBackground(int i)
    {
        config.menuBackground = i;
    }

    public void setMenuDivider(int i)
    {
        config.menuSep = i;
    }

    public void setMenuItemBackground(int i, int j)
    {
        config.itemDownBack = i;
        config.itemDownRelease = j;
    }

    public void setMenuPadding(int i, int j, int k, int l)
    {
        config.paddingLeft = i;
        config.paddingTop = j;
        config.paddingRight = k;
        config.paddingBottom = l;
    }

    public void setMenuWeight(float f)
    {
        config.menuWeight = f;
    }

    public void setShadowRes(int i)
    {
        config.rightShadow = i;
    }

    public void setTtleHeight(int i)
    {
        config.titleHeight = i;
    }

    public void showMenu()
    {
        menuShown = true;
        svBody.smoothScrollTo(0, 0);
        if (adapter != null)
        {
            adapter.onMenuSwitch(menuShown);
        }
    }

    public void switchMenu()
    {
        if (menuShown)
        {
            hideMenu();
            return;
        } else
        {
            showMenu();
            return;
        }
    }

    public void triggerItem(int i, int j)
    {
        SlidingMenuItem slidingmenuitem;
        if (adapter != null)
        {
            if ((slidingmenuitem = adapter.getMenuItem(i, j)) != null)
            {
                adapter.onItemTrigger(slidingmenuitem);
                return;
            }
        }
    }

    public void triggerItem(SlidingMenuItem slidingmenuitem)
    {
        while (adapter == null || slidingmenuitem == null) 
        {
            return;
        }
        adapter.onItemTrigger(slidingmenuitem);
    }





}
