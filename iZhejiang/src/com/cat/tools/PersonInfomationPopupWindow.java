// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.tools;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.PopupWindow;

public class PersonInfomationPopupWindow extends PopupWindow
{

    private Button btn_cancel;
    private Button btn_ok;
    private EditText et1;
    private View mMenuView;

    public PersonInfomationPopupWindow(Activity activity, android.view.View.OnClickListener onclicklistener)
    {
        super(activity);
        mMenuView = ((LayoutInflater)activity.getSystemService("layout_inflater")).inflate(0x7f030026, null);
        et1 = (EditText)mMenuView.findViewById(0x7f0a00ae);
        btn_ok = (Button)mMenuView.findViewById(0x7f0a00ba);
        btn_cancel = (Button)mMenuView.findViewById(0x7f0a001e);
        btn_cancel.setOnClickListener(new android.view.View.OnClickListener() {

            final PersonInfomationPopupWindow this$0;

            public void onClick(View view)
            {
                dismiss();
            }

            
            {
                this$0 = PersonInfomationPopupWindow.this;
                super();
            }
        });
        btn_ok.setOnClickListener(onclicklistener);
        setContentView(mMenuView);
        setWidth(-1);
        setHeight(-1);
        setFocusable(true);
        setAnimationStyle(0x7f070006);
        setBackgroundDrawable(new ColorDrawable(0xb0000000));
        mMenuView.setOnTouchListener(new android.view.View.OnTouchListener() {

            final PersonInfomationPopupWindow this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                mMenuView.findViewById(0x7f0a001b).getTop();
                int i = (int)motionevent.getY();
                if (motionevent.getAction() == 1)
                {
                    dismiss();
                }
                return true;
            }

            
            {
                this$0 = PersonInfomationPopupWindow.this;
                super();
            }
        });
    }

    public String getEditText()
    {
        return et1.getText().toString().trim();
    }

}
