// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.skyblue;

import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.onekeyshare.EditPageFakeActivity;
import cn.sharesdk.onekeyshare.PicViewer;
import com.mob.tools.utils.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package cn.sharesdk.onekeyshare.theme.skyblue:
//            FollowListPage

public class EditPage extends EditPageFakeActivity
    implements android.view.View.OnClickListener, TextWatcher
{

    private static final int MAX_TEXT_COUNT = 140;
    private TextView textCounterTextView;
    private EditText textEditText;
    private EditText titleEditText;

    public EditPage()
    {
    }

    private void initAtUserView()
    {
        LinearLayout linearlayout = (LinearLayout)findViewByResName("atLayout");
        Iterator iterator = platforms.iterator();
        do
        {
            Platform platform;
            String s;
            do
            {
                if (!iterator.hasNext())
                {
                    return;
                }
                platform = (Platform)iterator.next();
                s = platform.getName();
            } while (!isShowAtUserLayout(s));
            View view = LayoutInflater.from(activity).inflate(R.getLayoutRes(activity, "skyblue_editpage_at_layout"), null);
            TextView textview = (TextView)view.findViewById(R.getIdRes(activity, "atDescTextView"));
            TextView textview1 = (TextView)view.findViewById(R.getIdRes(activity, "atTextView"));
            android.view.View.OnClickListener onclicklistener = new android.view.View.OnClickListener() {

                final EditPage this$0;

                public void onClick(View view1)
                {
                    FollowListPage followlistpage = new FollowListPage();
                    followlistpage.setPlatform((Platform)view1.getTag());
                    followlistpage.showForResult(
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = EditPage.this;
                super();
            }
            };
            textview1.setTag(platform);
            textview1.setOnClickListener(onclicklistener);
            textview.setTag(platform);
            textview.setOnClickListener(onclicklistener);
            textview1.setText(getAtUserButtonText(s));
            textview.setText(getContext().getString(R.getStringRes(activity, "list_friends"), new Object[] {
                getLogoName(s)
            }));
            linearlayout.addView(view);
        } while (true);
    }

    private void initBodyView()
    {
        View view = findViewByResName("closeImageView");
        view.setTag("close");
        view.setOnClickListener(this);
        if (shareParamMap.containsKey("title"))
        {
            titleEditText = (EditText)findViewByResName("titleEditText");
            titleEditText.setText(String.valueOf(shareParamMap.get("title")));
        }
        textCounterTextView = (TextView)findViewByResName("textCounterTextView");
        textCounterTextView.setText(String.valueOf(140));
        textEditText = (EditText)findViewByResName("textEditText");
        textEditText.addTextChangedListener(this);
        textEditText.setText(String.valueOf(shareParamMap.get("text")));
        initAtUserView();
    }

    private void initImageListView()
    {
        HorizontalScrollView horizontalscrollview = (HorizontalScrollView)findViewByResName("hScrollView");
        if (!initImageList(new cn.sharesdk.onekeyshare.EditPageFakeActivity.ImageListResultsCallback() {

        final EditPage this$0;

        public void onFinish(ArrayList arraylist)
        {
            if (arraylist != null)
            {
                LinearLayout linearlayout = (LinearLayout)findViewByResName("imagesLinearLayout");
                arraylist = arraylist.iterator();
                while (arraylist.hasNext()) 
                {
                    cn.sharesdk.onekeyshare.EditPageFakeActivity.ImageInfo imageinfo = (cn.sharesdk.onekeyshare.EditPageFakeActivity.ImageInfo)arraylist.next();
                    if (imageinfo.bitmap != null)
                    {
                        linearlayout.addView(makeImageItemView(imageinfo));
                    }
                }
            }
        }

            
            {
                this$0 = EditPage.this;
                super();
            }
    }))
        {
            horizontalscrollview.setVisibility(8);
        }
    }

    private void initTitleView()
    {
        View view = findViewByResName("backImageView");
        view.setTag("close");
        view.setOnClickListener(this);
        view = findViewByResName("okImageView");
        view.setTag("ok");
        view.setOnClickListener(this);
    }

    private void initView()
    {
        if (!dialogMode)
        {
            RelativeLayout relativelayout = (RelativeLayout)findViewByResName("mainRelLayout");
            android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)relativelayout.getLayoutParams();
            layoutparams.setMargins(0, 0, 0, 0);
            layoutparams.height = -1;
            relativelayout.setLayoutParams(layoutparams);
        }
        initTitleView();
        initBodyView();
        initImageListView();
    }

    private View makeImageItemView(final cn.sharesdk.onekeyshare.EditPageFakeActivity.ImageInfo imageInfo)
    {
        final View view = LayoutInflater.from(activity).inflate(R.getLayoutRes(activity, "skyblue_editpage_inc_image_layout"), null);
        Object obj = (ImageView)view.findViewById(R.getIdRes(activity, "imageView"));
        ((ImageView) (obj)).setImageBitmap(imageInfo.bitmap);
        ((ImageView) (obj)).setOnClickListener(new android.view.View.OnClickListener() {

            final EditPage this$0;
            private final cn.sharesdk.onekeyshare.EditPageFakeActivity.ImageInfo val$imageInfo;

            public void onClick(View view1)
            {
                view1 = new PicViewer();
                view1.setImageBitmap(imageInfo.bitmap);
                view1.show(bitmap, null);
            }

            
            {
                this$0 = EditPage.this;
                imageInfo = imageinfo;
                super();
            }
        });
        obj = view.findViewById(R.getIdRes(activity, "imageRemoveBtn"));
        ((View) (obj)).setTag(imageInfo);
        ((View) (obj)).setOnClickListener(new android.view.View.OnClickListener() {

            final EditPage this$0;
            private final View val$view;

            public void onClick(View view1)
            {
                view.setVisibility(8);
                removeImage((cn.sharesdk.onekeyshare.EditPageFakeActivity.ImageInfo)view1.getTag());
            }

            
            {
                this$0 = EditPage.this;
                view = view1;
                super();
            }
        });
        return view;
    }

    private void onShareButtonClick(View view)
    {
        if (shareParamMap.containsKey("title"))
        {
            view = titleEditText.getText().toString().trim();
            shareParamMap.put("title", view);
        }
        view = textEditText.getText().toString().trim();
        shareParamMap.put("text", view);
        setResultAndFinish();
    }

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onClick(View view)
    {
        if (view.getTag() != null)
        {
            String s = (String)view.getTag();
            if (s.equals("close"))
            {
                view = platforms.iterator();
                do
                {
                    if (!view.hasNext())
                    {
                        finish();
                        return;
                    }
                    ShareSDK.logDemoEvent(5, (Platform)view.next());
                } while (true);
            }
            if (s.equals("ok"))
            {
                onShareButtonClick(view);
                return;
            }
        }
    }

    public void onCreate()
    {
        if (shareParamMap == null || platforms == null)
        {
            finish();
            return;
        } else
        {
            activity.setContentView(R.getLayoutRes(activity, "skyblue_editpage"));
            initView();
            return;
        }
    }

    public boolean onFinish()
    {
        textCounterTextView = null;
        textEditText = null;
        titleEditText = null;
        return super.onFinish();
    }

    public void onResult(HashMap hashmap)
    {
        hashmap = getJoinSelectedUser(hashmap);
        if (hashmap != null)
        {
            textEditText.append(hashmap);
        }
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        i = 140 - textEditText.length();
        textCounterTextView.setText(String.valueOf(i));
        charsequence = textCounterTextView;
        if (i > 0)
        {
            i = 0xffcfcfcf;
        } else
        {
            i = 0xffff0000;
        }
        charsequence.setTextColor(i);
    }



}
