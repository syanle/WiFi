// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.net.wifi.ScanResult;
import android.os.Handler;
import android.os.Looper;
import com.cat.data.ComData;
import com.cat.data.SsidData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            SsidFragment

public class this._cls0 extends Thread
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

                    final SsidFragment.MyThread this$1;

                    public int compare(SsidData ssiddata1, SsidData ssiddata2)
                    {
                        int k = ssiddata1.getLevel();
                        int l = ssiddata2.getLevel();
                        return Math.abs(k) <= Math.abs(l) ? -1 : 1;
                    }

                    public volatile int compare(Object obj, Object obj1)
                    {
                        return compare((SsidData)obj, (SsidData)obj1);
                    }

            
            {
                this$1 = SsidFragment.MyThread.this;
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

                    final SsidFragment.MyThread this$1;

                    public int compare(SsidData ssiddata1, SsidData ssiddata2)
                    {
                        int k = ssiddata1.getLevel();
                        int l = ssiddata2.getLevel();
                        return Math.abs(k) <= Math.abs(l) ? -1 : 1;
                    }

                    public volatile int compare(Object obj, Object obj1)
                    {
                        return compare((SsidData)obj, (SsidData)obj1);
                    }

            
            {
                this$1 = SsidFragment.MyThread.this;
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

                    final SsidFragment.MyThread this$1;

                    public int compare(SsidData ssiddata1, SsidData ssiddata2)
                    {
                        int k = ssiddata1.getLevel();
                        int l = ssiddata2.getLevel();
                        return Math.abs(k) <= Math.abs(l) ? -1 : 1;
                    }

                    public volatile int compare(Object obj, Object obj1)
                    {
                        return compare((SsidData)obj, (SsidData)obj1);
                    }

            
            {
                this$1 = SsidFragment.MyThread.this;
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
        SsidFragment.access$1(SsidFragment.this).sendEmptyMessage(9);
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
            SsidFragment.access$1(SsidFragment.this).sendEmptyMessage(6);
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

    public _cls3.this._cls1()
    {
        this$0 = SsidFragment.this;
        super();
    }
}
