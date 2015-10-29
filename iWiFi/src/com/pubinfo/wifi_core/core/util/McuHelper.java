// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;

// Referenced classes of package com.pubinfo.wifi_core.core.util:
//            McuUtil

public class McuHelper
{

    public McuHelper()
    {
    }

    public static boolean checkSDCard()
    {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static int comUrl(String s)
    {
        int j = 0;
        int i = 1;
        do
        {
            if (i > 32)
            {
                return j;
            }
            if (s.equals((new StringBuilder("http://")).append(McuUtil.ProvinceMsp[i]).toString()))
            {
                return i;
            }
            if (i == 32)
            {
                j = 32;
            }
            i++;
        } while (true);
    }

    public static String getProjectname(String s)
    {
        s = s.split("\\/");
        if (s.length > 4)
        {
            return s[3];
        } else
        {
            return "";
        }
    }

    public static String getPuIdChannelNo(String s)
    {
        int j;
        String s2 = "";
        String s1;
        int i;
        int k;
        int l;
        if (s == null)
        {
            s1 = "";
        } else
        {
            s1 = s.toUpperCase();
        }
        i = s1.indexOf("PUID-CHANNELNO");
        s1 = s2;
        if (i == -1) goto _L2; else goto _L1
_L1:
        k = s.indexOf("=", i) + 1;
        l = s.indexOf("&", i);
        i = l;
        j = k;
        if (l == -1)
        {
            i = s.length();
            j = k;
        }
_L6:
        if (s.charAt(j) == ' ') goto _L4; else goto _L3
_L3:
        if (j == i)
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = s.substring(j, i);
_L2:
        return s1;
_L4:
        j++;
        if (true) goto _L6; else goto _L5
_L5:
        return "";
    }

    public static String getPuName(String s)
    {
        String s2 = "";
        String s1;
        int i;
        if (s == null)
        {
            s1 = "";
        } else
        {
            s1 = s.toUpperCase();
        }
        i = s1.indexOf("PUNAME");
        s1 = s2;
        if (i != -1)
        {
            int k = s.indexOf("=", i) + 1;
            int j = s.indexOf("&", i);
            i = j;
            if (j == -1)
            {
                i = s.length();
            }
            j = k;
            if (k == i)
            {
                return null;
            }
            for (; s.charAt(j) == ' '; j++) { }
            s1 = s2;
            if (j != i)
            {
                s1 = s.substring(j, i);
            }
        }
        return s1;
    }

    public static int getPuProperty(String s)
    {
        int i;
        int j;
        i = 0;
        String s1;
        int k;
        int l;
        if (s == null)
        {
            s1 = "";
        } else
        {
            s1 = s.toUpperCase();
        }
        j = s1.indexOf("PUPROPERTY");
        if (j == -1) goto _L2; else goto _L1
_L1:
        k = s.indexOf("=", j) + 1;
        l = s.indexOf("&", j);
        i = l;
        j = k;
        if (l == -1)
        {
            i = s.length();
            j = k;
        }
_L6:
        if (s.charAt(j) == ' ') goto _L4; else goto _L3
_L3:
        if (j != i)
        {
            try
            {
                i = Integer.parseInt(s.substring(j, i));
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                return 0;
            }
        } else
        {
            i = 1;
        }
_L2:
        return i;
_L4:
        j++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static String getReqAddr(String s)
    {
        String s1 = s;
        int i = s.indexOf("?");
        if (i > -1)
        {
            System.out.println((new StringBuilder("wenHao = ")).append(i).toString());
            s1 = s.substring(0, i);
        }
        s = s1.split("\\/");
        if (s != null && s.length > 4)
        {
            return s1.substring(s1.indexOf(s[s.length - 1]), s1.length());
        } else
        {
            return "";
        }
    }

    public static String getReqIP(String s)
    {
        s = s.split("\\/");
        if (s.length > 3)
        {
            return s[2];
        } else
        {
            return "";
        }
    }

    public static long getSDSize()
    {
        StatFs statfs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l = statfs.getBlockSize();
        return (long)statfs.getAvailableBlocks() * l;
    }

    public static String getUserId(String s)
    {
        int j;
        String s2 = "";
        String s1;
        int i;
        int k;
        int l;
        if (s == null)
        {
            s1 = "";
        } else
        {
            s1 = s.toUpperCase();
        }
        i = s1.indexOf("USERID");
        s1 = s2;
        if (i == -1) goto _L2; else goto _L1
_L1:
        k = s.indexOf("=", i) + 1;
        l = s.indexOf("&", i);
        i = l;
        j = k;
        if (l == -1)
        {
            i = s.length();
            j = k;
        }
_L6:
        if (s.charAt(j) == ' ') goto _L4; else goto _L3
_L3:
        if (j == i)
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = s.substring(j, i);
_L2:
        return s1;
_L4:
        j++;
        if (true) goto _L6; else goto _L5
_L5:
        return "";
    }

    public static String getVauPtzAdd(String s)
    {
        int j;
        String s2 = "";
        String s1;
        int i;
        int k;
        int l;
        if (s == null)
        {
            s1 = "";
        } else
        {
            s1 = s.toUpperCase();
        }
        i = s1.indexOf("VAUPTZADD");
        s1 = s2;
        if (i == -1) goto _L2; else goto _L1
_L1:
        k = s.indexOf("=", i) + 1;
        l = s.indexOf("&", i);
        i = l;
        j = k;
        if (l == -1)
        {
            i = s.length();
            j = k;
        }
_L6:
        if (s.charAt(j) == ' ') goto _L4; else goto _L3
_L3:
        if (j == i)
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = s.substring(j, i);
_L2:
        return s1;
_L4:
        j++;
        if (true) goto _L6; else goto _L5
_L5:
        return "";
    }

    public static String getVauPtzPort(String s)
    {
        String s1;
        int i;
        if (s == null)
        {
            s1 = "";
        } else
        {
            s1 = s.toUpperCase();
        }
        i = s1.indexOf("VAUPTZPORT");
        if (i != -1)
        {
            int k = s.indexOf("=", i) + 1;
            int l = s.indexOf("&", i);
            i = l;
            int j = k;
            if (l == -1)
            {
                i = s.length();
                j = k;
            }
            do
            {
                if (s.charAt(j) != ' ')
                {
                    if (j != i)
                    {
                        return s.substring(j, i);
                    } else
                    {
                        return "5060";
                    }
                }
                j++;
            } while (true);
        } else
        {
            return "5060";
        }
    }

    public static boolean isNetworkAvailable(Context context)
    {
        context = (ConnectivityManager)context.getSystemService("connectivity");
        if (context != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if ((context = context.getAllNetworkInfo()) != null)
        {
            int i = 0;
            while (i < context.length) 
            {
                if (context[i].getState() == android.net.NetworkInfo.State.CONNECTED)
                {
                    return true;
                }
                i++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public static boolean isWapConnection()
    {
        Enumeration enumeration = null;
        Enumeration enumeration1 = NetworkInterface.getNetworkInterfaces();
        enumeration = enumeration1;
_L2:
        if (!enumeration.hasMoreElements())
        {
            return false;
        }
        break; /* Loop/switch isn't completed */
        SocketException socketexception;
        socketexception;
        socketexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
        String s = ((InetAddress)((NetworkInterface)enumeration.nextElement()).getInetAddresses().nextElement()).toString();
        if (s != null && s.indexOf("/10.") != -1)
        {
            return true;
        }
        if (true) goto _L2; else goto _L3
_L3:
    }
}
