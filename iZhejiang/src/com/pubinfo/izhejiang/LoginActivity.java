// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cat.data.ComData;
import com.cat.data.LoginData;
import com.cat.data.PublicError;
import com.cat.parase.LoginParser;
import com.cat.tools.APPConf;
import com.cat.tools.SelectFindPasswordPopupWindow;
import com.pubinfo.izhejiang.controller.LoginFun;
import java.io.File;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.pubinfo.izhejiang:
//            HideMenuActivity, FindPasswordActivity, CountryListActivity, MainActivity, 
//            RegistFirstActivity

public class LoginActivity extends LoginFun
{

    public static final int LOGIN_CHOSE_COUNTRY = 1;
    public static LoginActivity login_instance = null;
    private static boolean login_isClicked = true;
    String activityname;
    ImageButton backButton;
    String code;
    Button commitButton;
    LinearLayout confirmButton;
    String countrycn;
    private TextWatcher etphoneWatcher;
    Button findpasswordButton;
    private android.view.View.OnClickListener itemsOnClick;
    TextView loading_text;
    private Handler mainHandler;
    SelectFindPasswordPopupWindow menuWindow;
    EditText passwordET;
    Button registButton;
    RelativeLayout relativelayout1;
    Button selectcountryButton;
    long startTime;
    EditText usernameET;

