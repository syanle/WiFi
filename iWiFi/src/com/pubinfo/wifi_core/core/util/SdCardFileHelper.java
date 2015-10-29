// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.util;

import android.os.Environment;
import java.io.File;

// Referenced classes of package com.pubinfo.wifi_core.core.util:
//            BaseFileHelper

public class SdCardFileHelper extends BaseFileHelper
{

    private static SdCardFileHelper helper = null;

    private SdCardFileHelper()
    {
        try
        {
            rootPath = Environment.getExternalStorageDirectory().getAbsolutePath();
            rootDir = new File((new StringBuilder(String.valueOf(rootPath))).append(File.separator).append("WenZhouTong").toString());
            if (!rootDir.exists())
            {
                rootDir.mkdirs();
            }
            rootPath = rootDir.getAbsolutePath();
            return;
        }
        catch (Exception exception)
        {
            helper = null;
        }
    }

    public static SdCardFileHelper getInstance()
    {
        com/pubinfo/wifi_core/core/util/SdCardFileHelper;
        JVM INSTR monitorenter ;
        if (helper != null) goto _L2; else goto _L1
_L1:
        Object obj = Environment.getExternalStorageState();
        if (((String) (obj)).equalsIgnoreCase("removed") || !((String) (obj)).equals("mounted")) goto _L4; else goto _L3
_L3:
        helper = new SdCardFileHelper();
_L2:
        obj = helper;
_L6:
        com/pubinfo/wifi_core/core/util/SdCardFileHelper;
        JVM INSTR monitorexit ;
        return ((SdCardFileHelper) (obj));
_L4:
        obj = null;
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
    }

}
