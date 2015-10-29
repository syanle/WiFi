// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.util;

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

// Referenced classes of package com.pubinfo.wifi_core.core.util:
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
            ".docx", "application/msword"
        };
        String as2[] = {
            ".xls", "application/vnd.ms-excel"
        };
        String as3[] = {
            ".xlsx", "application/vnd.ms-excel"
        };
        String as4[] = {
            ".rar", "application/x-rar-compressed"
        };
        String as5[] = {
            ".zip", "application/zip"
        };
        String as6[] = {
            ".jpg", "image/jpeg"
        };
        String as7[] = {
            ".txt", "text/plain"
        };
        String as8[] = {
            ".mp3", "audio/x-mpeg"
        };
        String as9[] = {
            ".mp4", "video/mp4"
        };
        String as10[] = {
            ".java", "text/plain"
        };
        String as11[] = {
            ".apk", "application/vnd.android.package-archive"
        };
        String as12[] = {
            ".jpe", "image/jpeg"
        };
        String as13[] = {
            ".stl", "application/vnd.ms-pkistl"
        };
        String as14[] = {
            ".rmvb", "audio/x-pn-realaudio"
        };
        String as15[] = {
            ".wma", "audio/x-ms-wma"
        };
        String as16[] = {
            ".wmv", "audio/x-ms-wmv"
        };
        String as17[] = {
            ".h", "text/plain"
        };
        String as18[] = {
            ".evy", "application/envoy"
        };
        String as19[] = {
            ".spl", "application/futuresplash"
        };
        String as20[] = {
            ".hta", "application/hta"
        };
        String as21[] = {
            ".acx", "application/internet-property-stream"
        };
        String as22[] = {
            ".conf", "text/plain"
        };
        String as23[] = {
            ".class", "application/octet-stream"
        };
        String as24[] = {
            ".exe", "application/octet-stream"
        };
        String as25[] = {
            ".lzh", "application/octet-stream"
        };
        String as26[] = {
            ".oda", "application/oda"
        };
        String as27[] = {
            ".axs", "application/olescript"
        };
        String as28[] = {
            ".prf", "application/pics-rules"
        };
        String as29[] = {
            ".p10", "application/pkcs10"
        };
        String as30[] = {
            ".ai", "application/postscript"
        };
        String as31[] = {
            ".eps", "application/postscript"
        };
        String as32[] = {
            ".rtf", "application/rtf"
        };
        String as33[] = {
            ".setreg", "application/set-registration-initiation"
        };
        String as34[] = {
            ".m4b", "audio/mp4a-latm"
        };
        String as35[] = {
            ".m4p", "audio/mp4a-latm"
        };
        String as36[] = {
            ".m4u", "video/vnd.mpegurl"
        };
        String as37[] = {
            ".mp2", "audio/x-mpeg"
        };
        String as38[] = {
            ".mpga", "audio/mpeg"
        };
        String as39[] = {
            ".xlm", "application/vnd.ms-excel"
        };
        String as40[] = {
            ".xlt", "application/vnd.ms-excel"
        };
        String as41[] = {
            ".xlw", "application/vnd.ms-excel"
        };
        String as42[] = {
            ".ogg", "audio/ogg"
        };
        String as43[] = {
            ".msg", "application/vnd.ms-outlook"
        };
        String as44[] = {
            ".cat", "application/vnd.ms-pkiseccat"
        };
        String as45[] = {
            ".sh", "text/plain"
        };
        String as46[] = {
            ".prop", "text/plain"
        };
        String as47[] = {
            ".wcm", "application/vnd.ms-works"
        };
        String as48[] = {
            ".wps", "application/vnd.ms-works"
        };
        String as49[] = {
            ".hlp", "application/winhlp"
        };
        String as50[] = {
            ".cdf", "application/x-cdf"
        };
        String as51[] = {
            ".z", "application/x-compress"
        };
        String as52[] = {
            ".cpio", "application/x-cpio"
        };
        String as53[] = {
            ".dcr", "application/x-director"
        };
        String as54[] = {
            ".dir", "application/x-director"
        };
        String as55[] = {
            ".gtar", "application/x-gtar"
        };
        String as56[] = {
            ".gz", "application/x-gzip"
        };
        String as57[] = {
            ".hdf", "application/x-hdf"
        };
        String as58[] = {
            ".ins", "application/x-internet-signup"
        };
        String as59[] = {
            ".js", "application/x-javascript"
        };
        String as60[] = {
            ".mdb", "application/x-msaccess"
        };
        String as61[] = {
            ".crd", "application/x-mscardfile"
        };
        String as62[] = {
            ".clp", "application/x-msclip"
        };
        String as63[] = {
            ".m13", "application/x-msmediaview"
        };
        String as64[] = {
            ".m14", "application/x-msmediaview"
        };
        String as65[] = {
            ".wmf", "application/x-msmetafile"
        };
        String as66[] = {
            ".pub", "application/x-mspublisher"
        };
        String as67[] = {
            ".scd", "application/x-msschedule"
        };
        String as68[] = {
            ".cdf", "application/x-netcdf"
        };
        String as69[] = {
            ".pmw", "application/x-perfmon"
        };
        String as70[] = {
            ".p12", "application/x-pkcs12"
        };
        String as71[] = {
            ".pfx", "application/x-pkcs12"
        };
        String as72[] = {
            ".p7b", "application/x-pkcs7-certificates"
        };
        String as73[] = {
            ".p7r", "application/x-pkcs7-certreqresp"
        };
        String as74[] = {
            ".p7c", "application/x-pkcs7-mime"
        };
        String as75[] = {
            ".p7m", "application/x-pkcs7-mime"
        };
        String as76[] = {
            ".p7s", "application/x-pkcs7-signature"
        };
        String as77[] = {
            ".sit", "application/x-stuffit"
        };
        String as78[] = {
            ".sv4cpio", "application/x-sv4cpio"
        };
        String as79[] = {
            ".tar", "application/x-tar"
        };
        String as80[] = {
            ".tcl", "application/x-tcl"
        };
        String as81[] = {
            ".tex", "application/x-tex"
        };
        String as82[] = {
            ".texi", "application/x-texinfo"
        };
        String as83[] = {
            ".t", "application/x-troff"
        };
        String as84[] = {
            ".man", "application/x-troff-man"
        };
        String as85[] = {
            ".me", "application/x-troff-me"
        };
        String as86[] = {
            ".src", "application/x-wais-source"
        };
        String as87[] = {
            ".cer", "application/x-x509-ca-cert"
        };
        String as88[] = {
            ".der", "application/x-x509-ca-cert"
        };
        String as89[] = {
            ".pko", "application/ynd.ms-pkipko"
        };
        String as90[] = {
            ".au", "audio/basic"
        };
        String as91[] = {
            ".snd", "audio/basic"
        };
        String as92[] = {
            ".rmi", "audio/mid"
        };
        String as93[] = {
            ".mp3", "audio/mpeg"
        };
        String as94[] = {
            ".aif", "audio/x-aiff"
        };
        String as95[] = {
            ".aifc", "audio/x-aiff"
        };
        String as96[] = {
            ".aiff", "audio/x-aiff"
        };
        String as97[] = {
            ".ra", "audio/x-pn-realaudio"
        };
        String as98[] = {
            ".wav", "audio/x-wav"
        };
        String as99[] = {
            ".cod", "image/cis-cod"
        };
        String as100[] = {
            ".ief", "image/ief"
        };
        String as101[] = {
            ".jfif", "image/pipeg"
        };
        String as102[] = {
            ".svg", "image/svg+xml"
        };
        String as103[] = {
            ".tif", "image/tiff"
        };
        String as104[] = {
            ".ras", "image/x-cmu-raster"
        };
        String as105[] = {
            ".ico", "image/x-icon"
        };
        String as106[] = {
            ".pnm", "image/x-portable-anymap"
        };
        String as107[] = {
            ".pbm", "image/x-portable-bitmap"
        };
        String as108[] = {
            ".xbm", "image/x-xbitmap"
        };
        String as109[] = {
            ".xpm", "image/x-xpixmap"
        };
        String as110[] = {
            ".xwd", "image/x-xwindowdump"
        };
        String as111[] = {
            ".mht", "message/rfc822"
        };
        String as112[] = {
            ".nws", "message/rfc822"
        };
        String as113[] = {
            ".html", "text/html"
        };
        String as114[] = {
            ".uls", "text/iuls"
        };
        String as115[] = {
            ".bas", "text/plain"
        };
        String as116[] = {
            ".rtx", "text/richtext"
        };
        String as117[] = {
            ".htt", "text/webviewhtml"
        };
        String as118[] = {
            ".htc", "text/x-component"
        };
        String as119[] = {
            ".vcf", "text/x-vcard"
        };
        String as120[] = {
            ".mpa", "video/mpeg"
        };
        String as121[] = {
            ".mpe", "video/mpeg"
        };
        String as122[] = {
            ".mpeg", "video/mpeg"
        };
        String as123[] = {
            ".mpg", "video/mpeg"
        };
        String as124[] = {
            ".mpv2", "video/mpeg"
        };
        String as125[] = {
            ".qt", "video/quicktime"
        };
        String as126[] = {
            ".lsx", "video/x-la-asf"
        };
        String as127[] = {
            ".asr", "video/x-ms-asf"
        };
        String as128[] = {
            ".asx", "video/x-ms-asf"
        };
        String as129[] = {
            ".avi", "video/x-msvideo"
        };
        String as130[] = {
            ".flr", "x-world/x-vrml"
        };
        String as131[] = {
            ".vrml", "x-world/x-vrml"
        };
        String as132[] = {
            ".xaf", "x-world/x-vrml"
        };
        MIME_TYPE_TABLE = (new String[][] {
            as, as1, new String[] {
                ".pdf", "application/pdf"
            }, as2, as3, new String[] {
                ".ppt", "application/vnd.ms-powerpoint"
            }, new String[] {
                ".pptx", "application/vnd.ms-powerpoint"
            }, as4, as5, new String[] {
                ".jpeg", "image/jpeg"
            }, 
            new String[] {
                ".bmp", "image/bmp"
            }, as6, new String[] {
                ".png", "image/png"
            }, as7, as8, as9, as10, as11, as12, new String[] {
                ".xml", "text/plain"
            }, 
            new String[] {
                ".3gp", "video/3gpp"
            }, as13, as14, as15, as16, new String[] {
                ".c", "text/plain"
            }, as17, as18, new String[] {
                ".fif", "application/fractals"
            }, as19, 
            as20, as21, new String[] {
                ".hqx", "application/mac-binhex40"
            }, as22, new String[] {
                ".cpp", "text/plain"
            }, new String[] {
                ".dot", "application/msword"
            }, new String[] {
                ".bin", "application/octet-stream"
            }, as23, new String[] {
                ".dms", "application/octet-stream"
            }, as24, 
            new String[] {
                ".lha", "application/octet-stream"
            }, as25, as26, as27, as28, new String[] {
                ".jar", "application/java-archive"
            }, as29, new String[] {
                ".crl", "application/pkix-crl"
            }, as30, new String[] {
                ".log", "text/plain"
            }, 
            as31, new String[] {
                ".ps", "application/postscript"
            }, as32, new String[] {
                ".setpay", "application/set-payment-initiation"
            }, as33, new String[] {
                ".m4a", "audio/mp4a-latm"
            }, as34, as35, as36, new String[] {
                ".m4v", "video/x-m4v"
            }, 
            as37, new String[] {
                ".mpc", "application/vnd.mpohun.certificate"
            }, new String[] {
                ".mpg4", "video/mp4"
            }, as38, new String[] {
                ".xla", "application/vnd.ms-excel"
            }, new String[] {
                ".xlc", "application/vnd.ms-excel"
            }, as39, as40, as41, as42, 
            as43, new String[] {
                ".sst", "application/vnd.ms-pkicertstore"
            }, as44, as45, as46, new String[] {
                ".rc", "text/plain"
            }, new String[] {
                ".pot", "application/vnd.ms-powerpoint"
            }, new String[] {
                ".pps", "application/vnd.ms-powerpoint"
            }, new String[] {
                ".mpp", "application/vnd.ms-project"
            }, as47, 
            new String[] {
                ".wdb", "application/vnd.ms-works"
            }, new String[] {
                ".wks", "application/vnd.ms-works"
            }, as48, as49, new String[] {
                ".bcpio", "application/x-bcpio"
            }, as50, as51, new String[] {
                ".tgz", "application/x-compressed"
            }, as52, new String[] {
                ".csh", "application/x-csh"
            }, 
            as53, as54, new String[] {
                ".dxr", "application/x-director"
            }, new String[] {
                ".dvi", "application/x-dvi"
            }, as55, as56, as57, as58, new String[] {
                ".isp", "application/x-internet-signup"
            }, new String[] {
                ".iii", "application/x-iphone"
            }, 
            as59, new String[] {
                ".latex", "application/x-latex"
            }, as60, as61, as62, new String[] {
                ".dll", "application/x-msdownload"
            }, as63, as64, new String[] {
                ".mvb", "application/x-msmediaview"
            }, as65, 
            new String[] {
                ".mny", "application/x-msmoney"
            }, as66, as67, new String[] {
                ".trm", "application/x-msterminal"
            }, new String[] {
                ".wri", "application/x-mswrite"
            }, as68, new String[] {
                ".nc", "application/x-netcdf"
            }, new String[] {
                ".pma", "application/x-perfmon"
            }, new String[] {
                ".pmc", "application/x-perfmon"
            }, new String[] {
                ".pml", "application/x-perfmon"
            }, 
            new String[] {
                ".pmr", "application/x-perfmon"
            }, as69, as70, as71, as72, new String[] {
                ".spc", "application/x-pkcs7-certificates"
            }, as73, as74, as75, as76, 
            new String[] {
                ".sh", "application/x-sh"
            }, new String[] {
                ".shar", "application/x-shar"
            }, new String[] {
                ".swf", "application/x-shockwave-flash"
            }, as77, as78, new String[] {
                ".sv4crc", "application/x-sv4crc"
            }, as79, as80, as81, as82, 
            new String[] {
                ".texinfo", "application/x-texinfo"
            }, new String[] {
                ".roff", "application/x-troff"
            }, as83, new String[] {
                ".tr", "application/x-troff"
            }, as84, as85, new String[] {
                ".ms", "application/x-troff-ms"
            }, new String[] {
                ".ustar", "application/x-ustar"
            }, as86, as87, 
            new String[] {
                ".crt", "application/x-x509-ca-cert"
            }, as88, as89, as90, as91, new String[] {
                ".mid", "audio/mid"
            }, as92, as93, as94, as95, 
            as96, new String[] {
                ".m3u", "audio/x-mpegurl"
            }, as97, new String[] {
                ".ram", "audio/x-pn-realaudio"
            }, as98, as99, new String[] {
                ".gif", "image/gif"
            }, as100, as101, as102, 
            as103, new String[] {
                ".tiff", "image/tiff"
            }, as104, new String[] {
                ".cmx", "image/x-cmx"
            }, as105, as106, as107, new String[] {
                ".pgm", "image/x-portable-graymap"
            }, new String[] {
                ".ppm", "image/x-portable-pixmap"
            }, new String[] {
                ".rgb", "image/x-rgb"
            }, 
            as108, as109, as110, as111, new String[] {
                ".mhtml", "message/rfc822"
            }, as112, new String[] {
                ".css", "text/css"
            }, new String[] {
                ".323", "text/h323"
            }, new String[] {
                ".htm", "text/html"
            }, as113, 
            new String[] {
                ".stm", "text/html"
            }, as114, as115, as116, new String[] {
                ".sct", "text/scriptlet"
            }, new String[] {
                ".tsv", "text/tab-separated-values"
            }, as117, as118, new String[] {
                ".etx", "text/x-setext"
            }, as119, 
            new String[] {
                ".mp2", "video/mpeg"
            }, as120, as121, as122, as123, as124, new String[] {
                ".mov", "video/quicktime"
            }, as125, new String[] {
                ".lsf", "video/x-la-asf"
            }, as126, 
            new String[] {
                ".asf", "video/x-ms-asf"
            }, as127, as128, as129, new String[] {
                ".movie", "video/x-sgi-movie"
            }, as130, as131, new String[] {
                ".wrl", "x-world/x-vrml"
            }, new String[] {
                ".wrz", "x-world/x-vrml"
            }, as132, 
            new String[] {
                ".xof", "x-world/x-vrml"
            }, new String[] {
                "", "*/*"
            }
        });
    }
}
