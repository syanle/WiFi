// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package org.androidpn.client:
//            LogUtil

public class NotificationDetailsActivity extends Activity
{

    private static final String LOGTAG = LogUtil.makeLogTag(org/androidpn/client/NotificationDetailsActivity);
    private String callbackActivityClassName;
    private String callbackActivityPackageName;

    public NotificationDetailsActivity()
    {
    }

    private View createView(String s, String s1, final String uri)
    {
        LinearLayout linearlayout = new LinearLayout(this);
        linearlayout.setBackgroundColor(0xffeeeeee);
        linearlayout.setOrientation(1);
        linearlayout.setPadding(5, 5, 5, 5);
        linearlayout.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -1));
        TextView textview = new TextView(this);
        textview.setText(s);
        textview.setTextSize(18F);
        textview.setTypeface(Typeface.DEFAULT, 1);
        textview.setTextColor(0xff000000);
        textview.setGravity(17);
        s = new android.widget.LinearLayout.LayoutParams(-1, -2);
        s.setMargins(30, 30, 30, 0);
        textview.setLayoutParams(s);
        linearlayout.addView(textview);
        s = new TextView(this);
        s.setText(s1);
        s.setTextSize(14F);
        s.setTextColor(0xff333333);
        s.setGravity(17);
        s1 = new android.widget.LinearLayout.LayoutParams(-1, -2);
        s1.setMargins(30, 10, 30, 20);
        s.setLayoutParams(s1);
        linearlayout.addView(s);
        s = new Button(this);
        s.setText("Ok");
        s.setWidth(100);
        s.setOnClickListener(new android.view.View.OnClickListener() {

            final NotificationDetailsActivity this$0;
            private final String val$uri;

            public void onClick(View view)
            {
                if (uri != null && uri.length() > 0 && (uri.startsWith("http:") || uri.startsWith("https:") || uri.startsWith("tel:") || uri.startsWith("geo:")))
                {
                    view = new Intent("android.intent.action.VIEW", Uri.parse(uri));
                } else
                {
                    view = (new Intent()).setClassName(callbackActivityPackageName, callbackActivityClassName);
                    view.setFlags(0x10000000);
                    view.setFlags(0x20000000);
                    view.setFlags(0x4000000);
                }
                startActivity(view);
                finish();
            }

            
            {
                this$0 = NotificationDetailsActivity.this;
                uri = s;
                super();
            }
        });
        s1 = new LinearLayout(this);
        s1.setGravity(17);
        s1.addView(s);
        linearlayout.addView(s1);
        return linearlayout;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        bundle = getSharedPreferences("client_preferences", 0);
        callbackActivityPackageName = bundle.getString("CALLBACK_ACTIVITY_PACKAGE_NAME", "");
        callbackActivityClassName = bundle.getString("CALLBACK_ACTIVITY_CLASS_NAME", "");
        Object obj = getIntent();
        bundle = ((Intent) (obj)).getStringExtra("NOTIFICATION_ID");
        String s = ((Intent) (obj)).getStringExtra("NOTIFICATION_API_KEY");
        String s1 = ((Intent) (obj)).getStringExtra("NOTIFICATION_TITLE");
        String s2 = ((Intent) (obj)).getStringExtra("NOTIFICATION_MESSAGE");
        obj = ((Intent) (obj)).getStringExtra("NOTIFICATION_URI");
        Log.d(LOGTAG, (new StringBuilder("notificationId=")).append(bundle).toString());
        Log.d(LOGTAG, (new StringBuilder("notificationApiKey=")).append(s).toString());
        Log.d(LOGTAG, (new StringBuilder("notificationTitle=")).append(s1).toString());
        Log.d(LOGTAG, (new StringBuilder("notificationMessage=")).append(s2).toString());
        Log.d(LOGTAG, (new StringBuilder("notificationUri=")).append(((String) (obj))).toString());
        setContentView(createView(s1, s2, ((String) (obj))));
    }



}
