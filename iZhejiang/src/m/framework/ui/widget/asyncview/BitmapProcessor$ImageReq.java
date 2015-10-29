// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.asyncview;

import android.graphics.Bitmap;

// Referenced classes of package m.framework.ui.widget.asyncview:
//            BitmapProcessor, BitmapCallback

public static class reqTime
{

    private BitmapCallback callback;
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






    public ead()
    {
        reqTime = System.currentTimeMillis();
    }
}
