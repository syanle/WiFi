// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import dalvik.system.DexClassLoader;
import java.io.File;

// Referenced classes of package com.baidu.location:
//            ax, n, LLSInterface, ab, 
//            c

public class f extends Service
    implements ax, n
{

    private static final String ij = "app.jar";
    public static Context mC = null;
    public static String replaceFileName = "repll.jar";
    LLSInterface ii;
    LLSInterface ik;
    LLSInterface il;

    public f()
    {
        ii = null;
        ik = null;
        il = null;
    }

    public static float getFrameVersion()
    {
        return 4.2F;
    }

    public static String getJarFileName()
    {
        return "app.jar";
    }

    public static Context getServiceContext()
    {
        return mC;
    }

    public IBinder onBind(Intent intent)
    {
        return il.onBind(intent);
    }

    public void onCreate()
    {
        mC = getApplicationContext();
        System.currentTimeMillis();
        ik = new ab();
        try
        {
            File file = new File((new StringBuilder()).append(c._mthgoto()).append(File.separator).append(replaceFileName).toString());
            if (file.exists())
            {
                File file1 = new File((new StringBuilder()).append(c._mthgoto()).append(File.separator).append("app.jar").toString());
                if (file1.exists())
                {
                    file1.delete();
                }
                file.renameTo(file1);
            }
            ii = (LLSInterface)(new DexClassLoader((new StringBuilder()).append(c._mthgoto()).append(File.separator).append("app.jar").toString(), c._mthgoto(), null, getClassLoader())).loadClass("com.baidu.serverLoc.LocationService").newInstance();
        }
        catch (Exception exception)
        {
            ii = null;
        }
        if (ii != null && ii.getVersion() > ik.getVersion())
        {
            il = ii;
            ik = null;
        } else
        {
            il = ik;
            ii = null;
        }
        il.onCreate(this);
    }

    public void onDestroy()
    {
        il.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        return il.onStartCommand(intent, i, j);
    }

    public boolean onUnbind(Intent intent)
    {
        return il.onUnBind(intent);
    }

}
