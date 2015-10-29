// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.umeng.socialize.bean.CustomPlatform;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.ShareType;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMShareMsg;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMVideo;
import com.umeng.socialize.media.UMWebPage;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socialize.media.UMusic;
import com.umeng.socom.util.BitmapUtils;
import com.umeng.socom.util.StatisticsDataUtils;
import java.io.ByteArrayOutputStream;

// Referenced classes of package com.umeng.socialize.controller:
//            UMSsoHandler, e

public abstract class CustomHandler extends UMSsoHandler
{

    protected static SocializeEntity mEntity = null;
    protected static com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener mSnsPostListener = null;
    protected String TAG;
    protected boolean isToCircle;
    protected String mAppId;
    protected Context mContext;
    protected int mDescriptionLimit;
    protected int mGrayIcon;
    protected int mIcon;
    protected String mKeyWord;
    protected CustomPlatform mPlatform;
    protected com.umeng.socialize.controller.listener.SocializeListeners.OnCustomPlatformClickListener mPlatformClickListener;
    protected int mPlatformOpId;
    protected ProgressDialog mProgressDialog;
    protected String mShareContent;
    protected UMediaObject mShareMedia;
    protected String mShowWord;
    protected SocializeConfig mSocializeConfig;
    protected int mThumbLimit;
    protected int mThumbSize;
    protected String mTitle;
    protected int mTitleLimit;

    public CustomHandler(Context context)
    {
        this(context, "");
    }

    public CustomHandler(Context context, String s)
    {
        this(context, s, false);
    }

    public CustomHandler(Context context, String s, boolean flag)
    {
        mContext = null;
        mSocializeConfig = SocializeConfig.getSocializeConfig();
        mPlatform = null;
        mProgressDialog = null;
        mShareContent = "";
        mShareMedia = null;
        mAppId = "";
        mIcon = 0;
        mGrayIcon = 0;
        mKeyWord = "";
        mShowWord = "";
        isToCircle = false;
        mTitle = "";
        mTitleLimit = 512;
        mPlatformClickListener = null;
        mThumbSize = 150;
        mThumbLimit = 32768;
        mDescriptionLimit = 1024;
        TAG = getClass().getSimpleName();
        mPlatformOpId = -1;
        mContext = context;
        mAppId = s;
        mProgressDialog = new ProgressDialog(context);
        isToCircle = flag;
    }

    public void addToSocialSDK()
    {
        mSocializeConfig.addCustomPlatform(build());
    }

    public void authorize(Activity activity, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
    }

    public void authorizeCallBack(int i, int j, Intent intent)
    {
    }

    protected CustomPlatform build()
    {
        initPlatformConfig();
        return createCustomPlatform();
    }

    protected abstract UMediaObject buildMediaObject(UMediaObject umediaobject);

    protected String buildTransaction(String s)
    {
        if (s == null)
        {
            return String.valueOf(System.currentTimeMillis());
        } else
        {
            return (new StringBuilder(String.valueOf(s))).append(System.currentTimeMillis()).toString();
        }
    }

