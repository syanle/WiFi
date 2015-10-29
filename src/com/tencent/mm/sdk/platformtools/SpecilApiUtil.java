// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.os.Build;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Util

public class SpecilApiUtil
{

    public static final String LINE_SEP = "\n";
    public static final String LINE_SEP_W = "\r\n";
    public static final String LINE_TRIM = "                                                                                                                                                                                                                                                                                                                        ";
    public static final String TAG = "MicroMsg.SpecilApiUtil";

    public SpecilApiUtil()
    {
    }

    public static CharSequence fixInAPI16(CharSequence charsequence)
    {
        while (charsequence == null || android.os.Build.VERSION.SDK_INT != 16 || !charsequence.toString().contains("\n") || Util.nullAs(Build.MANUFACTURER, "").toLowerCase().indexOf("meizu".toLowerCase()) > 0) 
        {
            return charsequence;
        }
        return charsequence.toString().replace("\n", "                                                                                                                                                                                                                                                                                                                        ");
    }

    public static String killsplitAPI16(String s)
    {
        while (s == null || android.os.Build.VERSION.SDK_INT != 16 || !s.toString().contains("\n") || Util.nullAs(Build.MANUFACTURER, "").toLowerCase().indexOf("meizu".toLowerCase()) > 0) 
        {
            return s;
        }
        return s.toString().replace("\n", " ");
    }
}
