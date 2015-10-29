// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bread.breadservice;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.io.File;

// Referenced classes of package com.bread.breadservice:
//            BRDUtils

public class BRDDesktopActivity extends Activity
{

    public static final String ACTION = "com.bread.breadservice.BRDDesktop";
    public static final String APKPATH = "APKPATH";
    public static final String PICPATH = "PICPATH";
    public static final String URL = "URL";
    private String apkpath;
    private String picpath;
    private RelativeLayout rl_main;
    private RelativeLayout rt_main;
    private String url;

    public BRDDesktopActivity()
    {
    }

    private void showImageviewAds(Bitmap bitmap)
    {
        rt_main = new RelativeLayout(this);
        rt_main.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
        rt_main.setBackgroundResource(0x106000d);
        rl_main = new RelativeLayout(this);
        rl_main.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-2, -2));
        rl_main.setBackgroundResource(0x106000d);
        Object obj = new ImageView(this);
        ((ImageView) (obj)).setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
        ((ImageView) (obj)).setImageBitmap(bitmap);
        bitmap = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        bitmap.addRule(13);
        rl_main.addView(((View) (obj)), bitmap);
        ((ImageView) (obj)).setOnClickListener(new android.view.View.OnClickListener() {

            final BRDDesktopActivity this$0;

            public void onClick(View view)
            {
                Log.d("test", "iv_ad click ok!!!");
                if (!TextUtils.isEmpty(apkpath))
                {
                    startInstallIntent(apkpath);
                } else
                if (!TextUtils.isEmpty(url))
                {
                    startWebIntent(url);
                } else
                {
                    Log.d("test", "desktop error!!!");
                }
                finish();
            }

            
            {
                this$0 = BRDDesktopActivity.this;
                super();
            }
        });
        obj = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(11);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(10);
        ImageView imageview = new ImageView(this);
        Bitmap bitmap1 = BRDUtils.getImageFromAssetsFile(this, "bread_close.png");
        Log.e("test", (new StringBuilder("bmClose = ")).append(bitmap1).toString());
        imageview.setImageBitmap(bitmap1);
        imageview.setOnClickListener(new android.view.View.OnClickListener() {

            final BRDDesktopActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = BRDDesktopActivity.this;
                super();
            }
        });
        rl_main.addView(imageview, ((android.view.ViewGroup.LayoutParams) (obj)));
        rt_main.addView(rl_main, bitmap);
        setContentView(rt_main);
    }

    private void startInstallIntent(String s)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(new File(s)), "application/vnd.android.package-archive");
        startActivity(intent);
    }

    private void startWebIntent(String s)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(s));
        startActivity(intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(128, 128);
        picpath = getIntent().getExtras().getString("PICPATH");
        apkpath = getIntent().getExtras().getString("APKPATH");
        url = getIntent().getExtras().getString("URL");
        Log.d("test", (new StringBuilder("picpath = ")).append(picpath).toString());
        Log.d("test", (new StringBuilder("apkpath = ")).append(apkpath).toString());
        Log.d("test", (new StringBuilder("url = ")).append(url).toString());
        if (!TextUtils.isEmpty(picpath))
        {
            showImageviewAds(BRDUtils.PNGToBitmap(picpath));
            return;
        } else
        {
            finish();
            return;
        }
    }




}
