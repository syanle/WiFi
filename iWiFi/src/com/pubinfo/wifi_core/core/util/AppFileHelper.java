// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.util;

import android.content.Context;
import java.io.File;

// Referenced classes of package com.pubinfo.wifi_core.core.util:
//            BaseFileHelper

public class AppFileHelper extends BaseFileHelper
{

    private static AppFileHelper appFileManager = null;

    private AppFileHelper(Context context)
    {
        rootDir = context.getFilesDir();
        rootPath = rootDir.getAbsolutePath();
    }

    public static AppFileHelper getInstance(Context context)
    {
        com/pubinfo/wifi_core/core/util/AppFileHelper;
        JVM INSTR monitorenter ;
        if (appFileManager == null)
        {
            appFileManager = new AppFileHelper(context);
        }
        context = appFileManager;
        com/pubinfo/wifi_core/core/util/AppFileHelper;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

}
