// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.app.TabActivity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            WifiListPage, PersonalPage

public class CenterPage extends TabActivity
    implements android.widget.RadioGroup.OnCheckedChangeListener
{

    private LayoutInflater layoutInflater;
    int mIcon[] = {
        0x7f020145, 0x7f020074
    };
    String mTitle[] = {
        "wifi\u70ED\u70B9", "\u4E2A\u4EBA\u4E2D\u5FC3"
    };
    private RadioGroup mainTab;
    private Intent me;
    private TabHost tabhost;
    private Intent wifiList;

    public CenterPage()
    {
    }

    public View getTabItemView(int i)
    {
        View view = layoutInflater.inflate(0x7f030016, null);
        ((ImageView)view.findViewById(0x7f0c0058)).setImageResource(mIcon[i]);
        TextView textview = (TextView)view.findViewById(0x7f0c0059);
        textview.setText(mTitle[i]);
        textview.setTextColor(getResources().getColor(0x7f0800cf));
        return view;
    }

    public void onCheckedChanged(RadioGroup radiogroup, int i)
    {
        switch (i)
        {
        default:
            return;

        case 2131492880: 
            tabhost.setCurrentTabByTag(mTitle[1]);
            return;

        case 2131492881: 
            tabhost.setCurrentTabByTag(mTitle[2]);
            break;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f030002);
        tabhost = getTabHost();
        layoutInflater = LayoutInflater.from(this);
        wifiList = new Intent(this, com/pubinfo/freewifialliance/view/WifiListPage);
        if (getIntent().getStringExtra("jump") != null)
        {
            wifiList.putExtra("jump", getIntent().getStringExtra("jump"));
        }
        me = new Intent(this, com/pubinfo/freewifialliance/view/PersonalPage);
        bundle = tabhost.newTabSpec(mTitle[0]).setIndicator(getTabItemView(0)).setContent(wifiList);
        tabhost.addTab(bundle);
        tabhost.getTabWidget().getChildAt(0).setBackgroundResource(0x7f0200a2);
        tabhost.setup();
        bundle = tabhost.newTabSpec(mTitle[1]).setIndicator(getTabItemView(1)).setContent(me);
        tabhost.addTab(bundle);
        tabhost.getTabWidget().getChildAt(1).setBackgroundResource(0x7f0200a2);
        tabhost.setup();
    }
}
