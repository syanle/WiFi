// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.download;

import com.ta.TAApplication;
import com.ta.common.TAStringUtils;
import com.ta.util.config.TAIConfig;
import java.util.ArrayList;
import java.util.List;

public class DownLoadConfigUtil
{

    public static final String KEY_URL = "url";
    public static final String PREFERENCE_NAME = "com.yyxu.download";
    public static final int URL_COUNT = 3;

    public DownLoadConfigUtil()
    {
    }

    public static void clearURL(int i)
    {
        TAApplication.getApplication().getCurrentConfig().remove((new StringBuilder("url")).append(i).toString());
    }

    private static String getString(String s)
    {
        return TAApplication.getApplication().getCurrentConfig().getString(s, "");
    }

    public static String getURL(int i)
    {
        return TAApplication.getApplication().getCurrentConfig().getString((new StringBuilder("url")).append(i).toString(), "");
    }

    public static List getURLArray()
    {
        ArrayList arraylist = new ArrayList();
        int i = 0;
        do
        {
            if (i >= 3)
            {
                return arraylist;
            }
            if (!TAStringUtils.isEmpty(getURL(i)))
            {
                arraylist.add(getString((new StringBuilder("url")).append(i).toString()));
            }
            i++;
        } while (true);
    }

    public static void storeURL(int i, String s)
    {
        TAApplication.getApplication().getCurrentConfig().setString((new StringBuilder("url")).append(i).toString(), s);
    }
}
