// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.tools;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.util.Log;
import com.iwifi.sdk.protocol.impl.SDKCommonMotheds;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.sql.Date;
import java.text.SimpleDateFormat;

public class Logger
{
    static class LogHead
    {

        static long LogContentLen;
        static long LogtotalLen;
        static int appID;
        static long externalLogLen;
        static int platformId;
        static int standardLogLen;

        public static byte[] getLogHeaderBytes()
        {
            byte abyte0[];
            byte abyte1[];
            int j;
            abyte0 = new byte[36];
            abyte1 = intToBytes_littleEndian(appID);
            j = 0;
_L11:
            if (j < 4) goto _L2; else goto _L1
_L1:
            abyte1 = intToBytes_littleEndian(platformId);
            j = 0;
_L12:
            if (j < 4) goto _L4; else goto _L3
_L3:
            abyte1 = intToBytes_littleEndian(standardLogLen);
            j = 0;
_L13:
            if (j < 4) goto _L6; else goto _L5
_L5:
            abyte1 = longToBytes_littleEndian(externalLogLen);
            j = 0;
_L14:
            if (j < 8) goto _L8; else goto _L7
_L7:
            abyte1 = longToBytes_littleEndian(LogContentLen);
            j = 0;
_L15:
            if (j < 8) goto _L10; else goto _L9
_L9:
            abyte1 = longToBytes_littleEndian(LogtotalLen);
            j = 0;
_L16:
            if (j >= 8)
            {
                Log.v("test", (new StringBuilder(" b : ")).append(abyte0.toString()).toString());
                return abyte0;
            }
            break MISSING_BLOCK_LABEL_195;
_L2:
            abyte0[j] = abyte1[j];
            j++;
              goto _L11
_L4:
            abyte0[j + 4] = abyte1[j];
            j++;
              goto _L12
_L6:
            abyte0[j + 8] = abyte1[j];
            j++;
              goto _L13
_L8:
            abyte0[j + 12] = abyte1[j];
            j++;
              goto _L14
_L10:
            abyte0[j + 20] = abyte1[j];
            j++;
              goto _L15
            abyte0[j + 28] = abyte1[j];
            j++;
              goto _L16
        }

        public static byte[] intToBytes_bigEndian(int j)
        {
            return (new byte[] {
                (byte)(j >>> 24), (byte)(j >>> 16), (byte)(j >>> 8), (byte)j
            });
        }

        public static byte[] intToBytes_littleEndian(int j)
        {
            byte byte0 = (byte)(j >>> 24);
            byte byte1 = (byte)(j >>> 16);
            byte byte2 = (byte)(j >>> 8);
            return (new byte[] {
                (byte)j, byte2, byte1, byte0
            });
        }

        public static byte[] longToBytes_bigEndian(long l)
        {
            return (new byte[] {
                (byte)(int)(l >>> 56), (byte)(int)(l >>> 48), (byte)(int)(l >>> 40), (byte)(int)(l >>> 32), (byte)(int)(l >>> 24), (byte)(int)(l >>> 16), (byte)(int)(l >>> 8), (byte)(int)l
            });
        }

        public static byte[] longToBytes_littleEndian(long l)
        {
            byte byte0 = (byte)(int)(l >>> 56);
            byte byte1 = (byte)(int)(l >>> 48);
            byte byte2 = (byte)(int)(l >>> 40);
            byte byte3 = (byte)(int)(l >>> 32);
            byte byte4 = (byte)(int)(l >>> 24);
            byte byte5 = (byte)(int)(l >>> 16);
            byte byte6 = (byte)(int)(l >>> 8);
            return (new byte[] {
                (byte)(int)l, byte6, byte5, byte4, byte3, byte2, byte1, byte0
            });
        }

        LogHead()
        {
        }
    }


    public static final int LOG_LEVEL_DEBUG = 2;
    public static final int LOG_LEVEL_ERROR = 3;
    public static final int LOG_LEVEL_FATAL = 4;
    public static final int LOG_LEVEL_INFO = 0;
    public static final int LOG_LEVEL_WARNING = 1;
    public static final int LOG_SAVE_MODE_FILE = 0;
    public static final int LOG_SAVE_MODE_LOGCAT = 2;
    public static final int LOG_SAVE_MODE_SOCKET = 1;
    private static String Log_path;
    private static String SD_PATH;
    private static String USER_DEFINE_STR = "android";
    private static boolean bEnableLog = false;
    private static String iWiFi_Private_Path;
    private static int mLogLevel = 3;
    private static int mLogSaveMode = 0;

    public Logger()
    {
    }

    public static final int d(String s, String s1)
    {
label0:
        {
            boolean flag = false;
            int j = ((flag) ? 1 : 0);
            if (bEnableLog)
            {
                j = ((flag) ? 1 : 0);
                if (mLogLevel >= 3)
                {
                    if (mLogSaveMode != 2)
                    {
                        break label0;
                    }
                    j = Log.d(s, s1);
                }
            }
            return j;
        }
        printLog((new StringBuilder("debug|")).append(s).toString(), s1, null);
        return 0;
    }

