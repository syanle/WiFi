// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.ScrollingMovementMethod;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.weibo.sdk.android.api.WeiboAPI;
import com.tencent.weibo.sdk.android.api.util.BackGroudSeletor;
import com.tencent.weibo.sdk.android.api.util.Util;
import com.tencent.weibo.sdk.android.model.AccountModel;
import com.tencent.weibo.sdk.android.model.ModelResult;
import com.tencent.weibo.sdk.android.network.HttpCallback;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            FriendActivity, ConversationActivity

public class PublishActivity extends Activity
    implements android.view.View.OnClickListener, HttpCallback
{

    private String accessToken;
    private ImageButton button_camera;
    private ImageButton button_conversation;
    private Button button_esc;
    private ImageButton button_friend;
    private ImageButton button_location;
    private Button button_send;
    private Context context;
    private ProgressDialog dialog;
    private EditText editText_text;
    private String edstring;
    private FrameLayout frameLayout_big;
    private FrameLayout frameLayout_icon;
    private Handler handler;
    private ImageView imageView_big;
    private ImageView imageView_bound;
    private ImageView imageView_delete;
    private ImageView imageView_icon;
    private LinearLayout layout_big_delete;
    private LinearLayout layout_imagebound;
    private LinearLayout layout_set;
    private Map location;
    private int lyout[];
    private Bitmap mBitmap;
    private Location mLocation;
    private PopupWindow popupWindow;
    private TextView textView_num;
    private LinearLayout viewroot;
    private WeiboAPI weiboAPI;

    public PublishActivity()
    {
        lyout = new int[2];
        edstring = "";
        mBitmap = null;
        handler = new Handler() {

            final PublishActivity this$0;

            public void handleMessage(Message message)
            {
                super.handleMessage(message);
                int i = message.what;
                if (i == 5)
                {
                    frameLayout_big.setVisibility(0);
                    frameLayout_icon.setVisibility(0);
                } else
                {
                    if (i == 0)
                    {
                        popupWindow.showAsDropDown(layout_set);
                        message = (InputMethodManager)getSystemService("input_method");
                        Log.d("alive", (new StringBuilder(String.valueOf(message.isActive()))).toString());
                        if (message.isActive())
                        {
                            message.hideSoftInputFromWindow(editText_text.getWindowToken(), 0);
                            Log.d("alive", (new StringBuilder(String.valueOf(message.isActive()))).toString());
                        }
                    }
                    if (i == 10)
                    {
                        button_location.setBackgroundDrawable(BackGroudSeletor.getdrawble("dingwei_icon_hover2x", PublishActivity.this));
                    }
                    if (i == 15)
                    {
                        Toast.makeText(PublishActivity.this, "\u5B9A\u4F4D\u5931\u8D25", 0).show();
                        button_location.setBackgroundDrawable(BackGroudSeletor.getdrawble("dingwei_icon2x", PublishActivity.this));
                        return;
                    }
                }
            }

            
            {
                this$0 = PublishActivity.this;
                super();
            }
        };
    }

    private int[] getarea(int ai[])
    {
        int ai1[] = new int[2];
        if (ai == null) goto _L2; else goto _L1
_L1:
        if (ai[0] <= ai[1] || ai[0] < 300) goto _L4; else goto _L3
_L3:
        ai1[0] = 300;
        ai1[1] = (int)(((float)ai[1] / (float)ai[0]) * 300F);
_L2:
        Log.d("myarea", (new StringBuilder(String.valueOf(ai1[0]))).append(".....").append(ai1[1]).toString());
        return ai1;
_L4:
        if (ai[0] > ai[1] && ai[0] < 300)
        {
            ai1[0] = ai[0];
            ai1[1] = ai[1];
        } else
        if (ai[0] < ai[1] && ai[1] >= 300)
        {
            ai1[0] = (int)(((float)ai[0] / (float)ai[1]) * 300F);
            ai1[1] = 300;
        } else
        if (ai[0] < ai[1] && ai[0] < 300)
        {
            ai1[0] = ai[0];
            ai1[1] = ai[1];
        } else
        if (ai[0] == ai[1] && ai[0] >= 300)
        {
            ai1[0] = 300;
            ai1[1] = 300;
        } else
        if (ai[0] == ai[1] && ai[0] < 300)
        {
            ai1[0] = ai[0];
            ai1[1] = ai[1];
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    private View initview()
    {
        viewroot = new LinearLayout(this);
        Object obj = new android.widget.LinearLayout.LayoutParams(-1, -1);
        Object obj1 = new android.widget.FrameLayout.LayoutParams(-2, -2);
        Object obj2 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        viewroot.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        viewroot.setOrientation(1);
        Object obj4 = new android.widget.LinearLayout.LayoutParams(-1, -2);
        Object obj3 = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        obj = new RelativeLayout(this);
        ((RelativeLayout) (obj)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj3)));
        ((RelativeLayout) (obj)).setBackgroundDrawable(BackGroudSeletor.getdrawble("up_bg2x", getApplication()));
        ((RelativeLayout) (obj)).setGravity(0);
        button_esc = new Button(this);
        ((android.widget.RelativeLayout.LayoutParams) (obj2)).addRule(9, -1);
        ((android.widget.RelativeLayout.LayoutParams) (obj2)).addRule(15, -1);
        obj2.topMargin = 10;
        obj2.leftMargin = 10;
        obj2.bottomMargin = 10;
        button_esc.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj2)));
        button_esc.setText("\u53D6\u6D88");
        button_esc.setClickable(true);
        button_esc.setId(5001);
        button_esc.setBackgroundDrawable(BackGroudSeletor.createBgByImageIds(new String[] {
            "quxiao_btn2x", "quxiao_btn_hover"
        }, this));
        button_send = new Button(this);
        obj2 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj2)).addRule(11, -1);
        ((android.widget.RelativeLayout.LayoutParams) (obj2)).addRule(15, -1);
        obj2.topMargin = 10;
        obj2.rightMargin = 10;
        obj2.bottomMargin = 10;
        button_send.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj2)));
        obj2 = new LinearLayout(this);
        obj3 = new android.widget.LinearLayout.LayoutParams(-2, -2, 1.0F);
        ((LinearLayout) (obj2)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj3)));
        button_send.setText("\u53D1\u9001");
        button_send.setClickable(true);
        button_send.setId(5002);
        button_send.setBackgroundDrawable(BackGroudSeletor.createBgByImageIds(new String[] {
            "sent_btn_22x", "sent_btn_hover"
        }, this));
        ((RelativeLayout) (obj)).addView(button_esc);
        ((RelativeLayout) (obj)).addView(button_send);
        obj2 = new LinearLayout(this);
        ((LinearLayout) (obj2)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj4)));
        ((LinearLayout) (obj2)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj4)));
        ((LinearLayout) (obj2)).setOrientation(1);
        ((LinearLayout) (obj2)).setBackgroundColor(-1);
        ((LinearLayout) (obj2)).requestFocus();
        editText_text = new EditText(this);
        editText_text.setBackgroundColor(-1);
        editText_text.setMaxLines(4);
        editText_text.setMinLines(4);
        editText_text.setMinEms(4);
        editText_text.setMaxEms(4);
        editText_text.setFocusable(true);
        editText_text.requestFocus();
        editText_text.setText(edstring);
        editText_text.setSelection(edstring.length());
        editText_text.setScrollbarFadingEnabled(true);
        editText_text.setGravity(48);
        editText_text.setMovementMethod(ScrollingMovementMethod.getInstance());
        editText_text.setId(5003);
        frameLayout_icon = new FrameLayout(this);
        frameLayout_icon.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
        LinearLayout linearlayout = new LinearLayout(this);
        linearlayout.setGravity(21);
        linearlayout.setLayoutParams(new android.widget.LinearLayout.LayoutParams(54, 45));
        linearlayout.setPadding(0, 0, 2, 0);
        imageView_icon = new ImageView(this);
        imageView_icon.setId(5004);
        imageView_bound = new ImageView(this);
        imageView_bound.setId(5005);
        imageView_bound.setLayoutParams(new android.widget.LinearLayout.LayoutParams(54, 45));
        imageView_icon.setLayoutParams(new android.widget.LinearLayout.LayoutParams(33, 33));
        imageView_bound.setImageDrawable(BackGroudSeletor.getdrawble("composeimageframe", this));
        frameLayout_icon.setVisibility(8);
        linearlayout.addView(imageView_icon);
        frameLayout_icon.addView(linearlayout);
        frameLayout_icon.addView(imageView_bound);
        ((LinearLayout) (obj2)).addView(editText_text);
        ((LinearLayout) (obj2)).addView(frameLayout_icon);
        layout_set = new LinearLayout(this);
        layout_set.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj4)));
        layout_set.setBackgroundDrawable(BackGroudSeletor.getdrawble("icon_bg2x", this));
        layout_set.setOrientation(0);
        layout_set.setGravity(16);
        layout_set.setPadding(10, 0, 30, 0);
        obj4 = new LinearLayout(this);
        ((LinearLayout) (obj4)).setOrientation(0);
        ((LinearLayout) (obj4)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj3)));
        linearlayout = new LinearLayout(this);
        linearlayout.setGravity(1);
        linearlayout.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj3)));
        LinearLayout linearlayout1 = new LinearLayout(this);
        linearlayout1.setGravity(1);
        linearlayout1.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj3)));
        LinearLayout linearlayout2 = new LinearLayout(this);
        linearlayout2.setGravity(1);
        linearlayout2.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj3)));
        LinearLayout linearlayout3 = new LinearLayout(this);
        linearlayout3.setGravity(1);
        linearlayout3.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj3)));
        button_friend = new ImageButton(this);
        button_friend.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
        button_friend.setId(5006);
        button_conversation = new ImageButton(this);
        button_conversation.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
        button_conversation.setId(5007);
        button_camera = new ImageButton(this);
        button_camera.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
        button_camera.setId(5008);
        button_location = new ImageButton(this);
        button_location.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
        button_location.setId(5009);
        button_friend.setBackgroundDrawable(BackGroudSeletor.getdrawble("haoyou_icon2x", this));
        button_conversation.setBackgroundDrawable(BackGroudSeletor.createBgByImageIds(new String[] {
            "huati_icon2x", "huati_icon_hover2x"
        }, this));
        button_camera.setBackgroundDrawable(BackGroudSeletor.createBgByImageIds(new String[] {
            "pic_icon2x", "pic_icon_hover2x"
        }, this));
        button_location.setBackgroundDrawable(BackGroudSeletor.createBgByImageIds(new String[] {
            "dingwei_icon2x", "dingwei_icon_hover2x"
        }, this));
        linearlayout.addView(button_friend);
        ((LinearLayout) (obj4)).addView(linearlayout);
        linearlayout1.addView(button_conversation);
        ((LinearLayout) (obj4)).addView(linearlayout1);
        linearlayout2.addView(button_camera);
        ((LinearLayout) (obj4)).addView(linearlayout2);
        linearlayout3.addView(button_location);
        ((LinearLayout) (obj4)).addView(linearlayout3);
        textView_num = new TextView(this);
        textView_num.setText("140");
        textView_num.setTextColor(Color.parseColor("#999999"));
        textView_num.setGravity(5);
        textView_num.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj3)));
        textView_num.setId(5010);
        textView_num.setWidth(40);
        obj1 = new LinearLayout(this);
        ((LinearLayout) (obj1)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj3)));
        ((LinearLayout) (obj1)).setGravity(21);
        ((LinearLayout) (obj1)).addView(textView_num);
        layout_set.addView(((View) (obj4)));
        layout_set.addView(((View) (obj1)));
        obj1 = new LinearLayout(this);
        ((LinearLayout) (obj1)).setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -2, 1.0F));
        ((LinearLayout) (obj1)).setGravity(17);
        ((LinearLayout) (obj1)).setBackgroundDrawable(BackGroudSeletor.getdrawble("bg", this));
        frameLayout_big = new FrameLayout(this);
        obj3 = new android.widget.FrameLayout.LayoutParams(-2, -2);
        frameLayout_big.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj3)));
        frameLayout_big.setPadding(10, 10, 0, 0);
        layout_imagebound = new LinearLayout(this);
        layout_imagebound.setPadding(2, 2, 2, 2);
        layout_imagebound.setBackgroundDrawable(BackGroudSeletor.getdrawble("pic_biankuang2x", this));
        layout_big_delete = new LinearLayout(this);
        obj3 = new android.widget.LinearLayout.LayoutParams(getarea(lyout)[0] + 10, getarea(lyout)[1] + 10);
        layout_big_delete.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj3)));
        layout_imagebound.setGravity(17);
        layout_imagebound.setId(5011);
        layout_imagebound.setLayoutParams(new android.widget.LinearLayout.LayoutParams(getarea(lyout)[0], getarea(lyout)[1]));
        imageView_big = new ImageView(this);
        imageView_big.setId(5012);
        layout_imagebound.addView(imageView_big);
        imageView_delete = new ImageView(this);
        imageView_delete.setId(5013);
        imageView_delete.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-2, -2));
        imageView_delete.setImageDrawable(BackGroudSeletor.getdrawble("close", this));
        layout_big_delete.addView(imageView_delete);
        frameLayout_big.addView(layout_imagebound);
        frameLayout_big.addView(layout_big_delete);
        frameLayout_big.setVisibility(8);
        ((LinearLayout) (obj1)).addView(frameLayout_big);
        viewroot.addView(((View) (obj)));
        viewroot.addView(((View) (obj2)));
        viewroot.addView(layout_set);
        viewroot.addView(((View) (obj1)));
        return viewroot;
    }

    private void setonclick()
    {
        button_esc.setOnClickListener(this);
        button_send.setOnClickListener(this);
        editText_text.addTextChangedListener(new TextWatcher() {

            final PublishActivity this$0;

            public void afterTextChanged(Editable editable)
            {
                try
                {
                    edstring = editable.toString();
                    editable = (new StringBuilder(String.valueOf(140 - editable.toString().getBytes("gbk").length / 2))).toString();
                    Log.d("contentafter", editable);
                    textView_num.setText(editable);
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (Editable editable)
                {
                    editable.printStackTrace();
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                try
                {
                    Log.d("contentafter", (new StringBuilder(String.valueOf(charsequence.toString().getBytes("gbk").length))).toString());
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (CharSequence charsequence)
                {
                    charsequence.printStackTrace();
                }
            }

            
            {
                this$0 = PublishActivity.this;
                super();
            }
        });
        imageView_bound.setOnClickListener(this);
        imageView_delete.setOnClickListener(this);
        button_friend.setOnClickListener(this);
        button_conversation.setOnClickListener(this);
        button_camera.setOnClickListener(this);
        button_location.setOnClickListener(this);
    }

    private View showView()
    {
        LinearLayout linearlayout = new LinearLayout(this);
        linearlayout.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -2));
        linearlayout.setBackgroundDrawable(BackGroudSeletor.getdrawble("bg", this));
        linearlayout.setOrientation(1);
        linearlayout.setPadding(50, 50, 50, 50);
        linearlayout.setGravity(17);
        linearlayout.requestFocus();
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        LinearLayout linearlayout1 = new LinearLayout(this);
        linearlayout1.setLayoutParams(layoutparams);
        linearlayout1.setPadding(0, 0, 0, 0);
        linearlayout1 = new LinearLayout(this);
        linearlayout1.setLayoutParams(layoutparams);
        linearlayout1.setPadding(0, 10, 0, 30);
        new LinearLayout(this);
        layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        Button button = new Button(this);
        button.setId(5014);
        button.setOnClickListener(this);
        button.setLayoutParams(layoutparams);
        button.setText("\u62CD\u7167");
        String as[] = new String[2];
        as[0] = "btn1_";
        as[1] = "btn1_hover_";
        button.setBackgroundDrawable(BackGroudSeletor.createBgByImageIds(as, this));
        Button button1 = new Button(this);
        button1.setId(5015);
        button1.setOnClickListener(this);
        button1.setLayoutParams(layoutparams);
        button1.setText("\u76F8\u518C");
        button1.setBackgroundDrawable(BackGroudSeletor.createBgByImageIds(as, this));
        Button button2 = new Button(this);
        button2.setId(5016);
        button2.setOnClickListener(this);
        button2.setLayoutParams(layoutparams);
        button2.setText("\u53D6\u6D88");
        button2.setBackgroundDrawable(BackGroudSeletor.createBgByImageIds(new String[] {
            "btn2_", "btn1_hover_"
        }, this));
        linearlayout1.addView(button1);
        linearlayout.addView(button);
        linearlayout.addView(linearlayout1);
        linearlayout.addView(button2);
        return linearlayout;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (i == 1000 && j == -1 && intent != null)
        {
            intent = intent.getData();
            String as[] = new String[1];
            as[0] = "_data";
            intent = getContentResolver().query(intent, as, null, null, null);
            intent.moveToFirst();
            Object obj = intent.getString(intent.getColumnIndex(as[0]));
            Log.d("path", (new StringBuilder(String.valueOf(obj))).toString());
            int ai[] = new int[2];
            try
            {
                obj = new FileInputStream(((String) (obj)));
                Object obj1 = new android.graphics.BitmapFactory.Options();
                obj1.inJustDecodeBounds = false;
                obj1.inSampleSize = 6;
                obj = BitmapFactory.decodeStream(((java.io.InputStream) (obj)), null, ((android.graphics.BitmapFactory.Options) (obj1)));
                obj1 = new ByteArrayOutputStream();
                ((Bitmap) (obj)).compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, ((java.io.OutputStream) (obj1)));
                mBitmap = ((Bitmap) (obj));
                lyout[0] = ((Bitmap) (obj)).getWidth();
                lyout[1] = ((Bitmap) (obj)).getHeight();
                setContentView(initview());
                setonclick();
                imageView_icon.setImageDrawable(new BitmapDrawable(((Bitmap) (obj))));
                imageView_big.setImageDrawable(new BitmapDrawable(((Bitmap) (obj))));
                frameLayout_icon.setVisibility(0);
                frameLayout_big.setVisibility(0);
            }
            catch (FileNotFoundException filenotfoundexception)
            {
                filenotfoundexception.printStackTrace();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
            intent.close();
            if (popupWindow != null && popupWindow.isShowing())
            {
                popupWindow.dismiss();
                (new Timer()).schedule(new TimerTask() {

                    final PublishActivity this$0;

                    public void run()
                    {
                        Object obj2 = (InputMethodManager)getSystemService("input_method");
                        Log.d("mks", (new StringBuilder(String.valueOf(((InputMethodManager) (obj2)).isActive()))).toString());
                        ((InputMethodManager) (obj2)).toggleSoftInput(0, 2);
                        obj2 = handler.obtainMessage();
                        obj2.what = 5;
                        handler.sendMessage(((Message) (obj2)));
                    }

            
            {
                this$0 = PublishActivity.this;
                super();
            }
                }, 100L);
            }
        } else
        {
            if (i == 2000 && j == -1 && intent != null)
            {
                if (popupWindow != null && popupWindow.isShowing())
                {
                    popupWindow.dismiss();
                }
                intent = (Bitmap)intent.getExtras().get("data");
                sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.parse((new StringBuilder("file://")).append(Environment.getExternalStorageDirectory()).toString())));
                ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                intent.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, bytearrayoutputstream);
                mBitmap = intent;
                lyout[0] = intent.getWidth();
                lyout[1] = intent.getHeight();
                setContentView(initview());
                setonclick();
                imageView_icon.setImageDrawable(new BitmapDrawable(intent));
                imageView_big.setImageDrawable(new BitmapDrawable(intent));
                frameLayout_icon.setVisibility(0);
                frameLayout_big.setVisibility(0);
                return;
            }
            if (i == 5007 && j == -1 && intent != null)
            {
                edstring = (new StringBuilder(String.valueOf(edstring))).append(intent.getStringExtra("conversation")).toString();
                editText_text.setText(edstring);
                editText_text.setSelection(edstring.length());
                return;
            }
            if (i == 5006 && j == -1 && intent != null)
            {
                edstring = (new StringBuilder(String.valueOf(edstring))).append("@").append(intent.getStringExtra("firend")).toString();
                editText_text.setText(edstring);
                editText_text.setSelection(edstring.length());
                return;
            }
        }
    }

    public void onClick(View view)
    {
        final InputMethodManager imm = (InputMethodManager)getSystemService("input_method");
        view.getId();
        JVM INSTR tableswitch 5001 5016: default 96
    //                   5001 97
    //                   5002 116
    //                   5003 96
    //                   5004 96
    //                   5005 317
    //                   5006 325
    //                   5007 365
    //                   5008 405
    //                   5009 492
    //                   5010 96
    //                   5011 96
    //                   5012 96
    //                   5013 511
    //                   5014 529
    //                   5015 563
    //                   5016 600;
           goto _L1 _L2 _L3 _L1 _L1 _L4 _L5 _L6 _L7 _L8 _L1 _L1 _L1 _L9 _L10 _L11 _L12
_L1:
        return;
_L2:
        imm.hideSoftInputFromWindow(editText_text.getWindowToken(), 0);
        finish();
        return;
_L3:
        view = editText_text.getText().toString();
        if ("".equals(view) && frameLayout_icon.getVisibility() == 8)
        {
            Toast.makeText(this, "\u65E0\u5185\u5BB9\u53D1\u9001", 0).show();
            return;
        }
        if (dialog != null && !dialog.isShowing())
        {
            dialog.show();
        }
        if (Integer.parseInt(textView_num.getText().toString()) < 0)
        {
            Toast.makeText(this, "\u8BF7\u91CD\u65B0\u8F93\u5165\u5C11\u4E8E140\u4E2A\u5B57\u7684\u5185\u5BB9", 0).show();
            return;
        }
        double d = 0.0D;
        double d1 = 0.0D;
        if (mLocation != null)
        {
            d = mLocation.getLongitude();
            d1 = mLocation.getLatitude();
        }
        if (!frameLayout_icon.isShown())
        {
            weiboAPI.addWeibo(context, view, "json", d, d1, 0, 0, this, null, 4);
            return;
        }
        if (frameLayout_icon.getVisibility() == 0)
        {
            weiboAPI.addPic(context, view, "json", d, d1, mBitmap, 0, 0, this, null, 4);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        imm.toggleSoftInput(0, 2);
        return;
_L5:
        imm.hideSoftInputFromWindow(editText_text.getWindowToken(), 0);
        view = new Intent();
        view.setClass(this, com/tencent/weibo/sdk/android/component/FriendActivity);
        startActivityForResult(view, 5006);
        return;
_L6:
        imm.hideSoftInputFromWindow(editText_text.getWindowToken(), 0);
        view = new Intent();
        view.setClass(this, com/tencent/weibo/sdk/android/component/ConversationActivity);
        startActivityForResult(view, 5007);
        return;
_L7:
        if (popupWindow != null && popupWindow.isShowing())
        {
            popupWindow.dismiss();
            if (imm.isActive())
            {
                imm.toggleSoftInput(0, 2);
                return;
            }
        } else
        {
            popupWindow = new PopupWindow(showView(), -1, -1);
            popupWindow.setTouchable(true);
            (new Timer()).schedule(new TimerTask() {

                final PublishActivity this$0;

                public void run()
                {
                    Message message = handler.obtainMessage();
                    message.what = 0;
                    handler.sendMessage(message);
                }

            
            {
                this$0 = PublishActivity.this;
                super();
            }
            }, 500L);
            return;
        }
        if (true) goto _L1; else goto _L8
_L8:
        (new Thread(new Runnable() {

            final PublishActivity this$0;

            public void run()
            {
                Looper.prepare();
                Message message = handler.obtainMessage();
                message.what = 15;
                if (mLocation == null)
                {
                    mLocation = Util.getLocation(context);
                    if (mLocation != null)
                    {
                        message.what = 10;
                    }
                }
                handler.sendMessage(message);
                Looper.loop();
            }

            
            {
                this$0 = PublishActivity.this;
                super();
            }
        })).start();
        return;
_L9:
        frameLayout_icon.setVisibility(4);
        frameLayout_big.setVisibility(8);
        return;
_L10:
        edstring = editText_text.getText().toString();
        startActivityForResult(new Intent("android.media.action.IMAGE_CAPTURE"), 2000);
        return;
_L11:
        edstring = editText_text.getText().toString();
        startActivityForResult(new Intent("android.intent.action.PICK", android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI), 1000);
        return;
_L12:
        if (popupWindow != null && popupWindow.isShowing())
        {
            popupWindow.dismiss();
            editText_text.requestFocus();
            (new Timer()).schedule(new TimerTask() {

                final PublishActivity this$0;
                private final InputMethodManager val$imm;

                public void run()
                {
                    if (imm.isActive())
                    {
                        imm.toggleSoftInput(0, 2);
                    }
                }

            
            {
                this$0 = PublishActivity.this;
                imm = inputmethodmanager;
                super();
            }
            }, 100L);
            return;
        }
        if (true) goto _L1; else goto _L13
_L13:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        accessToken = Util.getSharePersistent(getApplicationContext(), "ACCESS_TOKEN");
        if (accessToken == null || "".equals(accessToken))
        {
            Toast.makeText(this, "\u8BF7\u5148\u6388\u6743", 0).show();
            finish();
            return;
        } else
        {
            context = getApplicationContext();
            weiboAPI = new WeiboAPI(new AccountModel(accessToken));
            lyout[0] = BackGroudSeletor.getdrawble("test2x", this).getMinimumWidth();
            lyout[1] = BackGroudSeletor.getdrawble("test2x", this).getMinimumHeight();
            bundle = (LinearLayout)initview();
            dialog = new ProgressDialog(this);
            dialog.setMessage("\u6B63\u5728\u53D1\u9001\u8BF7\u7A0D\u540E......");
            setContentView(bundle);
            setonclick();
            (new Timer()).schedule(new TimerTask() {

                final PublishActivity this$0;

                public void run()
                {
                    ((InputMethodManager)getSystemService("input_method")).showSoftInput(editText_text, 2);
                }

            
            {
                this$0 = PublishActivity.this;
                super();
            }
            }, 400L);
            return;
        }
    }

    public void onResult(Object obj)
    {
        ModelResult modelresult;
label0:
        {
            if (dialog != null && dialog.isShowing())
            {
                dialog.dismiss();
            }
            if (obj != null)
            {
                modelresult = (ModelResult)obj;
                if (!modelresult.isExpires())
                {
                    break label0;
                }
                Toast.makeText(this, modelresult.getError_message(), 0).show();
            }
            return;
        }
        if (modelresult.isSuccess())
        {
            Toast.makeText(this, "\u53D1\u9001\u6210\u529F", 4000).show();
            Log.d("\u53D1\u9001\u6210\u529F", obj.toString());
            finish();
            return;
        } else
        {
            Toast.makeText(this, ((ModelResult)obj).getError_message(), 4000).show();
            return;
        }
    }

    protected void onResume()
    {
        super.onResume();
        final InputMethodManager imm = (InputMethodManager)getSystemService("input_method");
        if (popupWindow != null && popupWindow.isShowing())
        {
            Log.d("mkl", (new StringBuilder(String.valueOf(imm.isActive()))).toString());
            imm.hideSoftInputFromWindow(editText_text.getWindowToken(), 0);
        } else
        {
            (new Timer()).schedule(new TimerTask() {

                final PublishActivity this$0;
                private final InputMethodManager val$imm;

                public void run()
                {
                    imm.showSoftInput(editText_text, 2);
                }

            
            {
                this$0 = PublishActivity.this;
                imm = inputmethodmanager;
                super();
            }
            }, 400L);
        }
        if (location != null)
        {
            button_location.setBackgroundDrawable(BackGroudSeletor.getdrawble("dingwei_icon_hover2x", this));
            return;
        } else
        {
            button_location.setBackgroundDrawable(BackGroudSeletor.getdrawble("dingwei_icon2x", this));
            return;
        }
    }

    public Bitmap zoomImage(Bitmap bitmap, double d, double d1)
    {
        float f = bitmap.getWidth();
        float f1 = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale((float)d / f, (float)d1 / f1);
        return Bitmap.createBitmap(bitmap, 0, 0, (int)f, (int)f1, matrix, true);
    }












}
