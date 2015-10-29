// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import android.app.Activity;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import cn.sharesdk.framework.TitleLayout;

public class AuthorizeAdapter
{

    private Activity activity;
    private boolean noTitle;
    private String platform;
    private boolean popUpAnimationDisable;
    private RelativeLayout rlBody;
    private TitleLayout title;
    private WebView webview;

    public AuthorizeAdapter()
    {
    }

    protected void disablePopUpAnimation()
    {
        popUpAnimationDisable = true;
    }

    public Activity getActivity()
    {
        return activity;
    }

    public RelativeLayout getBodyView()
    {
        return rlBody;
    }

    public String getPlatformName()
    {
        return platform;
    }

    public TitleLayout getTitleLayout()
    {
        return title;
    }

    public WebView getWebBody()
    {
        return webview;
    }

    public void hideShareSDKLogo()
    {
        int i = getTitleLayout().getChildCount();
        getTitleLayout().getChildAt(i - 1).setVisibility(8);
    }

    boolean isNotitle()
    {
        return noTitle;
    }

    boolean isPopUpAnimationDisable()
    {
        return popUpAnimationDisable;
    }

    public void onCreate()
    {
    }

    public void onDestroy()
    {
    }

    public boolean onFinish()
    {
        return false;
    }

    public boolean onKeyEvent(int i, KeyEvent keyevent)
    {
        return false;
    }

    public void onPause()
    {
    }

    public void onResize(int i, int j, int k, int l)
    {
    }

    public void onRestart()
    {
    }

    public void onResume()
    {
    }

    public void onStart()
    {
    }

    public void onStop()
    {
    }

    void setActivity(Activity activity1)
    {
        activity = activity1;
    }

    void setBodyView(RelativeLayout relativelayout)
    {
        rlBody = relativelayout;
    }

    void setNotitle(boolean flag)
    {
        noTitle = flag;
    }

    void setPlatformName(String s)
    {
        platform = s;
    }

    void setTitleView(TitleLayout titlelayout)
    {
        title = titlelayout;
    }

    void setWebView(WebView webview1)
    {
        webview = webview1;
    }
}
