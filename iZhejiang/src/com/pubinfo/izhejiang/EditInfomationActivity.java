// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.content.SharedPreferences;
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
import com.pubinfo.izhejiang.controller.PersonInfomationFun;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EditInfomationActivity extends PersonInfomationFun
{

    ImageButton backButton;
    LinearLayout confirmButton;
    String countrycode;
    String email;
    private TextWatcher etphoneWatcher;
    private Handler mainHandler;
    String nick;
    String phone;
    TextView textbtn;
    TextView title;
    EditText usernameET;
    String usertag;

    public EditInfomationActivity()
    {
        etphoneWatcher = new TextWatcher() {

            final EditInfomationActivity this$0;

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
                this$0 = EditInfomationActivity.this;
                super();
            }
        };
        mainHandler = null;
    }

    public static boolean CheckIsEmail(String s)
    {
        return Pattern.compile("^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$").matcher(s).matches();
    }

    private void Commit1()
    {
        if (usernameET.getText().toString().trim().equals(""))
        {
            showMsgToast(getString(0x7f060037));
            hideLoading();
            return;
        }
        if (usernameET.getText().toString().length() < 4 || usernameET.getText().toString().length() > 30)
        {
            showMsgToast(getString(0x7f06003b));
            hideLoading();
            return;
        } else
        {
            getRegistNew(phone, "", usernameET.getText().toString().trim(), "", "", "2", countrycode, "", getApplicationContext());
            return;
        }
    }

    private void Commit2()
    {
        if (usernameET.getText().toString().trim().equals(""))
        {
            showMsgToast(getString(0x7f060038));
            hideLoading();
            return;
        }
        if (!usernameET.getText().toString().trim().contains("@") || !CheckIsEmail(usernameET.getText().toString().trim()))
        {
            showMsgToast(getString(0x7f06003c));
            hideLoading();
            return;
        } else
        {
            getRegistNew(phone, "", "", "", usernameET.getText().toString().trim(), "2", countrycode, "", getApplicationContext());
            return;
        }
    }

    private void goSucessIntent()
    {
        hideLoading();
        if (usertag.equals("nick"))
        {
            Intent intent = new Intent();
            intent.putExtra("tag", "nick");
            intent.putExtra("userinfo", usernameET.getText().toString());
            setResult(4, intent);
            finish();
        } else
        if (usertag.equals("email"))
        {
            Intent intent1 = new Intent();
            intent1.putExtra("tag", "email");
            intent1.putExtra("userinfo", usernameET.getText().toString());
            setResult(4, intent1);
            finish();
            return;
        }
    }

    private void initialHandler()
    {
        mainHandler = new Handler(new android.os.Handler.Callback() {

            final EditInfomationActivity this$0;

            public boolean handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1 3: default 32
            //                           1 34
            //                           2 120
            //                           3 146;
                   goto _L1 _L2 _L3 _L4
_L1:
                return true;
_L2:
                if (checkNetWork())
                {
                    if (usertag.equals("nick"))
                    {
                        Commit1();
                    } else
                    if (usertag.equals("email"))
                    {
                        Commit2();
                    }
                } else
                {
                    showMsgToast(getString(0x7f060032));
                    hideLoading();
                }
                continue; /* Loop/switch isn't completed */
_L3:
                hideLoading();
                showMsgToast(getString(0x7f060031));
                if (true) goto _L1; else goto _L4
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
                if (true) goto _L1; else goto _L5
_L5:
            }

            
            {
                this$0 = EditInfomationActivity.this;
                super();
            }
        });
    }

    public void doRegistNewErr(String s)
    {
        mainHandler.sendEmptyMessage(2);
    }

    public void doRegistNewSucc(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_45;
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
        goSucessIntent();
        return;
        mainHandler.sendEmptyMessage(2);
        return;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000d);
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
        usertag = getIntent().getStringExtra("usertag");
        if (!usertag.equals("nick")) goto _L2; else goto _L1
_L1:
        nick = getIntent().getStringExtra("nick");
        usernameET.setText(nick);
        usernameET.setHint(0x7f06002e);
        title.setText("\u7F16\u8F91\u6635\u79F0");
_L4:
        usernameET.setSelection(usernameET.getText().length());
        bundle = getSharedPreferences("LoginSucess", 0);
        phone = bundle.getString("username", "");
        countrycode = bundle.getString("countrycode", "");
        bundle = new android.view.View.OnClickListener() {

            final EditInfomationActivity this$0;

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
                this$0 = EditInfomationActivity.this;
                super();
            }
        };
        textbtn.setText("\u4FDD\u5B58");
        confirmButton.setEnabled(false);
        usernameET.addTextChangedListener(etphoneWatcher);
        confirmButton.setOnClickListener(bundle);
        backButton.setOnClickListener(bundle);
        return;
_L2:
        if (usertag.equals("email"))
        {
            email = getIntent().getStringExtra("email");
            usernameET.setText(email);
            usernameET.setHint("");
            title.setText("\u7F16\u8F91\u90AE\u7BB1");
        }
        if (true) goto _L4; else goto _L3
_L3:
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