    public static final int d(String s, String s1, Throwable throwable)
    {
label0:
        {
            boolean flag = false;
            int j = ((flag) ? 1 : 0);
            if (bEnableLog)
            {
                j = ((flag) ? 1 : 0);
                if (mLogLevel >= 3)
                {
                    if (mLogSaveMode != 2)
                    {
                        break label0;
                    }
                    j = Log.d(s, s1, throwable);
                }
            }
            return j;
        }
        printLog((new StringBuilder("debug|")).append(s).toString(), s1, null);
        return 0;
    }

    public static final int e(String s, String s1)
    {
label0:
        {
            int j = 0;
            if (bEnableLog)
            {
                if (mLogSaveMode != 2)
                {
                    break label0;
                }
                j = Log.e(s, s1);
            }
            return j;
        }
        printLog((new StringBuilder("error|")).append(s).toString(), s1, null);
        return 0;
    }

    public static final int e(String s, String s1, Throwable throwable)
    {
label0:
        {
            int j = 0;
            if (bEnableLog)
            {
                if (mLogSaveMode != 2)
                {
                    break label0;
                }
                j = Log.e(s, s1, throwable);
            }
            return j;
        }
        printLog((new StringBuilder("error|")).append(s).toString(), s1, null);
        return 0;
    }

