// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import com.cat.parase.LoginParser;
import com.pubinfo.izhejiang.controller.CommentFun;
import java.util.List;

public class CommentActivity extends CommentFun
{

    ImageButton backButton;
    LinearLayout confirmButton;
    private TextWatcher etphoneWatcher;
    String mac;
    private Handler mainHandler;
    TextView textbtn;
    TextView title;
    String username;
    EditText usernameET;

    public CommentActivity()
    {
        etphoneWatcher = new TextWatcher() {

            final CommentActivity this$0;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                if (usernameET != null && !usernameET.getText().toString().equals(""))
                {
                    confirmButton.setEnabled(true);
                    textbtn.setTextColor(getResources().getColorStateList(0x7f080001));
                    return;
                } else
                {
                    confirmButton.setEnabled(false);
                    textbtn.setTextColor(getResources().getColorStateList(0x7f080004));
                    return;
                }
            }

            
            {
                this$0 = CommentActivity.this;
                super();
            }
        };
        mainHandler = null;
    }

    private void Commit1()
    {
        if (usernameET.getText().toString().trim().equals(""))
        {
            showMsgToast(getString(0x7f060036));
            hideLoading();
            return;
        } else
        {
            getComment(mac, username, usernameET.getText().toString().trim(), "2", getApplicationContext());
            return;
        }
    }

    private void initialHandler()
    {
        mainHandler = new Handler(new android.os.Handler.Callback() {

            final CommentActivity this$0;

            public boolean handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1 4: default 36
            //                           1 38
            //                           2 84
            //                           3 110
            //                           4 178;
                   goto _L1 _L2 _L3 _L4 _L5
_L1:
                return true;
_L2:
                if (checkNetWork())
                {
                    Commit1();
                } else
                {
                    showMsgToast(getString(0x7f060032));
                    hideLoading();
                }
                continue; /* Loop/switch isn't completed */
_L3:
                hideLoading();
                showMsgToast(getString(0x7f060031));
                continue; /* Loop/switch isn't completed */
_L4:
                hideLoading();
                message = ComData.getInstance().getpError();
                if (message != null && message.size() > 0)
                {
                    int i = 0;
                    while (i < message.size()) 
                    {
                        String s = ((PublicError)message.get(i)).getMessage();
                        showMsgToast(s);
                        i++;
                    }
                }
                continue; /* Loop/switch isn't completed */
_L5:
                hideLoading();
                showMsgToast(getString(0x7f060035));
                finish();
                if (true) goto _L1; else goto _L6
_L6:
            }

            
            {
                this$0 = CommentActivity.this;
                super();
            }
        });
    }

    public void doCommentErr(String s)
    {
        mainHandler.sendEmptyMessage(2);
    }

    public void doCommentSucc(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        try
        {
            Object obj = LoginParser.Loginparaser(s);
            if (!s.contains("OK"))
            {
                ComData.getInstance().setpError((List)obj);
                mainHandler.sendEmptyMessage(3);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        mainHandler.sendEmptyMessage(4);
        return;
        mainHandler.sendEmptyMessage(2);
        return;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030007);
        ll_pageInnerLoading = (LinearLayout)findViewById(0x7f0a0029);
        iv_pageInnerLoading = (ImageView)ll_pageInnerLoading.findViewById(0x7f0a00a4);
        iv_pageInnerLoading.measure(0, 0);
        msInnerLoadingAnim = (AnimationDrawable)iv_pageInnerLoading.getBackground();
        initialHandler();
        usernameET = (EditText)findViewById(0x7f0a002b);
        backButton = (ImageButton)findViewById(0x7f0a002c);
        confirmButton = (LinearLayout)findViewById(0x7f0a002e);
        textbtn = (TextView)findViewById(0x7f0a002f);
        title = (TextView)findViewById(0x7f0a002d);
        mac = getIntent().getStringExtra("mac");
        username = getIntent().getStringExtra("username");
        title.setText("\u8BC4\u8BBA");
        usernameET.setSelection(usernameET.getText().length());
        bundle = new android.view.View.OnClickListener() {

            final CommentActivity this$0;

            public void onClick(View view)
            {
                switch (view.getId())
                {
                case 2131361837: 
                default:
                    return;

                case 2131361838: 
                    showLoading();
                    mainHandler.sendEmptyMessage(1);
                    return;

                case 2131361836: 
                    finish();
                    return;
                }
            }

            
            {
                this$0 = CommentActivity.this;
                super();
            }
        };
        textbtn.setText("\u63D0\u4EA4");
        confirmButton.setEnabled(false);
        usernameET.addTextChangedListener(etphoneWatcher);
        confirmButton.setOnClickListener(bundle);
        backButton.setOnClickListener(bundle);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4 || i == 3)
        {
            finish();
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }


}
