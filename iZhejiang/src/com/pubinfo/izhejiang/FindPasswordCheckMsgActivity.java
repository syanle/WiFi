// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
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
import com.cat.parase.PublicParser;
import com.pubinfo.izhejiang.controller.CheckMsgFun;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            RePasswordActivity

public class FindPasswordCheckMsgActivity extends CheckMsgFun
{
    class MonitorThread extends Thread
    {

        final FindPasswordCheckMsgActivity this$0;

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
                } while (System.currentTimeMillis() - startTime <= 0x1d4c0L && !isResponse);
                isRun = false;
            } while (true);
        }

        MonitorThread()
        {
            this$0 = FindPasswordCheckMsgActivity.this;
            super();
        }
    }

    public class MyThread extends Thread
    {

        final FindPasswordCheckMsgActivity this$0;

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
                    getSmsCode(phone, "86", "2", getApplicationContext());
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
            this$0 = FindPasswordCheckMsgActivity.this;
            super();
        }
    }


    private static int GETCODETIME = 120;
    ImageButton backButton;
    LinearLayout confirmButton;
    private final int connectTimeOut = 0x1d4c0;
    Thread countThread;
    String countrycode;
    EditText et_code;
    private TextWatcher etphoneWatcher;
    private boolean isResponse;
    private boolean isRun;
    private Handler mainHandler;
    TextView nextbtn;
    String password;
    String phone;
    Button sendcodeButton;
    private long startTime;
    String tag;
    TextView title;

    public FindPasswordCheckMsgActivity()
    {
        startTime = 0L;
        isResponse = false;
        isRun = true;
        countThread = new Thread() {

            final FindPasswordCheckMsgActivity this$0;

            public void run()
            {
                do
                {
                    if (FindPasswordCheckMsgActivity.GETCODETIME <= 0 || Thread.currentThread().isInterrupted())
                    {
                        mainHandler.sendEmptyMessage(5);
                        return;
                    }
                    mainHandler.sendEmptyMessage(4);
                    try
                    {
                        Thread.sleep(1000L);
                    }
                    catch (InterruptedException interruptedexception)
                    {
                        interruptedexception.printStackTrace();
                    }
                    FindPasswordCheckMsgActivity.GETCODETIME--;
                } while (true);
            }

            
            {
                this$0 = FindPasswordCheckMsgActivity.this;
                super();
            }
        };
        etphoneWatcher = new TextWatcher() {

            final FindPasswordCheckMsgActivity this$0;

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
                this$0 = FindPasswordCheckMsgActivity.this;
                super();
            }
        };
        mainHandler = null;
    }

    private void getCode()
    {
        sendcodeButton.setEnabled(false);
        sendcodeButton.setBackgroundResource(0x7f080006);
        GETCODETIME = 120;
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
        Intent intent = new Intent(this, com/pubinfo/izhejiang/RePasswordActivity);
        intent.putExtra("phone", phone);
        intent.putExtra("code", et_code.getText().toString().trim());
        startActivity(intent);
        finish();
    }

    private void init()
    {
        backButton = (ImageButton)findViewById(0x7f0a002c);
        confirmButton = (LinearLayout)findViewById(0x7f0a002e);
        nextbtn = (TextView)findViewById(0x7f0a002f);
        sendcodeButton = (Button)findViewById(0x7f0a0046);
        title = (TextView)findViewById(0x7f0a002d);
        et_code = (EditText)findViewById(0x7f0a0045);
        phone = getIntent().getStringExtra("phone");
        title.setText("\u9A8C\u8BC1\u7801");
        confirmButton.setVisibility(0);
        confirmButton.setEnabled(false);
        (new MyThread()).start();
    }

    private void initialHandler()
    {
        mainHandler = new Handler(new android.os.Handler.Callback() {

            final FindPasswordCheckMsgActivity this$0;

            public boolean handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1 6: default 44
            //                           1 46
            //                           2 113
            //                           3 138
            //                           4 206
            //                           5 246
            //                           6 288;
                   goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
                return true;
_L2:
                if (checkNetWork())
                {
                    getSmsCode(phone, countrycode, "2", getApplicationContext());
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
                sendcodeButton.setText((new StringBuilder("(")).append(FindPasswordCheckMsgActivity.GETCODETIME).append(")").append("\u518D\u6B21\u53D1\u9001\u9A8C\u8BC1\u7801").toString());
                return true;
_L6:
                sendcodeButton.setText("\u518D\u6B21\u53D1\u9001\u9A8C\u8BC1\u7801");
                sendcodeButton.setEnabled(true);
                sendcodeButton.setBackgroundResource(0x7f080000);
                FindPasswordCheckMsgActivity.GETCODETIME = 120;
                return true;
_L7:
                hideLoading();
                showMsgToast(getString(0x7f060045));
                return true;
            }

            
            {
                this$0 = FindPasswordCheckMsgActivity.this;
                super();
            }
        });
    }

    public void doCheckcodeErr(String s)
    {
        mainHandler.sendEmptyMessage(2);
    }

    public void doCheckcodeSucc(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_49;
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
            break MISSING_BLOCK_LABEL_45;
        }
        try
        {
            Object obj = PublicParser.Publicparaser(s);
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
        setContentView(0x7f03000f);
        ll_pageInnerLoading = (LinearLayout)findViewById(0x7f0a0029);
        iv_pageInnerLoading = (ImageView)ll_pageInnerLoading.findViewById(0x7f0a00a4);
        iv_pageInnerLoading.measure(0, 0);
        msInnerLoadingAnim = (AnimationDrawable)iv_pageInnerLoading.getBackground();
        initialHandler();
        init();
        bundle = new android.view.View.OnClickListener() {

            final FindPasswordCheckMsgActivity this$0;

            public void onClick(View view)
            {
                switch (view.getId())
                {
                default:
                    return;

                case 2131361862: 
                    showLoading();
                    (new MyThread()).start();
                    return;

                case 2131361836: 
                    finish();
                    return;

                case 2131361838: 
                    showLoading();
                    getCheckCode(phone, et_code.getText().toString().trim(), "2", getApplicationContext());
                    return;
                }
            }

            
            {
                this$0 = FindPasswordCheckMsgActivity.this;
                super();
            }
        };
        et_code.addTextChangedListener(etphoneWatcher);
        sendcodeButton.setOnClickListener(bundle);
        backButton.setOnClickListener(bundle);
        confirmButton.setOnClickListener(bundle);
    }












}