    public static String getUpdateLogUserInfo(Context context, String s)
    {
        Object obj;
        String s1;
        String s2;
        String as[];
        String s3;
        String s4;
        int j;
        int k;
        s2 = "";
        s1 = "";
        k = -1;
        as = new String[6];
        as[0] = "";
        as[1] = "";
        as[2] = "";
        as[3] = "";
        as[4] = "";
        as[5] = "";
        obj = new SDKCommonMotheds(context);
        s3 = ((SDKCommonMotheds) (obj)).getIMEICode();
        s4 = ((SDKCommonMotheds) (obj)).getLocalIpAddress();
        obj = s2;
        j = k;
        PackageInfo packageinfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        obj = s2;
        j = k;
        context = packageinfo.versionName;
        obj = context;
        j = k;
        k = packageinfo.versionCode;
        obj = context;
        j = k;
        s2 = packageinfo.packageName;
        obj = s2;
        j = k;
_L2:
        as[0] = s;
        as[1] = s3;
        as[2] = s4;
        as[3] = context;
        as[4] = (new StringBuilder()).append(j).toString();
        as[5] = ((String) (obj));
        USER_DEFINE_STR = (new StringBuilder("android|")).append(s).append("|").append(s3).append("|").append(s4).append("|").append(context).append("|").append(j).append("|").append(((String) (obj))).toString();
        return USER_DEFINE_STR;
        context;
        context.printStackTrace();
        context = ((Context) (obj));
        obj = s1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String getUpdateLogUserInfo(String s)
    {
        USER_DEFINE_STR = (new StringBuilder("android|")).append(s).toString();
        return USER_DEFINE_STR;
    }

    public static String getUpdateLogUserInfo(String s, String s1, String s2, String s3, String s4, String s5)
    {
        String s6 = s;
        if (s == null)
        {
            s6 = "";
        }
        s = s1;
        if (s1 == null)
        {
            s = "";
        }
        s1 = s2;
        if (s2 == null)
        {
            s1 = "";
        }
        s2 = s3;
        if (s3 == null)
        {
            s2 = "";
        }
        s3 = s4;
        if (s4 == null)
        {
            s3 = "";
        }
        s4 = s5;
        if (s5 == null)
        {
            s4 = "";
        }
        USER_DEFINE_STR = (new StringBuilder("android|")).append(s6).append("|").append(s).append("|").append(s1).append("|").append(s2).append("|").append(s3).append("|").append(s4).toString();
        return USER_DEFINE_STR;
    }

    public static final int i(String s, String s1)
    {
label0:
        {
            boolean flag = false;
            int j = ((flag) ? 1 : 0);
            if (bEnableLog)
            {
                j = ((flag) ? 1 : 0);
                if (mLogLevel >= 1)
                {
                    if (mLogSaveMode != 2)
                    {
                        break label0;
                    }
                    j = Log.i(s, s1);
                }
            }
            return j;
        }
        printLog((new StringBuilder("info|")).append(s).toString(), s1, null);
        return 0;
    }

    public static final int i(String s, String s1, Throwable throwable)
    {
label0:
        {
            boolean flag = false;
            int j = ((flag) ? 1 : 0);
            if (bEnableLog)
            {
                j = ((flag) ? 1 : 0);
                if (mLogLevel >= 1)
                {
                    if (mLogSaveMode != 2)
                    {
                        break label0;
                    }
                    j = Log.i(s, s1, throwable);
                }
            }
            return j;
        }
        printLog((new StringBuilder("info|")).append(s).toString(), s1, null);
        return 0;
    }

    public static void print(String s, String s1)
    {
        Log.e(s, s1);
    }

    protected static void printLog(String s, String s1, Throwable throwable)
    {
        String s2;
        String s3;
        s3 = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ")).format(new Date(System.currentTimeMillis()));
        s2 = (new StringBuilder(String.valueOf(s3))).append("|").append(s).append("|").append(USER_DEFINE_STR).append("|").append(s1).toString();
        if (mLogSaveMode != 1) goto _L2; else goto _L1
_L1:
        throwable = new Socket();
        throwable.connect(new InetSocketAddress("192.168.18.135", 8899), 5000);
        OutputStream outputstream;
        outputstream = throwable.getOutputStream();
        new LogHead();
        LogHead.appID = 0;
        LogHead.platformId = 1;
        LogHead.standardLogLen = (new StringBuilder(String.valueOf(s3))).append("|").append(s).append("|").toString().length();
        LogHead.externalLogLen = (new StringBuilder(String.valueOf(USER_DEFINE_STR))).append("|").toString().length();
        LogHead.LogContentLen = s1.length();
        LogHead.LogtotalLen = s2.length() + 36;
        s = LogHead.getLogHeaderBytes();
        s1 = new byte[s.length + s2.length()];
        int j = 0;
_L9:
        if (j < s.length) goto _L4; else goto _L3
_L3:
        int k = s.length;
        j = 0;
_L7:
        if (k < s.length + s2.length()) goto _L6; else goto _L5
_L5:
        outputstream.write(s1);
        outputstream.flush();
        outputstream.close();
        try
        {
            throwable.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        break MISSING_BLOCK_LABEL_342;
_L4:
        s1[j] = s[j];
        j++;
        continue; /* Loop/switch isn't completed */
_L6:
        s1[k] = s2.getBytes()[j];
        k++;
        j++;
          goto _L7
        s;
        s.printStackTrace();
        throwable.close();
        return;
        s;
        throwable.close();
        throw s;
        return;
_L2:
        if (mLogSaveMode != 0)
        {
            break MISSING_BLOCK_LABEL_480;
        }
        s = new SimpleDateFormat("yyyy-MM-dd");
        try
        {
            s = (new StringBuilder(String.valueOf(s.format(new java.util.Date())))).append(".log").toString();
            s = (new StringBuilder(String.valueOf(Log_path))).append(s).toString();
            s1 = new File(s);
            if (!s1.exists())
            {
                s1.createNewFile();
            }
            s = new BufferedWriter(new FileWriter(s, true), 2048);
            s.write(s2);
            s.write("\n");
            s.flush();
            s.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        break MISSING_BLOCK_LABEL_475;
        s;
        s.printStackTrace();
        return;
        Log.v(s, s1, throwable);
        return;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public static void setLogStatus(boolean flag, int j, int k)
    {
        bEnableLog = flag;
        mLogLevel = j;
        mLogSaveMode = k;
    }

    public static final int w(String s, String s1)
    {
label0:
        {
            boolean flag = false;
            int j = ((flag) ? 1 : 0);
            if (bEnableLog)
            {
                j = ((flag) ? 1 : 0);
                if (mLogLevel >= 2)
                {
                    if (mLogSaveMode != 2)
                    {
                        break label0;
                    }
                    j = Log.w(s, s1);
                }
            }
            return j;
        }
        printLog((new StringBuilder("warning|")).append(s).toString(), s1, null);
        return 0;
    }

    public static final int w(String s, String s1, Throwable throwable)
    {
label0:
        {
            boolean flag = false;
            int j = ((flag) ? 1 : 0);
            if (bEnableLog)
            {
                j = ((flag) ? 1 : 0);
                if (mLogLevel >= 2)
                {
                    if (mLogSaveMode != 2)
                    {
                        break label0;
                    }
                    j = Log.w(s, s1, throwable);
                }
            }
            return j;
        }
        printLog((new StringBuilder("waining|")).append(s).toString(), s1, null);
        return 0;
    }

    static 
    {
        iWiFi_Private_Path = "iWiFi";
        Log_path = "Log";
        if (Environment.getExternalStorageState().equals("mounted"))
        {
            SD_PATH = Environment.getExternalStorageDirectory().getPath();
            File file = new File((new StringBuilder(String.valueOf(SD_PATH))).append(File.separator).append(iWiFi_Private_Path).toString());
            if (!file.exists())
            {
                file.mkdir();
            }
            file = new File((new StringBuilder(String.valueOf(SD_PATH))).append(File.separator).append(iWiFi_Private_Path).append(File.separator).append(Log_path).toString());
            if (!file.exists())
            {
                file.mkdir();
            }
            Log_path = (new StringBuilder(String.valueOf(SD_PATH))).append(File.separator).append(iWiFi_Private_Path).append(File.separator).append(Log_path).append(File.separator).toString();
        } else
        {
            Log.d("iWiFiSDK", "Logger: current device hasn't mount SD card");
            bEnableLog = false;
        }
    }
}
