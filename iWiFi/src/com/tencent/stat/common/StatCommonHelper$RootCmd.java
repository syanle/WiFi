// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat.common;

import java.io.File;

// Referenced classes of package com.tencent.stat.common:
//            StatCommonHelper

static class 
{

    private static int systemRootState = -1;

    public static boolean isRootSystem()
    {
        String as[];
        int i;
        if (systemRootState == 1)
        {
            return true;
        }
        if (systemRootState == 0)
        {
            return false;
        }
        as = new String[6];
        as[0] = "/bin";
        as[1] = "/system/bin/";
        as[2] = "/system/xbin/";
        as[3] = "/system/sbin/";
        as[4] = "/sbin/";
        as[5] = "/vendor/bin/";
        i = 0;
_L2:
        File file;
        if (i >= as.length)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        file = new File((new StringBuilder()).append(as[i]).append("su").toString());
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        if (!file.exists())
        {
            break MISSING_BLOCK_LABEL_114;
        }
        systemRootState = 1;
        return true;
        Exception exception;
        exception;
        systemRootState = 0;
        return false;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

}
