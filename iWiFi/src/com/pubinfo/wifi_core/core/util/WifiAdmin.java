// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.util;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import java.io.PrintStream;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;

public class WifiAdmin
{

    private List mWifiConfiguration;
    private WifiInfo mWifiInfo;
    private List mWifiList;
    android.net.wifi.WifiManager.WifiLock mWifiLock;
    private WifiManager mWifiManager;

    public WifiAdmin(Context context)
    {
        mWifiManager = (WifiManager)context.getSystemService("wifi");
        mWifiInfo = mWifiManager.getConnectionInfo();
    }

    private WifiConfiguration IsExsits(String s)
    {
        Iterator iterator = mWifiManager.getConfiguredNetworks().iterator();
        WifiConfiguration wificonfiguration;
        do
        {
            if (!iterator.hasNext())
            {
                return null;
            }
            wificonfiguration = (WifiConfiguration)iterator.next();
        } while (!wificonfiguration.SSID.equals((new StringBuilder("\"")).append(s).append("\"").toString()));
        return wificonfiguration;
    }

    public WifiConfiguration CreateWifiInfo(String s, String s1, int i)
    {
        WifiConfiguration wificonfiguration = new WifiConfiguration();
        wificonfiguration.allowedAuthAlgorithms.clear();
        wificonfiguration.allowedGroupCiphers.clear();
        wificonfiguration.allowedKeyManagement.clear();
        wificonfiguration.allowedPairwiseCiphers.clear();
        wificonfiguration.allowedProtocols.clear();
        wificonfiguration.SSID = (new StringBuilder("\"")).append(s).append("\"").toString();
        wificonfiguration.priority = 1;
        s = IsExsits(s);
        if (s != null)
        {
            mWifiManager.removeNetwork(((WifiConfiguration) (s)).networkId);
        }
        if (i == 1)
        {
            wificonfiguration.allowedKeyManagement.set(0);
        }
        if (i == 2)
        {
            wificonfiguration.hiddenSSID = true;
            wificonfiguration.wepKeys[0] = (new StringBuilder("\"")).append(s1).append("\"").toString();
            wificonfiguration.allowedAuthAlgorithms.set(1);
            wificonfiguration.allowedGroupCiphers.set(3);
            wificonfiguration.allowedGroupCiphers.set(2);
            wificonfiguration.allowedGroupCiphers.set(0);
            wificonfiguration.allowedGroupCiphers.set(1);
            wificonfiguration.allowedKeyManagement.set(0);
            wificonfiguration.wepTxKeyIndex = 0;
        }
        if (i == 3)
        {
            wificonfiguration.preSharedKey = (new StringBuilder("\"")).append(s1).append("\"").toString();
            wificonfiguration.hiddenSSID = true;
            wificonfiguration.allowedAuthAlgorithms.set(0);
            wificonfiguration.allowedGroupCiphers.set(2);
            wificonfiguration.allowedKeyManagement.set(1);
            wificonfiguration.allowedPairwiseCiphers.set(1);
            wificonfiguration.allowedGroupCiphers.set(3);
            wificonfiguration.allowedPairwiseCiphers.set(2);
            wificonfiguration.status = 2;
        }
        return wificonfiguration;
    }

    public void acquireWifiLock()
    {
        mWifiLock.acquire();
    }

    public void addNetwork(WifiConfiguration wificonfiguration)
    {
        int i = mWifiManager.addNetwork(wificonfiguration);
        boolean flag = mWifiManager.enableNetwork(i, true);
        System.out.println((new StringBuilder("a--")).append(i).toString());
        System.out.println((new StringBuilder("b--")).append(flag).toString());
    }

    public int checkState()
    {
        return mWifiManager.getWifiState();
    }

    public void closeWifi()
    {
        if (mWifiManager.isWifiEnabled())
        {
            mWifiManager.setWifiEnabled(false);
        }
    }

    public void connectConfiguration(int i)
    {
        if (i > mWifiConfiguration.size())
        {
            return;
        } else
        {
            mWifiManager.enableNetwork(((WifiConfiguration)mWifiConfiguration.get(i)).networkId, true);
            return;
        }
    }

    public void creatWifiLock()
    {
        mWifiLock = mWifiManager.createWifiLock("Test");
    }

    public void disconnectWifi(int i)
    {
        mWifiManager.disableNetwork(i);
        mWifiManager.disconnect();
    }

    public String getBSSID()
    {
        if (mWifiInfo == null)
        {
            return "NULL";
        } else
        {
            return mWifiInfo.getBSSID();
        }
    }

    public List getConfiguration()
    {
        return mWifiConfiguration;
    }

    public int getIPAddress()
    {
        if (mWifiInfo == null)
        {
            return 0;
        } else
        {
            return mWifiInfo.getIpAddress();
        }
    }

    public String getMacAddress()
    {
        if (mWifiInfo == null)
        {
            return "NULL";
        } else
        {
            return mWifiInfo.getMacAddress();
        }
    }

    public int getNetworkId()
    {
        if (mWifiInfo == null)
        {
            return 0;
        } else
        {
            return mWifiInfo.getNetworkId();
        }
    }

    public String getWifiInfo()
    {
        if (mWifiInfo == null)
        {
            return "NULL";
        } else
        {
            return mWifiInfo.toString();
        }
    }

    public List getWifiList()
    {
        return mWifiList;
    }

    public StringBuilder lookUpScan()
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        do
        {
            if (i >= mWifiList.size())
            {
                return stringbuilder;
            }
            stringbuilder.append((new StringBuilder("Index_")).append((new Integer(i + 1)).toString()).append(":").toString());
            stringbuilder.append(((ScanResult)mWifiList.get(i)).toString());
            stringbuilder.append("/n");
            i++;
        } while (true);
    }

    public void openWifi()
    {
        if (!mWifiManager.isWifiEnabled())
        {
            mWifiManager.setWifiEnabled(true);
        }
    }

    public void releaseWifiLock()
    {
        if (mWifiLock.isHeld())
        {
            mWifiLock.acquire();
        }
    }

    public void startScan()
    {
        mWifiManager.startScan();
        mWifiList = mWifiManager.getScanResults();
        mWifiConfiguration = mWifiManager.getConfiguredNetworks();
    }
}
