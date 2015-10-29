// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.classic;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import cn.sharesdk.framework.CustomPlatform;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.TitleLayout;
import cn.sharesdk.onekeyshare.EditPageFakeActivity;
import cn.sharesdk.onekeyshare.PicViewer;
import cn.sharesdk.onekeyshare.ShareCore;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.R;
import com.mob.tools.utils.UIHandler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package cn.sharesdk.onekeyshare.theme.classic:
//            FollowListPage

public class EditPage extends EditPageFakeActivity
    implements android.view.View.OnClickListener, TextWatcher
{

    private static final int DIM_COLOR = 0x7f323232;
    private static final int MAX_TEXT_COUNT = 140;
    private Drawable background;
    private EditText etContent;
    private Bitmap image;
    private cn.sharesdk.onekeyshare.EditPageFakeActivity.ImageInfo imgInfo;
    private ImageView ivImage;
    private ImageView ivPin;
    private LinearLayout llBody;
    private LinearLayout llPlat;
    private TitleLayout llTitle;
    private Platform platformList[];
    private ProgressBar progressBar;
    private RelativeLayout rlPage;
    private RelativeLayout rlThumb;
    private TextView tvCounter;
    private View views[];

    public EditPage()
    {
    }

    private void genBackground()
    {
        background = new ColorDrawable(0x7f323232);
        if (backgroundView == null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        Bitmap bitmap = BitmapHelper.blur(BitmapHelper.captureView(backgroundView, backgroundView.getWidth(), backgroundView.getHeight()), 20, 8);
        background = new LayerDrawable(new Drawable[] {
            new BitmapDrawable(activity.getResources(), bitmap), background
        });
        return;
        Throwable throwable;
        throwable;
        throwable.printStackTrace();
        return;
    }

    private LinearLayout getAtLine(String s)
    {
        if (!isShowAtUserLayout(s))
        {
            return null;
        }
        LinearLayout linearlayout = new LinearLayout(getContext());
        Object obj = new android.widget.LinearLayout.LayoutParams(-2, -2);
        obj.rightMargin = R.dipToPx(getContext(), 4);
        obj.gravity = 83;
        obj.weight = 1.0F;
        linearlayout.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        linearlayout.setOnClickListener(new android.view.View.OnClickListener() );
        obj = new TextView(getContext());
        int i = R.getBitmapRes(activity, "btn_back_nor");
        if (i > 0)
        {
            ((TextView) (obj)).setBackgroundResource(i);
        }
        i = R.dipToPx(getContext(), 32);
        ((TextView) (obj)).setLayoutParams(new LayoutParams(i, i));
        ((TextView) (obj)).setTextSize(1, 18F);
        ((TextView) (obj)).setText(getAtUserButtonText(s));
        ((TextView) (obj)).setPadding(0, 0, 0, R.dipToPx(getContext(), 2));
        ((TextView) (obj)).setTypeface(Typeface.DEFAULT_BOLD);
        ((TextView) (obj)).setTextColor(0xff000000);
        ((TextView) (obj)).setGravity(17);
        linearlayout.addView(((View) (obj)));
        obj = new TextView(getContext());
        ((TextView) (obj)).setTextSize(1, 18F);
        ((TextView) (obj)).setTextColor(0xff000000);
        i = R.getStringRes(activity, "list_friends");
        ((TextView) (obj)).setText(getContext().getString(i, new Object[] {
            getName(s)
        }));
        s = new LayoutParams(-2, -2);
        s.gravity = 16;
        ((TextView) (obj)).setLayoutParams(s);
        linearlayout.addView(((View) (obj)));
        return linearlayout;
    }

    private LinearLayout getBodyBottom()
    {
        LinearLayout linearlayout = new LinearLayout(getContext());
        linearlayout.setLayoutParams(new LayoutParams(-1, -2));
        Object obj = getAtLine(((Platform)platforms.get(0)).getName());
        if (obj != null)
        {
            linearlayout.addView(((View) (obj)));
        }
        tvCounter = new TextView(getContext());
        tvCounter.setText(String.valueOf(140));
        tvCounter.setTextColor(0xffcfcfcf);
        tvCounter.setTextSize(1, 18F);
        tvCounter.setTypeface(Typeface.DEFAULT_BOLD);
        obj = new LayoutParams(-2, -2);
        obj.gravity = 16;
        tvCounter.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        linearlayout.addView(tvCounter);
        return linearlayout;
    }

    private ImageView getImagePin()
    {
        ivPin = new ImageView(getContext());
        int i = R.getBitmapRes(activity, "pin");
        if (i > 0)
        {
            ivPin.setImageResource(i);
        }
        android.widget.RelativeLayout.LayoutParams layoutparams = new LayoutParams(R.dipToPx(getContext(), 80), R.dipToPx(getContext(), 36));
        layoutparams.topMargin = R.dipToPx(getContext(), 6);
        layoutparams.addRule(6, llBody.getId());
        layoutparams.addRule(11);
        ivPin.setLayoutParams(layoutparams);
        ivPin.setVisibility(8);
        return ivPin;
    }

    private LinearLayout getMainBody()
    {
        LinearLayout linearlayout = new LinearLayout(getContext());
        linearlayout.setOrientation(1);
        Object obj = new LayoutParams(-1, -2);
        obj.weight = 1.0F;
        int i = R.dipToPx(getContext(), 4);
        ((android.widget.LinearLayout.LayoutParams) (obj)).setMargins(i, i, i, i);
        linearlayout.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        obj = new LinearLayout(getContext());
        android.widget.LinearLayout.LayoutParams layoutparams = new LayoutParams(-1, -2);
        layoutparams.weight = 1.0F;
        linearlayout.addView(((View) (obj)), layoutparams);
        etContent = new EditText(getContext());
        etContent.setGravity(51);
        etContent.setBackgroundDrawable(null);
        etContent.setText(String.valueOf(shareParamMap.get("text")));
        etContent.addTextChangedListener(this);
        layoutparams = new LayoutParams(-2, -2);
        layoutparams.weight = 1.0F;
        etContent.setLayoutParams(layoutparams);
        ((LinearLayout) (obj)).addView(etContent);
        ((LinearLayout) (obj)).addView(getThumbView());
        linearlayout.addView(getBodyBottom());
        return linearlayout;
    }

    private String getName(String s)
    {
        if (s == null)
        {
            return "";
        } else
        {
            int i = R.getStringRes(getContext(), s.toLowerCase());
            return getContext().getString(i);
        }
    }

    private LinearLayout getPageBody()
    {
        llBody = new LinearLayout(getContext());
        llBody.setId(2);
        int i = R.getBitmapRes(activity, "edittext_back");
        if (i > 0)
        {
            llBody.setBackgroundResource(i);
        }
        llBody.setOrientation(1);
        android.widget.RelativeLayout.LayoutParams layoutparams = new LayoutParams(-2, -2);
        layoutparams.addRule(5, llTitle.getId());
        layoutparams.addRule(3, llTitle.getId());
        layoutparams.addRule(7, llTitle.getId());
        if (!dialogMode)
        {
            layoutparams.addRule(12);
        }
        i = R.dipToPx(getContext(), 3);
        layoutparams.setMargins(i, i, i, i);
        llBody.setLayoutParams(layoutparams);
        llBody.addView(getMainBody());
        llBody.addView(getSep());
        llBody.addView(getPlatformList());
        return llBody;
    }

    private TitleLayout getPageTitle()
    {
        llTitle = new TitleLayout(getContext());
        llTitle.setId(1);
        llTitle.getBtnBack().setOnClickListener(this);
        int i = R.getStringRes(activity, "multi_share");
        if (i > 0)
        {
            llTitle.getTvTitle().setText(i);
        }
        llTitle.getBtnRight().setVisibility(0);
        i = R.getStringRes(activity, "share");
        if (i > 0)
        {
            llTitle.getBtnRight().setText(i);
        }
        llTitle.getBtnRight().setOnClickListener(this);
        android.widget.RelativeLayout.LayoutParams layoutparams = new LayoutParams(-2, -2);
        layoutparams.addRule(9);
        layoutparams.addRule(10);
        layoutparams.addRule(11);
        llTitle.setLayoutParams(layoutparams);
        return llTitle;
    }

    private RelativeLayout getPageView()
    {
        rlPage = new RelativeLayout(getContext());
        rlPage.setBackgroundDrawable(background);
        if (dialogMode)
        {
            RelativeLayout relativelayout = new RelativeLayout(getContext());
            relativelayout.setBackgroundColor(0xc0323232);
            int i = R.dipToPx(getContext(), 8);
            android.widget.RelativeLayout.LayoutParams layoutparams = new LayoutParams(R.getScreenWidth(getContext()) - i * 2, -2);
            layoutparams.topMargin = i;
            layoutparams.bottomMargin = i;
            layoutparams.addRule(13);
            relativelayout.setLayoutParams(layoutparams);
            rlPage.addView(relativelayout);
            relativelayout.addView(getPageTitle());
            relativelayout.addView(getPageBody());
            relativelayout.addView(getImagePin());
        } else
        {
            rlPage.addView(getPageTitle());
            rlPage.addView(getPageBody());
            rlPage.addView(getImagePin());
        }
        return rlPage;
    }

    private Bitmap getPlatLogo(Platform platform)
    {
        if (platform != null && platform.getName() != null)
        {
            platform = (new StringBuilder("logo_")).append(platform.getName()).toString();
            int i = R.getBitmapRes(activity, platform.toLowerCase());
            if (i > 0)
            {
                return BitmapFactory.decodeResource(activity.getResources(), i);
            }
        }
        return null;
    }

    private LinearLayout getPlatformList()
    {
        LinearLayout linearlayout = new LinearLayout(getContext());
        linearlayout.setLayoutParams(new LayoutParams(-1, -2));
        Object obj = new TextView(getContext());
        int i = R.getStringRes(activity, "share_to");
        if (i > 0)
        {
            ((TextView) (obj)).setText(i);
        }
        ((TextView) (obj)).setTextColor(0xffcfcfcf);
        ((TextView) (obj)).setTextSize(1, 18F);
        i = R.dipToPx(getContext(), 9);
        android.widget.LinearLayout.LayoutParams layoutparams = new LayoutParams(-2, -2);
        layoutparams.gravity = 16;
        layoutparams.setMargins(i, 0, 0, 0);
        ((TextView) (obj)).setLayoutParams(layoutparams);
        linearlayout.addView(((View) (obj)));
        obj = new HorizontalScrollView(getContext());
        ((HorizontalScrollView) (obj)).setHorizontalScrollBarEnabled(false);
        ((HorizontalScrollView) (obj)).setHorizontalFadingEdgeEnabled(false);
        layoutparams = new LayoutParams(-2, -2);
        layoutparams.setMargins(i, i, i, i);
        ((HorizontalScrollView) (obj)).setLayoutParams(layoutparams);
        linearlayout.addView(((View) (obj)));
        llPlat = new LinearLayout(getContext());
        llPlat.setLayoutParams(new LayoutParams(-2, -1));
        ((HorizontalScrollView) (obj)).addView(llPlat);
        return linearlayout;
    }

    private View getSep()
    {
        View view = new View(getContext());
        view.setBackgroundColor(0xff000000);
        view.setLayoutParams(new LayoutParams(-1, R.dipToPx(getContext(), 1)));
        return view;
    }

    private RelativeLayout getThumbView()
    {
        rlThumb = new RelativeLayout(getContext());
        rlThumb.setId(1);
        Object obj = new LayoutParams(R.dipToPx(getContext(), 82), R.dipToPx(getContext(), 98));
        rlThumb.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        ivImage = new ImageView(getContext());
        int i = R.getBitmapRes(activity, "btn_back_nor");
        if (i > 0)
        {
            ivImage.setBackgroundResource(i);
        }
        ivImage.setScaleType(android.widget.ImageView.ScaleType.CENTER_INSIDE);
        ivImage.setImageBitmap(image);
        i = R.dipToPx(getContext(), 4);
        ivImage.setPadding(i, i, i, i);
        i = R.dipToPx(getContext(), 74);
        obj = new LayoutParams(i, i);
        int j = R.dipToPx(getContext(), 16);
        int k = R.dipToPx(getContext(), 8);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).setMargins(0, j, k, 0);
        ivImage.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        ivImage.setOnClickListener(new android.view.View.OnClickListener() );
        rlThumb.addView(ivImage);
        int l = R.dipToPx(getContext(), 24);
        progressBar = new ProgressBar(getContext());
        progressBar.setPadding(l, l, l, l);
        obj = new LayoutParams(i, i);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).setMargins(0, j, k, 0);
        progressBar.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        rlThumb.addView(progressBar);
        obj = new Button(getContext());
        ((Button) (obj)).setOnClickListener(new android.view.View.OnClickListener() {

            final EditPage this$0;

            public void onClick(View view)
            {
                rlThumb.setVisibility(8);
                ivPin.setVisibility(8);
                removeImage(imgInfo);
            }

            
            {
                this$0 = EditPage.this;
                super();
            }
        });
        i = R.getBitmapRes(activity, "img_cancel");
        if (i > 0)
        {
            ((Button) (obj)).setBackgroundResource(i);
        }
        i = R.dipToPx(getContext(), 20);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(i, i);
        layoutparams.addRule(11);
        layoutparams.addRule(12);
        ((Button) (obj)).setLayoutParams(layoutparams);
        rlThumb.addView(((View) (obj)));
        if (!haveImage())
        {
            rlThumb.setVisibility(8);
        }
        return rlThumb;
    }

    private void hideSoftInput()
    {
        try
        {
            ((InputMethodManager)activity.getSystemService("input_method")).hideSoftInputFromWindow(etContent.getWindowToken(), 0);
            return;
        }
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
        }
    }

    private void showThumb()
    {
        initImageList(new cn.sharesdk.onekeyshare.EditPageFakeActivity.ImageListResultsCallback() {

            final EditPage this$0;

            public void onFinish(ArrayList arraylist)
            {
                if (arraylist == null || arraylist.size() == 0)
                {
                    return;
                } else
                {
                    imgInfo = (cn.sharesdk.onekeyshare.EditPageFakeActivity.ImageInfo)arraylist.get(0);
                    image = imgInfo.bitmap;
                    rlThumb.setVisibility(0);
                    ivPin.setVisibility(0);
                    progressBar.setVisibility(8);
                    ivImage.setImageBitmap(image);
                    return;
                }
            }

            
            {
                this$0 = EditPage.this;
                super();
            }
        });
    }

    public void afterPlatformListGot()
    {
        android.widget.LinearLayout.LayoutParams layoutparams;
        android.widget.FrameLayout.LayoutParams layoutparams1;
        int i;
        int j;
        final int postSel;
        final int dp_24;
        final int dp_9;
        if (platformList == null)
        {
            j = 0;
        } else
        {
            j = platformList.length;
        }
        views = new View[j];
        dp_24 = R.dipToPx(getContext(), 24);
        layoutparams = new android.widget.LinearLayout.LayoutParams(dp_24, dp_24);
        dp_9 = R.dipToPx(getContext(), 9);
        layoutparams.setMargins(0, 0, dp_9, 0);
        layoutparams1 = new android.widget.FrameLayout.LayoutParams(-1, -1);
        layoutparams1.gravity = 51;
        postSel = 0;
        i = 0;
_L2:
        if (i >= j)
        {
            UIHandler.sendEmptyMessageDelayed(0, 333L, new android.os.Handler.Callback() {

                final EditPage this$0;
                private final int val$dp_24;
                private final int val$dp_9;
                private final int val$postSel;

                public boolean handleMessage(Message message)
                {
                    ((HorizontalScrollView)llPlat.getParent()).scrollTo(postSel * (dp_24 + dp_9), 0);
                    return false;
                }

            
            {
                this$0 = EditPage.this;
                postSel = i;
                dp_24 = j;
                dp_9 = k;
                super();
            }
            });
            return;
        }
        FrameLayout framelayout = new FrameLayout(getContext());
        framelayout.setLayoutParams(layoutparams);
        if (i >= j - 1)
        {
            framelayout.setLayoutParams(new android.widget.LinearLayout.LayoutParams(dp_24, dp_24));
        }
        llPlat.addView(framelayout);
        framelayout.setOnClickListener(this);
        Object obj = new ImageView(getContext());
        ((ImageView) (obj)).setScaleType(android.widget.ImageView.ScaleType.CENTER_INSIDE);
        ((ImageView) (obj)).setImageBitmap(getPlatLogo(platformList[i]));
        ((ImageView) (obj)).setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
        framelayout.addView(((View) (obj)));
        views[i] = new View(getContext());
        views[i].setBackgroundColor(0xcfffffff);
        views[i].setOnClickListener(this);
        obj = platformList[i].getName();
        Iterator iterator = platforms.iterator();
        do
        {
label0:
            {
                if (iterator.hasNext())
                {
                    break label0;
                }
                views[i].setLayoutParams(layoutparams1);
                framelayout.addView(views[i]);
                i++;
            }
            if (true)
            {
                continue;
            }
            if (((String) (obj)).equals(((Platform)iterator.next()).getName()))
            {
                views[i].setVisibility(4);
                postSel = i;
            }
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onClick(View view)
    {
        if (!view.equals(llTitle.getBtnBack())) goto _L2; else goto _L1
_L1:
        int i;
        view = null;
        i = 0;
_L3:
        if (i < views.length)
        {
label0:
            {
                if (views[i].getVisibility() != 4)
                {
                    break label0;
                }
                view = platformList[i];
            }
        }
_L5:
        if (view != null)
        {
            ShareSDK.logDemoEvent(5, view);
        }
        finish();
_L4:
        return;
        i++;
          goto _L3
_L2:
label1:
        {
            if (!view.equals(llTitle.getBtnRight()))
            {
                break label1;
            }
            view = etContent.getText().toString();
            shareParamMap.put("text", view);
            platforms.clear();
            int j = 0;
            do
            {
                if (j >= views.length)
                {
                    if (platforms.size() > 0)
                    {
                        setResultAndFinish();
                        return;
                    }
                    break;
                }
                if (views[j].getVisibility() != 0)
                {
                    platforms.add(platformList[j]);
                }
                j++;
            } while (true);
            j = R.getStringRes(activity, "select_one_plat_at_least");
            if (j > 0)
            {
                Toast.makeText(getContext(), j, 0).show();
                return;
            }
        }
          goto _L4
        if (view instanceof FrameLayout)
        {
            ((FrameLayout)view).getChildAt(1).performClick();
            return;
        }
        if (view.getVisibility() == 4)
        {
            view.setVisibility(0);
            return;
        }
        view.setVisibility(4);
        return;
          goto _L5
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        if (activity.getResources().getConfiguration().orientation == 2)
        {
            hideSoftInput();
            activity.getWindow().setSoftInputMode(35);
            rlPage.setBackgroundColor(0x7f323232);
            rlPage.postDelayed(new Runnable() {

                final EditPage this$0;

                public void run()
                {
                    genBackground();
                    rlPage.setBackgroundDrawable(background);
                }

            
            {
                this$0 = EditPage.this;
                super();
            }
            }, 1000L);
            return;
        } else
        {
            hideSoftInput();
            activity.getWindow().setSoftInputMode(37);
            rlPage.setBackgroundColor(0x7f323232);
            rlPage.postDelayed(new Runnable() {

                final EditPage this$0;

                public void run()
                {
                    genBackground();
                    rlPage.setBackgroundDrawable(background);
                }

            
            {
                this$0 = EditPage.this;
                super();
            }
            }, 1000L);
            return;
        }
    }

    public void onCreate()
    {
        if (shareParamMap == null || platforms == null || platforms.size() < 1)
        {
            finish();
            return;
        } else
        {
            genBackground();
            activity.setContentView(getPageView());
            onTextChanged(etContent.getText(), 0, etContent.length(), 0);
            showThumb();
            (new Thread() {

                final EditPage this$0;

                public void run()
                {
                    Object obj;
                    Platform aplatform[];
                    int i;
                    int j;
                    try
                    {
                        platformList = ShareSDK.getPlatformList();
                        if (platformList == null)
                        {
                            return;
                        }
                    }
                    // Misplaced declaration of an exception variable
                    catch (Object obj)
                    {
                        ((Throwable) (obj)).printStackTrace();
                        return;
                    }
                    obj = new ArrayList();
                    aplatform = platformList;
                    j = aplatform.length;
                    i = 0;
_L7:
                    if (i < j) goto _L2; else goto _L1
_L1:
                    platformList = new Platform[((ArrayList) (obj)).size()];
                    i = 0;
_L5:
                    if (i >= platformList.length)
                    {
                        UIHandler.sendEmptyMessage(1, new android.os.Handler.Callback() {

                            final _cls1 this$1;

                            public boolean handleMessage(Message message)
                            {
                                afterPlatformListGot();
                                return false;
                            }

            
            {
                this$1 = _cls1.this;
                super();
            }
                        });
                        return;
                    }
                      goto _L3
_L2:
                    Platform platform = aplatform[i];
                    String s = platform.getName();
                    if ((platform instanceof CustomPlatform) || ShareCore.isUseClientToShare(s))
                    {
                        break; /* Loop/switch isn't completed */
                    }
                    ((ArrayList) (obj)).add(platform);
                    break; /* Loop/switch isn't completed */
_L3:
                    platformList[i] = (Platform)((ArrayList) (obj)).get(i);
                    i++;
                    if (true) goto _L5; else goto _L4
_L4:
                    i++;
                    if (true) goto _L7; else goto _L6
_L6:
                }


            
            {
                this$0 = EditPage.this;
                super();
            }
            }).start();
            return;
        }
    }

    public boolean onFinish()
    {
        hideSoftInput();
        return super.onFinish();
    }

    public void onResult(HashMap hashmap)
    {
        hashmap = getJoinSelectedUser(hashmap);
        if (hashmap != null)
        {
            etContent.append(hashmap);
        }
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        i = 140 - etContent.length();
        tvCounter.setText(String.valueOf(i));
        charsequence = tvCounter;
        if (i > 0)
        {
            i = 0xffcfcfcf;
        } else
        {
            i = 0xffff0000;
        }
        charsequence.setTextColor(i);
    }

    public void setActivity(Activity activity)
    {
        super.setActivity(activity);
        Window window = activity.getWindow();
        if (activity.getResources().getConfiguration().orientation == 2)
        {
            window.setSoftInputMode(35);
            return;
        } else
        {
            window.setSoftInputMode(37);
            return;
        }
    }

















}
