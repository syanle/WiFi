// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.iwifi.sdk.protocol.impl.DoAuthenticationLogoffOperation;
import com.pubinfo.freewifialliance.controller.LoginFun;
import com.pubinfo.wifi_core.core.util.FileManager;
import com.pubinfo.wifi_core.core.util.SMSCodeBroadcast;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            WelcomePage

public class LoginPage extends LoginFun
    implements android.view.View.OnClickListener
{
    class MonitorThread extends Thread
    {

        final LoginPage this$0;

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
            this$0 = LoginPage.this;
            super();
        }
    }


    private static int GETCODETIME = 60;
    private final int OUTOF_TIME = 0xaadd001;
    private Button btnConnectNet;
    private Button btnGetCode;
    ImageButton btn_back;
    private final int connectTimeOut = 60000;
    Thread countThread;
    private EditText etAccount;
    private EditText etPassword;
    private boolean isResponse;
    private boolean isRun;
    private ImageView iv_pageInnerLoading;
    private LinearLayout ll_pageInnerLoading;
    private SMSCodeBroadcast mReceiver;
    private Handler mainHandler;
    private AnimationDrawable msInnerLoadingAnim;
    ImageButton refresh;
    private long startTime;

    public LoginPage()
    {
        ll_pageInnerLoading = null;
        iv_pageInnerLoading = null;
        msInnerLoadingAnim = null;
        startTime = 0L;
        isResponse = false;
        isRun = true;
        mReceiver = null;
        mainHandler = null;
        countThread = new Thread() {

            final LoginPage this$0;

            public void run()
            {
                do
                {
                    if (LoginPage.GETCODETIME <= 0 || Thread.currentThread().isInterrupted())
                    {
                        mainHandler.sendEmptyMessage(2);
                        return;
                    }
                    mainHandler.sendEmptyMessage(1);
                    try
                    {
                        Thread.sleep(1000L);
                    }
                    catch (InterruptedException interruptedexception)
                    {
                        interruptedexception.printStackTrace();
                    }
                    LoginPage.GETCODETIME--;
                } while (true);
            }

            
            {
                this$0 = LoginPage.this;
                super();
            }
        };
    }

    private void getSmsCode()
    {
        registerSMSReceiver();
        startTime = System.currentTimeMillis();
        (new MonitorThread()).start();
    }

    private void hideLoading()
    {
        if (ll_pageInnerLoading.getVisibility() == 0)
        {
            ll_pageInnerLoading.setVisibility(8);
        }
    }

    private void initView()
    {
        btn_back = (ImageButton)findViewById(0x7f0c0014);
        btn_back.setVisibility(0);
        btn_back.setOnClickListener(this);
        refresh = (ImageButton)findViewById(0x7f0c005b);
        refresh.setVisibility(8);
        etAccount = (EditText)findViewById(0x7f0c0023);
        etPassword = (EditText)findViewById(0x7f0c0024);
        btnGetCode = (Button)findViewById(0x7f0c0025);
        btnGetCode.setOnClickListener(this);
        btnConnectNet = (Button)findViewById(0x7f0c0026);
        btnConnectNet.setOnClickListener(this);
        ll_pageInnerLoading = (LinearLayout)findViewById(0x7f0c0021);
        iv_pageInnerLoading = (ImageView)ll_pageInnerLoading.findViewById(0x7f0c0030);
        iv_pageInnerLoading.measure(0, 0);
        msInnerLoadingAnim = (AnimationDrawable)iv_pageInnerLoading.getBackground();
        ssid = getIntent().getStringExtra("ssid");
    }

    private void initialHandler()
    {
        mainHandler = new Handler(new android.os.Handler.Callback() {

            final LoginPage this$0;

            public boolean handleMessage(Message message)
            {
                switch (message.what)
                {
                default:
                    return true;

                case 179163137: 
                    showDialog("\u81EA\u52A8\u83B7\u53D6\u9A8C\u8BC1\u7801\u8D85\u65F6\uFF0C\u8BF7\u624B\u52A8\u8F93\u5165", false);
                    return true;

                case 1: // '\001'
                    btnGetCode.setText((new StringBuilder(String.valueOf(LoginPage.GETCODETIME))).toString());
                    return true;

                case 2: // '\002'
                    btnGetCode.setText("\u83B7\u53D6\u9A8C\u8BC1\u7801");
                    btnGetCode.setClickable(true);
                    btnGetCode.setBackgroundResource(0x7f020153);
                    LoginPage.GETCODETIME = 60;
                    return true;
                }
            }

            
            {
                this$0 = LoginPage.this;
                super();
            }
        });
    }

    public static boolean isMobileNO(String s)
    {
        return Pattern.compile("^(1[3-9])\\d{9}$").matcher(s).matches();
    }

    private void registerSMSReceiver()
    {
        IntentFilter intentfilter = new IntentFilter("android.provider.Telephony.SMS_RECEIVED");
        intentfilter.setPriority(1000);
        mReceiver = new SMSCodeBroadcast(this, new com.pubinfo.wifi_core.core.util.SMSCodeBroadcast.AfterReceive() {

            final LoginPage this$0;

            public void autoFill(String s)
            {
                unRegisterSMSReceiver();
                isResponse = true;
                etPassword.setText(s);
                if (!etAccount.getText().toString().trim().equals("") && !etPassword.getText().toString().trim().equals(""))
                {
                    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(etPassword.getWindowToken(), 1);
                    showLoading();
                    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
                    doConnectNet(etAccount.getText().toString().trim(), etPassword.getText().toString().trim());
                }
            }

            
            {
                this$0 = LoginPage.this;
                super();
            }
        });
        registerReceiver(mReceiver, intentfilter);
    }

    private void showDialog(String s, final boolean isFinish)
    {
        (new android.app.AlertDialog.Builder(this)).setTitle("\u63D0\u793A").setMessage(s).setPositiveButton("\u786E\u5B9A", new android.content.DialogInterface.OnClickListener() {

            final LoginPage this$0;
            private final boolean val$isFinish;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
                if (isFinish)
                {
                    dialoginterface.dismiss();
                }
            }

            
            {
                this$0 = LoginPage.this;
                isFinish = flag;
                super();
            }
        }).show();
    }

    private void showLoading()
    {
        ll_pageInnerLoading.setVisibility(0);
        if (msInnerLoadingAnim.isRunning())
        {
            msInnerLoadingAnim.stop();
            msInnerLoadingAnim.start();
            return;
        } else
        {
            msInnerLoadingAnim.start();
            return;
        }
    }

    private void unRegisterSMSReceiver()
    {
        if (mReceiver != null)
        {
            IntentFilter intentfilter = new IntentFilter("android.provider.Telephony.SMS_RECEIVED");
            intentfilter.setPriority(1000);
            registerReceiver(mReceiver, intentfilter);
            unregisterReceiver(mReceiver);
        }
    }

    public void checkCodeAuthErr(String s)
    {
        hideLoading();
        showMsgToast("\u9A8C\u8BC1\u7801\u8BA4\u8BC1\u5931\u8D25");
    }

    public void doSmsAuthErr(String s)
    {
        hideLoading();
        showMsgToast("\u53D1\u9001\u9A8C\u8BC1\u7801\u5931\u8D25");
    }

    public void getCheckCodeSuccess()
    {
        (new DoAuthenticationLogoffOperation(this, this)).Global_AuthenticationRequest(num, "2.0", "");
    }

    public void getConfirmFail()
    {
        hideLoading();
        showMsgToast("\u8BA4\u8BC1\u5931\u8D25");
    }

    public void getConfirmSuccess(String s)
    {
        hideLoading();
        showMsgToast("\u8054\u7F51\u6210\u529F");
        Intent intent = new Intent(this, com/pubinfo/freewifialliance/view/WelcomePage);
        intent.putExtra("ssid", ssid);
        intent.putExtra("device_id", s);
        intent.setFlags(0x10000000);
        startActivity(intent);
        finish();
    }

    public void getSmsAuthSuccess()
    {
        hideLoading();
        showMsgToast("\u53D1\u9001\u9A8C\u8BC1\u7801\u6210\u529F");
    }

    public void onClick(View view)
    {
        if (!view.equals(btnGetCode)) goto _L2; else goto _L1
_L1:
        etPassword.setText("");
        try
        {
            getSmsCode();
        }
        // Misplaced declaration of an exception variable
        catch (View view) { }
        if (!etAccount.getText().toString().trim().equals("")) goto _L4; else goto _L3
_L3:
        showMsgToast("\u624B\u673A\u53F7\u7801\u4E0D\u80FD\u4E3A\u7A7A\uFF0C\u8BF7\u8F93\u5165\uFF01");
_L6:
        return;
_L4:
        if (etAccount.getText().toString().length() != 11 || !etAccount.getText().toString().startsWith("1"))
        {
            showMsgToast("\u624B\u673A\u53F7\u7801\u8F93\u5165\u9519\u8BEF\uFF0C\u8BF7\u91CD\u65B0\u8F93\u5165");
            return;
        }
        if (!isMobileNO(etAccount.getText().toString().trim()))
        {
            showMsgToast("\u624B\u673A\u53F7\u7801\u8F93\u5165\u9519\u8BEF\uFF0C\u8BF7\u91CD\u65B0\u8F93\u5165");
            return;
        }
        btnGetCode.setClickable(false);
        btnGetCode.setBackgroundResource(0x7f020154);
        GETCODETIME = 60;
        (new Thread(countThread)).start();
        showLoading();
        type = getIntent().getStringExtra("type");
        if (type != null && type.equals("log"))
        {
            getSmsCode(etAccount.getText().toString().trim());
            return;
        }
        if (FileManager.getWifiIp(this).equals(""))
        {
            showMsgToast("\u6B63\u5728\u8FDE\u63A5\u4E2D");
            return;
        } else
        {
            getSmsCode(etAccount.getText().toString().trim());
            return;
        }
_L2:
        if (!view.equals(btnConnectNet))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (etAccount.getText().toString().trim().equals("") || etPassword.getText().toString().trim().equals("")) goto _L6; else goto _L5
_L5:
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(etPassword.getWindowToken(), 1);
        showLoading();
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
        doConnectNet(etAccount.getText().toString().trim(), etPassword.getText().toString().trim());
        return;
        if (!view.equals(btn_back)) goto _L6; else goto _L7
_L7:
        finish();
        return;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030009);
        initView();
        initialHandler();
    }

    public void onLogoffRequestFail(String s)
    {
    }

    public void onLogoffRequestSucc(String s)
    {
    }

    protected void onPause()
    {
        unRegisterSMSReceiver();
        super.onPause();
    }
















}