    public LoginActivity()
    {
        startTime = 0L;
        itemsOnClick = new android.view.View.OnClickListener() {

            final LoginActivity this$0;

            public void onClick(View view)
            {
                menuWindow.dismiss();
                switch (view.getId())
                {
                default:
                    return;

                case 2131361820: 
                    goFindPasswordIntent();
                    break;
                }
            }

            
            {
                this$0 = LoginActivity.this;
                super();
            }
        };
        etphoneWatcher = new TextWatcher() {

            final LoginActivity this$0;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                if (usernameET != null && !usernameET.getText().toString().equals("") && passwordET != null && !passwordET.getText().toString().equals(""))
                {
                    commitButton.setEnabled(true);
                    commitButton.setTextColor(getResources().getColorStateList(0x7f080001));
                    return;
                } else
                {
                    commitButton.setEnabled(false);
                    commitButton.setTextColor(getResources().getColorStateList(0x7f080004));
                    return;
                }
            }

            
            {
                this$0 = LoginActivity.this;
                super();
            }
        };
        mainHandler = null;
    }

    public static boolean CheckIsEmail(String s)
    {
        return Pattern.compile("^[a-zA-Z][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$").matcher(s).matches();
    }

    private void Commit()
    {
        if (usernameET.getText().toString().equals("\u8BA9\u5929\u4E0B\u6CA1\u6709\u96BE\u4E0A\u7684WiFi! -2015"))
        {
            startActivity(new Intent(this, com/pubinfo/izhejiang/HideMenuActivity));
        }
        if (usernameET.getText().toString().trim().contains("@"))
        {
            if (!CheckIsEmail(usernameET.getText().toString().trim()))
            {
                login_isClicked = true;
                showMsgToast(getString(0x7f06003c));
                hideLoading();
                return;
            }
            if (code != null && countrycn != null)
            {
                getLogin(usernameET.getText().toString().trim(), code, passwordET.getText().toString().trim(), getApplicationContext());
                return;
            } else
            {
                getLogin(usernameET.getText().toString().trim(), "86", passwordET.getText().toString().trim(), getApplicationContext());
                return;
            }
        }
        if (code != null && countrycn != null)
        {
            if (checkForignPhone())
            {
                getLogin(usernameET.getText().toString().trim(), code, passwordET.getText().toString().trim(), getApplicationContext());
                return;
            } else
            {
                login_isClicked = true;
                showMsgToast(getString(0x7f06003d));
                hideLoading();
                return;
            }
        }
        if (checkChinaPhone())
        {
            getLogin(usernameET.getText().toString().trim(), "86", passwordET.getText().toString().trim(), getApplicationContext());
            return;
        } else
        {
            login_isClicked = true;
            showMsgToast(getString(0x7f06003d));
            hideLoading();
            return;
        }
    }

    private boolean checkChinaPhone()
    {
        return !usernameET.getText().toString().trim().equals("") && usernameET.getText().toString().length() == 11 && usernameET.getText().toString().startsWith("1");
    }

    private boolean checkForignPhone()
    {
        return !usernameET.getText().toString().trim().equals("") && usernameET.getText().toString().length() >= 6;
    }

    private void goFindPasswordIntent()
    {
        startActivity(new Intent(this, com/pubinfo/izhejiang/FindPasswordActivity));
    }

    private void goIntent()
    {
        hideLoading();
        Intent intent = new Intent(this, com/pubinfo/izhejiang/CountryListActivity);
        intent.putExtra("activity", "LoginActivity");
        startActivityForResult(intent, 1);
    }

    private void goLoginSucessIntent()
    {
        hideLoading();
        startTime = System.currentTimeMillis();
        List list = ComData.getInstance().getLoginData();
        android.content.SharedPreferences.Editor editor = getSharedPreferences("LoginSucess", 0).edit();
        editor.putString("username", ((LoginData)list.get(0)).getAuthid());
        editor.putString("countrycode", ((LoginData)list.get(0)).getCountrycode());
        editor.putString("memberid", ((LoginData)list.get(0)).getMemberid());
        editor.putLong("logintime", startTime);
        editor.commit();
        try
        {
            File file = new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_AFTERCUT_PATH).toString());
            (new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString())).delete();
            file.delete();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        if (activityname != null)
        {
            if (activityname.equals("SsidFragment") || activityname == "SsidFragment")
            {
                Intent intent2 = new Intent();
                intent2.putExtra("username", ((LoginData)list.get(0)).getAuthid());
                setResult(2, intent2);
                finish();
                return;
            }
            if (activityname.equals("MyFragment") || activityname.equals("CountryListActivity"))
            {
                Intent intent3 = new Intent();
                intent3.putExtra("username", ((LoginData)list.get(0)).getAuthid());
                intent3.putExtra("countrycode", ((LoginData)list.get(0)).getCountrycode());
                setResult(2, intent3);
                finish();
                return;
            } else
            {
                Intent intent = new Intent(this, com/pubinfo/izhejiang/MainActivity);
                intent.setFlags(0x4000000);
                startActivity(intent);
                finish();
                return;
            }
        } else
        {
            Intent intent1 = new Intent(this, com/pubinfo/izhejiang/MainActivity);
            intent1.setFlags(0x4000000);
            startActivity(intent1);
            finish();
            return;
        }
    }

    private void goRegistIntent()
    {
        hideLoading();
        Intent intent = new Intent(this, com/pubinfo/izhejiang/RegistFirstActivity);
        intent.putExtra("Activity", activityname);
        startActivity(intent);
    }

    private void initialHandler()
    {
        mainHandler = new Handler(new android.os.Handler.Callback() {

            final LoginActivity this$0;

            public boolean handleMessage(Message message)
            {
                switch (message.what)
                {
                default:
                    return true;

                case 1: // '\001'
                    if (checkNetWork())
                    {
                        Commit();
                        return true;
                    } else
                    {
                        showMsgToast(getString(0x7f060032));
                        hideLoading();
                        LoginActivity.login_isClicked = true;
                        return true;
                    }

                case 2: // '\002'
                    hideLoading();
                    showMsgToast(getString(0x7f060031));
                    LoginActivity.login_isClicked = true;
                    return true;

                case 3: // '\003'
                    hideLoading();
                    message = ComData.getInstance().getpError();
                    break;
                }
                if (message == null || message.size() <= 0) goto _L2; else goto _L1
_L1:
                int i = 0;
_L5:
                if (i < message.size()) goto _L3; else goto _L2
_L2:
                LoginActivity.login_isClicked = true;
                return true;
_L3:
                String s = ((PublicError)message.get(i)).getMessage();
                showMsgToast(s);
                i++;
                if (true) goto _L5; else goto _L4
_L4:
            }

            
            {
                this$0 = LoginActivity.this;
                super();
            }
        });
    }

    public void chosePhoto()
    {
        if ((new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString())).exists())
        {
            Object obj = new android.graphics.BitmapFactory.Options();
            obj.inSampleSize = 3;
            obj = new BitmapDrawable(null, BitmapFactory.decodeFile((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString(), ((android.graphics.BitmapFactory.Options) (obj))));
            relativelayout1.setBackgroundDrawable(null);
            relativelayout1.setBackgroundDrawable(((android.graphics.drawable.Drawable) (obj)));
        }
    }

    public void doLoginErr(String s)
    {
        mainHandler.sendEmptyMessage(2);
    }

    public void doLoginSucc(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_79;
        }
        Object obj;
        obj = LoginParser.Loginparaser(s);
        if (!s.contains("OK"))
        {
            ComData.getInstance().setpError((List)obj);
            mainHandler.sendEmptyMessage(3);
            return;
        }
        try
        {
            showMsgToast(getString(0x7f060048));
            ComData.getInstance().setLoginData((List)obj);
            goLoginSucessIntent();
            login_isClicked = true;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            hideLoading();
        }
        login_isClicked = true;
        return;
        mainHandler.sendEmptyMessage(2);
        return;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