    protected byte[] compressBitmap(byte abyte0[])
    {
        byte abyte1[] = abyte0;
        if (abyte0 == null) goto _L2; else goto _L1
_L1:
        abyte1 = abyte0;
        if (abyte0.length < mThumbLimit) goto _L2; else goto _L3
_L3:
        Bitmap bitmap;
        ByteArrayOutputStream bytearrayoutputstream;
        boolean flag;
        int i;
        bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
        flag = false;
        i = 1;
_L7:
        if (!flag && i <= 10) goto _L5; else goto _L4
_L4:
        abyte1 = abyte0;
        if (bytearrayoutputstream != null)
        {
            abyte0 = bytearrayoutputstream.toByteArray();
            if (!bitmap.isRecycled())
            {
                bitmap.recycle();
            }
            Log.d(TAG, (new StringBuilder("### \u5206\u4EAB")).append(mShowWord).append("\u7684\u7F29\u7565\u56FE\u5927\u5C0F : ").append(abyte0.length / 1024).append(" KB").toString());
            abyte1 = abyte0;
            if (abyte0.length == 0)
            {
                Log.e(TAG, "### \u7F29\u7565\u56FE\u7684\u539F\u56FE\u592A\u5927,\u8BF7\u8BBE\u7F6E\u5C0F\u4E8E64KB\u7684\u7F29\u7565\u56FE");
                abyte1 = abyte0;
            }
        }
_L2:
        return abyte1;
_L5:
        int j = (int)(Math.pow(0.80000000000000004D, i) * 100D);
        Log.d(TAG, (new StringBuilder("quality = ")).append(j).toString());
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, j, bytearrayoutputstream);
        Log.d(TAG, (new StringBuilder("Thumb Size = ")).append(bytearrayoutputstream.toByteArray().length / 1024).append(" KB").toString());
        if (bytearrayoutputstream != null && bytearrayoutputstream.size() < mThumbLimit)
        {
            flag = true;
        } else
        {
            bytearrayoutputstream.reset();
            i++;
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    protected CustomPlatform createCustomPlatform()
    {
        mPlatform = new CustomPlatform(mKeyWord, mShowWord, mIcon);
        mPlatform.mGrayIcon = mGrayIcon;
        mPlatform.mClickListener = new e(this);
        return mPlatform;
    }

    protected Object createMessage(com.umeng.socialize.media.UMediaObject.MediaType mediatype)
    {
        Object obj = null;
        if (mediatype == com.umeng.socialize.media.UMediaObject.MediaType.IMAGE)
        {
            obj = getShareImage(mShareMedia);
        } else
        {
            if (mediatype == com.umeng.socialize.media.UMediaObject.MediaType.MUSIC)
            {
                return getShareMusic(mShareMedia, mShareContent);
            }
            if (mediatype == com.umeng.socialize.media.UMediaObject.MediaType.TEXT)
            {
                return getShareText(mShareContent);
            }
            if (mediatype == com.umeng.socialize.media.UMediaObject.MediaType.TEXT_IMAGE)
            {
                return getShareTextAndImage(mShareContent, mShareMedia);
            }
            if (mediatype == com.umeng.socialize.media.UMediaObject.MediaType.VEDIO)
            {
                return getShareVideo(mShareMedia, mShareContent);
            }
        }
        return obj;
    }

    protected Bitmap createThumb(Bitmap bitmap, float f)
    {
        if (bitmap != null && !bitmap.isRecycled())
        {
            int i = bitmap.getWidth();
            int j = bitmap.getHeight();
            float f1 = 1.0F;
            Bitmap bitmap1;
            if (i < 200 || j < 200)
            {
                if (i < j)
                {
                    f1 = f / (float)i;
                } else
                {
                    f1 = f / (float)j;
                }
            }
            bitmap1 = Bitmap.createScaledBitmap(bitmap, (int)((float)i * f1), (int)(f1 * (float)j), true);
            if (bitmap1 == null)
            {
                return bitmap;
            } else
            {
                return bitmap1;
            }
        } else
        {
            return null;
        }
    }

    protected abstract boolean doShare(Object obj, com.umeng.socialize.media.UMediaObject.MediaType mediatype);

    protected void fireAllListenersOnComplete(SHARE_MEDIA share_media, int i, SocializeEntity socializeentity)
    {
        if (mSnsPostListener != null)
        {
            mSnsPostListener.onComplete(share_media, i, mEntity);
        }
        mSocializeConfig.fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, share_media, i, mEntity);
    }

    protected void fireAllListenersOnStart()
    {
        mSocializeConfig.fireAllListenersOnStart(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener);
    }

    public String getAppId()
    {
        return mAppId;
    }

