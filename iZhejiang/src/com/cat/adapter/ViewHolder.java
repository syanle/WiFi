// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.adapter;

import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.ta.common.TAStringUtils;
import java.util.HashMap;

public class ViewHolder
{

    public static final int KEY_IS_PAUSED = 3;
    public static final int KEY_PROGRESS = 2;
    public static final int KEY_SPEED = 1;
    public static final int KEY_URL = 0;
    public Button continueButton;
    public Button deleteButton;
    private boolean hasInited;
    public Button pauseButton;
    public ProgressBar progressBar;
    public TextView speedText;
    public TextView titleText;

    public ViewHolder(View view)
    {
        hasInited = false;
        if (view != null)
        {
            titleText = (TextView)view.findViewById(0x7f0a0039);
            speedText = (TextView)view.findViewById(0x7f0a003b);
            progressBar = (ProgressBar)view.findViewById(0x7f0a003a);
            pauseButton = (Button)view.findViewById(0x7f0a003c);
            deleteButton = (Button)view.findViewById(0x7f0a003e);
            continueButton = (Button)view.findViewById(0x7f0a003d);
            hasInited = true;
        }
    }

    public static HashMap getItemDataMap(String s, String s1, String s2, String s3)
    {
        HashMap hashmap = new HashMap();
        hashmap.put(Integer.valueOf(0), s);
        hashmap.put(Integer.valueOf(1), s1);
        hashmap.put(Integer.valueOf(2), s2);
        hashmap.put(Integer.valueOf(3), s3);
        return hashmap;
    }

    public void onPause()
    {
        if (hasInited)
        {
            pauseButton.setVisibility(8);
            continueButton.setVisibility(0);
        }
    }

    public void setData(String s, String s1, String s2)
    {
        setData(s, s1, s2, "false");
    }

    public void setData(String s, String s1, String s2, String s3)
    {
label0:
        {
            if (hasInited)
            {
                s = getItemDataMap(s, s1, s2, s3);
                titleText.setText(TAStringUtils.getFileNameFromUrl((String)s.get(Integer.valueOf(0))));
                speedText.setText(s1);
                if (!TextUtils.isEmpty(s2))
                {
                    break label0;
                }
                progressBar.setProgress(0);
            }
            return;
        }
        progressBar.setProgress(Integer.parseInt((String)s.get(Integer.valueOf(2))));
    }

    public void setData(HashMap hashmap)
    {
        if (hasInited)
        {
            titleText.setText(TAStringUtils.getFileNameFromUrl((String)hashmap.get(Integer.valueOf(0))));
            speedText.setText((CharSequence)hashmap.get(Integer.valueOf(1)));
            String s = (String)hashmap.get(Integer.valueOf(2));
            if (TextUtils.isEmpty(s))
            {
                progressBar.setProgress(0);
            } else
            {
                progressBar.setProgress(Integer.parseInt(s));
            }
            if (Boolean.parseBoolean((String)hashmap.get(Integer.valueOf(3))))
            {
                onPause();
            }
        }
    }
}
