// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.ScrollingMovementMethod;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Gallery;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.weibo.sdk.android.api.WeiboAPI;
import com.tencent.weibo.sdk.android.api.adapter.GalleryAdapter;
import com.tencent.weibo.sdk.android.api.util.BackGroudSeletor;
import com.tencent.weibo.sdk.android.api.util.Util;
import com.tencent.weibo.sdk.android.model.AccountModel;
import com.tencent.weibo.sdk.android.model.ImageInfo;
import com.tencent.weibo.sdk.android.model.ModelResult;
import com.tencent.weibo.sdk.android.network.HttpCallback;
import java.util.ArrayList;
import org.json.JSONObject;

public class ReAddActivity extends Activity
{

    private String accessToken;
    private WeiboAPI api;
    private EditText content;
    private String contentStr;
    private Gallery gallery;
    private RelativeLayout galleryLayout;
    private ArrayList imageList;
    private LinearLayout layout;
    private PopupWindow loadingWindow;
    private HttpCallback mCallBack;
    private Handler mHandler;
    private String musicAuthor;
    private String musicPath;
    private String musicTitle;
    private String picPath;
    private ProgressBar progressBar;
    private TextView textView_num;
    private HttpCallback videoCallBack;
    private String videoPath;

    public ReAddActivity()
    {
        layout = null;
        content = null;
        contentStr = "";
        videoPath = "";
        picPath = "";
        musicPath = "";
        musicTitle = "";
        musicAuthor = "";
        mHandler = null;
        imageList = new ArrayList();
        loadingWindow = null;
        progressBar = null;
        galleryLayout = null;
        mCallBack = new HttpCallback() {

            final ReAddActivity this$0;

            public void onResult(Object obj)
            {
                obj = (ModelResult)obj;
                if (((ModelResult) (obj)).isExpires())
                {
                    Toast.makeText(ReAddActivity.this, ((ModelResult) (obj)).getError_message(), 0).show();
                    return;
                }
                if (((ModelResult) (obj)).isSuccess())
                {
                    Toast.makeText(ReAddActivity.this, "\u8F6C\u64AD\u6210\u529F", 0).show();
                    finish();
                    return;
                } else
                {
                    Toast.makeText(ReAddActivity.this, ((ModelResult) (obj)).getError_message(), 0).show();
                    finish();
                    return;
                }
            }

            
            {
                this$0 = ReAddActivity.this;
                super();
            }
        };
        videoCallBack = new HttpCallback() {

            final ReAddActivity this$0;

            public void onResult(Object obj)
            {
                obj = (ModelResult)obj;
                if (obj == null)
                {
                    break MISSING_BLOCK_LABEL_133;
                }
                if (((ModelResult) (obj)).isExpires() || !((ModelResult) (obj)).isSuccess())
                {
                    break MISSING_BLOCK_LABEL_126;
                }
                obj = ((JSONObject)((ModelResult) (obj)).getObj()).getJSONObject("data");
                ImageInfo imageinfo = new ImageInfo();
                imageinfo.setImagePath(((JSONObject) (obj)).getString("minipic"));
                imageinfo.setImageName(((JSONObject) (obj)).getString("title"));
                imageinfo.setPlayPath(((JSONObject) (obj)).getString("real"));
                imageList.add(imageinfo);
                obj = new GalleryAdapter(getApplicationContext(), loadingWindow, imageList);
                gallery.setAdapter(((android.widget.SpinnerAdapter) (obj)));
_L1:
                return;
                obj;
                ((Exception) (obj)).printStackTrace();
                return;
                if (loadingWindow != null && loadingWindow.isShowing())
                {
                    loadingWindow.dismiss();
                    return;
                }
                  goto _L1
            }

            
            {
                this$0 = ReAddActivity.this;
                super();
            }
        };
    }