    protected com.umeng.socialize.media.UMediaObject.MediaType getMediaType(UMediaObject umediaobject)
    {
        com.umeng.socialize.media.UMediaObject.MediaType mediatype = null;
        if (umediaobject != null)
        {
            mediatype = umediaobject.getMediaType();
            umediaobject = mediatype;
            if (mediatype == com.umeng.socialize.media.UMediaObject.MediaType.IMAGE)
            {
                umediaobject = mediatype;
                if (!TextUtils.isEmpty(mShareContent))
                {
                    umediaobject = com.umeng.socialize.media.UMediaObject.MediaType.TEXT_IMAGE;
                }
            }
        } else
        {
            umediaobject = mediatype;
            if (!TextUtils.isEmpty(mShareContent))
            {
                return com.umeng.socialize.media.UMediaObject.MediaType.TEXT;
            }
        }
        return umediaobject;
    }

    public com.umeng.socialize.controller.listener.SocializeListeners.OnCustomPlatformClickListener getPlatformClickListener()
    {
        return mPlatformClickListener;
    }

    protected abstract Object getShareImage(UMediaObject umediaobject);

    protected void getShareMsg(SocializeEntity socializeentity)
    {
label0:
        {
            if (socializeentity != null)
            {
                mEntity = socializeentity;
                if (mEntity.getShareType() != ShareType.SHAKE)
                {
                    break label0;
                }
                mShareContent = mEntity.getShareMsg().mText;
                mShareMedia = mEntity.getShareMsg().getMedia();
            }
            return;
        }
        mShareContent = mEntity.getShareContent();
        mShareMedia = mEntity.getMedia();
    }

    protected abstract Object getShareMusic(UMediaObject umediaobject, String s);

    protected abstract Object getShareText(String s);

    protected abstract Object getShareTextAndImage(String s, UMediaObject umediaobject);

    protected abstract Object getShareVideo(UMediaObject umediaobject, String s);

    protected byte[] getThumbByteArray(UMediaObject umediaobject)
    {
        Object obj;
        if (umediaobject == null)
        {
            return null;
        }
        obj = "";
        if (!(umediaobject instanceof UMusic)) goto _L2; else goto _L1
_L1:
        obj = (UMusic)umediaobject;
        umediaobject = ((UMusic) (obj)).getThumb();
        obj = ((UMusic) (obj)).getThumbImage();
_L9:
        if (TextUtils.isEmpty(umediaobject)) goto _L4; else goto _L3
_L3:
        Bitmap bitmap = BitmapUtils.getBitmapFromFile(umediaobject, mThumbSize, mThumbSize);
        if (bitmap == null || bitmap.isRecycled()) goto _L4; else goto _L5
_L5:
        umediaobject = BitmapUtils.bitmap2Bytes(bitmap);
        bitmap.recycle();
_L7:
        byte abyte0[];
label0:
        {
            if (umediaobject != null)
            {
                abyte0 = umediaobject;
                if (umediaobject.length != 0)
                {
                    break label0;
                }
            }
            abyte0 = umediaobject;
            if (obj != null)
            {
                abyte0 = ((UMImage) (obj)).toByte();
            }
        }
        return abyte0;
_L2:
        if (umediaobject instanceof UMVideo)
        {
            obj = (UMVideo)umediaobject;
            umediaobject = ((UMVideo) (obj)).getThumb();
            obj = ((UMVideo) (obj)).getThumbImage();
        } else
        if (umediaobject instanceof UMWebPage)
        {
            obj = (UMWebPage)umediaobject;
            umediaobject = ((UMWebPage) (obj)).getThumb();
            obj = ((UMWebPage) (obj)).getThumbImage();
        } else
        if (umediaobject instanceof UMImage)
        {
            UMImage umimage = (UMImage)umediaobject;
            if (!TextUtils.isEmpty(umimage.getThumb()))
            {
                umediaobject = umimage.getThumb();
                obj = umimage;
            } else
            {
                umediaobject = ((UMediaObject) (obj));
                obj = umimage;
                if (umimage.isUrlMedia())
                {
                    umediaobject = umimage.toUrl();
                    obj = umimage;
                }
            }
        } else
        {
            Object obj1 = null;
            umediaobject = ((UMediaObject) (obj));
            obj = obj1;
        }
        break; /* Loop/switch isn't completed */
_L4:
        umediaobject = null;
        if (true) goto _L7; else goto _L6
_L6:
        if (true) goto _L9; else goto _L8
_L8:
    }

