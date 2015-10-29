// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.gui;

import android.graphics.Bitmap;

// Referenced classes of package com.mob.tools.gui:
//            BitmapProcessor

public static class reqTime
{

    private lback callback;
    private Bitmap image;
    private long reqTime;
    private String url;
    private ead worker;

    private void throwComplete(Bitmap bitmap)
    {
        image = bitmap;
        if (callback != null)
        {
            callback.onImageGot(url, image);
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("url=").append(url);
        stringbuilder.append("time=").append(reqTime);
        stringbuilder.append("worker=").append(worker.getName()).append(" (").append(worker.getId()).append("");
        return stringbuilder.toString();
    }



/*
    static String access$002(lback lback, String s)
    {
        lback.url = s;
        return s;
    }

*/


/*
    static ead access$1002(ead ead, ead ead1)
    {
        ead.worker = ead1;
        return ead1;
    }

*/


/*
    static lback access$102(lback lback, lback lback1)
    {
        lback.callback = lback1;
        return lback1;
    }

*/


    public callback()
    {
        reqTime = System.currentTimeMillis();
    }
}
