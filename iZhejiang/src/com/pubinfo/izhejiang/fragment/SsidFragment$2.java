// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.ImageView;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import com.cat.data.SsidData;
import com.cat.list.XListView;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            SsidFragment

class this._cls0 extends Handler
{

    final SsidFragment this$0;

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 0 9: default 60
    //                   0 61
    //                   1 324
    //                   2 349
    //                   3 456
    //                   4 518
    //                   5 640
    //                   6 672
    //                   7 923
    //                   8 1086
    //                   9 364;
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
                    SsidFragment.access$3(SsidFragment.this, username, macstring, "", "", getActivity());
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
        (new Thread(SsidFragment.this)).start();
        return;
_L11:
        SsidFragment.access$4(SsidFragment.this);
        Object obj;
        SsidData ssiddata;
        int j;
        try
        {
            if (isAdded())
            {
                message = new fiAdapter(SsidFragment.this, getActivity(), wifiListAll, wifimac, ssidstring);
                SsidFragment.access$2(SsidFragment.this).setAdapter(message);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Message message) { }
        wifibtn_click = true;
        tag = true;
        SsidFragment.access$5(SsidFragment.this);
        return;
_L5:
        try
        {
            if (isAdded())
            {
                SsidFragment.access$4(SsidFragment.this);
                SsidFragment.access$6(SsidFragment.this, getString(0x7f060031));
                SsidFragment.access$1(SsidFragment.this).sendEmptyMessage(6);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Message message) { }
        tag = true;
        SsidFragment.access$5(SsidFragment.this);
        return;
_L6:
        tag = true;
        SsidFragment.access$5(SsidFragment.this);
        SsidFragment.access$4(SsidFragment.this);
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
        SsidFragment.access$1(SsidFragment.this).sendEmptyMessage(6);
        return;
        obj = ((PublicError)message.get(j)).getMessage();
        if (isAdded())
        {
            SsidFragment.access$6(SsidFragment.this, ((String) (obj)));
        }
        j++;
          goto _L13
_L7:
        SsidFragment.access$4(SsidFragment.this);
        tag = true;
        SsidFragment.access$5(SsidFragment.this);
        SsidFragment.access$6(SsidFragment.this, "");
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
                SsidFragment.access$4(SsidFragment.this);
                message = new fiAdapter(SsidFragment.this, getActivity(), SsidFragment.getNewList(((List) (obj))), wifimac, ssidstring);
                message.notifyDataSetChanged();
                SsidFragment.access$2(SsidFragment.this).setAdapter(message);
                wifibtn_click = true;
                tag = true;
                SsidFragment.access$5(SsidFragment.this);
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
                SsidFragment.access$0(SsidFragment.this);
                getWiFi();
                wifibtn = true;
            } else
            {
                SsidFragment.access$4(SsidFragment.this);
                SsidFragment.access$2(SsidFragment.this).setAdapter(null);
                iv_wifi.setBackgroundDrawable(null);
                iv_wifi.setImageResource(0x7f020137);
                wifibtn = false;
                SsidFragment.access$6(SsidFragment.this, getString(0x7f06002f));
                wifibtn_click = true;
            }
            tag = true;
            SsidFragment.access$5(SsidFragment.this);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L10:
        if (isAdded())
        {
            SsidFragment.access$4(SsidFragment.this);
            iv_wifi.setBackgroundDrawable(null);
            iv_wifi.setImageResource(0x7f020137);
            SsidFragment.access$2(SsidFragment.this).setAdapter(null);
            wifibtn_click = true;
            wifibtn = false;
            tag = true;
            SsidFragment.access$5(SsidFragment.this);
            return;
        }
        if (true) goto _L1; else goto _L14
_L14:
    }

    fiAdapter()
    {
        this$0 = SsidFragment.this;
        super();
    }
}