label0:
        {
            if (i == 1)
            {
                if (intent == null)
                {
                    break label0;
                }
                code = intent.getExtras().getString("code");
                countrycn = intent.getExtras().getString("countrycn");
                activityname = intent.getExtras().getString("Activity");
                if (code != null && countrycn != null)
                {
                    selectcountryButton.setText(countrycn);
                }
            }
            super.onActivityResult(i, j, intent);
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030017);
        login_instance = this;
        ll_pageInnerLoading = (LinearLayout)findViewById(0x7f0a0029);
        iv_pageInnerLoading = (ImageView)ll_pageInnerLoading.findViewById(0x7f0a00a4);
        iv_pageInnerLoading.measure(0, 0);
        msInnerLoadingAnim = (AnimationDrawable)iv_pageInnerLoading.getBackground();
        initialHandler();
        commitButton = (Button)findViewById(0x7f0a0074);
        usernameET = (EditText)findViewById(0x7f0a0070);
        passwordET = (EditText)findViewById(0x7f0a0073);
        loading_text = (TextView)findViewById(0x7f0a00a5);
        backButton = (ImageButton)findViewById(0x7f0a002c);
        confirmButton = (LinearLayout)findViewById(0x7f0a002e);
        findpasswordButton = (Button)findViewById(0x7f0a0076);
        selectcountryButton = (Button)findViewById(0x7f0a0075);
        registButton = (Button)findViewById(0x7f0a0077);
        relativelayout1 = (RelativeLayout)findViewById(0x7f0a006e);
        code = getIntent().getStringExtra("code");
        countrycn = getIntent().getStringExtra("countrycn");
        activityname = getIntent().getStringExtra("Activity");
        if (code != null && countrycn != null)
        {
            selectcountryButton.setText(countrycn);
        }
        bundle = new android.view.View.OnClickListener() {

            final LoginActivity this$0;

            public void onClick(View view)
            {
                view.getId();
                JVM INSTR lookupswitch 5: default 56
            //                           2131361836: 163
            //                           2131361908: 114
            //                           2131361909: 171
            //                           2131361910: 57
            //                           2131361911: 106;
                   goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
                return;
_L5:
                menuWindow = new SelectFindPasswordPopupWindow(LoginActivity.this, itemsOnClick);
                menuWindow.showAtLocation(findViewById(0x7f0a0022), 81, 0, 0);
                return;
_L6:
                goRegistIntent();
                return;
_L3:
                if (LoginActivity.login_isClicked)
                {
                    showLoading();
                    loading_text.setText(getString(0x7f060041));
                    mainHandler.sendEmptyMessage(1);
                    LoginActivity.login_isClicked = false;
                    return;
                }
                  goto _L1
_L2:
                finish();
                return;
_L4:
                goIntent();
                return;
            }

            
            {
                this$0 = LoginActivity.this;
                super();
            }
        };
        commitButton.setEnabled(false);
        usernameET.addTextChangedListener(etphoneWatcher);
        passwordET.addTextChangedListener(etphoneWatcher);
        selectcountryButton.setOnClickListener(bundle);
        registButton.setOnClickListener(bundle);
        findpasswordButton.setOnClickListener(bundle);
        commitButton.setOnClickListener(bundle);
        backButton.setOnClickListener(bundle);
        confirmButton.setVisibility(8);
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
