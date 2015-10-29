// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.util.stringcache;

import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.ta.common.TAStringUtils;
import com.ta.util.cache.TACallBackHandler;
import java.io.UnsupportedEncodingException;

public class TAStringCallBackHandler extends TACallBackHandler
{

    public TAStringCallBackHandler()
    {
    }

    public void onFailure(TextView textview, Object obj)
    {
        super.onFailure(textview, obj);
    }

    public volatile void onFailure(Object obj, Object obj1)
    {
        onFailure((TextView)obj, obj1);
    }

    public void onStart(TextView textview, Object obj)
    {
        super.onStart(textview, obj);
    }

    public volatile void onStart(Object obj, Object obj1)
    {
        onStart((TextView)obj, obj1);
    }

    public void onSuccess(TextView textview, Object obj, byte abyte0[])
    {
        super.onSuccess(textview, obj, abyte0);
        ((ProgressBar)((FrameLayout)textview.getParent()).findViewById(0x7f0a006c)).setVisibility(8);
        obj = new String(abyte0);
        abyte0 = new String(abyte0, "UTF -8");
        obj = abyte0;
_L2:
        textview.setText(TAStringUtils.delHTMLTag(((String) (obj))));
        return;
        abyte0;
        abyte0.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public volatile void onSuccess(Object obj, Object obj1, byte abyte0[])
    {
        onSuccess((TextView)obj, obj1, abyte0);
    }
}
