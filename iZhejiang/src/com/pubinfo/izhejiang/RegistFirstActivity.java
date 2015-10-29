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
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import com.cat.parase.LoginParser;
import com.pubinfo.izhejiang.controller.RegistFirstFun;
import java.io.UnsupportedEncodingException;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            RegistSecondActivity, CountryListActivity, Faq

public class RegistFirstActivity extends RegistFirstFun
{

    public static final int RIGIST_CHOSE_COUNTRY = 2;
    public static final int RIGIST_MSG = 3;
    public static RegistFirstActivity registfirst_instance = null;
    ImageButton backButton;
    Button btn1;
    Button btn2;
    String code;
    LinearLayout confirmButton;
    String countrycn;
    Drawable drawable_dfu;
    EditText et_password1;
    EditText et_password2;
    EditText et_phone;
    private TextWatcher etphoneWatcher;
    ImageButton ib_radioButton;
    LinearLayout layout_country;
    private Handler mainHandler;
    TextView nextbtn;
    LinearLayout radioButton;
    TextView title;
    TextView tv_code;
    TextView tv_name;

    public RegistFirstActivity()
    {
        etphoneWatcher = new TextWatcher() {

            final RegistFirstActivity this$0;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                if (et_phone != null && !et_phone.getText().toString().equals("") && et_password1 != null && !et_password1.getText().toString().equals("") && et_password2 != null && !et_password2.getText().toString().equals(""))
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
                this$0 = RegistFirstActivity.this;
                super();
            }
        };
        mainHandler = null;
    }

    private void Commit()
    {
        getMobileExist(et_phone.getText().toString().trim(), tv_code.getText().toString().trim(), "1", getApplicationContext());
    }

    private boolean checkChinaPhone()
    {
        return !et_phone.getText().toString().trim().equals("") && et_phone.getText().toString().length() == 11 && et_phone.getText().toString().startsWith("1");
    }

    private void checkChineseRegist()
    {
        if (checkChinaPhone() && et_password1.getText().toString().length() >= 6 && et_password1.getText().toString().length() <= 20 && et_password1.getText().toString().trim().equals(et_password2.getText().toString().trim()) && !isChinese(et_password2.getText().toString().trim()) && !isChinese(et_password1.getText().toString().trim()))
        {
            showLoading();
            mainHandler.sendEmptyMessage(1);
        } else
        {
            if (!checkChinaPhone())
            {
                showMsgToast(getString(0x7f06003d));
                return;
            }
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

    private boolean checkCountry()
    {
        return tv_name.getText().toString().trim().equals("\u4E2D\u56FD");
    }

    private boolean checkForignPhone()
    {
        return !et_phone.getText().toString().trim().equals("") && et_phone.getText().toString().length() >= 6;
    }

    private void checkForignRegist()
    {
        if (checkForignPhone() && et_password1.getText().toString().length() >= 6 && et_password1.getText().toString().length() <= 20 && et_password1.getText().toString().trim().equals(et_password2.getText().toString().trim()) && !isChinese(et_password2.getText().toString().trim()) && !isChinese(et_password1.getText().toString().trim()))
        {
            showLoading();
            mainHandler.sendEmptyMessage(1);
        } else
        {
            if (!checkForignPhone())
            {
                showMsgToast(getString(0x7f06003d));
                return;
            }
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
        Intent intent = new Intent(this, com/pubinfo/izhejiang/RegistSecondActivity);
        intent.putExtra("phone", et_phone.getText().toString().trim());
        intent.putExtra("countrycode", tv_code.getText().toString().trim());
        intent.putExtra("password", et_password2.getText().toString().trim());
        startActivityForResult(intent, 3);
    }

    private void init()
    {
        btn1 = (Button)findViewById(0x7f0a00c3);
        btn2 = (Button)findViewById(0x7f0a00c4);
        backButton = (ImageButton)findViewById(0x7f0a002c);
        confirmButton = (LinearLayout)findViewById(0x7f0a002e);
        nextbtn = (TextView)findViewById(0x7f0a002f);
        layout_country = (LinearLayout)findViewById(0x7f0a006f);
        title = (TextView)findViewById(0x7f0a002d);
        et_phone = (EditText)findViewById(0x7f0a003f);
        et_password1 = (EditText)findViewById(0x7f0a00bc);
        et_password2 = (EditText)findViewById(0x7f0a00be);
        tv_name = (TextView)findViewById(0x7f0a00c2);
        tv_code = (TextView)findViewById(0x7f0a00c1);
        radioButton = (LinearLayout)findViewById(0x7f0a00bf);
        ib_radioButton = (ImageButton)findViewById(0x7f0a00c0);
        title.setText("\u6CE8\u518C");
        confirmButton.setVisibility(0);
        confirmButton.setEnabled(false);
    }

    private void initialHandler()
    {
        mainHandler = new Handler(new android.os.Handler.Callback() {

            final RegistFirstActivity this$0;

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
                this$0 = RegistFirstActivity.this;
                super();
            }
        });
    }

    private boolean isChinese(String s)
    {
        int i;
        int j;
        try
        {
            i = s.getBytes("UTF-8").length;
            j = s.length();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return false;
        }
        return i != j;
    }

    public void doMobileExistErr(String s)
    {
        mainHandler.sendEmptyMessage(2);
    }

    public void doMobileExistSucc(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_46;
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
        goIntent();
        return;
        mainHandler.sendEmptyMessage(2);
        return;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i != 2) goto _L2; else goto _L1
_L1:
        if (intent == null) goto _L4; else goto _L3
_L3:
        code = intent.getExtras().getString("code");
        countrycn = intent.getExtras().getString("countrycn");
        if (code != null && countrycn != null)
        {
            tv_code.setText(code);
            tv_name.setText(countrycn);
        }
_L6:
        super.onActivityResult(i, j, intent);
_L4:
        return;
_L2:
        if (i == 3)
        {
            et_password1.setText("");
            et_password2.setText("");
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03002b);
        registfirst_instance = this;
        ll_pageInnerLoading = (LinearLayout)findViewById(0x7f0a0029);
        iv_pageInnerLoading = (ImageView)ll_pageInnerLoading.findViewById(0x7f0a00a4);
        iv_pageInnerLoading.measure(0, 0);
        msInnerLoadingAnim = (AnimationDrawable)iv_pageInnerLoading.getBackground();
        init();
        initialHandler();
        drawable_dfu = getResources().getDrawable(0x7f02001a);
        ib_radioButton.setBackgroundDrawable(drawable_dfu);
        bundle = new android.view.View.OnClickListener() {

            final RegistFirstActivity this$0;

            public void onClick(View view)
            {
                switch (view.getId())
                {
                default:
                    return;

                case 2131361903: 
                    view = new Intent(RegistFirstActivity.this, com/pubinfo/izhejiang/CountryListActivity);
                    view.putExtra("activity", "RegistFirstActivity");
                    startActivityForResult(view, 2);
                    return;

                case 2131361836: 
                    finish();
                    return;

                case 2131361838: 
                    if (drawable_dfu.equals(ib_radioButton.getBackground()))
                    {
                        if (checkCountry())
                        {
                            checkChineseRegist();
                            return;
                        } else
                        {
                            checkForignRegist();
                            return;
                        }
                    } else
                    {
                        showMsgToast(getString(0x7f06004d));
                        return;
                    }

                case 2131361983: 
                    if (drawable_dfu.equals(ib_radioButton.getBackground()))
                    {
                        ib_radioButton.setBackgroundResource(0x7f020019);
                        return;
                    } else
                    {
                        ib_radioButton.setBackgroundDrawable(drawable_dfu);
                        return;
                    }

                case 2131361987: 
                    view = new Intent(RegistFirstActivity.this, com/pubinfo/izhejiang/Faq);
                    view.putExtra("tag", "\u4F7F\u7528\u534F\u8BAE");
                    startActivity(view);
                    return;

                case 2131361988: 
                    view = new Intent(RegistFirstActivity.this, com/pubinfo/izhejiang/Faq);
                    view.putExtra("tag", "\u9690\u79C1\u6761\u6B3E");
                    startActivity(view);
                    return;
                }
            }

            
            {
                this$0 = RegistFirstActivity.this;
                super();
            }
        };
        et_phone.addTextChangedListener(etphoneWatcher);
        et_password1.addTextChangedListener(etphoneWatcher);
        et_password2.addTextChangedListener(etphoneWatcher);
        layout_country.setOnClickListener(bundle);
        backButton.setOnClickListener(bundle);
        confirmButton.setOnClickListener(bundle);
        radioButton.setOnClickListener(bundle);
        btn1.setOnClickListener(bundle);
        btn2.setOnClickListener(bundle);
    }





}
