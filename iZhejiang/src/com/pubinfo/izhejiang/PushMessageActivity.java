// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.cat.adapter.MessageListAdapter;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import com.cat.parase.PushListParser;
import com.pubinfo.izhejiang.controller.PushMessageFun;
import java.util.List;

public class PushMessageActivity extends PushMessageFun
{

    private static boolean push_isClicked = false;
    String authid;
    ImageButton backButton;
    LinearLayout confirmButton;
    String countrycode;
    LinearLayout layout1;
    private Handler mainHandler;
    MessageListAdapter msgAdapter;
    TextView title;
    ListView wifiLView;

    public PushMessageActivity()
    {
        mainHandler = null;
    }

    private void goLoading()
    {
        wifiLView.setVisibility(8);
        layout1.setVisibility(8);
    }

    private void goNoMsg()
    {
        wifiLView.setVisibility(8);
        layout1.setVisibility(0);
    }

    private void initialHandler()
    {
        mainHandler = new Handler(new android.os.Handler.Callback() {

            final PushMessageActivity this$0;

            public boolean handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1 4: default 36
            //                           1 38
            //                           2 121
            //                           3 157
            //                           4 238;
                   goto _L1 _L2 _L3 _L4 _L5
_L1:
                return true;
_L2:
                if (checkNetWork())
                {
                    goLoading();
                    getPushlist(authid, countrycode, getApplicationContext());
                    return true;
                } else
                {
                    goNoMsg();
                    showMsgToast(getString(0x7f060032));
                    hideLoading();
                    PushMessageActivity.push_isClicked = true;
                    return true;
                }
_L3:
                goNoMsg();
                hideLoading();
                showMsgToast(getString(0x7f060031));
                PushMessageActivity.push_isClicked = true;
                return true;
_L4:
                goNoMsg();
                hideLoading();
                message = ComData.getInstance().getpError();
                if (message == null || message.size() <= 0) goto _L7; else goto _L6
_L6:
                int i = 0;
_L9:
                if (i < message.size()) goto _L8; else goto _L7
_L7:
                PushMessageActivity.push_isClicked = true;
                return true;
_L8:
                String s = ((PublicError)message.get(i)).getMessage();
                showMsgToast(s);
                i++;
                  goto _L9
_L5:
                PushMessageActivity.push_isClicked = true;
                hideLoading();
                message = ComData.getInstance().getPushListData();
                if (message.size() > 0)
                {
                    wifiLView.setVisibility(0);
                    msgAdapter = new MessageListAdapter(getApplicationContext(), message);
                    wifiLView.setAdapter(msgAdapter);
                    return true;
                } else
                {
                    goNoMsg();
                    return true;
                }
            }

            
            {
                this$0 = PushMessageActivity.this;
                super();
            }
        });
    }

    public void doPushListErr(String s)
    {
        mainHandler.sendEmptyMessage(2);
    }

    public void doPushListSucc(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        Object obj;
        obj = PushListParser.Pushlistparaser(s);
        if (!s.contains("OK"))
        {
            ComData.getInstance().setpError((List)obj);
            mainHandler.sendEmptyMessage(3);
            return;
        }
        try
        {
            ComData.getInstance().setPushListData((List)obj);
            mainHandler.sendEmptyMessage(4);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            hideLoading();
        }
        goNoMsg();
        push_isClicked = true;
        return;
        mainHandler.sendEmptyMessage(2);
        return;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030027);
        ll_pageInnerLoading = (LinearLayout)findViewById(0x7f0a0029);
        iv_pageInnerLoading = (ImageView)ll_pageInnerLoading.findViewById(0x7f0a00a4);
        iv_pageInnerLoading.measure(0, 0);
        msInnerLoadingAnim = (AnimationDrawable)iv_pageInnerLoading.getBackground();
        initialHandler();
        bundle = getSharedPreferences("LoginSucess", 0);
        authid = bundle.getString("username", "");
        countrycode = bundle.getString("countrycode", "");
        wifiLView = (ListView)findViewById(0x7f0a00a6);
        wifiLView.setDivider(null);
        backButton = (ImageButton)findViewById(0x7f0a002c);
        confirmButton = (LinearLayout)findViewById(0x7f0a002e);
        layout1 = (LinearLayout)findViewById(0x7f0a0044);
        title = (TextView)findViewById(0x7f0a002d);
        title.setText("\u6D88\u606F");
        confirmButton.setVisibility(8);
        bundle = new android.view.View.OnClickListener() {

            final PushMessageActivity this$0;

            public void onClick(View view)
            {
                view.getId();
                JVM INSTR tableswitch 2131361836 2131361836: default 24
            //                           2131361836 25;
                   goto _L1 _L2
_L1:
                return;
_L2:
                if (PushMessageActivity.push_isClicked)
                {
                    view = new Intent();
                    setResult(4, view);
                    finish();
                    return;
                }
                if (true) goto _L1; else goto _L3
_L3:
            }

            
            {
                this$0 = PushMessageActivity.this;
                super();
            }
        };
        backButton.setOnClickListener(bundle);
        mainHandler.sendEmptyMessage(1);
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
