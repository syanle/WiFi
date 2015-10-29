// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

public class AdvertisingImageView extends ImageView
{

    Bitmap bit;

    public AdvertisingImageView(Context context)
    {
        super(context);
        bit = null;
    }

    public AdvertisingImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        bit = null;
    }

    public AdvertisingImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        bit = null;
    }

    private void downLoadBitmap(String s)
    {
        try
        {
            bit = BitmapFactory.decodeStream((new URL(s)).openStream());
            setBackgroundDrawable(new BitmapDrawable(bit));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            bit = null;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            bit = null;
        }
    }

    public void setBg(String s)
    {
        downLoadBitmap(s);
    }
}
