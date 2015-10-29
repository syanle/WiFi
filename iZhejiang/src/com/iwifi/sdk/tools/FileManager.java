// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.tools;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.DhcpInfo;
import android.net.wifi.WifiManager;
import android.os.Environment;
import android.telephony.TelephonyManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.util.Iterator;
import org.apache.http.util.EncodingUtils;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

// Referenced classes of package com.iwifi.sdk.tools:
//            ErrDeal

public class FileManager
{

    public static final String MIME_TYPE_TABLE[][];

    public FileManager()
    {
    }

    public static void cleanEmailUnreadCount(Context context)
    {
        context = getSharedPreferences(context, "emailUnreadCount", 0).edit();
        context.putInt("emailUnreadCount", 0);
        context.commit();
    }

    public static void createFileAndWriteToFile(String s, String s1, String s2)
    {
        createPath(s);
        s = new File(s, s1);
        try
        {
            s = new FileOutputStream(s);
            s.write(s2.getBytes());
            s.close();
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
    }

    public static void createPath(String s)
    {
        if (sdcardIsExist())
        {
            s = new File(s);
            if (!s.exists())
            {
                s.mkdirs();
            }
        }
    }

    public static void deleteFile(String s, String s1)
    {
        createPath(s);
        (new File(s, s1)).delete();
    }

    public static boolean fileIsExist(String s, String s1)
    {
        if (sdcardIsExist())
        {
            return (new File((new StringBuilder(String.valueOf(s))).append("/").append(s1).toString())).exists();
        } else
        {
            return false;
        }
    }

    public static String getDevId(Context context)
    {
        context = (TelephonyManager)context.getSystemService("phone");
        return (new StringBuilder()).append(context.getDeviceId()).toString();
    }

    public static String getIp(Context context)
    {
        Object obj;
        Object obj1;
        Object obj2;
        InputStream inputstream;
        InputStream inputstream1;
        String s;
        s = "";
        inputstream1 = null;
        obj = null;
        inputstream = null;
        obj1 = s;
        obj2 = s;
        InputStream inputstream2 = context.getResources().getAssets().open("config.xml");
        obj1 = s;
        inputstream = inputstream2;
        obj2 = s;
        inputstream1 = inputstream2;
        obj = inputstream2;
        Iterator iterator = (new SAXReader()).read(inputstream2).getRootElement().elementIterator("IpConfig");
        context = s;
_L6:
        obj1 = context;
        inputstream = inputstream2;
        obj2 = context;
        inputstream1 = inputstream2;
        obj = inputstream2;
        boolean flag = iterator.hasNext();
        if (flag) goto _L2; else goto _L1
_L1:
        obj = context;
        if (inputstream2 == null)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        inputstream2.close();
        obj = context;
_L3:
        return ((String) (obj));
_L2:
        obj1 = context;
        inputstream = inputstream2;
        obj2 = context;
        inputstream1 = inputstream2;
        obj = inputstream2;
        context = ((Element)iterator.next()).elementText("Ip").toString();
        continue; /* Loop/switch isn't completed */
        context;
        obj = inputstream;
        context.printStackTrace();
        obj = inputstream;
        ErrDeal.getActivityErr(context, new FileManager());
        obj = obj1;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                context.printStackTrace();
                ErrDeal.getActivityErr(context, new FileManager());
                return ((String) (obj1));
            }
            return ((String) (obj1));
        }
          goto _L3
        context;
        obj = inputstream1;
        context.printStackTrace();
        obj = inputstream1;
        ErrDeal.getDocumentErr(context, new FileManager());
        obj = obj2;
        if (inputstream1 == null) goto _L3; else goto _L4
_L4:
        try
        {
            inputstream1.close();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            ErrDeal.getActivityErr(context, new FileManager());
            return ((String) (obj2));
        }
        return ((String) (obj2));
        context;
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                ErrDeal.getActivityErr(ioexception, new FileManager());
            }
        }
        throw context;
        IOException ioexception1;
        ioexception1;
        ioexception1.printStackTrace();
        ErrDeal.getActivityErr(ioexception1, new FileManager());
        return context;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static String getMacAddress(Context context)
    {
        context = "";
        String s;
        LineNumberReader linenumberreader;
        try
        {
            linenumberreader = new LineNumberReader(new InputStreamReader(Runtime.getRuntime().exec("cat /sys/class/net/wlan0/address ").getInputStream()));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return "";
        }
        if (context == null)
        {
            return "";
        }
        s = linenumberreader.readLine();
        context = s;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        context = s.trim();
        return context;
    }

    public static SharedPreferences getSharedPreferences(Context context, String s, int i)
    {
        return context.getSharedPreferences(s, i);
    }

    public static String getSsidList(Context context)
    {
        Object obj;
        Object obj1;
        Object obj2;
        InputStream inputstream;
        InputStream inputstream1;
        String s;
        s = "";
        inputstream1 = null;
        obj = null;
        inputstream = null;
        obj1 = s;
        obj2 = s;
        InputStream inputstream2 = context.getResources().getAssets().open("ssid.xml");
        obj1 = s;
        inputstream = inputstream2;
        obj2 = s;
        inputstream1 = inputstream2;
        obj = inputstream2;
        Iterator iterator = (new SAXReader()).read(inputstream2).getRootElement().elementIterator("Ssid");
        context = s;
_L6:
        obj1 = context;
        inputstream = inputstream2;
        obj2 = context;
        inputstream1 = inputstream2;
        obj = inputstream2;
        boolean flag = iterator.hasNext();
        if (flag) goto _L2; else goto _L1
_L1:
        obj = context;
        if (inputstream2 == null)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        inputstream2.close();
        obj = context;
_L3:
        return ((String) (obj));
_L2:
        obj1 = context;
        inputstream = inputstream2;
        obj2 = context;
        inputstream1 = inputstream2;
        obj = inputstream2;
        context = ((Element)iterator.next()).elementText("SsidString").toString();
        continue; /* Loop/switch isn't completed */
        context;
        obj = inputstream;
        context.printStackTrace();
        obj = inputstream;
        ErrDeal.getActivityErr(context, new FileManager());
        obj = obj1;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                context.printStackTrace();
                ErrDeal.getActivityErr(context, new FileManager());
                return ((String) (obj1));
            }
            return ((String) (obj1));
        }
          goto _L3
        context;
        obj = inputstream1;
        context.printStackTrace();
        obj = inputstream1;
        ErrDeal.getDocumentErr(context, new FileManager());
        obj = obj2;
        if (inputstream1 == null) goto _L3; else goto _L4
