// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import com.cat.data.SsidData;
import com.cat.list.ImageDownloader;
import com.cat.list.OnImageDownload;
import com.cat.list.XListView;
import com.cat.parase.SsidInfoParser;
import com.pubinfo.izhejiang.ConnectActivity;
import com.pubinfo.izhejiang.LoginActivity;
import com.pubinfo.izhejiang.controller.WifiListFun;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

public class SsidFragment extends WifiListFun
    implements com.cat.list.XListView.IXListViewListener
{
    public class MyThread extends Thread
    {

        final SsidFragment this$0;

        public void run()
        {
            ArrayList arraylist;
            ArrayList arraylist1;
            ArrayList arraylist2;
            List list;
            ArrayList arraylist3;
            Looper.prepare();
            list = ComData.getInstance().getSsidData();
            arraylist3 = new ArrayList();
            arraylist3.clear();
            arraylist3.addAll(SsidFragment.getTianyiWifi());
            arraylist = new ArrayList();
            arraylist.clear();
            arraylist1 = new ArrayList();
            arraylist1.clear();
            arraylist2 = new ArrayList();
            arraylist2.clear();
            int i = 0;
_L24:
            int j = list.size();
            if (i < j) goto _L2; else goto _L1
_L1:
            Exception exception;
            String s;
            String s1;
            String s2;
            SsidData ssiddata;
            try
            {
                if (arraylist.size() > 0)
                {
                    Collections.sort(arraylist, new Comparator() {

                        final MyThread this$1;

                        public int compare(SsidData ssiddata, SsidData ssiddata1)
                        {
                            int i = ssiddata.getLevel();
                            int j = ssiddata1.getLevel();
                            return Math.abs(i) <= Math.abs(j) ? -1 : 1;
                        }

                        public volatile int compare(Object obj, Object obj1)
                        {
                            return compare((SsidData)obj, (SsidData)obj1);
                        }

            
            {
                this$1 = MyThread.this;
                super();
            }
                    });
                }
            }
            catch (IllegalArgumentException illegalargumentexception2) { }
            try
            {
                if (arraylist1.size() > 0)
                {
                    Collections.sort(arraylist1, new Comparator() {

                        final MyThread this$1;

                        public int compare(SsidData ssiddata, SsidData ssiddata1)
                        {
                            int i = ssiddata.getLevel();
                            int j = ssiddata1.getLevel();
                            return Math.abs(i) <= Math.abs(j) ? -1 : 1;
                        }

                        public volatile int compare(Object obj, Object obj1)
                        {
                            return compare((SsidData)obj, (SsidData)obj1);
                        }

            
            {
                this$1 = MyThread.this;
                super();
            }
                    });
                }
            }
            catch (IllegalArgumentException illegalargumentexception1) { }
            try
            {
                if (arraylist2.size() > 0)
                {
                    Collections.sort(arraylist2, new Comparator() {

                        final MyThread this$1;

                        public int compare(SsidData ssiddata, SsidData ssiddata1)
                        {
                            int i = ssiddata.getLevel();
                            int j = ssiddata1.getLevel();
                            return Math.abs(i) <= Math.abs(j) ? -1 : 1;
                        }

                        public volatile int compare(Object obj, Object obj1)
                        {
                            return compare((SsidData)obj, (SsidData)obj1);
                        }

            
            {
                this$1 = MyThread.this;
                super();
            }
                    });
                }
            }
            catch (IllegalArgumentException illegalargumentexception) { }
            wifiListAll.clear();
            i = 0;
_L21:
            if (i < arraylist.size()) goto _L4; else goto _L3
_L3:
            i = 0;
_L22:
            if (i < arraylist1.size()) goto _L6; else goto _L5
_L5:
            i = 0;
_L23:
            if (i < arraylist2.size()) goto _L8; else goto _L7
_L7:
            wifiListAll = SsidFragment.getNewList(wifiListAll);
            listHandler.sendEmptyMessage(9);
_L20:
            Looper.loop();
            return;
_L2:
            s = ((SsidData)list.get(i)).getNettype();
            s1 = ((SsidData)list.get(i)).getMac();
            s2 = ((SsidData)list.get(i)).getLogo();
            if (!s.equals("1")) goto _L10; else goto _L9
_L9:
            j = 0;
_L25:
            if (j < arraylist3.size()) goto _L11; else goto _L10
_L10:
            if (!s.equals("2")) goto _L13; else goto _L12
_L12:
            j = 0;
_L26:
            if (j < arraylist3.size()) goto _L14; else goto _L13
_L13:
            if (!s.equals("3")) goto _L16; else goto _L15
_L15:
            j = 0;
_L27:
            if (j < arraylist3.size()) goto _L17; else goto _L16
_L11:
            if (s1.equals(((ScanResult)arraylist3.get(j)).BSSID))
            {
                ssiddata = new SsidData();
                ssiddata.setLevel(((ScanResult)arraylist3.get(j)).level);
                ssiddata.setLogo(s2);
                ssiddata.setMac(s1);
                ssiddata.setNettype(s);
                ssiddata.setSsid(((ScanResult)arraylist3.get(j)).SSID);
                ssiddata.setPassword(0);
                arraylist.add(ssiddata);
            }
              goto _L18
_L14:
            if (s1.equals(((ScanResult)arraylist3.get(j)).BSSID))
            {
                ssiddata = new SsidData();
                ssiddata.setLevel(((ScanResult)arraylist3.get(j)).level);
                ssiddata.setLogo(s2);
                ssiddata.setMac(s1);
                ssiddata.setNettype(s);
                ssiddata.setSsid(((ScanResult)arraylist3.get(j)).SSID);
                ssiddata.setPassword(0);
                arraylist1.add(ssiddata);
            }
              goto _L19
_L17:
            try
            {
                if (s1.equals(((ScanResult)arraylist3.get(j)).BSSID))
                {
                    ssiddata = new SsidData();
                    ssiddata.setLevel(((ScanResult)arraylist3.get(j)).level);
                    ssiddata.setLogo(s2);
                    ssiddata.setMac(s1);
                    ssiddata.setNettype(s);
                    ssiddata.setSsid(((ScanResult)arraylist3.get(j)).SSID);
                    ssiddata.setPassword(checkPassword(((ScanResult)arraylist3.get(j)).capabilities));
                    arraylist2.add(ssiddata);
                }
                break MISSING_BLOCK_LABEL_891;
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                listHandler.sendEmptyMessage(6);
            }
              goto _L20
_L4:
            wifiListAll.add((SsidData)arraylist.get(i));
            i++;
              goto _L21
_L6:
            wifiListAll.add((SsidData)arraylist1.get(i));
            i++;
              goto _L22
_L8:
            wifiListAll.add((SsidData)arraylist2.get(i));
            i++;
              goto _L23
_L16:
            i++;
              goto _L24
_L18:
            j++;
              goto _L25
_L19:
            j++;
              goto _L26
            j++;
              goto _L27
        }

        public MyThread()
        {
            this$0 = SsidFragment.this;
            super();
        }
    }

    public class WifiAdapter extends BaseAdapter
    {

        private Context context;
        int level;
        String logourl;
        private ViewHolder mHolder;
        String mac;
        private String macstring;
        private List results;
        private String ssid;
        String ssidclick;
        final SsidFragment this$0;
        String type;

        public int getCount()
        {
            return results.size();
        }

        public Object getItem(int i)
        {
            return results.get(i);
        }

        public long getItemId(int i)
        {
            return (long)i;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            if (view == null)
            {
                view = getActivity().getLayoutInflater().inflate(0x7f030038, null);
                mHolder = new ViewHolder(null);
                mHolder.rl = (RelativeLayout)view.findViewById(0x7f0a00f1);
                mHolder.tv_ssid = (TextView)view.findViewById(0x7f0a00f4);
                mHolder.iv_strength = (ImageView)view.findViewById(0x7f0a00f5);
                mHolder.tv_attention = (TextView)view.findViewById(0x7f0a00f3);
                mHolder.tv_connected = (TextView)view.findViewById(0x7f0a00f7);
                mHolder.iv_info = (ImageView)view.findViewById(0x7f0a00f6);
                mHolder.rl_wifi_item = (RelativeLayout)view.findViewById(0x7f0a00f0);
                view.setTag(mHolder);
            } else
            {
                mHolder = (ViewHolder)view.getTag();
            }
            type = ((SsidData)results.get(i)).getNettype();
            level = ((SsidData)results.get(i)).getLevel();
            mac = ((SsidData)results.get(i)).getMac();
            logourl = ((SsidData)results.get(i)).getLogo();
            ssidclick = ((SsidData)results.get(i)).getSsid();
            mHolder.tv_ssid.setText(((SsidData)results.get(i)).getSsid());
            if (type.equals("1"))
            {
                mHolder.tv_attention.setText(getString(0x7f06000e));
                mHolder.rl.setBackgroundResource(0x7f020035);
            } else
            if (type.equals("2"))
            {
                mHolder.tv_attention.setText(getString(0x7f06000f));
                mHolder.rl.setBackgroundResource(0x7f020038);
            } else
            if (type.equals("3"))
            {
                if (((SsidData)results.get(i)).getPassword() == 0)
                {
                    mHolder.tv_attention.setText(getString(0x7f060011));
                    mHolder.rl.setBackgroundResource(0x7f020037);
                } else
                {
                    mHolder.tv_attention.setText(getString(0x7f060010));
                    mHolder.rl.setBackgroundResource(0x7f020037);
                }
            }
            if (Math.abs(level) > 85)
            {
                mHolder.iv_strength.setImageDrawable(getResources().getDrawable(0x7f020133));
            } else
            if (Math.abs(level) > 70)
            {
                mHolder.iv_strength.setImageDrawable(getResources().getDrawable(0x7f020134));
            } else
            if (Math.abs(level) > 50)
            {
                mHolder.iv_strength.setImageDrawable(getResources().getDrawable(0x7f020135));
            } else
            {
                mHolder.iv_strength.setImageDrawable(getResources().getDrawable(0x7f020136));
            }
            if ((new StringBuilder("\"")).append(((SsidData)results.get(i)).getSsid()).append("\"").toString().equals(ssid) || ((SsidData)results.get(i)).getSsid().equals(ssid))
            {
                mHolder.tv_connected.setVisibility(0);
                mHolder.iv_info.setVisibility(8);
            } else
            {
                mHolder.tv_connected.setVisibility(8);
                mHolder.iv_info.setVisibility(0);
            }
            if (type.equals("2"))
            {
                if (logourl != null && !logourl.equals(""))
                {
                    mHolder.rl.setTag(logourl);
                    if (mDownloader == null)
                    {
                        mDownloader = new ImageDownloader();
                    }
                    mDownloader.imageDownload(logourl, mHolder.rl, "/Awifi", getActivity(), new OnImageDownload() );
                } else
                {
                    mHolder.rl.setBackgroundResource(0x7f020038);
                }
            }
            mHolder.rl_wifi_item.setOnClickListener(i. new android.view.View.OnClickListener() {

                final WifiAdapter this$1;
                private final int val$position;

                public void onClick(View view)
                {
                    if (!username.equals(""))
                    {
                        view = new Intent(getActivity(), com/pubinfo/izhejiang/ConnectActivity);
                        view.putExtra("type", ((SsidData)results.get(position)).getNettype());
                        view.putExtra("logourl", ((SsidData)results.get(position)).getLogo());
                        view.putExtra("ssidclick", ((SsidData)results.get(position)).getSsid());
                        view.putExtra("ssidconnect", ssid);
                        view.putExtra("macclick", ((SsidData)results.get(position)).getMac());
                        view.putExtra("macconnect", macstring);
                        startActivityForResult(view, 3);
                        return;
                    } else
                    {
                        view = new Intent(getActivity(), com/pubinfo/izhejiang/LoginActivity);
                        view.putExtra("Activity", "SsidFragment");
                        startActivityForResult(view, 2);
                        return;
                    }
                }

            
            {
                this$1 = final_wifiadapter;
                position = I.this;
                super();
            }
            });
            mHolder.iv_info.setOnClickListener(new android.view.View.OnClickListener() {

                final WifiAdapter this$1;

                public void onClick(View view)
                {
                }

            
            {
                this$1 = WifiAdapter.this;
                super();
            }
            });
            return view;
        }





        public WifiAdapter(Context context1, List list, String s, String s1)
        {
            this$0 = SsidFragment.this;
            super();
            context = context1;
            results = list;
            macstring = s;
            ssid = s1;
        }
    }

    private class WifiAdapter.ViewHolder
    {

        ImageView iv_info;
        ImageView iv_strength;
        RelativeLayout rl;
        RelativeLayout rl_wifi_item;
        final WifiAdapter this$1;
        TextView tv_attention;
        TextView tv_connected;
        TextView tv_ssid;

        private WifiAdapter.ViewHolder()
        {
            this$1 = WifiAdapter.this;
            super();
        }

        WifiAdapter.ViewHolder(WifiAdapter.ViewHolder viewholder)
        {
            this();
        }
    }


    public static final int SSID_CONNECT = 3;
    public static final int SSID_LOGIN = 2;
    LinearLayout Layout_message;
    LinearLayout Layout_near;
    LinearLayout Layout_share;
    LinearLayout Layout_sign;
    ImageView iv_wifi;
    private Handler listHandler;
    ImageDownloader mDownloader;
    String macstring;
    android.view.View.OnClickListener onClickListener;
    String ssidstring;
    boolean tag;
    String username;
    List wifiListAll;
    WifiManager wifiManager;
    protected WifiManager wifiMgr;
    boolean wifibtn;
    boolean wifibtn_click;
    String wifimac;

    public SsidFragment()
    {
        listHandler = null;
        wifiMgr = null;
        tag = false;
        wifibtn = true;
        wifibtn_click = true;
        wifiListAll = new ArrayList();
        onClickListener = new android.view.View.OnClickListener() {

            final SsidFragment this$0;

            public void onClick(View view)
            {
                view.getId();
                JVM INSTR lookupswitch 5: default 56
            //                           2131361840: 56
            //                           2131361952: 57
            //                           2131361953: 56
            //                           2131361954: 56
            //                           2131361955: 56;
                   goto _L1 _L1 _L2 _L1 _L1 _L1
_L1:
                return;
_L2:
                if (wifibtn_click)
                {
                    showLoading();
                    if (wifibtn)
                    {
                        wifiManager.setWifiEnabled(false);
                        listHandler.sendEmptyMessage(8);
                    } else
                    {
                        wifiManager.setWifiEnabled(true);
                        listHandler.sendEmptyMessageDelayed(7, 5000L);
                    }
                    wifibtn_click = false;
                    return;
                }
                if (true) goto _L1; else goto _L3
_L3:
            }

            
            {
                this$0 = SsidFragment.this;
                super();
            }
        };
    }

    public static List getNewList(List list)
    {
        ArrayList arraylist;
        int i;
        arraylist = new ArrayList();
        new HashMap();
        i = 0;
_L3:
        SsidData ssiddata;
        String s;
        int j;
        int k;
        if (i >= list.size())
        {
            return arraylist;
        }
        new SsidData();
        ssiddata = (SsidData)list.get(i);
        s = ((SsidData)list.get(i)).getSsid();
        if (arraylist.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        k = 0;
        j = 0;
_L4:
        if (j < arraylist.size()) goto _L2; else goto _L1
_L1:
        if (k == 0)
        {
            arraylist.add(ssiddata);
        }
_L5:
        i++;
          goto _L3
_L2:
        int l = k;
        if (((SsidData)arraylist.get(j)).getSsid().equals(s))
        {
            l = k + 1;
        }
        j++;
        k = l;
          goto _L4
        arraylist.add(ssiddata);
          goto _L5
    }

    private void initialHandler()
    {
        listHandler = new Handler() {

            final SsidFragment this$0;

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 0 9: default 60
            //                           0 61
            //                           1 324
            //                           2 349
            //                           3 456
            //                           4 518
            //                           5 640
            //                           6 672
            //                           7 923
            //                           8 1086
            //                           9 364;
                   goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L1:
                return;
_L2:
                macstring = "";
                message = new ArrayList();
                message.clear();
                message.addAll(SsidFragment.getTianyiWifi());
                StringBuffer stringbuffer = new StringBuffer();
                StringBuffer stringbuffer1 = new StringBuffer();
                int i = 0;
                do
                {
                    if (i >= message.size())
                    {
                        stringbuffer1.toString().substring(0, stringbuffer1.toString().lastIndexOf(","));
                        macstring = stringbuffer.toString().substring(0, stringbuffer.toString().lastIndexOf(","));
                        if (isAdded())
                        {
                            getSsidInfo(username, macstring, "", "", getActivity());
                            return;
                        }
                        continue; /* Loop/switch isn't completed */
                    }
                    ScanResult scanresult = (ScanResult)message.get(i);
                    stringbuffer.append(scanresult.BSSID).append(',');
                    stringbuffer1.append((new StringBuilder(String.valueOf(scanresult.BSSID))).append(";").append(scanresult.SSID).toString()).append(',');
                    Log.i("mac", (new StringBuilder(String.valueOf(scanresult.BSSID))).append(",").append(scanresult.SSID).toString());
                    i++;
                } while (true);
_L3:
                message = new ArrayList();
                message.clear();
                message.addAll(SsidFragment.getTianyiWifi());
                return;
                continue; /* Loop/switch isn't completed */
_L4:
                (new MyThread()).start();
                return;
_L11:
                hideLoading();
                Object obj;
                SsidData ssiddata;
                int j;
                try
                {
                    if (isAdded())
                    {
                        message = new WifiAdapter(getActivity(), wifiListAll, wifimac, ssidstring);
                        append.setAdapter(message);
                    }
                }
                // Misplaced declaration of an exception variable
                catch (Message message) { }
                wifibtn_click = true;
                tag = true;
                onLoad();
                return;
_L5:
                try
                {
                    if (isAdded())
                    {
                        hideLoading();
                        showMsgToast(getString(0x7f060031));
                        listHandler.sendEmptyMessage(6);
                    }
                }
                // Misplaced declaration of an exception variable
                catch (Message message) { }
                tag = true;
                onLoad();
                return;
_L6:
                tag = true;
                onLoad();
                hideLoading();
                message = ComData.getInstance().getpError();
                if (message == null || message.size() <= 0)
                {
                    continue; /* Loop/switch isn't completed */
                }
                j = 0;
_L13:
                if (j < message.size())
                {
                    break MISSING_BLOCK_LABEL_598;
                }
                if (!isAdded()) goto _L1; else goto _L12
_L12:
                listHandler.sendEmptyMessage(6);
                return;
                obj = ((PublicError)message.get(j)).getMessage();
                if (isAdded())
                {
                    showMsgToast(((String) (obj)));
                }
                j++;
                  goto _L13
_L7:
                hideLoading();
                tag = true;
                onLoad();
                showMsgToast("");
                return;
_L8:
                message = new ArrayList();
                message.clear();
                message.addAll(SsidFragment.getTianyiWifi());
                obj = new ArrayList();
                ((List) (obj)).clear();
                j = 0;
                do
                {
                    if (j >= message.size())
                    {
                        hideLoading();
                        message = new WifiAdapter(getActivity(), SsidFragment.getNewList(((List) (obj))), wifimac, ssidstring);
                        message.notifyDataSetChanged();
                        append.setAdapter(message);
                        wifibtn_click = true;
                        tag = true;
                        onLoad();
                        return;
                    }
                    ssiddata = new SsidData();
                    ssiddata.setLevel(((ScanResult)message.get(j)).level);
                    ssiddata.setLogo("");
                    ssiddata.setMac(((ScanResult)message.get(j)).BSSID);
                    ssiddata.setNettype("3");
                    ssiddata.setSsid(((ScanResult)message.get(j)).SSID);
                    ssiddata.setPassword(checkPassword(((ScanResult)message.get(j)).capabilities));
                    ((List) (obj)).add(ssiddata);
                    j++;
                } while (true);
_L9:
                if (isAdded())
                {
                    if (wifiManager.isWifiEnabled())
                    {
                        iv_wifi.setBackgroundDrawable(null);
                        iv_wifi.setImageResource(0x7f02013a);
                        showLoading();
                        getWiFi();
                        wifibtn = true;
                    } else
                    {
                        hideLoading();
                        append.setAdapter(null);
                        iv_wifi.setBackgroundDrawable(null);
                        iv_wifi.setImageResource(0x7f020137);
                        wifibtn = false;
                        showMsgToast(getString(0x7f06002f));
                        wifibtn_click = true;
                    }
                    tag = true;
                    onLoad();
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L10:
                if (isAdded())
                {
                    hideLoading();
                    iv_wifi.setBackgroundDrawable(null);
                    iv_wifi.setImageResource(0x7f020137);
                    append.setAdapter(null);
                    wifibtn_click = true;
                    wifibtn = false;
                    tag = true;
                    onLoad();
                    return;
                }
                if (true) goto _L1; else goto _L14
_L14:
            }

            
            {
                this$0 = SsidFragment.this;
                super();
            }
        };
    }

    private void onLoad()
    {
        wifiLView.stopRefresh();
        wifiLView.setRefreshTime("\u521A\u521A");
    }

    public int checkPassword(String s)
    {
        return !s.contains("WPA") && !s.contains("WEP") ? 0 : 1;
    }

    public void doSsidInfoErr(String s)
    {
        listHandler.sendEmptyMessage(3);
    }

    public void doSsidInfoSucc(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        Object obj;
        obj = SsidInfoParser.Ssidinfoparaser(s);
        if (!s.contains("OK"))
        {
            ComData.getInstance().setpError((List)obj);
            listHandler.sendEmptyMessage(4);
            return;
        }
        try
        {
            ComData.getInstance().setSsidData((List)obj);
            listHandler.sendEmptyMessage(2);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            hideLoading();
        }
        listHandler.sendEmptyMessage(6);
        return;
        listHandler.sendEmptyMessage(3);
        return;
    }

    public String getLocalMacAddress()
    {
        if (wifiMgr == null)
        {
            wifiMgr = (WifiManager)getActivity().getSystemService("wifi");
        }
        return wifiMgr.getConnectionInfo().getMacAddress();
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
label0:
        {
            if (i == 2)
            {
                if (intent == null)
                {
                    break label0;
                }
                username = intent.getExtras().getString("username");
            }
            if (i == 3)
            {
                username = getActivity().getSharedPreferences("LoginSucess", 0).getString("username", "");
                if (wifiManager.isWifiEnabled())
                {
                    getWiFi();
                }
            }
            super.onActivityResult(i, j, intent);
            return;
        }
        username = getActivity().getSharedPreferences("LoginSucess", 0).getString("username", "");
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
label0:
        {
            layoutinflater = layoutinflater.inflate(0x7f03001e, viewgroup, false);
            getActivity().getWindow().setFormat(-3);
            ll_pageInnerLoading = (LinearLayout)layoutinflater.findViewById(0x7f0a0029);
            iv_pageInnerLoading = (ImageView)ll_pageInnerLoading.findViewById(0x7f0a00a4);
            iv_pageInnerLoading.measure(0, 0);
            msInnerLoadingAnim = (AnimationDrawable)iv_pageInnerLoading.getBackground();
            iv_wifi = (ImageView)layoutinflater.findViewById(0x7f0a00a0);
            iv_wifi.setOnClickListener(onClickListener);
            Layout_sign = (LinearLayout)layoutinflater.findViewById(0x7f0a00a1);
            Layout_near = (LinearLayout)layoutinflater.findViewById(0x7f0a00a2);
            Layout_message = (LinearLayout)layoutinflater.findViewById(0x7f0a00a3);
            Layout_share = (LinearLayout)layoutinflater.findViewById(0x7f0a0030);
            Layout_sign.setOnClickListener(onClickListener);
            Layout_near.setOnClickListener(onClickListener);
            Layout_message.setOnClickListener(onClickListener);
            Layout_share.setOnClickListener(onClickListener);
            wifiManager = (WifiManager)getActivity().getSystemService("wifi");
            username = getActivity().getSharedPreferences("LoginSucess", 0).getString("username", "");
            wifiLView = (XListView)layoutinflater.findViewById(0x7f0a00a6);
            wifiLView.setDivider(null);
            wifiLView.setCacheColorHint(0);
            wifiLView.setPullLoadEnable(true);
            wifiLView.setXListViewListener(this);
            initialHandler();
            if (isAdded())
            {
                if (!wifiManager.isWifiEnabled())
                {
                    break label0;
                }
                showLoading();
                iv_wifi.setBackgroundDrawable(null);
                iv_wifi.setImageResource(0x7f02013a);
                getWiFi();
                wifibtn = true;
            }
            return layoutinflater;
        }
        hideLoading();
        iv_wifi.setBackgroundDrawable(null);
        iv_wifi.setImageResource(0x7f020137);
        wifibtn = false;
        showMsgToast(getString(0x7f06002f));
        return layoutinflater;
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onRefresh()
    {
        if (tag)
        {
            if (wifiManager.isWifiEnabled())
            {
                getWiFi();
                tag = false;
                return;
            } else
            {
                hideLoading();
                iv_wifi.setBackgroundDrawable(null);
                iv_wifi.setImageResource(0x7f020137);
                wifibtn = false;
                showMsgToast(getString(0x7f06002f));
                onLoad();
                return;
            }
        } else
        {
            onLoad();
            return;
        }
    }

    public void onResume()
    {
        super.onResume();
    }

    public void setWifiListView()
    {
        ssidstring = getConnectedSSID();
        wifimac = getConnectedWifiMac();
        if (getTianyiWifi() != null && getTianyiWifi().size() > 0)
        {
            listHandler.sendEmptyMessage(0);
        }
    }

    public void showWifiBtn()
    {
        getActivity().runOnUiThread(new Runnable() {

            final SsidFragment this$0;

            public void run()
            {
                listHandler.sendEmptyMessage(7);
            }

            
            {
                this$0 = SsidFragment.this;
                super();
            }
        });
    }







}
