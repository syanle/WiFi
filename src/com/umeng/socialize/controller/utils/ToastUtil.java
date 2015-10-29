// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.utils;

import android.content.Context;
import android.text.TextUtils;
import android.widget.Toast;

public class ToastUtil
{

    public ToastUtil()
    {
    }

    public static void showToast(Context context, String s)
    {
        if (context != null && !TextUtils.isEmpty(s))
        {
            Toast.makeText(context, s, 0).show();
        }
    }
}
