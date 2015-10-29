// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor.dialogs;

import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.hardware.SensorEvent;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.ShareType;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMShareMsg;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.sensor.controller.UMShakeService;
import com.umeng.socom.DeviceConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class UMShareScrShotDialog extends Dialog
    implements android.view.View.OnClickListener
{

    private static com.umeng.socialize.sensor.UMSensor.OnSensorListener mInternalListener = new com.umeng.socialize.sensor.UMSensor.OnSensorListener() {

        public void onActionComplete(SensorEvent sensorevent)
        {
        }

        public void onButtonClick(com.umeng.socialize.sensor.UMSensor.WhitchButton whitchbutton)
        {
            if (UMShareScrShotDialog.mShareListener != null)
            {
                UMShareScrShotDialog.mShareListener.onButtonClick(whitchbutton);
            }
        }

        public void onComplete(SHARE_MEDIA share_media, int i, SocializeEntity socializeentity)
        {
            if (UMShareScrShotDialog.mShareListener != null)
            {
                Log.d("", "#### \u5206\u4EABDialog  onComplete");
                UMShareScrShotDialog.mShareListener.onComplete(share_media, i, socializeentity);
            }
        }

        public void onStart()
        {
            if (UMShareScrShotDialog.mShareListener != null)
            {
                UMShareScrShotDialog.mShareListener.onStart();
            }
        }

    };
    private static com.umeng.socialize.sensor.UMSensor.OnSensorListener mShareListener = null;
    private final int MAX_PLATFORMS;
    final int MAX_WORD_NUM;
    private final String PLATFORM_FILE;
    private final String PLATFORM_KEY;
    private final String TAG;
    private List mButtons;
    private ImageButton mCancelBtn;
    private EditText mContentEditText;
    private Context mContext;
    protected UMSocialService mController;
    private ImageButton mCurrentBtn;
    private TextView mHalfTextView;
    private Animation mImgViewAnim;
    private Animation mInputAnim;
    private View mInputView;
    private Button mOkBtn;
    private ImageButton mPlatformBtn1;
    private ImageButton mPlatformBtn2;
    private ImageButton mPlatformBtn3;
    private ImageButton mPlatformBtn4;
    private ImageButton mPlatformBtn5;
    private ImageButton mPrevBtn;
    private SHARE_MEDIA mPrevShareplatform;
    private Map mResIconMap;
    private View mRootView;
    private ImageView mRotateImgView;
    private List mSDKPlatforms;
    private Bitmap mScrshotBmp;
    private SHARE_MEDIA mSelectedPlatform;
    private UMShakeService mShakeController;
    private UMImage mShareImage;
    private List mSnsPlatforms;
    private SocializeConfig mSocializeConfig;
    private Animation mWordOverflowAnim;

    public UMShareScrShotDialog(Context context)
    {
        this(context, ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.STYLE, "Notitle_Fullscreen"));
    }

    public UMShareScrShotDialog(Context context, int i)
    {
        super(context, i);
        mRotateImgView = null;
        mCancelBtn = null;
        mPlatformBtn1 = null;
        mPlatformBtn2 = null;
        mPlatformBtn3 = null;
        mPlatformBtn4 = null;
        mPlatformBtn5 = null;
        mOkBtn = null;
        mContentEditText = null;
        mRootView = null;
        mInputView = null;
        mScrshotBmp = null;
        mContext = null;
        mSnsPlatforms = new ArrayList();
        MAX_PLATFORMS = 5;
        mController = null;
        mSocializeConfig = SocializeConfig.getSocializeConfig();
        mSDKPlatforms = new ArrayList();
        mShakeController = null;
        mShareImage = null;
        mPrevShareplatform = SHARE_MEDIA.GENERIC;
        mSelectedPlatform = SHARE_MEDIA.GENERIC;
        mPrevBtn = null;
        mCurrentBtn = null;
        mButtons = new ArrayList();
        mResIconMap = new HashMap();
        mImgViewAnim = null;
        mInputAnim = null;
        mWordOverflowAnim = null;
        mHalfTextView = null;
        MAX_WORD_NUM = 140;
        TAG = getClass().getName();
        PLATFORM_FILE = "platform_file";
        PLATFORM_KEY = "prev_selected";
        mContext = context;
        initViews(context);
    }

    private void addButtonsToList()
    {
        mButtons.add(mPlatformBtn1);
        mButtons.add(mPlatformBtn2);
        mButtons.add(mPlatformBtn3);
        mButtons.add(mPlatformBtn4);
        mButtons.add(mPlatformBtn5);
    }

    private void changeImgBtnBgSrc()
    {
        if (!mPrevShareplatform.equals(mSelectedPlatform))
        {
            if (mResIconMap.containsKey(mPrevShareplatform) && mPrevShareplatform != SHARE_MEDIA.GENERIC)
            {
                mPrevBtn.setImageResource(((Integer)((List)mResIconMap.get(mPrevShareplatform)).get(1)).intValue());
            }
            if (mSelectedPlatform != SHARE_MEDIA.GENERIC)
            {
                mCurrentBtn.setImageResource(((Integer)((List)mResIconMap.get(mSelectedPlatform)).get(0)).intValue());
            }
        }
    }

    private void checkPlatforms()
    {
        removeDuplicate(mSnsPlatforms);
        if (mSnsPlatforms == null || mSnsPlatforms.size() == 0)
        {
            initDefaultPlatforms();
        } else
        if (mSDKPlatforms != null && mSDKPlatforms.size() > 0)
        {
            removeNotConfigedPlatform(mSnsPlatforms);
            initUserPlatforms();
            return;
        }
    }

    private void initDefaultPlatforms()
    {
        mSnsPlatforms = new ArrayList();
        mSnsPlatforms.add(SHARE_MEDIA.SINA);
        mSnsPlatforms.add(SHARE_MEDIA.QZONE);
        mSnsPlatforms.add(SHARE_MEDIA.TENCENT);
        mSnsPlatforms.add(SHARE_MEDIA.RENREN);
        mSnsPlatforms.add(SHARE_MEDIA.DOUBAN);
        mPlatformBtn1.setVisibility(0);
        mPlatformBtn2.setVisibility(0);
        mPlatformBtn3.setVisibility(0);
        mPlatformBtn4.setVisibility(0);
        mPlatformBtn5.setVisibility(0);
        SHARE_MEDIA share_media = restorePlatform();
        if (share_media != null && share_media != SHARE_MEDIA.GENERIC && mSnsPlatforms.contains(share_media))
        {
            selectedPlatform(share_media);
            return;
        } else
        {
            mPlatformBtn1.setImageResource(((Integer)((List)mResIconMap.get(SHARE_MEDIA.SINA)).get(0)).intValue());
            mPlatformBtn2.setImageResource(((Integer)((List)mResIconMap.get(SHARE_MEDIA.QZONE)).get(1)).intValue());
            mPlatformBtn3.setImageResource(((Integer)((List)mResIconMap.get(SHARE_MEDIA.TENCENT)).get(1)).intValue());
            mPlatformBtn4.setImageResource(((Integer)((List)mResIconMap.get(SHARE_MEDIA.RENREN)).get(1)).intValue());
            mPlatformBtn5.setImageResource(((Integer)((List)mResIconMap.get(SHARE_MEDIA.DOUBAN)).get(1)).intValue());
            mCurrentBtn = mPlatformBtn1;
            mPrevShareplatform = SHARE_MEDIA.SINA;
            mSelectedPlatform = mPrevShareplatform;
            return;
        }
    }

    private void initEditText()
    {
        String s = "";
        if (mShakeController != null)
        {
            s = mShakeController.getShareContent();
        }
        mContentEditText.setText(s);
    }

    private void initIconMap()
    {
        Iterator iterator = SocializeConfig.getSocializeConfig().getAllPlatforms(mContext, mController).iterator();
_L2:
        SnsPlatform snsplatform;
        SHARE_MEDIA share_media;
        ArrayList arraylist;
        if (!iterator.hasNext())
        {
            return;
        }
        snsplatform = (SnsPlatform)iterator.next();
        share_media = SHARE_MEDIA.convertToEmun(snsplatform.mKeyword);
        arraylist = new ArrayList();
        if (share_media != SHARE_MEDIA.SMS)
        {
            break; /* Loop/switch isn't completed */
        }
        arraylist.add(Integer.valueOf(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_sms")));
        arraylist.add(Integer.valueOf(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_sms_off")));
_L3:
        Log.d(TAG, (new StringBuilder("### SDK \u5DF2\u914D\u7F6E  ")).append(snsplatform.mKeyword).append(" \u5E73\u53F0.").toString());
        mResIconMap.put(share_media, arraylist);
        if (true) goto _L2; else goto _L1
_L1:
        if (share_media == SHARE_MEDIA.EMAIL)
        {
            arraylist.add(Integer.valueOf(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_gmail")));
            arraylist.add(Integer.valueOf(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_gmail_off")));
        } else
        {
            arraylist.add(Integer.valueOf(snsplatform.mIcon));
            arraylist.add(Integer.valueOf(snsplatform.mGrayIcon));
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    private void initUserPlatforms()
    {
        Object obj;
        int i;
        int j;
        obj = restorePlatform();
        j = mSnsPlatforms.size();
        i = j;
        if (j >= 5)
        {
            i = 5;
            Log.d("UMScrShotLanDialog", "### \u6447\u4E00\u6447\u5206\u4EAB,\u6700\u591A\u53EF\u6DFB\u52A05\u4E2A\u5E73\u53F0.");
        }
        j = 0;
_L2:
        ImageButton imagebutton;
        SHARE_MEDIA share_media1;
        if (j >= i)
        {
            if (obj != null && obj != SHARE_MEDIA.GENERIC && !mSnsPlatforms.contains(obj))
            {
                obj = (ImageButton)mButtons.get(0);
                ((ImageButton) (obj)).setVisibility(0);
                SHARE_MEDIA share_media = (SHARE_MEDIA)mSnsPlatforms.get(0);
                ((ImageButton) (obj)).setImageResource(((Integer)((List)mResIconMap.get(share_media)).get(0)).intValue());
                mSelectedPlatform = share_media;
                mPrevShareplatform = mSelectedPlatform;
                mCurrentBtn = (ImageButton)mButtons.get(0);
            }
            return;
        }
        imagebutton = (ImageButton)mButtons.get(j);
        imagebutton.setVisibility(0);
        share_media1 = (SHARE_MEDIA)mSnsPlatforms.get(j);
        if (obj != null && obj != SHARE_MEDIA.GENERIC)
        {
            break; /* Loop/switch isn't completed */
        }
        if (j == 0)
        {
            imagebutton.setImageResource(((Integer)((List)mResIconMap.get(share_media1)).get(0)).intValue());
            mSelectedPlatform = share_media1;
            mPrevShareplatform = mSelectedPlatform;
            mCurrentBtn = (ImageButton)mButtons.get(0);
        } else
        {
            imagebutton.setImageResource(((Integer)((List)mResIconMap.get(share_media1)).get(1)).intValue());
        }
_L3:
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        if (share_media1 == obj)
        {
            imagebutton.setImageResource(((Integer)((List)mResIconMap.get(share_media1)).get(0)).intValue());
            mSelectedPlatform = share_media1;
            mPrevShareplatform = mSelectedPlatform;
            mCurrentBtn = (ImageButton)mButtons.get(j);
            Log.d("", (new StringBuilder("#### \u6062\u590D\u9009\u62E9\u7684\u5E73\u53F0\u4E3A: ")).append(mSelectedPlatform).toString());
        } else
        {
            imagebutton.setImageResource(((Integer)((List)mResIconMap.get(share_media1)).get(1)).intValue());
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    private void initViews(Context context)
    {
        mRootView = View.inflate(context, ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "shake_umeng_socialize_share_dlg"), null);
        setContentView(mRootView);
        mInputView = mRootView.findViewById(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.ID, "contentLayout"));
        mRotateImgView = (ImageView)mRootView.findViewById(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.ID, "scrshot_previewImg"));
        mRotateImgView.setOnClickListener(this);
        mCancelBtn = (ImageButton)mRootView.findViewById(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.ID, "cancelBtn"));
        mCancelBtn.setOnClickListener(this);
        mOkBtn = (Button)mRootView.findViewById(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.ID, "sendBtn"));
        mOkBtn.setOnClickListener(this);
        mWordOverflowAnim = AnimationUtils.loadAnimation(mContext, ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.ANIM, "shake_umeng_socialize_edit_anim"));
        mContentEditText = (EditText)mRootView.findViewById(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.ID, "contentEdit"));
        mContentEditText.addTextChangedListener(new TextWatcher() {

            final UMShareScrShotDialog this$0;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                charsequence = charsequence.toString().trim();
                if (isWordsOverflow())
                {
                    mContentEditText.startAnimation(mWordOverflowAnim);
                    Toast.makeText(mContext, "\u62B1\u6B49,\u5B57\u6570\u8D85\u8FC7140\u4E86...", 1).show();
                    charsequence = charsequence.substring(0, 139);
                    mContentEditText.setText(charsequence);
                    j = i;
                    if (i > 139)
                    {
                        j = 139;
                    }
                    mContentEditText.setSelection(j);
                }
            }

            
            {
                this$0 = UMShareScrShotDialog.this;
                super();
            }
        });
        mPlatformBtn1 = (ImageButton)mRootView.findViewById(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.ID, "platform_btn1"));
        mPlatformBtn1.setOnClickListener(this);
        mPlatformBtn2 = (ImageButton)mRootView.findViewById(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.ID, "platform_btn2"));
        mPlatformBtn2.setOnClickListener(this);
        mPlatformBtn3 = (ImageButton)mRootView.findViewById(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.ID, "platform_btn3"));
        mPlatformBtn3.setOnClickListener(this);
        mPlatformBtn4 = (ImageButton)mRootView.findViewById(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.ID, "platform_btn4"));
        mPlatformBtn4.setOnClickListener(this);
        mPlatformBtn5 = (ImageButton)mRootView.findViewById(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.ID, "platform_btn5"));
        mPlatformBtn5.setOnClickListener(this);
        setCanceledOnTouchOutside(true);
        mImgViewAnim = AnimationUtils.loadAnimation(mContext, ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.ANIM, "shake_umeng_socialize_imageview_rotate"));
        mImgViewAnim.setInterpolator(new LinearInterpolator());
        mImgViewAnim.setFillAfter(true);
        mInputAnim = AnimationUtils.loadAnimation(mContext, ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.ANIM, "shake_umeng_socialize_dlg_scale"));
        addButtonsToList();
        mHalfTextView = (TextView)mRootView.findViewById(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.ID, "half_textview"));
    }

    private boolean isNetworkAvalable(Context context)
    {
        return DeviceConfig.isNetworkAvailable(context);
    }

    private boolean isPlatformConfiged(SHARE_MEDIA share_media)
    {
        share_media = share_media.toString();
        Iterator iterator = mSDKPlatforms.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return false;
            }
        } while (!((SnsPlatform)iterator.next()).mKeyword.equals(share_media));
        return true;
    }

    private boolean isWordsOverflow()
    {
        return 140 <= SocializeUtils.countContentLength(mContentEditText.getText().toString().trim());
    }

    private void removeDuplicate(List list)
    {
        if (list == null || list.size() == 0)
        {
            return;
        }
        HashSet hashset = new HashSet();
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        do
        {
            SHARE_MEDIA share_media;
            do
            {
                if (!iterator.hasNext())
                {
                    list.clear();
                    list.addAll(arraylist);
                    return;
                }
                share_media = (SHARE_MEDIA)iterator.next();
            } while (share_media == null || share_media == SHARE_MEDIA.GENERIC || !hashset.add(share_media));
            arraylist.add(share_media);
        } while (true);
    }

    private void removeNotConfigedPlatform(List list)
    {
        list = list.iterator();
        do
        {
            SHARE_MEDIA share_media;
            do
            {
                if (!list.hasNext())
                {
                    return;
                }
                share_media = (SHARE_MEDIA)list.next();
            } while (isPlatformConfiged(share_media));
            Log.d(TAG, (new StringBuilder("## ")).append(share_media).append(" \u5E73\u53F0\u6CA1\u6709\u5728SDK\u4E2D\u914D\u7F6E,\u81EA\u52A8\u79FB\u9664!!").toString());
            list.remove();
        } while (true);
    }

    private SHARE_MEDIA restorePlatform()
    {
        if (mContext == null)
        {
            return SHARE_MEDIA.GENERIC;
        } else
        {
            String s = mContext.getSharedPreferences("platform_file", 0).getString("prev_selected", "");
            Log.d("", (new StringBuilder("#### --- restorePlatform \u4E0A\u6B21\u5E73\u53F0\u4E3A : ")).append(s).toString());
            return SHARE_MEDIA.convertToEmun(s);
        }
    }

    private void savePlatfrom()
    {
        if (mContext != null)
        {
            android.content.SharedPreferences.Editor editor = mContext.getSharedPreferences("platform_file", 0).edit();
            editor.putString("prev_selected", mSelectedPlatform.toString());
            editor.commit();
        }
    }

    private void selectedPlatform(SHARE_MEDIA share_media)
    {
        int i = 0;
        do
        {
            if (i >= mSnsPlatforms.size())
            {
                mPrevShareplatform = share_media;
                mSelectedPlatform = mPrevShareplatform;
                return;
            }
            SHARE_MEDIA share_media1 = (SHARE_MEDIA)mSnsPlatforms.get(i);
            ImageButton imagebutton = (ImageButton)mButtons.get(i);
            if (share_media1.equals(share_media))
            {
                imagebutton.setImageResource(((Integer)((List)mResIconMap.get(share_media1)).get(0)).intValue());
                mCurrentBtn = imagebutton;
            } else
            {
                imagebutton.setImageResource(((Integer)((List)mResIconMap.get(share_media1)).get(1)).intValue());
            }
            i++;
        } while (true);
    }

    private void setTextViewVisibility()
    {
        if (mContext == null)
        {
            Log.d(TAG, "mContext \u4E3A\u7A7A, \u4E0D\u80FD\u8BBE\u7F6E\u7A97\u53E3\u53C2\u6570.");
            return;
        }
        Context context = mContext;
        context;
        JVM INSTR monitorenter ;
        if (mContext.getResources().getConfiguration().orientation != 1)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        mHalfTextView.setVisibility(8);
_L1:
        return;
        Exception exception;
        exception;
        context;
        JVM INSTR monitorexit ;
        throw exception;
        mHalfTextView.setVisibility(4);
          goto _L1
    }

    private void startImageViewAnim()
    {
        mRotateImgView.setImageBitmap(mScrshotBmp);
        mRotateImgView.setVisibility(0);
        mRotateImgView.startAnimation(mImgViewAnim);
        mInputView.setVisibility(0);
        mInputView.startAnimation(mInputAnim);
    }

    public List getPlatforms()
    {
        return mSnsPlatforms;
    }

    public Bitmap getScrshotBmp()
    {
        return mScrshotBmp;
    }

    public SHARE_MEDIA getSelectedPlatform()
    {
        return mSelectedPlatform;
    }

    public UMShakeService getShakeController()
    {
        return mShakeController;
    }

    public com.umeng.socialize.sensor.UMSensor.OnSensorListener getShareListener()
    {
        return mShareListener;
    }

    public UMSocialService getUMSocialService()
    {
        return mController;
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        setTextViewVisibility();
        startImageViewAnim();
        initEditText();
    }

    public void onClick(View view)
    {
        Context context = mContext;
        context;
        JVM INSTR monitorenter ;
        mPrevShareplatform = mSelectedPlatform;
        if (mCancelBtn != view) goto _L2; else goto _L1
_L1:
        mInternalListener.onButtonClick(com.umeng.socialize.sensor.UMSensor.WhitchButton.BUTTON_CANCEL);
        dismiss();
_L3:
        changeImgBtnBgSrc();
        return;
_L2:
        if (mOkBtn != view)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        shareTo();
          goto _L3
        view;
        context;
        JVM INSTR monitorexit ;
        throw view;
label0:
        {
            if (view != mPlatformBtn1)
            {
                break label0;
            }
            mPrevBtn = mCurrentBtn;
            mSelectedPlatform = (SHARE_MEDIA)mSnsPlatforms.get(0);
            mCurrentBtn = mPlatformBtn1;
        }
          goto _L3
label1:
        {
            if (view != mPlatformBtn2)
            {
                break label1;
            }
            mPrevBtn = mCurrentBtn;
            mSelectedPlatform = (SHARE_MEDIA)mSnsPlatforms.get(1);
            mCurrentBtn = mPlatformBtn2;
        }
          goto _L3
label2:
        {
            if (view != mPlatformBtn3)
            {
                break label2;
            }
            mPrevBtn = mCurrentBtn;
            mSelectedPlatform = (SHARE_MEDIA)mSnsPlatforms.get(2);
            mCurrentBtn = mPlatformBtn3;
        }
          goto _L3
        if (view != mPlatformBtn4) goto _L5; else goto _L4
_L4:
        mPrevBtn = mCurrentBtn;
        mSelectedPlatform = (SHARE_MEDIA)mSnsPlatforms.get(3);
        mCurrentBtn = mPlatformBtn4;
          goto _L3
_L5:
        if (view != mPlatformBtn5) goto _L3; else goto _L6
_L6:
        mPrevBtn = mCurrentBtn;
        mSelectedPlatform = (SHARE_MEDIA)mSnsPlatforms.get(4);
        mCurrentBtn = mPlatformBtn5;
          goto _L3
    }

    public void onDetachedFromWindow()
    {
        savePlatfrom();
        super.onDetachedFromWindow();
    }

    public void setPlatforms(List list)
    {
        mSnsPlatforms = list;
        checkPlatforms();
    }

    public void setScrshotBmp(Bitmap bitmap)
    {
        mScrshotBmp = bitmap;
        if (mContext != null)
        {
            mShareImage = null;
            mShareImage = new UMImage(mContext, mScrshotBmp);
        }
    }

    public void setShakeController(UMShakeService umshakeservice)
    {
        mShakeController = umshakeservice;
    }

    public void setShareListener(com.umeng.socialize.sensor.UMSensor.OnSensorListener onsensorlistener)
    {
        mShareListener = onsensorlistener;
    }

    public void setUMSocialService(UMSocialService umsocialservice)
    {
        mController = umsocialservice;
        mSDKPlatforms = mSocializeConfig.getAllPlatforms(mContext, mController);
        initIconMap();
    }

    protected void shareTo()
    {
        UMShareMsg umsharemsg = new UMShareMsg();
        if (mContext != null)
        {
            if (!isNetworkAvalable(mContext))
            {
                Toast.makeText(mContext, "\u62B1\u6B49,\u8BF7\u68C0\u67E5\u60A8\u7684\u7F51\u7EDC", 0).show();
                return;
            }
            if (mController != null && mSelectedPlatform != null)
            {
                dismiss();
                mInternalListener.onButtonClick(com.umeng.socialize.sensor.UMSensor.WhitchButton.BUTTON_SHARE);
                if (mShareImage != null)
                {
                    mShareImage.setTitle((new StringBuilder("\u5206\u4EAB\u5230")).append(mSelectedPlatform.toString()).toString());
                }
                String s = mContentEditText.getText().toString().trim();
                if (mSelectedPlatform == SHARE_MEDIA.WEIXIN || mSelectedPlatform == SHARE_MEDIA.WEIXIN_CIRCLE)
                {
                    umsharemsg.mText = "";
                    if (mShareImage != null && !TextUtils.isEmpty(s))
                    {
                        mShareImage.setTitle(s);
                    }
                } else
                {
                    umsharemsg.mText = s;
                }
                umsharemsg.setMediaData(mShareImage);
                mController.setShareType(ShareType.SHAKE);
                mController.getEntity().setShareMsg(umsharemsg);
                mController.directShare(mContext, mSelectedPlatform, mInternalListener);
                return;
            }
        }
    }






}
