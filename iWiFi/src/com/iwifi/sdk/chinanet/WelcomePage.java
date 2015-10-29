// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.chinanet;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class WelcomePage extends Activity
    implements android.view.View.OnClickListener, DownloadListener
{
    class MyWebViewClient2 extends WebViewClient
    {

        final WelcomePage this$0;

        public void onLoadResource(WebView webview, String s)
        {
            super.onLoadResource(webview, s);
        }

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            super.onPageStarted(webview, s, bitmap);
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            if (webview == null || s == null || s.length() == 0)
            {
                return false;
            }
            if (s.startsWith("tel:"))
            {
                webview = new Intent("android.intent.action.DIAL", Uri.parse(s));
                startActivity(webview);
                return true;
            }
            if (s.startsWith("rtsp://"))
            {
                webview = new Intent("android.intent.action.VIEW", Uri.parse(s));
                startActivity(webview);
                return true;
            }
            if (s.endsWith(".apk"))
            {
                pack = s.substring(s.lastIndexOf("/") + 1, s.indexOf("_"));
                launchActivity = s.substring(s.indexOf("_") + 1, s.indexOf(".apk"));
                if (isPackageExist(pack, launchActivity))
                {
                    try
                    {
                        webview = new Intent("android.intent.action.MAIN");
                        webview.addCategory("android.intent.category.LAUNCHER");
                        webview.setComponent(new ComponentName(pack, launchActivity));
                        startActivity(webview);
                    }
                    // Misplaced declaration of an exception variable
                    catch (WebView webview)
                    {
                        return true;
                    }
                    return true;
                } else
                {
                    alertDialog = (new android.app.AlertDialog.Builder(WelcomePage.this)).setMessage("\u662F\u5426\u4E0B\u8F7D\u8BE5\u5E94\u7528\uFF1F").setPositiveButton("\u786E\u5B9A", s. new android.content.DialogInterface.OnClickListener() {

                        final MyWebViewClient2 this$1;
                        private final String val$url;

                        public void onClick(DialogInterface dialoginterface, int i)
                        {
                            Intent intent = new Intent();
                            intent.setAction("android.intent.action.VIEW");
                            intent.setData(Uri.parse(url));
                            startActivity(intent);
                            dialoginterface.cancel();
                        }

            
            {
                this$1 = final_mywebviewclient2;
                url = String.this;
                super();
            }
                    }).setNegativeButton("\u53D6\u6D88", new android.content.DialogInterface.OnClickListener() {

                        final MyWebViewClient2 this$1;

                        public void onClick(DialogInterface dialoginterface, int i)
                        {
                            dialoginterface.cancel();
                        }

            
            {
                this$1 = MyWebViewClient2.this;
                super();
            }
                    }).create();
                    alertDialog.show();
                    return true;
                }
            } else
            {
                webview.loadUrl(s);
                return true;
            }
        }


        MyWebViewClient2()
        {
            this$0 = WelcomePage.this;
            super();
        }
    }


    private static final int MENU_ID = 1000;
    public static final int NO_UPDATE = 0xabcd006;
    private static final String PIC_PATH = "resouces/pics/drawable/";
    public static final int UPDATE_START = 0xabcd00a;
    public static int loading_process;
    String WIFIHIT;
    private AlertDialog alertDialog;
    protected Button btnBack;
    String downloadurl;
    File file;
    String fileName;
    Handler handler;
    String launchActivity;
    private int mLocalVersionCode;
    private String mLocalVersionName;
    private PackageManager mPackMg;
    private Thread mThread;
    String pack;
    private WebView webView;
    protected Button web_back;
    protected Button web_refresh;
    protected Button web_stop;
    protected Button web_towards;
    WifiManager wifiManager;

    public WelcomePage()
    {
        mPackMg = null;
        mLocalVersionCode = 0;
        mLocalVersionName = "";
        mThread = null;
        WIFIHIT = "com.pubinfo.freewifialliance.service.WifiHitService";
    }

    private Bitmap getImageFromAssetsFile(String s)
    {
        Object obj = null;
        Object obj1 = getResources().getAssets();
        String s1 = obj;
        try
        {
            obj1 = ((AssetManager) (obj1)).open(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return s1;
        }
        s1 = obj;
        s = BitmapFactory.decodeStream(((InputStream) (obj1)));
        s1 = s;
        ((InputStream) (obj1)).close();
        return s;
    }

    private boolean isPackageExist(String s, String s1)
    {
        s1 = new Intent("android.intent.action.MAIN", null);
        s1.addCategory("android.intent.category.LAUNCHER");
        s1 = getPackageManager().queryIntentActivities(s1, 0);
        int i = 0;
        do
        {
            if (i >= s1.size())
            {
                return false;
            }
            if (((ResolveInfo)s1.get(i)).activityInfo.applicationInfo.packageName.equalsIgnoreCase(s))
            {
                return true;
            }
            i++;
        } while (true);
    }

    private StateListDrawable newSelector(Context context, Drawable drawable, Drawable drawable1, Drawable drawable2, Drawable drawable3)
    {
        context = new StateListDrawable();
        context.addState(new int[] {
            0x10100a7, 0x101009e
        }, drawable1);
        context.addState(new int[] {
            0x101009e, 0x101009c
        }, drawable2);
        context.addState(new int[] {
            0x101009e
        }, drawable);
        context.addState(new int[] {
            0x101009c
        }, drawable2);
        context.addState(new int[] {
            0x10100a1
        }, drawable3);
        context.addState(new int[0], drawable);
        return context;
    }

    public String getConnectedWifiSSId()
    {
        wifiManager = (WifiManager)getSystemService("wifi");
        WifiInfo wifiinfo = wifiManager.getConnectionInfo();
        if (wifiinfo != null)
        {
            return wifiinfo.getSSID().replace("\"", "");
        } else
        {
            return "";
        }
    }

    public void onClick(View view)
    {
        if (view.equals(web_back))
        {
            webView.goBack();
        } else
        {
            if (view.equals(web_towards))
            {
                webView.goForward();
                return;
            }
            if (view.equals(web_refresh))
            {
                webView.reload();
                return;
            }
            if (view.equals(web_stop))
            {
                webView.stopLoading();
                return;
            }
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Object obj = new BitmapDrawable(getImageFromAssetsFile("resouces/pics/drawable/tui.png"));
        BitmapDrawable bitmapdrawable1 = new BitmapDrawable(getImageFromAssetsFile("resouces/pics/drawable/tui_d.png"));
        Object obj1 = new BitmapDrawable(getImageFromAssetsFile("resouces/pics/drawable/jin.png"));
        BitmapDrawable bitmapdrawable = new BitmapDrawable(getImageFromAssetsFile("resouces/pics/drawable/jin_d.png"));
        Object obj2 = new BitmapDrawable(getImageFromAssetsFile("resouces/pics/drawable/shuaxin.png"));
        Object obj5 = new BitmapDrawable(getImageFromAssetsFile("resouces/pics/drawable/shuaxin_d.png"));
        Object obj3 = new BitmapDrawable(getImageFromAssetsFile("resouces/pics/drawable/close.png"));
        Object obj4 = new BitmapDrawable(getImageFromAssetsFile("resouces/pics/drawable/close_d.png"));
        bundle = new BitmapDrawable(getImageFromAssetsFile("resouces/pics/drawable/liu_bei.png"));
        obj = newSelector(this, ((Drawable) (obj)), bitmapdrawable1, bitmapdrawable1, bitmapdrawable1);
        obj1 = newSelector(this, ((Drawable) (obj1)), bitmapdrawable, bitmapdrawable, bitmapdrawable);
        obj2 = newSelector(this, ((Drawable) (obj2)), ((Drawable) (obj5)), ((Drawable) (obj5)), ((Drawable) (obj5)));
        obj5 = newSelector(this, ((Drawable) (obj3)), ((Drawable) (obj4)), ((Drawable) (obj4)), ((Drawable) (obj4)));
        obj3 = new RelativeLayout(this);
        setContentView(((View) (obj3)), new android.widget.RelativeLayout.LayoutParams(-1, -1));
        webView = new WebView(this);
        obj4 = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        ((android.widget.RelativeLayout.LayoutParams) (obj4)).addRule(9);
        ((android.widget.RelativeLayout.LayoutParams) (obj4)).addRule(2, 1000);
        ((RelativeLayout) (obj3)).addView(webView, ((android.view.ViewGroup.LayoutParams) (obj4)));
        obj4 = new LinearLayout(this);
        ((LinearLayout) (obj4)).setOrientation(0);
        ((LinearLayout) (obj4)).setId(1000);
        ((LinearLayout) (obj4)).setBackgroundDrawable(bundle);
        bundle = new android.widget.LinearLayout.LayoutParams(-2, -2, 1.0F);
        bundle.gravity = 16;
        web_back = new Button(this);
        web_back.setBackgroundDrawable(((Drawable) (obj)));
        web_back.setLayoutParams(bundle);
        bundle = new android.widget.LinearLayout.LayoutParams(-2, -2, 1.0F);
        bundle.gravity = 16;
        web_stop = new Button(this);
        web_stop.setBackgroundDrawable(((Drawable) (obj5)));
        web_stop.setLayoutParams(bundle);
        bundle = new android.widget.LinearLayout.LayoutParams(-2, -2, 1.0F);
        bundle.gravity = 16;
        web_towards = new Button(this);
        web_towards.setBackgroundDrawable(((Drawable) (obj1)));
        web_towards.setLayoutParams(bundle);
        bundle = new android.widget.LinearLayout.LayoutParams(-2, -2, 1.0F);
        bundle.gravity = 16;
        web_refresh = new Button(this);
        web_refresh.setBackgroundDrawable(((Drawable) (obj2)));
        web_refresh.setLayoutParams(bundle);
        ((LinearLayout) (obj4)).addView(web_back);
        ((LinearLayout) (obj4)).addView(web_towards);
        ((LinearLayout) (obj4)).addView(web_refresh);
        ((LinearLayout) (obj4)).addView(web_stop);
        bundle = new android.widget.RelativeLayout.LayoutParams(-1, 50);
        bundle.addRule(12);
        ((RelativeLayout) (obj3)).addView(((View) (obj4)), bundle);
        web_back.setOnClickListener(this);
        web_towards.setOnClickListener(this);
        web_refresh.setOnClickListener(this);
        web_stop.setOnClickListener(this);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebChromeClient(new WebChromeClient());
        webView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        webView.requestFocus();
        webView.setWebViewClient(new MyWebViewClient2());
        webView.setDownloadListener(this);
        webView.getSettings().setCacheMode(2);
        webView.loadUrl("http://www.baidu.com");
    }

    public void onDownloadStart(String s, String s1, String s2, String s3, long l)
    {
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (webView.canGoBack() && i == 4)
        {
            webView.goBack();
            return true;
        }
        if (!webView.canGoBack())
        {
            finish();
        }
        return super.onKeyDown(i, keyevent);
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
    }

    public void openBrowser(String s)
    {
        webView.loadUrl(s);
    }



}
