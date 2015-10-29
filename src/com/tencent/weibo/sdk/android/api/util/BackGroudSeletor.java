// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api.util;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public class BackGroudSeletor
{

    static int EMPTY_STATE_SET[] = new int[0];
    static int ENABLED_STATE_SET[] = {
        0x101009e
    };
    static int PRESSED_ENABLED_STATE_SET[] = {
        0x101009e, 0x10100a7
    };
    private static String pix = "";

    private BackGroudSeletor()
    {
    }

    public static StateListDrawable createBgByImageIds(String as[], Context context)
    {
        StateListDrawable statelistdrawable = new StateListDrawable();
        Drawable drawable = getdrawble(as[0], context);
        as = getdrawble(as[1], context);
        statelistdrawable.addState(PRESSED_ENABLED_STATE_SET, as);
        statelistdrawable.addState(ENABLED_STATE_SET, drawable);
        statelistdrawable.addState(EMPTY_STATE_SET, drawable);
        return statelistdrawable;
    }

    public static String getPix()
    {
        return pix;
    }

    public static Drawable getdrawble(String s, Context context)
    {
        Object obj = null;
        String s1 = obj;
        String s2;
        File file;
        try
        {
            file = new File((new StringBuilder(String.valueOf(s))).append(pix).append(".png").toString());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            if (s1 != null)
            {
                s1.recycle();
            }
            s.printStackTrace();
            return null;
        }
        s1 = obj;
        s2 = (new StringBuilder(String.valueOf(s))).append(pix).append(".png").toString();
        s1 = obj;
        if (file.isFile())
        {
            break MISSING_BLOCK_LABEL_108;
        }
        s1 = obj;
        s2 = (new StringBuilder(String.valueOf(s))).append("480x800").append(".png").toString();
        s1 = obj;
        s = BitmapFactory.decodeStream(context.getAssets().open(s2));
        s1 = s;
        s = new BitmapDrawable(s);
        return s;
    }

    public static void setPix(String s)
    {
        pix = s;
    }

    public static InputStream zipPic(InputStream inputstream)
    {
        return null;
    }

}
