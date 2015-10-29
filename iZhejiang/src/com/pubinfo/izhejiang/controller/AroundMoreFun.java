// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.controller;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.cat.impl.DoNearBusListConn;
import com.cat.protocol.DoNearBusListInterface;
import com.pubinfo.izhejiang.ThinkAndroidBaseActivity;
import com.ta.util.http.AsyncHttpClient;

public abstract class AroundMoreFun extends ThinkAndroidBaseActivity
    implements DoNearBusListInterface
{

    private static String AroundPic[][] = {
        {
            "\u5BB6\u88C5", "01"
        }, {
            "\u7ED3\u5A5A", "02"
        }, {
            "\u9152\u5E97", "03"
        }, {
            "\u7F8E\u98DF", "04"
        }, {
            "\u4EB2\u5B50", "05"
        }, {
            "\u5C0F\u5403\u5FEB\u9910", "06"
        }, {
            "\u4F11\u95F2\u5A31\u4E50", "07"
        }, {
            "KTV", "08"
        }
    };
    private static String AroundPicFileQian = "business_";
    private AsyncHttpClient asyncHttpClient;

    public AroundMoreFun()
    {
    }

    public static Drawable getBusinessImage(String s, Context context)
    {
        String s1;
        int i;
        s1 = "";
        i = 0;
_L2:
        int j = AroundPic.length;
        if (i >= j)
        {
            s = s1;
        } else
        {
            try
            {
label0:
                {
                    if (!s.equals(AroundPic[i][0]))
                    {
                        break label0;
                    }
                    s = (new StringBuilder(String.valueOf(AroundPicFileQian))).append(AroundPic[i][1]).toString();
                }
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                s = "";
            }
        }
        i = context.getResources().getIdentifier(s, "drawable", "com.pubinfo.izhejiang");
        return context.getResources().getDrawable(i);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void getNearBusList(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, String s8, String s9, Context context)
    {
        diffTime();
        new DoNearBusListConn(s, s1, s2, s3, s4, s5, s6, s7, s8, s9, this, context);
    }

}
