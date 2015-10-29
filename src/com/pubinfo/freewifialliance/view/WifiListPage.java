// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.AnimationDrawable;
import android.net.DhcpInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.format.Formatter;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.iwifi.sdk.chinanet.WifiAuthenticationProcedure;
import com.iwifi.sdk.protocol.impl.DoAuthenticationLogoffOperation;
import com.pubinfo.freewifialliance.controller.WifiListFun;
import com.pubinfo.wifi_core.core.data.ComData;
import com.pubinfo.wifi_core.core.database.Database;
import com.pubinfo.wifi_core.core.database.WifiInfoData;
import com.pubinfo.wifi_core.core.util.FileManager;
import com.pubinfo.wifi_core.core.util.WifiAdmin;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.TimeoutException;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            AESEN, LoginPage, WelcomePage

public class WifiListPage extends WifiListFun
    implements android.widget.AdapterView.OnItemClickListener, android.view.View.OnClickListener
{
    public class MyThread extends Thread
    {

        final WifiListPage this$0;

        public void run()
        {
            if (WifiListPage.executeCommand("ping -c 1 -i 0.2 -W 1 www.baidu.com", 3000L) == 0)
            {
                handler.sendEmptyMessage(5);
                return;
            }
            try
            {
                handler.sendEmptyMessage(6);
                return;
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                handler.sendEmptyMessage(6);
                return;
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
                handler.sendEmptyMessage(6);
                return;
            }
            catch (TimeoutException timeoutexception)
            {
                timeoutexception.printStackTrace();
            }
            handler.sendEmptyMessage(6);
            return;
        }

        public MyThread()
        {
            this$0 = WifiListPage.this;
            super();
        }
    }

    public class WifiAdapter extends BaseAdapter
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

        public View getView(int j, View view, ViewGroup viewgroup)
        {
            if (view == null);
            view = LayoutInflater.from(context).inflate(0x7f03003c, null);
            TextView textview = (TextView)view.findViewById(0x7f0c00ee);
            viewgroup = (TextView)view.findViewById(0x7f0c001c);
            RelativeLayout relativelayout = (RelativeLayout)view.findViewById(0x7f0c00ec);
            ImageView imageview = (ImageView)view.findViewById(0x7f0c00ef);
            Button button = (Button)view.findViewById(0x7f0c00eb);
            textview.setText(((ScanResult)results.get(j)).SSID);
            try
            {
                relativelayout.setOnClickListener(j. new android.view.View.OnClickListener() {

                    final WifiAdapter this$1;
                    private final int val$position;

                    public void onClick(View view)
                    {
                        if (!(new StringBuilder("\"")).append(((ScanResult)WifiListPage.getTianyiWifi().get(position)).SSID).append("\"").toString().equals(getConnectedWifiSSId()) && !((ScanResult)WifiListPage.getTianyiWifi().get(position)).SSID.equals(getConnectedWifiSSId())) goto _L2; else goto _L1
_L1:
                        if (WifiListPage.isClicked)
                        {
                            arg2 = position;
                            connToWifiJugdeByRecord();
                            WifiListPage.isClicked = false;
                        }
_L4:
                        return;
_L2:
                        if (!WifiListPage.isClicked2) goto _L4; else goto _L3
_L3:
                        showLoading();
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
                        catch (View view)
                        {
                            return;
                        }
                        view = new WifiAdmin(_fld0);
                        view.addNetwork(view.CreateWifiInfo(((ScanResult)WifiListPage.getTianyiWifi().get(position)).SSID, "", 1));
                        wifiLView.setAdapter(new WifiAdapter(_fld0, WifiListPage.getTianyiWifi(), "", 0));
                        setClicked(true);
                        progressTextView.setText(getString(0x7f06005c));
                        progressTextView2.setVisibility(0);
                        progressTextView2.setText((new StringBuilder(String.valueOf(((ScanResult)WifiListPage.getTianyiWifi().get(position)).SSID))).append(getString(0x7f06005d)).toString());
                        WifiListPage.isClicked2 = false;
                        return;
                    }

            
            {
                this$1 = final_wifiadapter;
                position = I.this;
                super();
            }
                });
            }
            catch (Exception exception) { }
            button.setOnClickListener(j. new android.view.View.OnClickListener() {

                final WifiAdapter this$1;
                private final int val$position;

                public void onClick(View view)
                {
                    if ((new StringBuilder("\"")).append(((ScanResult)results.get(position)).SSID).append("\"").toString().equals(ssid) || ((ScanResult)results.get(position)).SSID.equals(ssid)) goto _L2; else goto _L1
_L1:
                    if (!(new StringBuilder("\"")).append(((ScanResult)WifiListPage.getTianyiWifi().get(position)).SSID).append("\"").toString().equals(getConnectedWifiSSId()) && !((ScanResult)WifiListPage.getTianyiWifi().get(position)).SSID.equals(getConnectedWifiSSId())) goto _L4; else goto _L3
_L3:
                    if (WifiListPage.isClicked)
                    {
                        Log.i("--loading--", "3");
                        arg2 = position;
                        connToWifiJugdeByRecord();
                        WifiListPage.isClicked = false;
                    }
_L6:
                    return;
_L4:
                    if (!WifiListPage.isClicked2) goto _L6; else goto _L5
_L5:
                    arg2 = position;
                    handler.sendEmptyMessageDelayed(0, 10000L);
                    if (wifiManager.isWifiEnabled()) goto _L8; else goto _L7
_L7:
                    initWifiNotEnable();
_L9:
                    WifiListPage.isClicked2 = false;
                    return;
_L8:
                    try
                    {
                        view = new WifiAdmin(_fld0);
                        view.addNetwork(view.CreateWifiInfo(((ScanResult)WifiListPage.getTianyiWifi().get(position)).SSID, "", 1));
                        wifiLView.setAdapter(new WifiAdapter(_fld0, WifiListPage.getTianyiWifi(), "", 0));
                        setClicked(true);
                        progressTextView.setText(getString(0x7f06005c));
                        progressTextView2.setVisibility(0);
                        progressTextView2.setText((new StringBuilder(String.valueOf(((ScanResult)WifiListPage.getTianyiWifi().get(position)).SSID))).append(getString(0x7f06005d)).toString());
                        showLoading();
                    }
                    // Misplaced declaration of an exception variable
                    catch (View view) { }
                    if (true) goto _L9; else goto _L2
_L2:
                    view = getSharedPreferences("LOGOFF", 0);
                    result = view.getString("result", "");
                    message = view.getString("message", "");
                    appauth_type = view.getString("appauth_type", "");
                    logoffUrl = view.getString("logoffUrl", "");
                    token = view.getString("token", "");
                    portal_url = view.getString("portal_url", "");
                    platform_code = view.getString("platform_code", "");
                    third_token = view.getString("third_token", "");
                    dev_id = view.getString("dev_id", "");
                    ac_name = view.getString("ac_name", "");
                    disconnWifiBy();
                    return;
                }

            
            {
                this$1 = final_wifiadapter;
                position = I.this;
                super();
            }
            });
            if (!(new StringBuilder("\"")).append(((ScanResult)results.get(j)).SSID).append("\"").toString().equals(ssid) && !((ScanResult)results.get(j)).SSID.equals(ssid))
            {
                button.setBackgroundResource(0x7f02005c);
                imageview.setImageResource(0x7f020050);
                viewgroup.setTextColor(0xff000000);
                relativelayout.setBackgroundResource(0x7f020055);
            }
            if (!(new StringBuilder("\"")).append(((ScanResult)results.get(j)).SSID).append("\"").toString().toLowerCase().equals("chinanet") && !((ScanResult)results.get(j)).SSID.toLowerCase().equals("chinanet"))
            {
                break MISSING_BLOCK_LABEL_399;
            }
            if ((new StringBuilder("\"")).append(((ScanResult)results.get(j)).SSID).append("\"").toString().equals(ssid) || ((ScanResult)results.get(j)).SSID.equals(ssid))
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




        public WifiAdapter(Context context1, List list, String s, int j)
        {
            this$0 = WifiListPage.this;
            super();
            context = context1;
            results = list;
            ssid = s;
            i = j;
        }
    }

    private static class Worker extends Thread
    {

        private Integer exit;
        private final Process process;

        public void run()
        {
            try
            {
                exit = Integer.valueOf(process.waitFor());
                return;
            }
            catch (InterruptedException interruptedexception)
            {
                return;
            }
        }


        private Worker(Process process1)
        {
            process = process1;
        }

        Worker(Process process1, Worker worker)
        {
            this(process1);
        }
    }


    private static boolean isClicked = true;
    private static boolean isClicked2 = true;
    private static boolean isFirst = false;
    AESEN aes;
    int arg2;
    private ImageButton btnBack;
    private ImageButton btnRefresh;
    private Context context;
    String final_dev_id;
    int i;
    Handler listHandler;
    private AnimationDrawable loadingAnimationDrawable;
    private ImageView loadingImageView;
    private RelativeLayout loadingRelativeLayout;
    LinearLayout logoTitle;
    LinearLayout noWifiLinearLayout;
    Button open_wifiButton;
    private TextView progressTextView;
    private TextView progressTextView2;
    Button serachButton;
    String ssidString;
    TimerTask task;
    private TextView textView1;
    private TextView textView2;
    private Timer timer;
    private ListView wifiLView;
    protected WifiAuthenticationProcedure wifiListPage;
    WifiManager wifiManager;
    private WifiManager wifiMgr;
    LinearLayout wifiNOtEnableLinearLayout;

    public WifiListPage()
    {
        aes = new AESEN();
        timer = new Timer();
        wifiMgr = null;
        task = new TimerTask() {

            final WifiListPage this$0;

            public void run()
            {
                getWiFi();
            }

            
            {
                this$0 = WifiListPage.this;
                super();
            }
        };
    }

    public static int executeCommand(String s, long l)
        throws IOException, InterruptedException, TimeoutException
    {
        Worker worker;
        s = Runtime.getRuntime().exec(s);
        worker = new Worker(s, null);
        worker.start();
        int j;
        worker.join(l);
        if (worker.exit == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        j = worker.exit.intValue();
        s.destroy();
        return j;
        throw new TimeoutException();
        InterruptedException interruptedexception;
        interruptedexception;
        worker.interrupt();
        Thread.currentThread().interrupt();
        throw interruptedexception;
        Exception exception;
        exception;
        s.destroy();
        throw exception;
    }

    private String getDhcpGatewayAddr()
    {
        if (wifiMgr == null)
        {
            wifiMgr = (WifiManager)getSystemService("wifi");
        }
        DhcpInfo dhcpinfo = wifiMgr.getDhcpInfo();
        Log.v("iWifiSDKDemo", (new StringBuilder("Gateway address : ")).append(Formatter.formatIpAddress(dhcpinfo.gateway)).toString());
        return Formatter.formatIpAddress(dhcpinfo.gateway);
    }

    private void hideLoading()
    {
        isClicked = true;
        isClicked2 = true;
        if (loadingRelativeLayout.getVisibility() == 0)
        {
            loadingImageView.setVisibility(8);
            loadingRelativeLayout.setVisibility(8);
            progressTextView.setVisibility(8);
            progressTextView2.setVisibility(8);
        }
    }

    private void showLoading()
    {
        loadingRelativeLayout.setVisibility(0);
        loadingImageView.setVisibility(0);
        progressTextView.setVisibility(0);
        if (loadingAnimationDrawable.isRunning())
        {
            loadingAnimationDrawable.stop();
            loadingAnimationDrawable.start();
            return;
        } else
        {
            loadingAnimationDrawable.start();
            return;
        }
    }

    public void connToWifi()
    {
        setWifiListView();
        connToWifiJugdeByRecord();
    }

    public void connToWifiJugdeByRecord()
    {
        FileManager.getMacAddress(this);
        Database.getInstance(getBaseContext()).selectUserRow();
        if (getTianyiWifi().size() > 0)
        {
            connWifiBy();
        }
    }

    public void connWifiBy()
    {
        if (ComData.getInstance().getWifiInfoData() != null && ComData.getInstance().getWifiInfoData().size() > 0)
        {
            WifiInfoData wifiinfodata = (WifiInfoData)ComData.getInstance().getWifiInfoData().get(0);
            showLoading();
            progressTextView.setText(getString(0x7f06005e));
            (new DoAuthenticationLogoffOperation(this, this)).Global_AuthenticationRequest(wifiinfodata.getPhone(), "2.0", "");
            return;
        } else
        {
            hideLoading();
            Intent intent = new Intent(this, com/pubinfo/freewifialliance/view/LoginPage);
            intent.putExtra("ssid", ((ScanResult)getTianyiWifi().get(arg2)).SSID);
            startActivity(intent);
            return;
        }
    }

    public void disconnWifiBy()
    {
        showLoading();
        if (ComData.getInstance().getWifiInfoData() != null && ComData.getInstance().getWifiInfoData().size() > 0)
        {
            WifiInfoData wifiinfodata = (WifiInfoData)ComData.getInstance().getWifiInfoData().get(0);
            (new DoAuthenticationLogoffOperation(this, this)).Global_LogoffUrlRequest(wifiinfodata.getPhone(), appauth_type, logoffUrl, token, third_token, ac_name, platform_code, portal_url);
        }
    }

    public void getConfirmFail()
    {
        isClicked = true;
        hideLoading();
        showMsgToast("\u8BA4\u8BC1\u5931\u8D25");
    }

    public void getConfirmSuccess(String s)
    {
        isClicked = true;
        hideLoading();
        showMsgToast("\u8054\u7F51\u6210\u529F");
        Intent intent = new Intent(this, com/pubinfo/freewifialliance/view/WelcomePage);
        intent.putExtra("ssid", ((ScanResult)getTianyiWifi().get(arg2)).SSID);
        intent.putExtra("device_id", s);
        intent.setFlags(0x10000000);
        startActivity(intent);
    }

    public void hideLoadingView()
    {
        hideLoading();
    }

    public void initNoWifi()
    {
        noWifiLinearLayout.setVisibility(0);
        wifiNOtEnableLinearLayout.setVisibility(8);
        logoTitle.setVisibility(8);
        wifiLView.setVisibility(8);
        try
        {
            if (executeCommand("ping -c 1 -i 0.2 -W 1 www.baidu.com", 3000L) == 0)
            {
                updateSsidList();
                return;
            }
        }
        catch (Exception exception)
        {
            return;
        }
        showMsgToast("\u6211\u4EEC\u63A8\u8350\u60A8\u5F00\u542F3G\u7F51\u7EDC\u6216\u8005\u8FDE\u63A5\u4E92\u8054\u7F51\uFF0C\u641C\u7D22\u6700\u65B0\u7684\u7231WiFi\u70ED\u70B9\u3002");
        return;
    }

    public void initShowList()
    {
        noWifiLinearLayout.setVisibility(8);
        wifiNOtEnableLinearLayout.setVisibility(8);
        logoTitle.setVisibility(0);
        wifiLView.setVisibility(0);
    }

    public void initWifiNotEnable()
    {
        wifiNOtEnableLinearLayout.setVisibility(0);
        noWifiLinearLayout.setVisibility(8);
        logoTitle.setVisibility(8);
        wifiLView.setVisibility(8);
    }

    public boolean isHaveRecord(String s)
    {
        Database.getInstance(getBaseContext()).selectUserRow();
        return ComData.getInstance().getWifiInfoData() != null && ComData.getInstance().getWifiInfoData().size() > 0;
    }

    public void onClick(View view)
    {
        if (view.equals(btnRefresh))
        {
            getWiFi();
        } else
        {
            if (view.equals(open_wifiButton))
            {
                wifiManager.setWifiEnabled(true);
                showLoading();
                progressTextView.setText(getString(0x7f06005f));
                handler.sendEmptyMessageDelayed(9, 2000L);
                return;
            }
            if (view.equals(serachButton))
            {
                getWiFi();
                return;
            }
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03003d);
        context = this;
        wifiManager = (WifiManager)getSystemService("wifi");
        btnRefresh = (ImageButton)findViewById(0x7f0c005b);
        btnRefresh.setOnClickListener(this);
        open_wifiButton = (Button)findViewById(0x7f0c00f7);
        open_wifiButton.setOnClickListener(this);
        serachButton = (Button)findViewById(0x7f0c00f8);
        serachButton.setOnClickListener(this);
        wifiLView = (ListView)findViewById(0x7f0c00f5);
        wifiLView.setDivider(null);
        wifiLView.setCacheColorHint(0);
        wifiLView.setOnItemClickListener(this);
        loadingImageView = (ImageView)findViewById(0x7f0c001d);
        loadingImageView.measure(0, 0);
        loadingAnimationDrawable = (AnimationDrawable)loadingImageView.getBackground();
        progressTextView = (TextView)findViewById(0x7f0c001e);
        progressTextView2 = (TextView)findViewById(0x7f0c001f);
        loadingRelativeLayout = (RelativeLayout)findViewById(0x7f0c00f6);
        noWifiLinearLayout = (LinearLayout)findViewById(0x7f0c00f1);
        wifiNOtEnableLinearLayout = (LinearLayout)findViewById(0x7f0c00f0);
        logoTitle = (LinearLayout)findViewById(0x7f0c00f2);
        isFirst = true;
        timer.schedule(task, 5000L, 0x493e0L);
        hideLoading();
        listHandler = new Handler() {

            final WifiListPage this$0;

            public void handleMessage(Message message)
            {
                switch (message.what)
                {
                default:
                    return;

                case 0: // '\0'
                    message = new ArrayList();
                    message.clear();
                    message.addAll(WifiListPage.getTianyiWifi());
                    message = new WifiAdapter(WifiListPage.this, message, ssidString, i);
                    wifiLView.setAdapter(message);
                    return;

                case 1: // '\001'
                    message = new ArrayList();
                    break;
                }
                message.clear();
                message.addAll(WifiListPage.getTianyiWifi());
                message = new WifiAdapter(WifiListPage.this, message, "", 0);
                wifiLView.setAdapter(message);
            }

            
            {
                this$0 = WifiListPage.this;
                super();
            }
        };
        if (!wifiManager.isWifiEnabled())
        {
            initWifiNotEnable();
            return;
        } else
        {
            getWiFi();
            return;
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
        timer.cancel();
    }

    public void onItemClick(AdapterView adapterview, View view, int j, long l)
    {
        arg2 = j;
        if ((new StringBuilder("\"")).append(((ScanResult)getTianyiWifi().get(j)).SSID).append("\"").toString().equals(getConnectedWifiSSId()) || ((ScanResult)getTianyiWifi().get(j)).SSID.equals(getConnectedWifiSSId()))
        {
            showLoading();
            connToWifiJugdeByRecord();
            return;
        } else
        {
            handler.sendEmptyMessageDelayed(0, 10000L);
            adapterview = new WifiAdmin(this);
            adapterview.addNetwork(adapterview.CreateWifiInfo(((ScanResult)getTianyiWifi().get(j)).SSID, "", 1));
            wifiLView.setAdapter(new WifiAdapter(this, getTianyiWifi(), "", 0));
            setClicked(true);
            progressTextView.setText(getString(0x7f06005c));
            progressTextView2.setVisibility(0);
            progressTextView2.setText((new StringBuilder(String.valueOf(((ScanResult)getTianyiWifi().get(j)).SSID))).append(getString(0x7f06005d)).toString());
            showLoading();
            return;
        }
    }

    public void onLogoffRequestFail(String s)
    {
        hideLoading();
        Log.v("iWifiSDKDemo", (new StringBuilder(" onLogoffRequestFail : ")).append(s).toString());
        showMsgToast("\u4E0B\u7EBF\u5931\u8D25");
    }

    public void onLogoffRequestSucc(String s)
    {
        getSharedPreferences("LOGOFF", 0).edit().clear().commit();
        hideLoading();
        Log.v("iWifiSDKDemo", (new StringBuilder(" onLogoffRequestSucc : ")).append(s).toString());
        showMsgToast("\u4E0B\u7EBF\u6210\u529F");
    }

    protected void onPause()
    {
        super.onPause();
        hideLoading();
    }

    protected void onResume()
    {
        super.onResume();
        if (wifiManager.isWifiEnabled())
        {
            Database.getInstance(this).selectUserRow();
            setWifiListView();
        }
    }

    public void setWifiListView()
    {
        ssidString = getConnectedWifiSSId();
        i = 0;
        if (isHaveRecord(ssidString))
        {
            i = 1;
        }
        if (getTianyiWifi() != null && getTianyiWifi().size() > 0)
        {
            hideLoading();
            initShowList();
            listHandler.sendEmptyMessage(0);
            if (isFirst)
            {
                ArrayList arraylist = new ArrayList();
                arraylist.clear();
                arraylist.addAll(getTianyiWifi());
                if (arraylist.size() > 0 && arraylist.size() == 1)
                {
                    arg2 = 0;
                    if ((new StringBuilder("\"")).append(((ScanResult)arraylist.get(arg2)).SSID).append("\"").toString().equals(getConnectedWifiSSId()) || ((ScanResult)arraylist.get(arg2)).SSID.equals(getConnectedWifiSSId()))
                    {
                        progressTextView.setText(getString(0x7f06005c));
                        progressTextView2.setVisibility(0);
                        progressTextView2.setText((new StringBuilder(String.valueOf(getConnectedWifiSSId()))).append(getString(0x7f06005d)).toString());
                        showLoading();
                        connToWifiJugdeByRecord();
                    } else
                    {
                        handler.sendEmptyMessageDelayed(0, 10000L);
                        WifiAdmin wifiadmin = new WifiAdmin(this);
                        wifiadmin.addNetwork(wifiadmin.CreateWifiInfo(((ScanResult)arraylist.get(arg2)).SSID, "", 1));
                        wifiLView.setAdapter(new WifiAdapter(this, arraylist, "", 0));
                        progressTextView.setText(getString(0x7f06005c));
                        progressTextView2.setVisibility(0);
                        progressTextView2.setText((new StringBuilder(String.valueOf(getConnectedWifiSSId()))).append(getString(0x7f06005d)).toString());
                        setClicked(true);
                        showLoading();
                    }
                }
            }
        } else
        {
            hideLoading();
            initNoWifi();
        }
        isFirst = false;
    }

    public void showLoadingView()
    {
        showLoading();
    }









}
