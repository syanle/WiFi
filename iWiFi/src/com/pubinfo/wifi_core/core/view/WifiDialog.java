// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.view;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class WifiDialog extends Dialog
    implements android.view.View.OnClickListener
{
    public static interface OnWatchClickListener
    {

        public abstract void onCancelClick();

        public abstract void onWatchClick();
    }


    private Button btn_cancel;
    private Button btn_close;
    private Button btn_watch;
    private Context context;
    private ImageView direImageView;
    private TextView direction_tView;
    private OnWatchClickListener mOnWatchClickListener;
    private TextView point_tView;

    public WifiDialog(Context context1)
    {
        super(context1);
        context = context1;
        requestWindowFeature(1);
        setContentView(com.pubinfo.wifi_core.R.layout.wifi_dialog);
        init();
    }

    public WifiDialog(Context context1, int i)
    {
        super(context1, i);
        context = context1;
        requestWindowFeature(1);
        setContentView(com.pubinfo.wifi_core.R.layout.wifi_dialog);
        init();
    }

    public void OnClose()
    {
        if (isShowing())
        {
            dismiss();
        }
    }

    public void init()
    {
        btn_watch = (Button)findViewById(com.pubinfo.wifi_core.R.id.watch);
        btn_cancel = (Button)findViewById(com.pubinfo.wifi_core.R.id.cancel);
        point_tView = (TextView)findViewById(com.pubinfo.wifi_core.R.id.point);
        btn_cancel.setOnClickListener(this);
        btn_watch.setOnClickListener(this);
    }

    public void onClick(View view)
    {
        if (view.equals(btn_cancel))
        {
            mOnWatchClickListener.onCancelClick();
        } else
        if (view.equals(btn_watch))
        {
            mOnWatchClickListener.onWatchClick();
            return;
        }
    }

    public void setCanceBtn(int i)
    {
        btn_cancel.setVisibility(8);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.setMargins(i, 0, 0, 0);
        btn_watch.setLayoutParams(layoutparams);
    }

    public void setDirection(String s)
    {
        direction_tView.setText(s);
    }

    public void setImage(int i)
    {
        direImageView.setBackgroundResource(i);
    }

    public void setOnWatchClickListener(OnWatchClickListener onwatchclicklistener)
    {
        mOnWatchClickListener = onwatchclicklistener;
    }

    public void setPoint(String s)
    {
        point_tView.setText(s);
    }
}
