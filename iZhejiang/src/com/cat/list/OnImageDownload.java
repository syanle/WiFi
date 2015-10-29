// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.list;

import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.RelativeLayout;

public interface OnImageDownload
{

    public abstract void onDownloadSucc(Bitmap bitmap, String s, RelativeLayout relativelayout);

    public abstract void onDownloadSucc2(Bitmap bitmap, String s, ImageView imageview);
}
