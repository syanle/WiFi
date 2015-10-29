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
            ".pdf", "application/pdf"
        };
        String as2[] = {
            ".pptx", "application/vnd.ms-powerpoint"
        };
        String as3[] = {
            ".jpeg", "image/jpeg"
        };
        String as4[] = {
            ".bmp", "image/bmp"
        };
        String as5[] = {
            ".mp4", "video/mp4"
        };
        String as6[] = {
            ".java", "text/plain"
        };
        String as7[] = {
            ".jpe", "image/jpeg"
        };
        String as8[] = {
            ".wma", "audio/x-ms-wma"
        };
        String as9[] = {
            ".wmv", "audio/x-ms-wmv"
        };
        String as10[] = {
            ".c", "text/plain"
        };
        String as11[] = {
            ".h", "text/plain"
        };
        String as12[] = {
            ".fif", "application/fractals"
        };
        String as13[] = {
            ".spl", "application/futuresplash"
        };
        String as14[] = {
            ".hta", "application/hta"
        };
        String as15[] = {
            ".hqx", "application/mac-binhex40"
        };
        String as16[] = {
            ".dot", "application/msword"
        };
        String as17[] = {
            ".bin", "application/octet-stream"
        };
        String as18[] = {
            ".class", "application/octet-stream"
        };
        String as19[] = {
            ".lha", "application/octet-stream"
        };
        String as20[] = {
            ".oda", "application/oda"
        };
        String as21[] = {
            ".axs", "application/olescript"
        };
        String as22[] = {
            ".prf", "application/pics-rules"
        };
        String as23[] = {
            ".jar", "application/java-archive"
        };
        String as24[] = {
            ".eps", "application/postscript"
        };
        String as25[] = {
            ".rtf", "application/rtf"
        };
        String as26[] = {
            ".m4a", "audio/mp4a-latm"
        };
        String as27[] = {
            ".m4p", "audio/mp4a-latm"
        };
        String as28[] = {
            ".mpg4", "video/mp4"
        };
        String as29[] = {
            ".mpga", "audio/mpeg"
        };
        String as30[] = {
            ".xla", "application/vnd.ms-excel"
        };
        String as31[] = {
            ".xlc", "application/vnd.ms-excel"
        };
        String as32[] = {
            ".xlt", "application/vnd.ms-excel"
        };
        String as33[] = {
            ".xlw", "application/vnd.ms-excel"
        };
        String as34[] = {
            ".ogg", "audio/ogg"
        };
        String as35[] = {
            ".sst", "application/vnd.ms-pkicertstore"
        };
        String as36[] = {
            ".sh", "text/plain"
        };
        String as37[] = {
            ".rc", "text/plain"
        };
        String as38[] = {
            ".pot", "application/vnd.ms-powerpoint"
        };
        String as39[] = {
            ".mpp", "application/vnd.ms-project"
        };
        String as40[] = {
            ".wcm", "application/vnd.ms-works"
        };
        String as41[] = {
            ".wks", "application/vnd.ms-works"
        };
        String as42[] = {
            ".bcpio", "application/x-bcpio"
        };
        String as43[] = {
            ".cdf", "application/x-cdf"
        };
        String as44[] = {
            ".tgz", "application/x-compressed"
        };
        String as45[] = {
            ".cpio", "application/x-cpio"
        };
        String as46[] = {
            ".dxr", "application/x-director"
        };
        String as47[] = {
            ".dvi", "application/x-dvi"
        };
        String as48[] = {
            ".hdf", "application/x-hdf"
        };
        String as49[] = {
            ".isp", "application/x-internet-signup"
        };
        String as50[] = {
            ".iii", "application/x-iphone"
        };
        String as51[] = {
            ".latex", "application/x-latex"
        };
        String as52[] = {
            ".clp", "application/x-msclip"
        };
        String as53[] = {
            ".dll", "application/x-msdownload"
        };
        String as54[] = {
            ".m13", "application/x-msmediaview"
        };
        String as55[] = {
            ".m14", "application/x-msmediaview"
        };
        String as56[] = {
            ".mvb", "application/x-msmediaview"
        };
        String as57[] = {
            ".pub", "application/x-mspublisher"
        };
        String as58[] = {
            ".scd", "application/x-msschedule"
        };
        String as59[] = {
            ".trm", "application/x-msterminal"
        };
        String as60[] = {
            ".wri", "application/x-mswrite"
        };
        String as61[] = {
            ".cdf", "application/x-netcdf"
        };
        String as62[] = {
            ".nc", "application/x-netcdf"
        };
        String as63[] = {
            ".pma", "application/x-perfmon"
        };
        String as64[] = {
            ".pmc", "application/x-perfmon"
        };
        String as65[] = {
            ".pmr", "application/x-perfmon"
        };
        String as66[] = {
            ".pmw", "application/x-perfmon"
        };
        String as67[] = {
            ".p12", "application/x-pkcs12"
        };
        String as68[] = {
            ".p7b", "application/x-pkcs7-certificates"
        };
        String as69[] = {
            ".spc", "application/x-pkcs7-certificates"
        };
        String as70[] = {
            ".p7c", "application/x-pkcs7-mime"
        };
        String as71[] = {
            ".sh", "application/x-sh"
        };
        String as72[] = {
            ".sit", "application/x-stuffit"
        };
        String as73[] = {
            ".sv4crc", "application/x-sv4crc"
        };
        String as74[] = {
            ".tar", "application/x-tar"
        };
        String as75[] = {
            ".texi", "application/x-texinfo"
        };
        String as76[] = {
            ".texinfo", "application/x-texinfo"
        };
        String as77[] = {
            ".roff", "application/x-troff"
        };
        String as78[] = {
            ".t", "application/x-troff"
        };
        String as79[] = {
            ".man", "application/x-troff-man"
        };
        String as80[] = {
            ".me", "application/x-troff-me"
        };
        String as81[] = {
            ".ms", "application/x-troff-ms"
        };
        String as82[] = {
            ".cer", "application/x-x509-ca-cert"
        };
        String as83[] = {
            ".crt", "application/x-x509-ca-cert"
        };
        String as84[] = {
            ".der", "application/x-x509-ca-cert"
        };
        String as85[] = {
            ".au", "audio/basic"
        };
        String as86[] = {
            ".mid", "audio/mid"
        };
        String as87[] = {
            ".rmi", "audio/mid"
        };
        String as88[] = {
            ".mp3", "audio/mpeg"
        };
        String as89[] = {
            ".aifc", "audio/x-aiff"
        };
        String as90[] = {
            ".aiff", "audio/x-aiff"
        };
        String as91[] = {
            ".ram", "audio/x-pn-realaudio"
        };
        String as92[] = {
            ".svg", "image/svg+xml"
        };
        String as93[] = {
            ".cmx", "image/x-cmx"
        };
        String as94[] = {
            ".ico", "image/x-icon"
        };
        String as95[] = {
            ".pnm", "image/x-portable-anymap"
        };
        String as96[] = {
            ".pbm", "image/x-portable-bitmap"
        };
        String as97[] = {
            ".pgm", "image/x-portable-graymap"
        };
        String as98[] = {
            ".ppm", "image/x-portable-pixmap"
        };
        String as99[] = {
            ".rgb", "image/x-rgb"
        };
        String as100[] = {
            ".xbm", "image/x-xbitmap"
        };
        String as101[] = {
            ".xwd", "image/x-xwindowdump"
        };
        String as102[] = {
            ".mht", "message/rfc822"
        };
        String as103[] = {
            ".mhtml", "message/rfc822"
        };
        String as104[] = {
            ".htm", "text/html"
        };
        String as105[] = {
            ".html", "text/html"
        };
        String as106[] = {
            ".bas", "text/plain"
        };
        String as107[] = {
            ".sct", "text/scriptlet"
        };
        String as108[] = {
            ".tsv", "text/tab-separated-values"
        };
        String as109[] = {
            ".htc", "text/x-component"
        };
        String as110[] = {
            ".etx", "text/x-setext"
        };
        String as111[] = {
            ".mpe", "video/mpeg"
        };
        String as112[] = {
            ".mpeg", "video/mpeg"
        };
        String as113[] = {
            ".mpg", "video/mpeg"
        };
        String as114[] = {
            ".mov", "video/quicktime"
        };
        String as115[] = {
            ".qt", "video/quicktime"
        };
        String as116[] = {
            ".lsf", "video/x-la-asf"
        };
        String as117[] = {
            ".asr", "video/x-ms-asf"
        };
        String as118[] = {
            ".asx", "video/x-ms-asf"
        };
        String as119[] = {
            ".movie", "video/x-sgi-movie"
        };
        String as120[] = {
            ".wrl", "x-world/x-vrml"
        };
        String as121[] = {
            ".xaf", "x-world/x-vrml"
        };
        String as122[] = {
            "", "*/*"
        };
        MIME_TYPE_TABLE = (new String[][] {
            as, new String[] {
                ".docx", "application/msword"
            }, as1, new String[] {
                ".xls", "application/vnd.ms-excel"
            }, new String[] {
                ".xlsx", "application/vnd.ms-excel"
            }, new String[] {
                ".ppt", "application/vnd.ms-powerpoint"
            }, as2, new String[] {
                ".rar", "application/x-rar-compressed"
            }, new String[] {
                ".zip", "application/zip"
            }, as3, 
            as4, new String[] {
                ".jpg", "image/jpeg"
            }, new String[] {
                ".png", "image/png"
            }, new String[] {
                ".txt", "text/plain"
            }, new String[] {
                ".mp3", "audio/x-mpeg"
            }, as5, as6, new String[] {
                ".apk", "application/vnd.android.package-archive"
            }, as7, new String[] {
                ".xml", "text/plain"
            }, 
            new String[] {
                ".3gp", "video/3gpp"
            }, new String[] {
                ".stl", "application/vnd.ms-pkistl"
            }, new String[] {
                ".rmvb", "audio/x-pn-realaudio"
            }, as8, as9, as10, as11, new String[] {
                ".evy", "application/envoy"
            }, as12, as13, 
            as14, new String[] {
                ".acx", "application/internet-property-stream"
            }, as15, new String[] {
                ".conf", "text/plain"
            }, new String[] {
                ".cpp", "text/plain"
            }, as16, as17, as18, new String[] {
                ".dms", "application/octet-stream"
            }, new String[] {
                ".exe", "application/octet-stream"
            }, 
            as19, new String[] {
                ".lzh", "application/octet-stream"
            }, as20, as21, as22, as23, new String[] {
                ".p10", "application/pkcs10"
            }, new String[] {
                ".crl", "application/pkix-crl"
            }, new String[] {
                ".ai", "application/postscript"
            }, new String[] {
                ".log", "text/plain"
            }, 
            as24, new String[] {
                ".ps", "application/postscript"
            }, as25, new String[] {
                ".setpay", "application/set-payment-initiation"
            }, new String[] {
                ".setreg", "application/set-registration-initiation"
            }, as26, new String[] {
                ".m4b", "audio/mp4a-latm"
            }, as27, new String[] {
                ".m4u", "video/vnd.mpegurl"
            }, new String[] {
                ".m4v", "video/x-m4v"
            }, 
            new String[] {
                ".mp2", "audio/x-mpeg"
            }, new String[] {
                ".mpc", "application/vnd.mpohun.certificate"
            }, as28, as29, as30, as31, new String[] {
                ".xlm", "application/vnd.ms-excel"
            }, as32, as33, as34, 
            new String[] {
                ".msg", "application/vnd.ms-outlook"
            }, as35, new String[] {
                ".cat", "application/vnd.ms-pkiseccat"
            }, as36, new String[] {
                ".prop", "text/plain"
            }, as37, as38, new String[] {
                ".pps", "application/vnd.ms-powerpoint"
            }, as39, as40, 
            new String[] {
                ".wdb", "application/vnd.ms-works"
            }, as41, new String[] {
                ".wps", "application/vnd.ms-works"
            }, new String[] {
                ".hlp", "application/winhlp"
            }, as42, as43, new String[] {
                ".z", "application/x-compress"
            }, as44, as45, new String[] {
                ".csh", "application/x-csh"
            }, 
            new String[] {
                ".dcr", "application/x-director"
            }, new String[] {
                ".dir", "application/x-director"
            }, as46, as47, new String[] {
                ".gtar", "application/x-gtar"
            }, new String[] {
                ".gz", "application/x-gzip"
            }, as48, new String[] {
                ".ins", "application/x-internet-signup"
            }, as49, as50, 
            new String[] {
                ".js", "application/x-javascript"
            }, as51, new String[] {
                ".mdb", "application/x-msaccess"
            }, new String[] {
                ".crd", "application/x-mscardfile"
            }, as52, as53, as54, as55, as56, new String[] {
                ".wmf", "application/x-msmetafile"
            }, 
            new String[] {
                ".mny", "application/x-msmoney"
            }, as57, as58, as59, as60, as61, as62, as63, as64, new String[] {
                ".pml", "application/x-perfmon"
            }, 
            as65, as66, as67, new String[] {
                ".pfx", "application/x-pkcs12"
            }, as68, as69, new String[] {
                ".p7r", "application/x-pkcs7-certreqresp"
            }, as70, new String[] {
                ".p7m", "application/x-pkcs7-mime"
            }, new String[] {
                ".p7s", "application/x-pkcs7-signature"
            }, 
            as71, new String[] {
                ".shar", "application/x-shar"
            }, new String[] {
                ".swf", "application/x-shockwave-flash"
            }, as72, new String[] {
                ".sv4cpio", "application/x-sv4cpio"
            }, as73, as74, new String[] {
                ".tcl", "application/x-tcl"
            }, new String[] {
                ".tex", "application/x-tex"
            }, as75, 
            as76, as77, as78, new String[] {
                ".tr", "application/x-troff"
            }, as79, as80, as81, new String[] {
                ".ustar", "application/x-ustar"
            }, new String[] {
                ".src", "application/x-wais-source"
            }, as82, 
            as83, as84, new String[] {
                ".pko", "application/ynd.ms-pkipko"
            }, as85, new String[] {
                ".snd", "audio/basic"
            }, as86, as87, as88, new String[] {
                ".aif", "audio/x-aiff"
            }, as89, 
            as90, new String[] {
                ".m3u", "audio/x-mpegurl"
            }, new String[] {
                ".ra", "audio/x-pn-realaudio"
            }, as91, new String[] {
                ".wav", "audio/x-wav"
            }, new String[] {
                ".cod", "image/cis-cod"
            }, new String[] {
                ".gif", "image/gif"
            }, new String[] {
                ".ief", "image/ief"
            }, new String[] {
                ".jfif", "image/pipeg"
            }, as92, 
            new String[] {
                ".tif", "image/tiff"
            }, new String[] {
                ".tiff", "image/tiff"
            }, new String[] {
                ".ras", "image/x-cmu-raster"
            }, as93, as94, as95, as96, as97, as98, as99, 
            as100, new String[] {
                ".xpm", "image/x-xpixmap"
            }, as101, as102, as103, new String[] {
                ".nws", "message/rfc822"
            }, new String[] {
                ".css", "text/css"
            }, new String[] {
                ".323", "text/h323"
            }, as104, as105, 
            new String[] {
                ".stm", "text/html"
            }, new String[] {
                ".uls", "text/iuls"
            }, as106, new String[] {
                ".rtx", "text/richtext"
            }, as107, as108, new String[] {
                ".htt", "text/webviewhtml"
            }, as109, as110, new String[] {
                ".vcf", "text/x-vcard"
            }, 
            new String[] {
                ".mp2", "video/mpeg"
            }, new String[] {
                ".mpa", "video/mpeg"
            }, as111, as112, as113, new String[] {
                ".mpv2", "video/mpeg"
            }, as114, as115, as116, new String[] {
                ".lsx", "video/x-la-asf"
            }, 
            new String[] {
                ".asf", "video/x-ms-asf"
            }, as117, as118, new String[] {
                ".avi", "video/x-msvideo"
            }, as119, new String[] {
                ".flr", "x-world/x-vrml"
            }, new String[] {
                ".vrml", "x-world/x-vrml"
            }, as120, new String[] {
                ".wrz", "x-world/x-vrml"
            }, as121, 
            new String[] {
                ".xof", "x-world/x-vrml"
            }, as122
        });
    }
}
