// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.util;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class PubStaticUtil
{
    public class APNPARAMS
    {

        public static final String CTNET = "ctnet";
        public static final String CTWAP = "ctwap";
        public static final String DIANXIN_CTWAP_PROXY = "10.0.0.200";
        public static final String NOMATCH = "nomatch";
        public static final String YIDONG_CTWAP_PROXY = "10.0.0.172";
        final PubStaticUtil this$0;

        public APNPARAMS()
        {
            this$0 = PubStaticUtil.this;
            super();
        }
    }


    private static final Uri ALLRAPN_URI = Uri.parse("content://telephony/carriers");
    private static final String GETGPSINFO_URL = "http://www.voogle.cn:12380/httpgps.do";
    private static final String GETPHONENUM_URL = "http://www.voogle.cn:12380/httphead.do?type=9001&param=";
    private static final Uri PREFERAPN_URI = Uri.parse("content://telephony/carriers/preferapn");
    private static int count = 0;

    public PubStaticUtil()
    {
    }

    public static void finishApp(final Activity activity)
    {
        String s = activity.getResources().getString(com.pubinfo.wifi_core.R.string.app_name);
        (new android.app.AlertDialog.Builder(activity)).setTitle("\u63D0\u793A").setMessage((new StringBuilder("\u662F\u5426\u786E\u5B9A\u9000\u51FA")).append(s).append("\uFF1F").toString()).setNegativeButton("\u53D6\u6D88", new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

        }).setPositiveButton("\u786E\u5B9A", new android.content.DialogInterface.OnClickListener() {

            private final Activity val$activity;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
                activity.finish();
            }

            
            {
                activity = activity1;
                super();
            }
        }).show();
    }

    public static String getApnCode(Activity activity)
    {
        Object obj;
        String s;
        Object obj1;
        int i;
        s = "nomatch";
        obj = ((ConnectivityManager)activity.getSystemService("connectivity")).getNetworkInfo(1);
        if (obj != null && ((NetworkInfo) (obj)).isConnected())
        {
            return "WIFI";
        }
        i = ((TelephonyManager)activity.getSystemService("phone")).getPhoneType();
        obj1 = null;
        activity = activity.getContentResolver();
        obj = obj1;
        i;
        JVM INSTR tableswitch 0 2: default 84
    //                   0 86
    //                   1 186
    //                   2 171;
           goto _L1 _L2 _L3 _L4
_L3:
        break MISSING_BLOCK_LABEL_186;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        obj = obj1;
_L5:
        activity = s;
        if (obj != null)
        {
            activity = s;
            if (((Cursor) (obj)).getCount() > 0)
            {
                ((Cursor) (obj)).moveToFirst();
                activity = ((Cursor) (obj)).getString(((Cursor) (obj)).getColumnIndex("proxy"));
                Log.d("PubStaticUtil", (new StringBuilder("apntype=")).append(activity).toString());
                if ("10.0.0.200".equals(activity))
                {
                    activity = "ctwap";
                } else
                if ("10.0.0.172".equals(activity))
                {
                    activity = "nomatch";
                } else
                if ("ctnet".equals(activity))
                {
                    activity = "ctnet";
                } else
                {
                    activity = "nomatch";
                }
            }
        }
        if (obj != null)
        {
            ((Cursor) (obj)).close();
        }
        return activity;
_L4:
        obj = activity.query(PREFERAPN_URI, null, null, null, null);
          goto _L5
        obj = activity.query(PREFERAPN_URI, null, "current=?", new String[] {
            "1"
        }, null);
          goto _L5
    }

    private static String getElementValue(Element element, String s)
    {
        if (element == null)
        {
            return "";
        }
        element = (Element)element.getElementsByTagName(s).item(0);
        if (element != null && element.hasChildNodes())
        {
            element = element.getFirstChild().getNodeValue().trim();
        } else
        {
            element = "noTagValue";
        }
        return element;
    }

    public static String getGpsInfo(String s, String s1, String s2, String s3, String s4, String s5)
    {
        HttpURLConnection httpurlconnection;
        HttpURLConnection httpurlconnection1;
        StringBuffer stringbuffer;
        stringbuffer = new StringBuffer();
        httpurlconnection1 = null;
        httpurlconnection = null;
        HttpURLConnection httpurlconnection2 = (HttpURLConnection)(new URL("http://www.voogle.cn:12380/httpgps.do")).openConnection();
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        httpurlconnection2.setConnectTimeout(10000);
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        httpurlconnection2.setReadTimeout(10000);
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        httpurlconnection2.setRequestMethod("POST");
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        httpurlconnection2.setRequestProperty("User-Agent", "com.pubinfo");
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        StringBuffer stringbuffer1 = new StringBuffer();
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        stringbuffer1.append("BID=");
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        stringbuffer1.append(s);
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        stringbuffer1.append("&NID=");
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        stringbuffer1.append(s1);
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        stringbuffer1.append("&SID=");
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        stringbuffer1.append(s2);
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        stringbuffer1.append("&IMEI=");
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        stringbuffer1.append(s3);
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        stringbuffer1.append("&IMSI=");
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        stringbuffer1.append(s4);
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        stringbuffer1.append("&radio=");
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        stringbuffer1.append(s5);
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        httpurlconnection2.setDoOutput(true);
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        s = new OutputStreamWriter(httpurlconnection2.getOutputStream(), "utf-8");
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        s.write(stringbuffer1.toString());
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        s.flush();
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        s.close();
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        s = httpurlconnection2.getInputStream();
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        int i = s.available();
        if (i >= 10240)
        {
            i = 10240;
        }
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        s1 = new byte[i];
_L6:
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        i = s.read(s1);
        if (i != -1) goto _L2; else goto _L1
_L1:
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        s.close();
        if (httpurlconnection2 != null)
        {
            httpurlconnection2.disconnect();
        }
_L4:
        return stringbuffer.toString();
_L2:
        httpurlconnection = httpurlconnection2;
        httpurlconnection1 = httpurlconnection2;
        try
        {
            stringbuffer.append(new String(s1, 0, i));
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            httpurlconnection1 = httpurlconnection;
        }
        finally
        {
            if (httpurlconnection1 != null)
            {
                httpurlconnection1.disconnect();
            }
            throw s;
        }
        s.printStackTrace();
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static Bundle getLocalPhoneNum(Activity activity)
    {
        Object obj;
        Bundle bundle;
        HttpURLConnection httpurlconnection;
        Bundle bundle1;
        HttpURLConnection httpurlconnection1;
        HttpURLConnection httpurlconnection2;
        Bundle bundle2;
        Object obj1;
        byte abyte0[];
        StringBuffer stringbuffer;
        int i;
        obj1 = null;
        bundle2 = null;
        obj = getApnCode(activity);
        if (((String) (obj)).equals("nomatch"))
        {
            return null;
        }
        if ("ctnet".equals(obj))
        {
            if (!updateApnCode(activity, "ctwap"))
            {
                return null;
            }
            InputStream inputstream;
            try
            {
                Thread.sleep(1500L);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((InterruptedException) (obj)).printStackTrace();
            }
        }
        obj = null;
        httpurlconnection1 = null;
        httpurlconnection = null;
        bundle = bundle2;
        bundle1 = obj1;
        httpurlconnection2 = (HttpURLConnection)(new URL("http://www.voogle.cn:12380/httphead.do?type=9001&param=")).openConnection(new Proxy(java.net.Proxy.Type.HTTP, new InetSocketAddress("10.0.0.200", 80)));
        bundle = bundle2;
        httpurlconnection = httpurlconnection2;
        obj = httpurlconnection2;
        bundle1 = obj1;
        httpurlconnection1 = httpurlconnection2;
        httpurlconnection2.setConnectTimeout(10000);
        bundle = bundle2;
        httpurlconnection = httpurlconnection2;
        obj = httpurlconnection2;
        bundle1 = obj1;
        httpurlconnection1 = httpurlconnection2;
        httpurlconnection2.setReadTimeout(10000);
        bundle = bundle2;
        httpurlconnection = httpurlconnection2;
        obj = httpurlconnection2;
        bundle1 = obj1;
        httpurlconnection1 = httpurlconnection2;
        httpurlconnection2.setRequestMethod("GET");
        bundle = bundle2;
        httpurlconnection = httpurlconnection2;
        obj = httpurlconnection2;
        bundle1 = obj1;
        httpurlconnection1 = httpurlconnection2;
        httpurlconnection2.setRequestProperty("User-Agent", "com.pubinfo");
        bundle = bundle2;
        httpurlconnection = httpurlconnection2;
        obj = httpurlconnection2;
        bundle1 = obj1;
        httpurlconnection1 = httpurlconnection2;
        httpurlconnection2.setDoInput(true);
        bundle = bundle2;
        httpurlconnection = httpurlconnection2;
        obj = httpurlconnection2;
        bundle1 = obj1;
        httpurlconnection1 = httpurlconnection2;
        inputstream = httpurlconnection2.getInputStream();
        bundle = bundle2;
        httpurlconnection = httpurlconnection2;
        obj = httpurlconnection2;
        bundle1 = obj1;
        httpurlconnection1 = httpurlconnection2;
        abyte0 = new byte[10240];
        bundle = bundle2;
        httpurlconnection = httpurlconnection2;
        obj = httpurlconnection2;
        bundle1 = obj1;
        httpurlconnection1 = httpurlconnection2;
        stringbuffer = new StringBuffer();
_L3:
        bundle = bundle2;
        httpurlconnection = httpurlconnection2;
        obj = httpurlconnection2;
        bundle1 = obj1;
        httpurlconnection1 = httpurlconnection2;
        i = inputstream.read(abyte0);
        if (i != -1) goto _L2; else goto _L1
_L1:
        bundle = bundle2;
        httpurlconnection = httpurlconnection2;
        obj = httpurlconnection2;
        bundle1 = obj1;
        httpurlconnection1 = httpurlconnection2;
        bundle2 = parsePhone(stringbuffer.toString());
        bundle = bundle2;
        httpurlconnection = httpurlconnection2;
        obj = httpurlconnection2;
        bundle1 = bundle2;
        httpurlconnection1 = httpurlconnection2;
        count = 0;
        activity = bundle2;
        if (httpurlconnection2 != null)
        {
            httpurlconnection2.disconnect();
            activity = bundle2;
        }
_L6:
        return activity;
_L2:
        bundle = bundle2;
        httpurlconnection = httpurlconnection2;
        obj = httpurlconnection2;
        bundle1 = obj1;
        httpurlconnection1 = httpurlconnection2;
        stringbuffer.append(new String(abyte0, 0, i));
          goto _L3
        obj;
        obj = httpurlconnection;
        if (count >= 2) goto _L5; else goto _L4
_L4:
        obj = httpurlconnection;
        count++;
        obj = httpurlconnection;
        getLocalPhoneNum(activity);
_L7:
        activity = bundle;
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
            activity = bundle;
        }
          goto _L6
_L5:
        obj = httpurlconnection;
        count = 0;
          goto _L7
        activity;
        if (obj != null)
        {
            ((HttpURLConnection) (obj)).disconnect();
        }
        throw activity;
        activity;
        obj = httpurlconnection1;
        activity.printStackTrace();
        activity = bundle1;
        if (httpurlconnection1 != null)
        {
            httpurlconnection1.disconnect();
            activity = bundle1;
        }
          goto _L6
    }

    public static boolean isMobileNO(String s)
    {
        return Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$").matcher(s).matches();
    }

    public static String[] parseData(String s)
    {
        String as[] = new String[5];
        try
        {
            s = new ByteArrayInputStream(s.getBytes("utf-8"));
            s = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(s).getDocumentElement();
            as[0] = s.getElementsByTagName("imsi").item(0).getFirstChild().getNodeValue();
            as[1] = s.getElementsByTagName("longtude").item(0).getFirstChild().getNodeValue();
            as[2] = s.getElementsByTagName("latitude").item(0).getFirstChild().getNodeValue();
            as[3] = s.getElementsByTagName("city").item(0).getFirstChild().getNodeValue();
            as[4] = s.getElementsByTagName("street").item(0).getFirstChild().getNodeValue();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return as;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return as;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return as;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return as;
        }
        return as;
    }

    private static Bundle parsePhone(String s)
    {
        Object obj;
        obj = s.replaceAll("&lt;br&gt;", "\n");
        s = null;
        obj = new ByteArrayInputStream(((String) (obj)).getBytes("UTF-8"));
        obj = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(((InputStream) (obj))).getDocumentElement();
        s = ((String) (obj));
_L2:
        String s1 = getElementValue(s, "phone");
        s = getElementValue(s, "radiotype");
        Bundle bundle = new Bundle();
        bundle.putString("Phone", s1);
        bundle.putString("Radiotype", s);
        return bundle;
        Exception exception;
        exception;
        exception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void showCustomDialog(Activity activity, String s, String s1, View view, String s2, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
        activity = new TextView(activity);
        activity.setText(s);
        activity.setGravity(81);
        activity.setTextSize(18F);
        activity.setTextColor(-1);
        activity.setPadding(0, 10, 0, 0);
        builder.setCustomTitle(activity);
        builder.setMessage(s1);
        builder.setView(view);
        builder.setPositiveButton(s2, onclicklistener);
        builder.show();
    }

    public static void showCustomDialog(final Activity activity, String s, String s1, final boolean isFinish)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
        TextView textview = new TextView(activity);
        textview.setText(s);
        textview.setGravity(81);
        textview.setTextSize(18F);
        textview.setTextColor(-1);
        textview.setPadding(0, 10, 0, 0);
        builder.setCustomTitle(textview);
        builder.setMessage(s1);
        builder.setNegativeButton("\u786E\u5B9A", new android.content.DialogInterface.OnClickListener() {

            private final Activity val$activity;
            private final boolean val$isFinish;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (isFinish)
                {
                    activity.finish();
                }
            }

            
            {
                isFinish = flag;
                activity = activity1;
                super();
            }
        }).show();
    }

    public static void showDialog(final Activity activity, String s, final boolean isFinish)
    {
        (new android.app.AlertDialog.Builder(activity)).setTitle("\u63D0\u793A").setMessage(s).setNegativeButton("\u786E\u5B9A", new android.content.DialogInterface.OnClickListener() {

            private final Activity val$activity;
            private final boolean val$isFinish;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (isFinish)
                {
                    activity.finish();
                }
            }

            
            {
                isFinish = flag;
                activity = activity1;
                super();
            }
        }).show();
    }

    public static void showDialog2(final Activity activity, String s, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        (new android.app.AlertDialog.Builder(activity)).setTitle("\u63D0\u793A").setMessage(s).setPositiveButton("\u786E\u5B9A", onclicklistener).setNegativeButton("\u53D6\u6D88", new android.content.DialogInterface.OnClickListener() {

            private final Activity val$activity;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                activity.finish();
            }

            
            {
                activity = activity1;
                super();
            }
        }).show();
    }

    public static void showDialog3(Activity activity, String s, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
        activity = new TextView(activity);
        activity.setText("\u63D0\u793A\u4FE1\u606F");
        activity.setGravity(81);
        activity.setTextSize(18F);
        activity.setTextColor(-1);
        activity.setPadding(0, 10, 0, 0);
        builder.setCustomTitle(activity);
        builder.setMessage(s);
        builder.setPositiveButton("\u786E\u5B9A", onclicklistener);
        builder.show();
    }

    public static boolean updateApnCode(Activity activity, String s)
    {
        ContentResolver contentresolver;
        int i;
        boolean flag1;
        flag1 = false;
        i = ((TelephonyManager)activity.getSystemService("phone")).getNetworkType();
        contentresolver = activity.getContentResolver();
        activity = null;
        i;
        JVM INSTR tableswitch 1 10: default 80
    //                   1 102
    //                   2 102
    //                   3 102
    //                   4 86
    //                   5 86
    //                   6 86
    //                   7 86
    //                   8 102
    //                   9 102
    //                   10 102;
           goto _L1 _L2 _L2 _L2 _L3 _L3 _L3 _L3 _L2 _L2 _L2
_L1:
        if (activity == null)
        {
            return false;
        }
        break; /* Loop/switch isn't completed */
_L3:
        activity = contentresolver.query(ALLRAPN_URI, null, null, null, null);
        continue; /* Loop/switch isn't completed */
_L2:
        activity = contentresolver.query(ALLRAPN_URI, null, "current=?", new String[] {
            "1"
        }, null);
        if (true) goto _L1; else goto _L4
_L4:
        String s1;
        s1 = "";
        if (s == null || !"ctwap".equals(s) && !"ctnet".equals(s))
        {
            return false;
        }
        if (!"ctwap".equals(s) || false) goto _L6; else goto _L5
_L5:
        s1 = "10.0.0.200";
_L10:
        String s2;
        s2 = "";
        s = s2;
        if (activity.getCount() <= 0) goto _L8; else goto _L7
_L7:
        if (activity.moveToNext())
        {
            continue; /* Loop/switch isn't completed */
        }
        s = s2;
_L8:
        activity.close();
        activity = new ContentValues();
        activity.put("apn_id", s);
        boolean flag = flag1;
        if (s != null)
        {
            flag = flag1;
            if (!s.equals(""))
            {
                flag = flag1;
                if (contentresolver.update(PREFERAPN_URI, activity, null, null) > 0)
                {
                    flag = true;
                }
            }
        }
        return flag;
_L6:
        if (!"ctwap".equals(s)) goto _L10; else goto _L9
_L9:
        throw new NullPointerException();
        if (!s1.equals(activity.getString(activity.getColumnIndex("proxy")))) goto _L7; else goto _L11
_L11:
        s = activity.getString(0);
          goto _L8
    }

}
