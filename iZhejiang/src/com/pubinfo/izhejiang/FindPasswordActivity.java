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
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import com.cat.parase.PublicParser;
import com.cat.tools.Code;
import com.pubinfo.izhejiang.controller.FindPasswordFun;
import java.io.PrintStream;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            FindPasswordCheckMsgActivity

public class FindPasswordActivity extends FindPasswordFun
{

    public static FindPasswordActivity findpassword_instance = null;
    EditText ETphone;
    EditText ETyanzhengma;
    ImageButton backButton;
    LinearLayout confirmButton;
    private TextWatcher etphoneWatcher;
    private Handler mainHandler;
    TextView textbtn;
    TextView title;
    Button yanzhengmaButton;
    ImageView yanzhengmaIMG;

    public FindPasswordActivity()
    {
        etphoneWatcher = new TextWatcher() {

            final FindPasswordActivity this$0;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                if (ETyanzhengma != null && !ETyanzhengma.getText().toString().equals("") && ETphone != null && !ETphone.getText().toString().equals(""))
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
                this$0 = FindPasswordActivity.this;
                super();
            }
        };
        mainHandler = null;
    }

    private void Commit()
    {
        getMobileExist(ETphone.getText().toString().trim(), "86", "4", getApplicationContext());
    }

    private boolean checkChinaPhone()
    {
        return !ETphone.getText().toString().trim().equals("") && ETphone.getText().toString().length() == 11 && ETphone.getText().toString().startsWith("1");
    }

    private void checkChineseRegist()
    {
        if (checkChinaPhone() && ETyanzhengma.getText().toString().length() == 4 && ETyanzhengma.getText().toString().trim().toLowerCase().equals(Code.getInstance().getCode().toLowerCase()))
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
            if (ETyanzhengma.getText().toString().length() != 4 || !ETyanzhengma.getText().toString().trim().toLowerCase().equals(Code.getInstance().getCode().toLowerCase()))
            {
                showMsgToast(getString(0x7f06002c));
                return;
            }
        }
    }

    private void goIntent()
    {
        hideLoading();
        Intent intent = new Intent(this, com/pubinfo/izhejiang/FindPasswordCheckMsgActivity);
        intent.putExtra("phone", ETphone.getText().toString().trim());
        startActivity(intent);
    }

    private void init()
    {
        title = (TextView)findViewById(0x7f0a002d);
        backButton = (ImageButton)findViewById(0x7f0a002c);
        confirmButton = (LinearLayout)findViewById(0x7f0a002e);
        textbtn = (TextView)findViewById(0x7f0a002f);
        yanzhengmaIMG = (ImageView)findViewById(0x7f0a0041);
        yanzhengmaButton = (Button)findViewById(0x7f0a0042);
        ETphone = (EditText)findViewById(0x7f0a003f);
        ETyanzhengma = (EditText)findViewById(0x7f0a0043);
        yanzhengmaIMG.setImageBitmap(Code.getInstance().createBitmap());
        System.out.println((new StringBuilder("\u9A8C\u8BC1\u7801\uFF1A")).append(Code.getInstance().getCode()).toString());
        title.setText("\u627E\u56DE\u5BC6\u7801");
        confirmButton.setVisibility(0);
        confirmButton.setEnabled(false);
    }

    private void initialHandler()
    {
        mainHandler = new Handler(new android.os.Handler.Callback() {

            final FindPasswordActivity this$0;

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
                this$0 = FindPasswordActivity.this;
                super();
            }
        });
    }

    public void doMobileExistErr(String s)
    {
        mainHandler.sendEmptyMessage(2);
    }

    public void doMobileExistSucc(String s)
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
        goIntent();
        return;
        mainHandler.sendEmptyMessage(2);
        return;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000e);
        findpassword_instance = this;
        ll_pageInnerLoading = (LinearLayout)findViewById(0x7f0a0029);
        iv_pageInnerLoading = (ImageView)ll_pageInnerLoading.findViewById(0x7f0a00a4);
        iv_pageInnerLoading.measure(0, 0);
        msInnerLoadingAnim = (AnimationDrawable)iv_pageInnerLoading.getBackground();
        init();
        initialHandler();
        bundle = new android.view.View.OnClickListener() {

            final FindPasswordActivity this$0;

            public void onClick(View view)
            {
                switch (view.getId())
                {
                default:
                    return;

                case 2131361858: 
                    yanzhengmaIMG.setImageBitmap(Code.getInstance().createBitmap());
                    System.out.println((new StringBuilder("\u9A8C\u8BC1\u7801\uFF1A")).append(Code.getInstance().getCode()).toString());
                    return;

                case 2131361836: 
                    finish();
                    return;

                case 2131361838: 
                    checkChineseRegist();
                    return;
                }
            }

            
            {
                this$0 = FindPasswordActivity.this;
                super();
            }
        };
        ETphone.addTextChangedListener(etphoneWatcher);
        ETyanzhengma.addTextChangedListener(etphoneWatcher);
        backButton.setOnClickListener(bundle);
        confirmButton.setOnClickListener(bundle);
        yanzhengmaButton.setOnClickListener(bundle);
    }

    public void onResume()
    {
        super.onResume();
        ETyanzhengma.setText("");
        yanzhengmaIMG.setImageBitmap(Code.getInstance().createBitmap());
    }



}
