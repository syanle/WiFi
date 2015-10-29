// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.pubinfo.wifi_core.core.util.WifiAdmin;
import java.util.List;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            WifiListPage

public class i extends BaseAdapter
{

    private Context context;
    private int i;
    private List results;
    private String ssid;
    final WifiListPage this$0;

    public int getCount()
    {
        return results.size();
    }

    public Object getItem(int j)
    {
        return results.get(j);
    }

    public long getItemId(int j)
    {
        return (long)j;
    }

    public View getView(final int position, View view, ViewGroup viewgroup)
    {
        if (view == null);
        view = LayoutInflater.from(context).inflate(0x7f03003c, null);
        TextView textview = (TextView)view.findViewById(0x7f0c00ee);
        viewgroup = (TextView)view.findViewById(0x7f0c001c);
        RelativeLayout relativelayout = (RelativeLayout)view.findViewById(0x7f0c00ec);
        ImageView imageview = (ImageView)view.findViewById(0x7f0c00ef);
        Button button = (Button)view.findViewById(0x7f0c00eb);
        textview.setText(((ScanResult)results.get(position)).SSID);
        try
        {
            relativelayout.setOnClickListener(new android.view.View.OnClickListener() {

                final WifiListPage.WifiAdapter this$1;
                private final int val$position;

                public void onClick(View view1)
                {
                    if (!(new StringBuilder("\"")).append(((ScanResult)WifiListPage.getTianyiWifi().get(position)).SSID).append("\"").toString().equals(getConnectedWifiSSId()) && !((ScanResult)WifiListPage.getTianyiWifi().get(position)).SSID.equals(getConnectedWifiSSId())) goto _L2; else goto _L1
_L1:
                    if (WifiListPage.access$0())
                    {
                        arg2 = position;
                        connToWifiJugdeByRecord();
                        WifiListPage.access$1(false);
                    }
_L4:
                    return;
_L2:
                    if (!WifiListPage.access$2()) goto _L4; else goto _L3
_L3:
                    WifiListPage.access$3(this$0);
                    arg2 = position;
                    handler.sendEmptyMessageDelayed(0, 10000L);
                    try
                    {
                        if (!wifiManager.isWifiEnabled())
                        {
                            initWifiNotEnable();
                            return;
                        }
                    }
                    // Misplaced declaration of an exception variable
                    catch (View view1)
                    {
                        return;
                    }
                    view1 = new WifiAdmin(this$0);
                    view1.addNetwork(view1.CreateWifiInfo(((ScanResult)WifiListPage.getTianyiWifi().get(position)).SSID, "", 1));
                    WifiListPage.access$4(this$0).setAdapter(new WifiListPage.WifiAdapter(this$0, WifiListPage.getTianyiWifi(), "", 0));
                    setClicked(true);
                    WifiListPage.access$5(this$0).setText(getString(0x7f06005c));
                    WifiListPage.access$6(this$0).setVisibility(0);
                    WifiListPage.access$6(this$0).setText((new StringBuilder(String.valueOf(((ScanResult)WifiListPage.getTianyiWifi().get(position)).SSID))).append(getString(0x7f06005d)).toString());
                    WifiListPage.access$7(false);
                    return;
                }

            
            {
                this$1 = WifiListPage.WifiAdapter.this;
                position = j;
                super();
            }
            });
        }
        catch (Exception exception) { }
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final WifiListPage.WifiAdapter this$1;
            private final int val$position;

            public void onClick(View view1)
            {
                if ((new StringBuilder("\"")).append(((ScanResult)results.get(position)).SSID).append("\"").toString().equals(ssid) || ((ScanResult)results.get(position)).SSID.equals(ssid)) goto _L2; else goto _L1
_L1:
                if (!(new StringBuilder("\"")).append(((ScanResult)WifiListPage.getTianyiWifi().get(position)).SSID).append("\"").toString().equals(getConnectedWifiSSId()) && !((ScanResult)WifiListPage.getTianyiWifi().get(position)).SSID.equals(getConnectedWifiSSId())) goto _L4; else goto _L3
_L3:
                if (WifiListPage.access$0())
                {
                    Log.i("--loading--", "3");
                    arg2 = position;
                    connToWifiJugdeByRecord();
                    WifiListPage.access$1(false);
                }
_L6:
                return;
_L4:
                if (!WifiListPage.access$2()) goto _L6; else goto _L5
_L5:
                arg2 = position;
                handler.sendEmptyMessageDelayed(0, 10000L);
                if (wifiManager.isWifiEnabled()) goto _L8; else goto _L7
_L7:
                initWifiNotEnable();
_L9:
                WifiListPage.access$7(false);
                return;
_L8:
                try
                {
                    view1 = new WifiAdmin(this$0);
                    view1.addNetwork(view1.CreateWifiInfo(((ScanResult)WifiListPage.getTianyiWifi().get(position)).SSID, "", 1));
                    WifiListPage.access$4(this$0).setAdapter(new WifiListPage.WifiAdapter(this$0, WifiListPage.getTianyiWifi(), "", 0));
                    setClicked(true);
                    WifiListPage.access$5(this$0).setText(getString(0x7f06005c));
                    WifiListPage.access$6(this$0).setVisibility(0);
                    WifiListPage.access$6(this$0).setText((new StringBuilder(String.valueOf(((ScanResult)WifiListPage.getTianyiWifi().get(position)).SSID))).append(getString(0x7f06005d)).toString());
                    WifiListPage.access$3(this$0);
                }
                // Misplaced declaration of an exception variable
                catch (View view1) { }
                if (true) goto _L9; else goto _L2
_L2:
                view1 = getSharedPreferences("LOGOFF", 0);
                result = view1.getString("result", "");
                message = view1.getString("message", "");
                appauth_type = view1.getString("appauth_type", "");
                logoffUrl = view1.getString("logoffUrl", "");
                token = view1.getString("token", "");
                portal_url = view1.getString("portal_url", "");
                platform_code = view1.getString("platform_code", "");
                third_token = view1.getString("third_token", "");
                dev_id = view1.getString("dev_id", "");
                ac_name = view1.getString("ac_name", "");
                disconnWifiBy();
                return;
            }

            
            {
                this$1 = WifiListPage.WifiAdapter.this;
                position = j;
                super();
            }
        });
        if (!(new StringBuilder("\"")).append(((ScanResult)results.get(position)).SSID).append("\"").toString().equals(ssid) && !((ScanResult)results.get(position)).SSID.equals(ssid))
        {
            button.setBackgroundResource(0x7f02005c);
            imageview.setImageResource(0x7f020050);
            viewgroup.setTextColor(0xff000000);
            relativelayout.setBackgroundResource(0x7f020055);
        }
        if (!(new StringBuilder("\"")).append(((ScanResult)results.get(position)).SSID).append("\"").toString().toLowerCase().equals("chinanet") && !((ScanResult)results.get(position)).SSID.toLowerCase().equals("chinanet"))
        {
            break MISSING_BLOCK_LABEL_399;
        }
        if ((new StringBuilder("\"")).append(((ScanResult)results.get(position)).SSID).append("\"").toString().equals(ssid) || ((ScanResult)results.get(position)).SSID.equals(ssid))
        {
            break MISSING_BLOCK_LABEL_381;
        }
        imageview.setImageResource(0x7f020052);
_L1:
        viewgroup.setText("\u7535\u4FE1\u514D\u8D39\u4E0A\u7F51");
        return view;
        try
        {
            imageview.setImageResource(0x7f020053);
        }
        // Misplaced declaration of an exception variable
        catch (ViewGroup viewgroup)
        {
            return view;
        }
          goto _L1
        return view;
    }




    public _cls2.val.position(Context context1, List list, String s, int j)
    {
        this$0 = WifiListPage.this;
        super();
        context = context1;
        results = list;
        ssid = s;
        i = j;
    }
}
