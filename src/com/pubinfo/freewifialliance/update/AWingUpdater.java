// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.update;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLDecoder;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class AWingUpdater
{
    class AppUpdateInfo
    {

        private String app_intro;
        private String app_name;
        private long app_size;
        private String download_url;
        private String public_date;
        final AWingUpdater this$0;
        private String update_grade;
        private int version_code;
        private String version_name;

        public String getAppIntro()
        {
            return app_intro;
        }

        public String getAppName()
        {
            return app_name;
        }

        public long getAppSize()
        {
            return app_size;
        }

        public String getDownloadUrl()
        {
            return download_url;
        }

        public String getPublicDate()
        {
            return public_date;
        }

        public String getUpdateGrade()
        {
            return update_grade;
        }

        public int getVersionCode()
        {
            return version_code;
        }

        public String getVersionName()
        {
            return version_name;
        }

        public void setAppIntro(String s)
        {
            app_intro = s;
        }

        public void setAppName(String s)
        {
            app_name = s;
        }

        public void setAppSize(String s)
        {
            try
            {
                app_size = Long.parseLong(s);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
            }
        }

        public void setDownloadUrl(String s)
        {
            download_url = s;
        }

        public void setPublicDate(String s)
        {
            public_date = s;
        }

        public void setUpdateGrade(String s)
        {
            update_grade = s;
        }

        public void setVersionCode(String s)
        {
            try
            {
                version_code = Integer.parseInt(s);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
            }
        }

        public void setVersionName(String s)
        {
            version_name = s;
        }

        AppUpdateInfo()
        {
            this$0 = AWingUpdater.this;
            super();
            app_name = "";
            version_name = "";
            version_code = 0;
            app_size = 0L;
            download_url = "";
            public_date = "";
            update_grade = "";
            app_intro = "";
        }
    }


    public static final String TEMP_PATH = "apk_catch";
    private final int CONNECT_TIMEOUT = 8000;
    private final String UPDATE_XMLPATH = "http://www.voogle.cn:12380/checkVersion";
    String UPDATE_XMLPATH2;
    private Handler mHandler;
    private boolean mIsGoOn;
    private boolean mIsToEnd;

    public AWingUpdater(Handler handler)
    {
        mIsGoOn = true;
        mIsToEnd = false;
        mHandler = null;
        mHandler = handler;
    }

    private String downloadServerFile(String s, String s1, boolean flag)
    {
        Object obj = null;
        File file;
        DataOutputStream dataoutputstream;
        s = (HttpURLConnection)(new URL(s)).openConnection();
        s.setConnectTimeout(8000);
        s.setDoInput(true);
        s.setRequestMethod("GET");
        s.setRequestProperty("User-Agent", "com.pubinfo");
        s.setRequestProperty("Accept-Encoding", "identity");
        s.connect();
        s = s.getInputStream();
        file = new File(s1);
        if (!file.exists())
        {
            if (!file.getParentFile().exists())
            {
                file.getParentFile().mkdirs();
            }
            file.createNewFile();
        }
        dataoutputstream = new DataOutputStream(new FileOutputStream(file));
        long l = 0L;
        byte abyte0[] = new byte[0x19000];
_L2:
        int i = s.read(abyte0);
        if (i == -1)
        {
            InterruptedException interruptedexception;
            long l1;
            try
            {
                dataoutputstream.flush();
                dataoutputstream.close();
                s.close();
                s = file.getAbsolutePath();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s = obj;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                s = obj;
            }
            break MISSING_BLOCK_LABEL_259;
        }
        l1 = l + (long)i;
        dataoutputstream.write(abyte0, 0, i);
        l = l1;
        if (mIsGoOn) goto _L2; else goto _L1
_L1:
        s1 = Thread.currentThread();
        s1;
        JVM INSTR monitorenter ;
        s1.wait();
_L3:
        if (!mIsToEnd)
        {
            break MISSING_BLOCK_LABEL_242;
        }
        return "toend";
        interruptedexception;
        interruptedexception.printStackTrace();
          goto _L3
        s;
        s1;
        JVM INSTR monitorexit ;
        throw s;
        s1;
        JVM INSTR monitorexit ;
        l = l1;
          goto _L2
        return s;
    }

    private AppUpdateInfo xmlParse(String s)
    {
        String s1;
        String s2;
        String s3;
        String s4;
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        Object obj4;
        obj = null;
        obj1 = null;
        obj2 = null;
        obj3 = null;
        obj4 = null;
        s = new File(s);
        if (!s.exists())
        {
            return null;
        }
        s1 = obj;
        s2 = obj1;
        s3 = obj2;
        s4 = obj3;
        if (s.length() <= 10L)
        {
            return null;
        }
        s1 = obj;
        s2 = obj1;
        s3 = obj2;
        s4 = obj3;
        Element element = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(s).getDocumentElement();
        s = obj4;
        if (element == null)
        {
            break MISSING_BLOCK_LABEL_122;
        }
        s1 = obj;
        s2 = obj1;
        s3 = obj2;
        s4 = obj3;
        s = new AppUpdateInfo();
        s1 = s;
        s2 = s;
        s3 = s;
        s4 = s;
        s.setAppName(element.getElementsByTagName("AppName").item(0).getFirstChild().getNodeValue());
        s1 = s;
        s2 = s;
        s3 = s;
        s4 = s;
        s.setAppSize(element.getElementsByTagName("AppSize").item(0).getFirstChild().getNodeValue());
        s1 = s;
        s2 = s;
        s3 = s;
        s4 = s;
        s.setVersionName(element.getElementsByTagName("VersionName").item(0).getFirstChild().getNodeValue());
        s1 = s;
        s2 = s;
        s3 = s;
        s4 = s;
        s.setVersionCode(element.getElementsByTagName("VersionCode").item(0).getFirstChild().getNodeValue());
        s1 = s;
        s2 = s;
        s3 = s;
        s4 = s;
        s.setDownloadUrl(URLDecoder.decode(element.getElementsByTagName("DownloadUrl").item(0).getFirstChild().getNodeValue(), "utf-8"));
        s1 = s;
        s2 = s;
        s3 = s;
        s4 = s;
        s.setPublicDate(element.getElementsByTagName("PublicDate").item(0).getFirstChild().getNodeValue());
        s1 = s;
        s2 = s;
        s3 = s;
        s4 = s;
        s.setUpdateGrade(element.getElementsByTagName("UpdateGrade").item(0).getFirstChild().getNodeValue());
        s1 = s;
        s2 = s;
        s3 = s;
        s4 = s;
        try
        {
            s.setAppIntro(element.getElementsByTagName("AppIntro").item(0).getFirstChild().getNodeValue());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            s = s1;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            s = s2;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            s = s3;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            s = s4;
        }
        return s;
    }

    public int readyForUpdate(int i, String s, String s1, String s2)
    {
        s = new File(s1);
        if (!s.exists()) goto _L2; else goto _L1
_L1:
        int j;
        int k;
        s = s.listFiles();
        k = s.length;
        j = 0;
_L5:
        if (j < k) goto _L3; else goto _L2
_L2:
        s = (new StringBuilder(String.valueOf(s1))).append("/app_update.xml").toString();
        UPDATE_XMLPATH2 = (new StringBuilder("http://www.voogle.cn:12380/checkVersion")).append(s2).toString();
        s = downloadServerFile(UPDATE_XMLPATH2, s, false);
        if (s == null || s.equals(""))
        {
            mHandler.sendEmptyMessage(0xabcd006);
            return 2;
        }
        break; /* Loop/switch isn't completed */
_L3:
        s[j].delete();
        j++;
        if (true) goto _L5; else goto _L4
_L4:
        s = xmlParse(s);
        if (s == null)
        {
            mHandler.sendEmptyMessage(0xabcd006);
            return 2;
        }
        if (s.getVersionCode() <= i)
        {
            mHandler.sendEmptyMessage(0xabcd006);
            return 1;
        }
        s1 = new Message();
        s1.what = 0xabcd00a;
        s2 = new Bundle();
        s2.putString("introfomation", s.getAppIntro());
        s2.putString("downloadUrl", s.getDownloadUrl());
        s2.putString("update_grade", s.getUpdateGrade());
        s2.putString("version_name", s.getVersionName());
        s2.putInt("version_code", s.getVersionCode());
        s1.setData(s2);
        mHandler.sendMessage(s1);
        s = Thread.currentThread();
        s;
        JVM INSTR monitorenter ;
        s.wait();
_L6:
        return 0;
        s1;
        s;
        JVM INSTR monitorexit ;
        throw s1;
        s1;
        s1.printStackTrace();
          goto _L6
    }

    public void setIsGoOn(boolean flag)
    {
        mIsGoOn = flag;
    }

    public void setIsToEnd(boolean flag)
    {
        mIsToEnd = flag;
    }
}