    public View initLayout()
    {
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        Object obj1 = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        Object obj = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layout = new LinearLayout(this);
        layout.setLayoutParams(layoutparams);
        layout.setOrientation(1);
        layout.setBackgroundDrawable(BackGroudSeletor.getdrawble("readd_bg", getApplication()));
        RelativeLayout relativelayout = new RelativeLayout(this);
        relativelayout.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
        relativelayout.setBackgroundDrawable(BackGroudSeletor.getdrawble("up_bg2x", getApplication()));
        relativelayout.setGravity(0);
        obj1 = new Button(this);
        Object obj2 = getApplication();
        ((Button) (obj1)).setBackgroundDrawable(BackGroudSeletor.createBgByImageIds(new String[] {
            "quxiao_btn2x", "quxiao_btn_hover"
        }, ((android.content.Context) (obj2))));
        ((Button) (obj1)).setText("\u53D6\u6D88");
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(9, -1);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(15, -1);
        obj.topMargin = 10;
        obj.leftMargin = 10;
        obj.bottomMargin = 10;
        ((Button) (obj1)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        ((Button) (obj1)).setOnClickListener(new android.view.View.OnClickListener() {

            final ReAddActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = ReAddActivity.this;
                super();
            }
        });
        relativelayout.addView(((View) (obj1)));
        obj = new TextView(this);
        ((TextView) (obj)).setText("\u8F6C\u64AD");
        ((TextView) (obj)).setTextColor(-1);
        ((TextView) (obj)).setTextSize(24F);
        obj1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj1)).addRule(13, -1);
        ((TextView) (obj)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
        relativelayout.addView(((View) (obj)));
        obj = new Button(this);
        obj1 = getApplication();
        ((Button) (obj)).setBackgroundDrawable(BackGroudSeletor.createBgByImageIds(new String[] {
            "sent_btn2x", "sent_btn_hover"
        }, ((android.content.Context) (obj1))));
        ((Button) (obj)).setText("\u8F6C\u64AD");
        obj1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj1)).addRule(11, -1);
        ((android.widget.RelativeLayout.LayoutParams) (obj1)).addRule(15, -1);
        obj1.topMargin = 10;
        obj1.rightMargin = 10;
        obj1.bottomMargin = 10;
        ((Button) (obj)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
        ((Button) (obj)).setOnClickListener(new android.view.View.OnClickListener() {

            final ReAddActivity this$0;

            public void onClick(View view)
            {
                reAddWeibo();
            }

            
            {
                this$0 = ReAddActivity.this;
                super();
            }
        });
        relativelayout.addView(((View) (obj)));
        obj1 = new RelativeLayout(this);
        ((RelativeLayout) (obj1)).setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, 240));
        obj2 = new RelativeLayout(this);
        obj = new android.widget.RelativeLayout.LayoutParams(440, -1);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(13);
        obj.topMargin = 50;
        ((RelativeLayout) (obj2)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        ((RelativeLayout) (obj2)).setBackgroundDrawable(BackGroudSeletor.getdrawble("input_bg", getApplication()));
        textView_num = new TextView(this);
        TextView textview = textView_num;
        if (contentStr == null)
        {
            obj = "140";
        } else
        {
            obj = String.valueOf(140 - contentStr.length());
        }
        textview.setText(((CharSequence) (obj)));
        textView_num.setTextColor(Color.parseColor("#999999"));
        textView_num.setGravity(5);
        textView_num.setTextSize(18F);
        obj = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(12, -1);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(11, -1);
        obj.rightMargin = 10;
        textView_num.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        ((RelativeLayout) (obj2)).addView(textView_num);
        content = new EditText(this);
        obj = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(14);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(10);
        content.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        content.setMaxLines(4);
        content.setMinLines(4);
        content.setScrollbarFadingEnabled(true);
        content.setGravity(48);
        content.setMovementMethod(ScrollingMovementMethod.getInstance());
        content.setText(contentStr);
        content.setSelection(contentStr.length());
        content.setBackgroundDrawable(null);
        content.addTextChangedListener(new TextWatcher() {

            private int selectionEnd;
            private int selectionStart;
            private CharSequence temp;
            final ReAddActivity this$0;

            public void afterTextChanged(Editable editable)
            {
                selectionStart = content.getSelectionStart();
                selectionEnd = content.getSelectionEnd();
                if (temp.length() > 140)
                {
                    Toast.makeText(ReAddActivity.this, "\u6700\u591A\u53EF\u8F93\u5165140\u5B57\u7B26", 0).show();
                    editable.delete(selectionStart - 1, selectionEnd);
                    int i = selectionStart;
                    content.setText(editable);
                    content.setSelection(i);
                    return;
                } else
                {
                    textView_num.setText(String.valueOf(140 - editable.length()));
                    return;
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                temp = charsequence;
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            
            {
                this$0 = ReAddActivity.this;
                super();
            }
        });
        ((RelativeLayout) (obj2)).addView(content);
        ((RelativeLayout) (obj1)).addView(((View) (obj2)));
        galleryLayout = new RelativeLayout(this);
        galleryLayout.setLayoutParams(layoutparams);
        gallery = new Gallery(this);
        obj = new android.widget.RelativeLayout.LayoutParams(303, 203);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(14, -1);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(10, -1);
        obj.topMargin = 50;
        gallery.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        gallery.setBackgroundDrawable(BackGroudSeletor.getdrawble("pic_biankuang2x", getApplication()));
        requestForGallery();
        galleryLayout.addView(gallery);
        layout.addView(relativelayout);
        layout.addView(((View) (obj1)));
        if (picPath != null && !"".equals(picPath) && videoPath != null && !"".equals(videoPath))
        {
            layout.addView(galleryLayout);
        }
        return layout;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getWindow().setFlags(1024, 1024);
        requestWindowFeature(1);
        bundle = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(bundle);
        BackGroudSeletor.setPix((new StringBuilder(String.valueOf(((DisplayMetrics) (bundle)).widthPixels))).append("x").append(((DisplayMetrics) (bundle)).heightPixels).toString());
        accessToken = Util.getSharePersistent(getApplicationContext(), "ACCESS_TOKEN");
        if (accessToken == null || "".equals(accessToken))
        {
            Toast.makeText(this, "\u8BF7\u5148\u6388\u6743", 0).show();
            finish();
            return;
        }
        bundle = getIntent().getExtras();
        if (bundle != null)
        {
            contentStr = bundle.getString("content");
            videoPath = bundle.getString("video_url");
            picPath = bundle.getString("pic_url");
            musicPath = bundle.getString("music_url");
            musicTitle = bundle.getString("music_title");
            musicAuthor = bundle.getString("music_author");
        }
        api = new WeiboAPI(new AccountModel(accessToken));
        setContentView(initLayout());
    }

    protected void reAddWeibo()
    {
        contentStr = content.getText().toString();
        api.reAddWeibo(getApplicationContext(), contentStr, picPath, videoPath, musicPath, musicTitle, musicAuthor, mCallBack, null, 4);
    }

    public ArrayList requestForGallery()
    {
        if (picPath != null)
        {
            ImageInfo imageinfo = new ImageInfo();
            imageinfo.setImagePath(picPath);
            imageList.add(imageinfo);
        }
        if (videoPath != null)
        {
            new ImageInfo();
            api.getVideoInfo(getApplicationContext(), videoPath, videoCallBack, null, 4);
        }
        return imageList;
    }





}
