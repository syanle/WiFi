// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.tools;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.PopupWindow;

public class SelectSharePopupWindow extends PopupWindow
{

    private Button btn_cancel;
    private Button btn_coment;
    private Button btn_share;
    private Button btn_zan;
    private View mMenuView;

    public SelectSharePopupWindow(Activity activity, android.view.View.OnClickListener onclicklistener)
    {
        super(activity);
        mMenuView = ((LayoutInflater)activity.getSystemService("layout_inflater")).inflate(0x7f030004, null);
        btn_zan = (Button)mMenuView.findViewById(0x7f0a001f);
        btn_coment = (Button)mMenuView.findViewById(0x7f0a0020);
        btn_share = (Button)mMenuView.findViewById(0x7f0a0021);
        btn_cancel = (Button)mMenuView.findViewById(0x7f0a001e);
        btn_cancel.setOnClickListener(new android.view.View.OnClickListener() {

            final SelectSharePopupWindow this$0;

            public void onClick(View view)
            {
                dismiss();
            }

            
            {
                this$0 = SelectSharePopupWindow.this;
                super();
            }
        });
        btn_zan.setOnClickListener(onclicklistener);
        btn_coment.setOnClickListener(onclicklistener);
        btn_share.setOnClickListener(onclicklistener);
        setContentView(mMenuView);
        setWidth(-1);
        setHeight(-2);
        setFocusable(true);
        setAnimationStyle(0x7f070006);
        setBackgroundDrawable(new ColorDrawable(0xb0000000));
        mMenuView.setOnTouchListener(new android.view.View.OnTouchListener() {

            final SelectSharePopupWindow this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                int i = mMenuView.findViewById(0x7f0a001b).getTop();
                int j = (int)motionevent.getY();
                if (motionevent.getAction() == 1 && j < i)
                {
                    dismiss();
                }
                return true;
            }

            
            {
                this$0 = SelectSharePopupWindow.this;
                super();
            }
        });
    }

    public void setText(String s, String s1)
    {
    }

}
