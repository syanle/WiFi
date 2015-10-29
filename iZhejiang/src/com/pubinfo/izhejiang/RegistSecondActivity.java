// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.net.Uri;
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
import com.cat.parase.RegistParser;
import com.pubinfo.izhejiang.controller.RegistSecondFun;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            LoginActivity, RegistFirstActivity

public class RegistSecondActivity extends RegistSecondFun
{
    class MonitorThread extends Thread
    {

        final RegistSecondActivity this$0;

        public void run()
        {
            do
            {
                do
                {
                    if (!isRun)
                    {
                        return;
                    }
                } while (System.currentTimeMillis() - startTime <= 60000L && !isResponse);
                isRun = false;
            } while (true);
        }

        MonitorThread()
        {
            this$0 = RegistSecondActivity.this;
            super();
        }
    }

    public class MyThread extends Thread
    {

        final RegistSecondActivity this$0;

        public void run()
        {
            try
            {
                getSmsCode();
            }
            catch (Exception exception1) { }
            try
            {
                getCode();
                if (checkNetWork())
                {
                    getSmsCode(phone, countrycode, "1", getApplicationContext());
                    return;
                }
            }
            catch (Exception exception)
            {
                return;
            }
            showMsgToast(getString(0x7f060032));
            hideLoading();
            return;
        }

        public MyThread()
        {
            this$0 = RegistSecondActivity.this;
            super();
        }
    }


    private static int GETCODETIME = 60;
    private final int OUTOF_TIME = 0xaadd001;
    ImageButton backButton;
    int clicknum;
    LinearLayout confirmButton;
    private final int connectTimeOut = 60000;
    Thread countThread;
    String countrycode;
    EditText et_code;
    private TextWatcher etphoneWatcher;
    private boolean isResponse;
    private boolean isRun;
    LinearLayout layout1;
    LinearLayout layout2;
    private Handler mainHandler;
    String memberid;
    TextView nextbtn;
    String password;
    String phone;
    Button phoneButton;
    Button sendcodeButton;
    private long startTime;
    String tag;
    TextView title;

