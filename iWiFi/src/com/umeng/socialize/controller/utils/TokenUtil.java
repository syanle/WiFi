// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.utils;

import android.content.Context;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.db.OauthHelper;
import com.umeng.socom.Log;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class TokenUtil
{

    public TokenUtil()
    {
    }

    public static boolean isTokenValid(Context context)
    {
        Object obj;
        context = OauthHelper.getAccessToken(context, SHARE_MEDIA.FACEBOOK);
        if (context.length <= 1)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        obj = new SimpleDateFormat("yyyy-MM-dd");
        context = ((DateFormat) (obj)).parse(context[1]);
        obj = Calendar.getInstance().getTime();
        Log.d("TokenUtil", (new StringBuilder("###  \uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD: ")).append(obj).append(", \uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD: ").append(context).toString());
        if (context.getTime() > ((Date) (obj)).getTime())
        {
            return true;
        }
        try
        {
            Log.e("TokenUtil", "#### facebook Token\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD, \uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
        return false;
    }

    public static void saveTokenToLocal(Context context, String s, Date date)
    {
        if (context != null)
        {
            date = (new SimpleDateFormat("yyyy-MM-dd")).format(date);
            OauthHelper.saveAccessToken(context, SHARE_MEDIA.FACEBOOK, s, date);
            OauthHelper.setUsid(context, SHARE_MEDIA.FACEBOOK, s);
        }
    }
}
