// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bread.breadservice;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Binder;
import android.os.Environment;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;

// Referenced classes of package com.bread.breadservice:
//            IBRD, BRD

public class BRDService extends Service
{
    public class ServiceBinder extends Binder
    {

        final BRDService this$0;

        public BRDService getService()
        {
            return BRDService.this;
        }

        public ServiceBinder()
        {
            this$0 = BRDService.this;
            super();
        }
    }


    public static final String ACTION = "com.bread.breadservice.action.brservice";
    public static final String ACTION_TAG = "actioncode";
    public static final int ACTION_VALUE_DISABLE = 4100;
    public static final int ACTION_VALUE_ENABLE = 4099;
    public static final int ACTION_VALUE_RECEIVER = 4098;
    public static final int ACTION_VALUE_START = 4097;
    public static final int ACTION_VALUE_STOPSELF = 4096;
    public static String JAR_DIR;
    private static final String TAG = "BRDService";
    private boolean isRestart;
    private final ServiceBinder mBinder = new ServiceBinder();
    private IBRD mgr;

    public BRDService()
    {
        mgr = null;
        isRestart = true;
    }

    private boolean copyJarFromAssets(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return false;
        }
        InputStream inputstream;
        inputstream = getAssets().open(s);
        File file = new File(JAR_DIR);
        if (!file.exists())
        {
            file.mkdirs();
        }
        s = new File((new StringBuilder(String.valueOf(JAR_DIR))).append(s).toString());
        if (!s.exists())
        {
            break MISSING_BLOCK_LABEL_86;
        }
        Log.i("BRDService", "do not need copy assert dexjar");
        return true;
        byte abyte0[];
        Log.i("BRDService", "need copy assert dexjar");
        s.createNewFile();
        s = new FileOutputStream(s);
        abyte0 = new byte[1024];
_L1:
        int i = inputstream.read(abyte0);
        if (i <= 0)
        {
            try
            {
                s.flush();
                s.close();
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                return false;
            }
            return true;
        }
        s.write(abyte0, 0, i);
          goto _L1
    }

    private int getVersionDexjar(String s)
    {
        Log.i("BRDService", (new StringBuilder("dexjar = ")).append(s).toString());
        if (TextUtils.isEmpty(s) || s.length() < 9 || !s.endsWith(".jar"))
        {
            return -1;
        }
        int i;
        try
        {
            s = s.substring(s.indexOf("-") + 1, s.indexOf("."));
            Log.i("BRDService", (new StringBuilder("verStr = ")).append(s).toString());
            i = Integer.valueOf(s).intValue();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            i = -1;
        }
        Log.i("BRDService", (new StringBuilder("version = ")).append(i).toString());
        return i;
    }

    private String initDexjar()
    {
        Object obj;
        Object obj1;
        Object obj2;
        Object obj4;
        int j;
        int k;
        j = 0;
        k = -1;
        obj = null;
        obj4 = null;
        obj2 = null;
        obj1 = obj4;
        String as[] = getResources().getAssets().list("");
        obj1 = obj4;
        int l = as.length;
        int i = 0;
          goto _L1
_L7:
        obj1 = obj4;
        Object obj3 = new File(JAR_DIR);
        obj1 = obj4;
        if (((File) (obj3)).exists()) goto _L3; else goto _L2
_L2:
        File file;
        obj1 = obj4;
        File afile[];
        int i1;
        try
        {
            copyJarFromAssets(((String) (obj)));
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            ioexception = ((IOException) (obj1));
        }
        Log.i("BRDService", (new StringBuilder("curMaxJar = ")).append(((String) (obj))).toString());
        return ((String) (obj));
_L12:
        obj3 = as[i];
        if (obj3 == null) goto _L5; else goto _L4
_L4:
        obj1 = obj4;
        if (((String) (obj3)).contains("bread-")) goto _L6; else goto _L5
_L6:
        obj1 = obj4;
        i = getVersionDexjar(((String) (obj3)));
        obj = obj3;
          goto _L7
_L3:
        obj1 = obj4;
        afile = ((File) (obj3)).listFiles();
        if (afile == null) goto _L9; else goto _L8
_L8:
        obj1 = obj4;
        if (afile.length < 1) goto _L9; else goto _L10
_L10:
        obj3 = null;
        k = -1;
        obj1 = obj4;
        i1 = afile.length;
_L13:
        if (j < i1)
        {
            break MISSING_BLOCK_LABEL_242;
        }
        if (obj3 != null)
        {
            break MISSING_BLOCK_LABEL_210;
        }
        obj1 = obj4;
        copyJarFromAssets(((String) (obj)));
        obj2 = obj;
        if (k == -1 || k >= i)
        {
            break MISSING_BLOCK_LABEL_299;
        }
        obj1 = obj2;
        ((File) (obj3)).delete();
        obj1 = obj2;
        copyJarFromAssets(((String) (obj)));
        break MISSING_BLOCK_LABEL_79;
        file = afile[j];
        obj1 = obj4;
        l = getVersionDexjar(file.getName());
        if (l >= k)
        {
            break MISSING_BLOCK_LABEL_282;
        }
        obj1 = obj4;
        file.delete();
        break MISSING_BLOCK_LABEL_355;
        if (obj3 == null)
        {
            break MISSING_BLOCK_LABEL_364;
        }
        obj1 = obj4;
        ((File) (obj3)).delete();
        break MISSING_BLOCK_LABEL_364;
        obj1 = obj2;
        obj = ((File) (obj3)).getName();
        break MISSING_BLOCK_LABEL_79;
_L9:
        obj1 = obj4;
        copyJarFromAssets(((String) (obj)));
        break MISSING_BLOCK_LABEL_79;
_L1:
        if (i < l) goto _L12; else goto _L11
_L11:
        i = k;
          goto _L7
_L5:
        i++;
          goto _L1
_L14:
        j++;
          goto _L13
        k = l;
        obj3 = file;
          goto _L14
    }

    private IBRD loadDex(String s)
    {
        IBRD ibrd;
        Object obj;
        obj = getDir("BRDservice", 0);
        ibrd = null;
        obj = new DexClassLoader(s, ((File) (obj)).getAbsolutePath(), null, getClassLoader());
        Log.i("BRDService", (new StringBuilder("jarpath = ")).append(s).toString());
        obj = (IBRD)((DexClassLoader) (obj)).loadClass("com.bread.breadservice.core.BRMgr").getConstructor(new Class[] {
            android/content/Context
        }).newInstance(new Object[] {
            this
        });
        ibrd = ((IBRD) (obj));
_L2:
        if (ibrd != null)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        Exception exception;
        try
        {
            s = new File(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return ibrd;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        s.delete();
        return ibrd;
        exception;
        Log.e("BRDService", "load jar error!!!");
        if (true) goto _L2; else goto _L1
_L1:
    }

    public IBinder onBind(Intent intent)
    {
        return mBinder;
    }

    public void onCreate()
    {
        super.onCreate();
        String s = initDexjar();
        mgr = loadDex((new StringBuilder(String.valueOf(JAR_DIR))).append(s).toString());
        Log.i("BRDService", (new StringBuilder("mgr = ")).append(mgr).toString());
        if (mgr != null)
        {
            mgr.create(getVersionDexjar(s));
        }
    }

    public void onDestroy()
    {
        Log.i("BRDService", "onDestroy ...");
        if (mgr != null)
        {
            mgr.destory();
        }
        mgr = null;
        super.onDestroy();
        if (isRestart)
        {
            BRD.startBRDService(this);
        }
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        Log.i("BRDService", "onStartCommand ...");
        if (intent == null || intent.getExtras() == null) goto _L2; else goto _L1
_L1:
        intent.getIntExtra("actioncode", 0);
        JVM INSTR tableswitch 4096 4100: default 60
    //                   4096 62
    //                   4097 95
    //                   4098 123
    //                   4099 151
    //                   4100 170;
           goto _L2 _L3 _L4 _L5 _L6 _L7
_L2:
        return 1;
_L3:
        Log.i("BRDService", "ACTION_VALUE_STOPSELF");
        if (mgr != null)
        {
            mgr.stopself();
        }
        isRestart = false;
        continue; /* Loop/switch isn't completed */
_L4:
        Log.i("BRDService", "ACTION_VALUE_START");
        if (mgr != null)
        {
            mgr.start();
        }
        continue; /* Loop/switch isn't completed */
_L5:
        Log.i("BRDService", "ACTION_VALUE_RECEIVER");
        if (mgr != null)
        {
            mgr.receiver();
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (mgr != null)
        {
            mgr.enable();
        }
        continue; /* Loop/switch isn't completed */
_L7:
        if (mgr != null)
        {
            mgr.disable();
        }
        if (true) goto _L2; else goto _L8
_L8:
    }

    static 
    {
        JAR_DIR = (new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().toString()))).append(File.separator).append(".brdservice/download/jar/").toString();
    }
}
