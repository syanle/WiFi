// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import com.pubinfo.wifi_core.AppBaseActivity;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            Introduce, Faq, Service, Suggestion

public class About extends AppBaseActivity
    implements android.view.View.OnClickListener
{

    ImageButton backButton;
    private int mLocalVersionCode;
    private String mLocalVersionName;
    private PackageManager mPackMg;
    ImageButton refreshButton;
    TextView serviceTextView;
    TextView suggestion;
    TextView updateTextView;
    TextView userInfoTextView;

    public About()
    {
        mPackMg = null;
        mLocalVersionCode = 0;
        mLocalVersionName = "";
    }

    public void init()
    {
        TextView textview = (TextView)findViewById(0x7f0c0008);
        mPackMg = getBaseContext().getPackageManager();
        try
        {
            PackageInfo packageinfo = mPackMg.getPackageInfo(getBaseContext().getPackageName(), 1);
            mLocalVersionCode = packageinfo.versionCode;
            mLocalVersionName = packageinfo.versionName;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            namenotfoundexception.printStackTrace();
        }
        textview.setText(mLocalVersionName);
        refreshButton = (ImageButton)findViewById(0x7f0c005b);
        backButton = (ImageButton)findViewById(0x7f0c0014);
        backButton.setOnClickListener(this);
        backButton.setVisibility(0);
        refreshButton.setVisibility(8);
        userInfoTextView = (TextView)findViewById(0x7f0c0009);
        updateTextView = (TextView)findViewById(0x7f0c000a);
        serviceTextView = (TextView)findViewById(0x7f0c000b);
        suggestion = (TextView)findViewById(0x7f0c000c);
        suggestion.setOnClickListener(this);
        userInfoTextView.setOnClickListener(this);
        updateTextView.setOnClickListener(this);
        serviceTextView.setOnClickListener(this);
    }

    public void onClick(View view)
    {
        if (view.equals(backButton))
        {
            finish();
        } else
        {
            if (view.equals(userInfoTextView))
            {
                startActivity(new Intent(this, com/pubinfo/freewifialliance/view/Introduce));
                return;
            }
            if (view.equals(updateTextView))
            {
                startActivity(new Intent(this, com/pubinfo/freewifialliance/view/Faq));
                return;
            }
            if (view.equals(serviceTextView))
            {
                startActivity(new Intent(this, com/pubinfo/freewifialliance/view/Service));
                return;
            }
            if (view.equals(suggestion))
            {
                startActivity(new Intent(this, com/pubinfo/freewifialliance/view/Suggestion));
                return;
            }
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030000);
        init();
    }
}