_L4:
        try
        {
            inputstream1.close();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            ErrDeal.getActivityErr(context, new FileManager());
            return ((String) (obj2));
        }
        return ((String) (obj2));
        context;
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                ErrDeal.getActivityErr(ioexception, new FileManager());
            }
        }
        throw context;
        IOException ioexception1;
        ioexception1;
        ioexception1.printStackTrace();
        ErrDeal.getActivityErr(ioexception1, new FileManager());
        return context;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static String getVersionCode(Context context)
    {
        Object obj;
        Object obj1;
        InputStream inputstream;
        Object obj2;
        InputStream inputstream1;
        String s;
        s = "";
        inputstream1 = null;
        obj = null;
        inputstream = null;
        obj1 = s;
        obj2 = s;
        InputStream inputstream2 = context.getResources().getAssets().open("config.xml");
        inputstream = inputstream2;
        obj1 = s;
        inputstream1 = inputstream2;
        obj2 = s;
        obj = inputstream2;
        Iterator iterator = (new SAXReader()).read(inputstream2).getRootElement().elementIterator("IpConfig");
        context = s;
_L6:
        inputstream = inputstream2;
        obj1 = context;
        inputstream1 = inputstream2;
        obj2 = context;
        obj = inputstream2;
        boolean flag = iterator.hasNext();
        if (flag) goto _L2; else goto _L1
_L1:
        obj = context;
        if (inputstream2 == null)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        inputstream2.close();
        obj = context;
_L3:
        return ((String) (obj));
_L2:
        inputstream = inputstream2;
        obj1 = context;
        inputstream1 = inputstream2;
        obj2 = context;
        obj = inputstream2;
        context = ((Element)iterator.next()).elementText("Version").toString();
        continue; /* Loop/switch isn't completed */
        context;
        obj = inputstream;
        context.printStackTrace();
        obj = inputstream;
        ErrDeal.getActivityErr(context, new FileManager());
        obj = obj1;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                context.printStackTrace();
                ErrDeal.getActivityErr(context, new FileManager());
                return ((String) (obj1));
            }
            return ((String) (obj1));
        }
          goto _L3
        context;
        obj = inputstream1;
        context.printStackTrace();
        obj = inputstream1;
        ErrDeal.getDocumentErr(context, new FileManager());
        obj = obj2;
        if (inputstream1 == null) goto _L3; else goto _L4
