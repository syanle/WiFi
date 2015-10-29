// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import com.cat.parase.LoginParser;
import com.cat.tools.ValidateImageView;
import com.pubinfo.izhejiang.controller.RePasswordFun;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            FindPasswordActivity, LoginActivity

public class RePasswordActivity extends RePasswordFun
{

    ImageButton backButton;
    String code;
    LinearLayout confirmButton;
    Drawable drawable_dfu;
    EditText et_password1;
    EditText et_password2;
    private TextWatcher etphoneWatcher;
    ImageButton ib_radioButton;
    private Handler mainHandler;
    TextView nextbtn;
    String phone;
    LinearLayout radioButton;
    TextView title;
    private ValidateImageView view;

    public RePasswordActivity()
    {
        view = null;
        etphoneWatcher = new TextWatcher() {

            final RePasswordActivity this$0;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                if (et_password1 != null && !et_password1.getText().toString().equals("") && et_password2 != null && !et_password2.getText().toString().equals(""))
                {
                    confirmButton.setEnabled(true);
                    nextbtn.setTextColor(getResources().getColorStateList(0x7f080001));
                    return;
                } else
                {
                    confirmButton.setEnabled(false);
                    nextbtn.setTextColor(getResources().getColorStateList(0x7f080004));
                    return;
                }
            }

            
            {
                this$0 = RePasswordActivity.this;
                super();
            }
        };
        mainHandler = null;
    }

    private void Commit()
    {
        getRePassword(phone, "", "86", code, et_password2.getText().toString().trim(), getApplicationContext());
    }

    private void checkChineseRegist()
    {
        if (et_password1.getText().toString().length() >= 6 && et_password1.getText().toString().length() <= 20 && et_password1.getText().toString().trim().equals(et_password2.getText().toString().trim()) && !isChinese(et_password2.getText().toString().trim()) && !isChinese(et_password1.getText().toString().trim()))
        {
            showLoading();
            mainHandler.sendEmptyMessage(1);
        } else
        {
            if (!et_password1.getText().toString().trim().equals(et_password2.getText().toString().trim()))
            {
                showMsgToast(getString(0x7f06004c));
                return;
            }
            if (et_password1.getText().toString().length() < 6 || et_password1.getText().toString().length() > 20 || et_password2.getText().toString().length() < 6 || et_password2.getText().toString().length() > 20)
            {
                showMsgToast(getString(0x7f06004b));
                return;
            }
            if (isChinese(et_password2.getText().toString().trim()) || isChinese(et_password1.getText().toString().trim()))
            {
                showMsgToast(getString(0x7f06004e));
                return;
            }
        }
    }

    private void goIntent()
    {
        hideLoading();
        FindPasswordActivity.findpassword_instance.finish();
        LoginActivity.login_instance.finish();
        finish();
    }

    private void init()
    {
        backButton = (ImageButton)findViewById(0x7f0a002c);
        confirmButton = (LinearLayout)findViewById(0x7f0a002e);
        nextbtn = (TextView)findViewById(0x7f0a002f);
        title = (TextView)findViewById(0x7f0a002d);
        et_password1 = (EditText)findViewById(0x7f0a00bc);
        et_password2 = (EditText)findViewById(0x7f0a00be);
        radioButton = (LinearLayout)findViewById(0x7f0a00bf);
        ib_radioButton = (ImageButton)findViewById(0x7f0a00c0);
        code = getIntent().getStringExtra("code");
        phone = getIntent().getStringExtra("phone");
        title.setText("\u8BBE\u7F6E\u5BC6\u7801");
        confirmButton.setVisibility(0);
        confirmButton.setEnabled(false);
        nextbtn.setText("\u5B8C\u6210");
    }

    private void initialHandler()
    {
        mainHandler = new Handler(new android.os.Handler.Callback() {

            final RePasswordActivity this$0;

            public boolean handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1 3: default 32
            //                           1 34
            //                           2 80
            //                           3 106;
                   goto _L1 _L2 _L3 _L4
_L1:
                return true;
_L2:
                if (checkNetWork())
                {
                    Commit();
                } else
                {
                    hideLoading();
                    showMsgToast(getString(0x7f060032));
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
                this$0 = RePasswordActivity.this;
                super();
            }
        });
    }

    private boolean isChinese(String s)
    {
        return s.getBytes().length != s.length();
    }

    public void doRePasswordErr(String s)
    {
        mainHandler.sendEmptyMessage(2);
    }

    public void doRePasswordSucc(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_59;
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
        hideLoading();
        showMsgToast(getString(0x7f060044));
        goIntent();
        return;
        mainHandler.sendEmptyMessage(2);
        return;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030029);
        ll_pageInnerLoading = (LinearLayout)findViewById(0x7f0a0029);
        iv_pageInnerLoading = (ImageView)ll_pageInnerLoading.findViewById(0x7f0a00a4);
        iv_pageInnerLoading.measure(0, 0);
        msInnerLoadingAnim = (AnimationDrawable)iv_pageInnerLoading.getBackground();
        init();
        initialHandler();
        drawable_dfu = getResources().getDrawable(0x7f020019);
        ib_radioButton.setBackgroundDrawable(drawable_dfu);
        bundle = new android.view.View.OnClickListener() {

            final RePasswordActivity this$0;

            public void onClick(View view1)
            {
                switch (view1.getId())
                {
                default:
                    return;

                case 2131361836: 
                    finish();
                    return;

                case 2131361838: 
                    checkChineseRegist();
                    return;

                case 2131361983: 
                    break;
                }
                if (drawable_dfu.equals(ib_radioButton.getBackground()))
                {
                    ib_radioButton.setBackgroundResource(0x7f02001a);
                    et_password1.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
                    et_password2.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
                    return;
                } else
                {
                    ib_radioButton.setBackgroundDrawable(drawable_dfu);
                    et_password1.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    et_password2.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    return;
                }
            }

            
            {
                this$0 = RePasswordActivity.this;
                super();
            }
        };
        et_password1.addTextChangedListener(etphoneWatcher);
        et_password2.addTextChangedListener(etphoneWatcher);
        backButton.setOnClickListener(bundle);
        confirmButton.setOnClickListener(bundle);
        radioButton.setOnClickListener(bundle);
    }


}