    public RegistSecondActivity()
    {
        startTime = 0L;
        isResponse = false;
        isRun = true;
        clicknum = 0;
        countThread = new Thread() {

            final RegistSecondActivity this$0;

            public void run()
            {
                do
                {
                    if (RegistSecondActivity.GETCODETIME <= 0 || Thread.currentThread().isInterrupted())
                    {
                        mainHandler.sendEmptyMessage(5);
                        return;
                    }
                    try
                    {
                        Thread.sleep(1000L);
                        mainHandler.sendEmptyMessage(4);
                    }
                    catch (InterruptedException interruptedexception)
                    {
                        interruptedexception.printStackTrace();
                    }
                } while (true);
            }

            
            {
                this$0 = RegistSecondActivity.this;
                super();
            }
        };
        etphoneWatcher = new TextWatcher() {

            final RegistSecondActivity this$0;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                if (et_code.getText().toString().length() > 0)
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
                this$0 = RegistSecondActivity.this;
                super();
            }
        };
        mainHandler = null;
    }

    private void getCode()
    {
        sendcodeButton.setEnabled(false);
        sendcodeButton.setBackgroundResource(0x7f080006);
        GETCODETIME = 60;
        (new Thread(countThread)).start();
    }

    private void getSmsCode()
    {
        startTime = System.currentTimeMillis();
        (new MonitorThread()).start();
    }

    private void goIntent()
    {
        hideLoading();
        LoginActivity.login_instance.finish();
        RegistFirstActivity.registfirst_instance.finish();
        finish();
    }

    private void init()
    {
        backButton = (ImageButton)findViewById(0x7f0a002c);
        confirmButton = (LinearLayout)findViewById(0x7f0a002e);
        nextbtn = (TextView)findViewById(0x7f0a002f);
        sendcodeButton = (Button)findViewById(0x7f0a0046);
        phoneButton = (Button)findViewById(0x7f0a00c6);
        title = (TextView)findViewById(0x7f0a002d);
        et_code = (EditText)findViewById(0x7f0a0045);
        layout1 = (LinearLayout)findViewById(0x7f0a0044);
        layout2 = (LinearLayout)findViewById(0x7f0a00c5);
        countrycode = getIntent().getStringExtra("countrycode");
        phone = getIntent().getStringExtra("phone");
        password = getIntent().getStringExtra("password");
        if (countrycode != null)
        {
            if (countrycode.equals("86"))
            {
                title.setText("\u9A8C\u8BC1\u7801");
                layout2.setVisibility(8);
                (new MyThread()).start();
            } else
            {
                title.setText("\u8BED\u97F3\u8BA4\u8BC1");
                layout1.setVisibility(8);
            }
        }
        confirmButton.setVisibility(0);
        nextbtn.setText("\u5B8C\u6210");
        confirmButton.setEnabled(false);
    }

    private void initialHandler()
    {
        mainHandler = new Handler(new android.os.Handler.Callback() {

            final RegistSecondActivity this$0;

            public boolean handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1 6: default 44
            //                           1 46
            //                           2 113
            //                           3 138
            //                           4 206
            //                           5 254
            //                           6 397;
                   goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
                return true;
_L2:
                if (checkNetWork())
                {
                    getSmsCode(phone, countrycode, "1", getApplicationContext());
                    return true;
                } else
                {
                    showMsgToast(getString(0x7f060032));
                    hideLoading();
                    return true;
                }
_L3:
                hideLoading();
                showMsgToast(getString(0x7f060031));
                return true;
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
                  goto _L1
_L5:
                RegistSecondActivity.GETCODETIME--;
                sendcodeButton.setText((new StringBuilder("(")).append(RegistSecondActivity.GETCODETIME).append(")").append("\u518D\u6B21\u53D1\u9001\u9A8C\u8BC1\u7801").toString());
                return true;
_L6:
                if (clicknum == 1 || clicknum > 1)
                {
                    layout2.setVisibility(0);
                    et_code.setFocusable(false);
                    sendcodeButton.setText("\u518D\u6B21\u53D1\u9001\u9A8C\u8BC1\u7801");
                    sendcodeButton.setEnabled(false);
                    sendcodeButton.setBackgroundResource(0x7f080006);
                    RegistSecondActivity.GETCODETIME = 60;
                    return true;
                } else
                {
                    sendcodeButton.setText("\u518D\u6B21\u53D1\u9001\u9A8C\u8BC1\u7801");
                    sendcodeButton.setEnabled(true);
                    sendcodeButton.setBackgroundResource(0x7f080000);
                    RegistSecondActivity.GETCODETIME = 60;
                    message = RegistSecondActivity.this;
                    message.clicknum = ((RegistSecondActivity) (message)).clicknum + 1;
                    return true;
                }
_L7:
                hideLoading();
                showMsgToast(getString(0x7f060046));
                return true;
            }

            
            {
                this$0 = RegistSecondActivity.this;
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
            break MISSING_BLOCK_LABEL_61;
        }
        try
        {
            Object obj = RegistParser.Registparaser(s);
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
        showMsgToast(getString(0x7f06004a));
        goIntent();
        return;
        mainHandler.sendEmptyMessage(2);
        return;
    }

    public void doSmsAuthErr(String s)
    {
        mainHandler.sendEmptyMessage(2);
    }

    public void doSmsAuthSucc(String s)
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
        hideLoading();
        return;
        mainHandler.sendEmptyMessage(2);
        return;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03002c);
        ll_pageInnerLoading = (LinearLayout)findViewById(0x7f0a0029);
        iv_pageInnerLoading = (ImageView)ll_pageInnerLoading.findViewById(0x7f0a00a4);
        iv_pageInnerLoading.measure(0, 0);
        msInnerLoadingAnim = (AnimationDrawable)iv_pageInnerLoading.getBackground();
        initialHandler();
        init();
        bundle = new android.view.View.OnClickListener() {

            final RegistSecondActivity this$0;

            public void onClick(View view)
            {
                view.getId();
                JVM INSTR lookupswitch 4: default 48
            //                           2131361836: 140
            //                           2131361838: 170
            //                           2131361862: 49
            //                           2131361990: 83;
                   goto _L1 _L2 _L3 _L4 _L5
_L1:
                return;
_L4:
                try
                {
                    getSmsCode();
                }
                // Misplaced declaration of an exception variable
                catch (View view) { }
                getCode();
                showLoading();
                mainHandler.sendEmptyMessage(1);
                return;
_L5:
                view = new Intent("android.intent.action.CALL", Uri.parse("tel:4008252525"));
                startActivity(view);
                confirmButton.setEnabled(true);
                nextbtn.setTextColor(getResources().getColorStateList(0x7f080001));
                return;
_L2:
                RegistSecondActivity.GETCODETIME = 60;
                view = new Intent();
                setResult(3, view);
                finish();
                return;
_L3:
                if (countrycode != null)
                {
                    showLoading();
                    if (countrycode.equals("86") && clicknum < 1)
                    {
                        getRegistNew(phone, et_code.getText().toString().trim(), "", password, "", "1", countrycode, "1", getApplicationContext());
                        return;
                    } else
                    {
                        getRegistNew(phone, et_code.getText().toString().trim(), "", password, "", "1", countrycode, "2", getApplicationContext());
                        return;
                    }
                }
                if (true) goto _L1; else goto _L6
_L6:
            }

            
            {
                this$0 = RegistSecondActivity.this;
                super();
            }
        };
        et_code.addTextChangedListener(etphoneWatcher);
        sendcodeButton.setOnClickListener(bundle);
        phoneButton.setOnClickListener(bundle);
        backButton.setOnClickListener(bundle);
        confirmButton.setOnClickListener(bundle);
    }












}
