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

public class SelectPicPopupWindow extends PopupWindow
{

    private Button btn_cancel;
    private Button btn_email;
    private Button btn_message;
    private View mMenuView;

    public SelectPicPopupWindow(Activity activity, android.view.View.OnClickListener onclicklistener)
    {
        super(activity);
        mMenuView = ((LayoutInflater)activity.getSystemService("layout_inflater")).inflate(0x7f030002, null);
        btn_message = (Button)mMenuView.findViewById(0x7f0a001c);
        btn_email = (Button)mMenuView.findViewById(0x7f0a001d);
        btn_cancel = (Button)mMenuView.findViewById(0x7f0a001e);
        btn_cancel.setOnClickListener(new android.view.View.OnClickListener() {

            final SelectPicPopupWindow this$0;

            public void onClick(View view)
            {
                dismiss();
            }

            
            {
                this$0 = SelectPicPopupWindow.this;
                super();
            }
        });
        btn_message.setOnClickListener(onclicklistener);
        btn_email.setOnClickListener(onclicklistener);
        setContentView(mMenuView);
        setWidth(-1);
        setHeight(-2);
        setFocusable(true);
        setAnimationStyle(0x7f070006);
        setBackgroundDrawable(new ColorDrawable(0xb0000000));
        mMenuView.setOnTouchListener(new android.view.View.OnTouchListener() {

            final SelectPicPopupWindow this$0;

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
                this$0 = SelectPicPopupWindow.this;
                super();
            }
        });
    }

    public void setText(String s, String s1)
    {
        btn_message.setText(s);
        btn_email.setText(s1);
    }

}