    protected void handleOnClick(CustomPlatform customplatform, SocializeEntity socializeentity, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        mSnsPostListener = snspostlistener;
        setSelectedPlatform();
        getShareMsg(socializeentity);
        if (mShareMedia != null || !TextUtils.isEmpty(mShareContent))
        {
            listenerCallback(customplatform, socializeentity, snspostlistener);
            mShareMedia = buildMediaObject(mShareMedia);
            shareTo(mShareContent, mShareMedia);
            return;
        } else
        {
            Toast.makeText(mContext, (new StringBuilder("\u8BF7\u8BBE\u7F6E")).append(mPlatform.mShowWord).append("\u7684\u5206\u4EAB\u5185\u5BB9...").toString(), 0).show();
            return;
        }
    }

    protected boolean haveCallback(Context context)
    {
        return false;
    }

    protected abstract void initPlatformConfig();

    public abstract boolean isClientInstalled();

    public boolean isToCircle()
    {
        return isToCircle;
    }

    protected void listenerCallback(CustomPlatform customplatform, SocializeEntity socializeentity, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        if (mPlatformClickListener != null)
        {
            mPlatformClickListener.onClick(customplatform, socializeentity, snspostlistener);
        }
        if (snspostlistener != null)
        {
            snspostlistener.onStart();
        }
        fireAllListenersOnStart();
    }

    protected void sendReport(Boolean boolean1)
    {
        SHARE_MEDIA share_media = SocializeConfig.getSelectedPlatfrom();
        char c = '\uFFFF';
        if (boolean1.booleanValue())
        {
            SocializeUtils.sendAnalytic(mContext, mEntity.mDescriptor, mShareContent, mShareMedia, share_media.toString());
            StatisticsDataUtils.addStatisticsData(mContext, share_media, mPlatformOpId);
            c = '\310';
        }
        if (!haveCallback(mContext))
        {
            fireAllListenersOnComplete(share_media, c, mEntity);
        }
    }

    public void setAppId(String s)
    {
        mAppId = s;
    }

    public void setPlatformClickListener(com.umeng.socialize.controller.listener.SocializeListeners.OnCustomPlatformClickListener oncustomplatformclicklistener)
    {
        mPlatformClickListener = oncustomplatformclicklistener;
    }

    protected void setPlatformOpId(int i)
    {
        mPlatformOpId = i;
    }

    protected abstract void setSelectedPlatform();

    public void setToCircle(boolean flag)
    {
        isToCircle = flag;
    }

    protected abstract void shareAsync(com.umeng.socialize.media.UMediaObject.MediaType mediatype);

    protected void shareTo(String s, UMediaObject umediaobject)
    {
        s = getMediaType(umediaobject);
        if (s != null)
        {
            shareAsync(s);
            return;
        } else
        {
            Toast.makeText(mContext, "\u8BF7\u8BBE\u7F6E\u5206\u4EAB\u5185\u5BB9...", 0).show();
            Log.e(TAG, "\u60A8\u8BBE\u7F6E\u7684\u5206\u4EAB\u5185\u5BB9\u4E3A\u7A7A,\u5206\u4EAB\u5185\u5BB9\u53EA\u652F\u6301\u6587\u5B57\u3001\u56FE\u7247\uFF0C\u56FE\u6587\u3001\u97F3\u4E50\u3001\u89C6\u9891\u3001\u7F51\u9875\u7C7B\u578B...");
            return;
        }
    }

}
