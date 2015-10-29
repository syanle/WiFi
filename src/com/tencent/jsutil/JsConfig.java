// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.tencent.connect.a.a;
import com.tencent.javascript.RawFile;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Scanner;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.json.JSONException;
import org.json.JSONObject;

public class JsConfig
{

    public static final String CHECK_UP_URL = "http://s.p.qq.com/pub/check_bizup";
    public static final String CONFIG_FILE = "config.json";
    public static final String DIR_ASSERT_ROOT = "tencent/js";
    public static final String DIR_ASSERT_ZIP = "tencent/zip";
    public static final int FREQUENCY_TIME = 30;
    private static final String TAG = "JsConfig";
    public static final String TENCENT_FILE_PATH = "file:///android_asset/tencent/js/tencent.html";
    public static final String ZIP_FILE_NAME = "js.zip";
    private static JsConfig config = null;
    private static Context mContext = null;
    private static String mTencentFilePath;
    public static String mTencentFileProtocolPath;
    private String mDirApp;
    private String mDirJsRoot;
    private String mDirZipTemp;
    android.content.SharedPreferences.Editor mEditor;
    SharedPreferences mPreferences;

    private JsConfig(Context context)
    {
        mPreferences = context.getSharedPreferences("js_config", 0);
        mContext = context;
        initEnv();
    }

    public static JsConfig getInstance(Context context)
    {
        if (config == null)
        {
            config = new JsConfig(context);
        }
        return config;
    }

    private void initEnv()
    {
        mDirApp = (new StringBuilder()).append(mContext.getFilesDir()).append("/").toString();
        Log.d("JsConfig", mDirApp);
        mDirJsRoot = (new StringBuilder()).append(mDirApp).append("tencent/js").toString();
        mTencentFilePath = (new StringBuilder()).append(mDirJsRoot).append(File.separator).append("tencent.html").toString();
        mTencentFileProtocolPath = (new StringBuilder()).append("file://").append(mDirJsRoot).append(File.separator).append("tencent.html").toString();
        File file = new File(mDirJsRoot);
        if (!file.exists())
        {
            file.mkdirs();
        }
        Log.d("JsConfig", mDirJsRoot);
        mDirZipTemp = (new StringBuilder()).append(mDirApp).append("tencent/temp").toString();
        Log.d("JsConfig", mDirZipTemp);
        file = new File(mDirZipTemp);
        if (!file.exists())
        {
            file.mkdirs();
        }
    }

    public JSONObject getConfig()
    {
        Object obj = new File((new StringBuilder()).append(mDirJsRoot).append("/config.json").toString());
        if (!((File) (obj)).exists())
        {
            obj = com/tencent/javascript/RawFile.getResource("js.zip");
            try
            {
                obj = ((URL) (obj)).openConnection().getInputStream();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace();
                obj = null;
            }
        } else
        {
            try
            {
                obj = new FileInputStream(((File) (obj)));
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace();
                obj = null;
            }
        }
        if (obj == null)
        {
            return null;
        }
        obj = a.a(((java.io.InputStream) (obj)));
        try
        {
            obj = new JSONObject(((String) (obj)));
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            return null;
        }
        return ((JSONObject) (obj));
    }

    public String getDirJsRoot()
    {
        return mDirJsRoot;
    }

    public String getDirZipTemp()
    {
        return mDirZipTemp;
    }

    public long getFrequency()
    {
        return mPreferences.getLong("frequency", 30L);
    }

    public String getJsVersion()
    {
        return mPreferences.getString("js_version", "0");
    }

    public long getLastUpdateTime()
    {
        return mPreferences.getLong("last_update", 0L);
    }

    public String getTencentFilePath()
    {
        return mTencentFilePath;
    }

    public String getTencentFileProtocolPath()
    {
        return mTencentFileProtocolPath;
    }

    public JSONObject readConfigFromZip(File file)
    {
        Log.d("JsConfig", (new StringBuilder()).append("file exists:").append(file.exists()).toString());
        file = new ZipInputStream(new FileInputStream(file));
_L1:
        Object obj = file.getNextEntry();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_162;
        }
        Object obj1;
        if (!((ZipEntry) (obj)).getName().equals("config.json"))
        {
            break MISSING_BLOCK_LABEL_147;
        }
        obj1 = new StringBuffer();
        for (obj = new Scanner(file); ((Scanner) (obj)).hasNextLine(); ((StringBuffer) (obj1)).append(((Scanner) (obj)).nextLine()).append("\n")) { }
        break MISSING_BLOCK_LABEL_113;
        try
        {
            file.close();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            file.printStackTrace();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            file.printStackTrace();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            file.printStackTrace();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            file.printStackTrace();
        }
        return null;
        obj1 = new JSONObject(((StringBuffer) (obj1)).toString());
        file.closeEntry();
        ((Scanner) (obj)).close();
        file.close();
        return ((JSONObject) (obj1));
        file.closeEntry();
          goto _L1
    }

    public void setFrequency(long l)
    {
        mEditor = mPreferences.edit();
        mEditor.putLong("frequency", l);
        mEditor.commit();
    }

    public void setJsVersion(String s)
    {
        mEditor = mPreferences.edit();
        mEditor.putString("js_version", s);
        mEditor.commit();
    }

    public void setLastUpdateTime(long l)
    {
        mEditor = mPreferences.edit();
        mEditor.putLong("last_update", l);
        mEditor.commit();
    }

}