_L4:
        try
        {
            inputstream1.close();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            ErrDeal.getActivityErr(context, new FileManager());
            return ((String) (obj2));
        }
        return ((String) (obj2));
        context;
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                ErrDeal.getActivityErr(ioexception, new FileManager());
            }
        }
        throw context;
        IOException ioexception1;
        ioexception1;
        ioexception1.printStackTrace();
        ErrDeal.getActivityErr(ioexception1, new FileManager());
        return context;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static String getWifiIp(Context context)
    {
        int i = ((WifiManager)context.getSystemService("wifi")).getDhcpInfo().gateway;
        if (i != 0)
        {
            return (new StringBuilder(String.valueOf(i & 0xff))).append(".").append(i >> 8 & 0xff).append(".").append(i >> 16 & 0xff).append(".").append(i >> 24 & 0xff).toString();
        } else
        {
            return "";
        }
    }

    public static String inputStream2String(InputStream inputstream)
        throws IOException
    {
        StringBuffer stringbuffer = new StringBuffer();
        byte abyte0[] = new byte[4096];
        do
        {
            int i = inputstream.read(abyte0);
            if (i == -1)
            {
                return stringbuffer.toString();
            }
            stringbuffer.append(new String(abyte0, 0, i));
        } while (true);
    }

    public static String readFromFile(String s, String s1)
    {
        String s2 = "";
        String s3 = s2;
        if (!sdcardIsExist())
        {
            break MISSING_BLOCK_LABEL_96;
        }
        s3 = s2;
        String s4 = s2;
        try
        {
            s1 = new FileInputStream((new StringBuilder(String.valueOf(s))).append("/").append(s1).toString());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return s3;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return s4;
        }
        s3 = s2;
        s4 = s2;
        s = new byte[s1.available()];
        s3 = s2;
        s4 = s2;
        s1.read(s);
        s3 = s2;
        s4 = s2;
        s = EncodingUtils.getString(s, "UTF-8");
        s3 = s;
        s4 = s;
        s1.close();
        s3 = s;
        return s3;
    }

    public static String replace(String s, String s1, String s2)
    {
        String s5 = "";
        int k = s.indexOf(s1);
        boolean flag = false;
        int i = k;
        int j = ((flag) ? 1 : 0);
        String s4 = s5;
        String s3 = s2;
        if (s2 == null)
        {
            s3 = "";
            s4 = s5;
            j = ((flag) ? 1 : 0);
            i = k;
        }
        do
        {
            if (i < 0)
            {
                return (new StringBuilder(String.valueOf(s4))).append(s.substring(j, s.length())).toString();
            }
            s4 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(s4))).append(s.substring(j, i)).toString()))).append(s3).toString();
            i += s1.length();
            j = i;
            i = s.indexOf(s1, i);
        } while (true);
    }

    public static boolean sdcardIsExist()
    {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static void setIp(String s, Context context)
    {
        context = getSharedPreferences(context, "newServiceAddress", 0).edit();
        context.putString("newServiceAddress", s);
        context.commit();
    }

    public boolean findLocalAttachment(String s, String s1)
    {
        if (s != null && !"".equals(s) && s1 != null && !"".equals(s1))
        {
            if ((s = new File(s, s1)).exists())
            {
                if (s.length() == 0L)
                {
                    s.delete();
                    return false;
                } else
                {
                    return true;
                }
            }
        }
        return false;
    }

    static 
    {
        String as[] = {
            ".doc", "application/msword"
        };
        String as1[] = {
            ".xls", "application/vnd.ms-excel"
        };
        String as2[] = {
            ".xlsx", "application/vnd.ms-excel"
        };
        String as3[] = {
            ".ppt", "application/vnd.ms-powerpoint"
        };
        String as4[] = {
            ".zip", "application/zip"
        };
        String as5[] = {
            ".jpeg", "image/jpeg"
        };
        String as6[] = {
            ".png", "image/png"
        };
        String as7[] = {
            ".txt", "text/plain"
        };
        String as8[] = {
            ".mp4", "video/mp4"
        };
        String as9[] = {
            ".java", "text/plain"
        };
        String as10[] = {
            ".xml", "text/plain"
        };
        String as11[] = {
            ".rmvb", "audio/x-pn-realaudio"
        };
        String as12[] = {
            ".wma", "audio/x-ms-wma"
        };
        String as13[] = {
            ".wmv", "audio/x-ms-wmv"
        };
        String as14[] = {
            ".fif", "application/fractals"
        };
        String as15[] = {
            ".spl", "application/futuresplash"
        };
        String as16[] = {
            ".acx", "application/internet-property-stream"
        };
        String as17[] = {
            ".conf", "text/plain"
        };
        String as18[] = {
            ".cpp", "text/plain"
        };
        String as19[] = {
            ".class", "application/octet-stream"
        };
        String as20[] = {
            ".exe", "application/octet-stream"
        };
        String as21[] = {
            ".lha", "application/octet-stream"
        };
        String as22[] = {
            ".oda", "application/oda"
        };
        String as23[] = {
            ".p10", "application/pkcs10"
        };
        String as24[] = {
            ".crl", "application/pkix-crl"
        };
        String as25[] = {
            ".rtf", "application/rtf"
        };
        String as26[] = {
            ".setreg", "application/set-registration-initiation"
        };
        String as27[] = {
            ".m4a", "audio/mp4a-latm"
        };
        String as28[] = {
            ".m4b", "audio/mp4a-latm"
        };
        String as29[] = {
            ".m4p", "audio/mp4a-latm"
        };
        String as30[] = {
            ".m4u", "video/vnd.mpegurl"
        };
        String as31[] = {
            ".m4v", "video/x-m4v"
        };
        String as32[] = {
            ".mp2", "audio/x-mpeg"
        };
        String as33[] = {
            ".mpc", "application/vnd.mpohun.certificate"
        };
        String as34[] = {
            ".mpg4", "video/mp4"
        };
        String as35[] = {
            ".mpga", "audio/mpeg"
        };
        String as36[] = {
            ".xla", "application/vnd.ms-excel"
        };
        String as37[] = {
            ".xlt", "application/vnd.ms-excel"
        };
        String as38[] = {
            ".msg", "application/vnd.ms-outlook"
        };
        String as39[] = {
            ".sst", "application/vnd.ms-pkicertstore"
        };
        String as40[] = {
            ".cat", "application/vnd.ms-pkiseccat"
        };
        String as41[] = {
            ".sh", "text/plain"
        };
        String as42[] = {
            ".wcm", "application/vnd.ms-works"
        };
        String as43[] = {
            ".cpio", "application/x-cpio"
        };
        String as44[] = {
            ".dcr", "application/x-director"
        };
        String as45[] = {
            ".dvi", "application/x-dvi"
        };
        String as46[] = {
            ".gtar", "application/x-gtar"
        };
        String as47[] = {
            ".ins", "application/x-internet-signup"
        };
        String as48[] = {
            ".isp", "application/x-internet-signup"
        };
        String as49[] = {
            ".iii", "application/x-iphone"
        };
        String as50[] = {
            ".mdb", "application/x-msaccess"
        };
        String as51[] = {
            ".clp", "application/x-msclip"
        };
        String as52[] = {
            ".dll", "application/x-msdownload"
        };
        String as53[] = {
            ".pub", "application/x-mspublisher"
        };
        String as54[] = {
            ".wri", "application/x-mswrite"
        };
        String as55[] = {
            ".cdf", "application/x-netcdf"
        };
        String as56[] = {
            ".nc", "application/x-netcdf"
        };
        String as57[] = {
            ".pmc", "application/x-perfmon"
        };
        String as58[] = {
            ".pfx", "application/x-pkcs12"
        };
        String as59[] = {
            ".spc", "application/x-pkcs7-certificates"
        };
        String as60[] = {
            ".p7m", "application/x-pkcs7-mime"
        };
        String as61[] = {
            ".sh", "application/x-sh"
        };
        String as62[] = {
            ".swf", "application/x-shockwave-flash"
        };
        String as63[] = {
            ".sit", "application/x-stuffit"
        };
        String as64[] = {
            ".sv4cpio", "application/x-sv4cpio"
        };
        String as65[] = {
            ".sv4crc", "application/x-sv4crc"
        };
        String as66[] = {
            ".tar", "application/x-tar"
        };
        String as67[] = {
            ".texinfo", "application/x-texinfo"
        };
        String as68[] = {
            ".roff", "application/x-troff"
        };
        String as69[] = {
            ".mid", "audio/mid"
        };
        String as70[] = {
            ".rmi", "audio/mid"
        };
        String as71[] = {
            ".mp3", "audio/mpeg"
        };
        String as72[] = {
            ".ra", "audio/x-pn-realaudio"
        };
        String as73[] = {
            ".tif", "image/tiff"
        };
        String as74[] = {
            ".tiff", "image/tiff"
        };
        String as75[] = {
            ".ras", "image/x-cmu-raster"
        };
        String as76[] = {
            ".cmx", "image/x-cmx"
        };
        String as77[] = {
            ".ico", "image/x-icon"
        };
        String as78[] = {
            ".pnm", "image/x-portable-anymap"
        };
        String as79[] = {
            ".pgm", "image/x-portable-graymap"
        };
        String as80[] = {
            ".xpm", "image/x-xpixmap"
        };
        String as81[] = {
            ".nws", "message/rfc822"
        };
        String as82[] = {
            ".htm", "text/html"
        };
        String as83[] = {
            ".html", "text/html"
        };
        String as84[] = {
            ".stm", "text/html"
        };
        String as85[] = {
            ".htc", "text/x-component"
        };
        String as86[] = {
            ".mp2", "video/mpeg"
        };
        String as87[] = {
            ".mov", "video/quicktime"
        };
        String as88[] = {
            ".lsf", "video/x-la-asf"
        };
        String as89[] = {
            ".lsx", "video/x-la-asf"
        };
        String as90[] = {
            ".asr", "video/x-ms-asf"
        };
        String as91[] = {
            ".flr", "x-world/x-vrml"
        };
        String as92[] = {
            ".wrl", "x-world/x-vrml"
        };
        String as93[] = {
            ".xaf", "x-world/x-vrml"
        };
        String as94[] = {
            ".xof", "x-world/x-vrml"
        };
        MIME_TYPE_TABLE = (new String[][] {
            as, new String[] {
                ".docx", "application/msword"
            }, new String[] {
                ".pdf", "application/pdf"
            }, as1, as2, as3, new String[] {
                ".pptx", "application/vnd.ms-powerpoint"
            }, new String[] {
                ".rar", "application/x-rar-compressed"
            }, as4, as5, 
            new String[] {
                ".bmp", "image/bmp"
            }, new String[] {
                ".jpg", "image/jpeg"
            }, as6, as7, new String[] {
                ".mp3", "audio/x-mpeg"
            }, as8, as9, new String[] {
                ".apk", "application/vnd.android.package-archive"
            }, new String[] {
                ".jpe", "image/jpeg"
            }, as10, 
            new String[] {
                ".3gp", "video/3gpp"
            }, new String[] {
                ".stl", "application/vnd.ms-pkistl"
            }, as11, as12, as13, new String[] {
                ".c", "text/plain"
            }, new String[] {
                ".h", "text/plain"
            }, new String[] {
                ".evy", "application/envoy"
            }, as14, as15, 
            new String[] {
                ".hta", "application/hta"
            }, as16, new String[] {
                ".hqx", "application/mac-binhex40"
            }, as17, as18, new String[] {
                ".dot", "application/msword"
            }, new String[] {
                ".bin", "application/octet-stream"
            }, as19, new String[] {
                ".dms", "application/octet-stream"
            }, as20, 
            as21, new String[] {
                ".lzh", "application/octet-stream"
            }, as22, new String[] {
                ".axs", "application/olescript"
            }, new String[] {
                ".prf", "application/pics-rules"
            }, new String[] {
                ".jar", "application/java-archive"
            }, as23, as24, new String[] {
                ".ai", "application/postscript"
            }, new String[] {
                ".log", "text/plain"
            }, 
            new String[] {
                ".eps", "application/postscript"
            }, new String[] {
                ".ps", "application/postscript"
            }, as25, new String[] {
                ".setpay", "application/set-payment-initiation"
            }, as26, as27, as28, as29, as30, as31, 
            as32, as33, as34, as35, as36, new String[] {
                ".xlc", "application/vnd.ms-excel"
            }, new String[] {
                ".xlm", "application/vnd.ms-excel"
            }, as37, new String[] {
                ".xlw", "application/vnd.ms-excel"
            }, new String[] {
                ".ogg", "audio/ogg"
            }, 
            as38, as39, as40, as41, new String[] {
                ".prop", "text/plain"
            }, new String[] {
                ".rc", "text/plain"
            }, new String[] {
                ".pot", "application/vnd.ms-powerpoint"
            }, new String[] {
                ".pps", "application/vnd.ms-powerpoint"
            }, new String[] {
                ".mpp", "application/vnd.ms-project"
            }, as42, 
            new String[] {
                ".wdb", "application/vnd.ms-works"
            }, new String[] {
                ".wks", "application/vnd.ms-works"
            }, new String[] {
                ".wps", "application/vnd.ms-works"
            }, new String[] {
                ".hlp", "application/winhlp"
            }, new String[] {
                ".bcpio", "application/x-bcpio"
            }, new String[] {
                ".cdf", "application/x-cdf"
            }, new String[] {
                ".z", "application/x-compress"
            }, new String[] {
                ".tgz", "application/x-compressed"
            }, as43, new String[] {
                ".csh", "application/x-csh"
            }, 
            as44, new String[] {
                ".dir", "application/x-director"
            }, new String[] {
                ".dxr", "application/x-director"
            }, as45, as46, new String[] {
                ".gz", "application/x-gzip"
            }, new String[] {
                ".hdf", "application/x-hdf"
            }, as47, as48, as49, 
            new String[] {
                ".js", "application/x-javascript"
            }, new String[] {
                ".latex", "application/x-latex"
            }, as50, new String[] {
                ".crd", "application/x-mscardfile"
            }, as51, as52, new String[] {
                ".m13", "application/x-msmediaview"
            }, new String[] {
                ".m14", "application/x-msmediaview"
            }, new String[] {
                ".mvb", "application/x-msmediaview"
            }, new String[] {
                ".wmf", "application/x-msmetafile"
            }, 
            new String[] {
                ".mny", "application/x-msmoney"
            }, as53, new String[] {
                ".scd", "application/x-msschedule"
            }, new String[] {
                ".trm", "application/x-msterminal"
            }, as54, as55, as56, new String[] {
                ".pma", "application/x-perfmon"
            }, as57, new String[] {
                ".pml", "application/x-perfmon"
            }, 
            new String[] {
                ".pmr", "application/x-perfmon"
            }, new String[] {
                ".pmw", "application/x-perfmon"
            }, new String[] {
                ".p12", "application/x-pkcs12"
            }, as58, new String[] {
                ".p7b", "application/x-pkcs7-certificates"
            }, as59, new String[] {
                ".p7r", "application/x-pkcs7-certreqresp"
            }, new String[] {
                ".p7c", "application/x-pkcs7-mime"
            }, as60, new String[] {
                ".p7s", "application/x-pkcs7-signature"
            }, 
            as61, new String[] {
                ".shar", "application/x-shar"
            }, as62, as63, as64, as65, as66, new String[] {
                ".tcl", "application/x-tcl"
            }, new String[] {
                ".tex", "application/x-tex"
            }, new String[] {
                ".texi", "application/x-texinfo"
            }, 
            as67, as68, new String[] {
                ".t", "application/x-troff"
            }, new String[] {
                ".tr", "application/x-troff"
            }, new String[] {
                ".man", "application/x-troff-man"
            }, new String[] {
                ".me", "application/x-troff-me"
            }, new String[] {
                ".ms", "application/x-troff-ms"
            }, new String[] {
                ".ustar", "application/x-ustar"
            }, new String[] {
                ".src", "application/x-wais-source"
            }, new String[] {
                ".cer", "application/x-x509-ca-cert"
            }, 
            new String[] {
                ".crt", "application/x-x509-ca-cert"
            }, new String[] {
                ".der", "application/x-x509-ca-cert"
            }, new String[] {
                ".pko", "application/ynd.ms-pkipko"
            }, new String[] {
                ".au", "audio/basic"
            }, new String[] {
                ".snd", "audio/basic"
            }, as69, as70, as71, new String[] {
                ".aif", "audio/x-aiff"
            }, new String[] {
                ".aifc", "audio/x-aiff"
            }, 
            new String[] {
                ".aiff", "audio/x-aiff"
            }, new String[] {
                ".m3u", "audio/x-mpegurl"
            }, as72, new String[] {
                ".ram", "audio/x-pn-realaudio"
            }, new String[] {
                ".wav", "audio/x-wav"
            }, new String[] {
                ".cod", "image/cis-cod"
            }, new String[] {
                ".gif", "image/gif"
            }, new String[] {
                ".ief", "image/ief"
            }, new String[] {
                ".jfif", "image/pipeg"
            }, new String[] {
                ".svg", "image/svg+xml"
            }, 
            as73, as74, as75, as76, as77, as78, new String[] {
                ".pbm", "image/x-portable-bitmap"
            }, as79, new String[] {
                ".ppm", "image/x-portable-pixmap"
            }, new String[] {
                ".rgb", "image/x-rgb"
            }, 
            new String[] {
                ".xbm", "image/x-xbitmap"
            }, as80, new String[] {
                ".xwd", "image/x-xwindowdump"
            }, new String[] {
                ".mht", "message/rfc822"
            }, new String[] {
                ".mhtml", "message/rfc822"
            }, as81, new String[] {
                ".css", "text/css"
            }, new String[] {
                ".323", "text/h323"
            }, as82, as83, 
            as84, new String[] {
                ".uls", "text/iuls"
            }, new String[] {
                ".bas", "text/plain"
            }, new String[] {
                ".rtx", "text/richtext"
            }, new String[] {
                ".sct", "text/scriptlet"
            }, new String[] {
                ".tsv", "text/tab-separated-values"
            }, new String[] {
                ".htt", "text/webviewhtml"
            }, as85, new String[] {
                ".etx", "text/x-setext"
            }, new String[] {
                ".vcf", "text/x-vcard"
            }, 
            as86, new String[] {
                ".mpa", "video/mpeg"
            }, new String[] {
                ".mpe", "video/mpeg"
            }, new String[] {
                ".mpeg", "video/mpeg"
            }, new String[] {
                ".mpg", "video/mpeg"
            }, new String[] {
                ".mpv2", "video/mpeg"
            }, as87, new String[] {
                ".qt", "video/quicktime"
            }, as88, as89, 
            new String[] {
                ".asf", "video/x-ms-asf"
            }, as90, new String[] {
                ".asx", "video/x-ms-asf"
            }, new String[] {
                ".avi", "video/x-msvideo"
            }, new String[] {
                ".movie", "video/x-sgi-movie"
            }, as91, new String[] {
                ".vrml", "x-world/x-vrml"
            }, as92, new String[] {
                ".wrz", "x-world/x-vrml"
            }, as93, 
            as94, new String[] {
                "", "*/*"
            }
        });
    }
}
