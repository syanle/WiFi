// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.laiwang.sdk.message.IILWMessage;
import com.laiwang.sdk.openapi.ILWAPI;
import com.laiwang.sdk.openapi.LWAPIFactory;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.media.BaseShareContent;
import com.umeng.socialize.media.LWDynamicShareContent;
import com.umeng.socialize.media.LWShareContent;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMVideo;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socialize.media.UMusic;
import com.umeng.socom.DeviceConfig;
import com.umeng.socom.util.BitmapUtils;

// Referenced classes of package com.umeng.socialize.controller:
//            CustomHandler

public class UMLWHandler extends CustomHandler
{

    private String mAppKey;
    private String mContentURL;
    private int mDefaultIcon;
    private int mDefaultLWShareApi;
    private String mDefaultShareContent;
    private ILWAPI mLWAPI;
    private String mLaiWangDynamicKey;
    private String mLaiWangKey;
    private String mMessageFrom;
    private String msgFlag;

    public UMLWHandler(Context context, String s, String s1, String s2)
    {
        super(context, s);
        mDefaultIcon = 0;
        mLWAPI = null;
        mDefaultLWShareApi = 0x20140101;
        mDefaultShareContent = "";
        msgFlag = "laiwang";
        mLaiWangKey = "";
        mLaiWangDynamicKey = "";
        mAppKey = s1;
        mContentURL = s2;
        if (TextUtils.isEmpty(s) || TextUtils.isEmpty(s1))
        {
            Log.w(getClass().getName(), "\u8BBE\u7F6EAppId\u6216\u8005AppKey\u4E3A\u7A7A\uFF0C\u6B63\u5728\u4F7F\u7528\u53CB\u76DF\u9ED8\u8BA4\u7684\u6765\u5F80AppId\uFF0CAppKey");
            mAppId = "laiwangd497e70d4";
            mAppKey = "d497e70d4c3e4efeab1381476bac4c5e";
        }
    }

    private UMediaObject convertShareData(UMediaObject umediaobject)
    {
        UMImage umimage = null;
        if (isToCircle)
        {
            umediaobject = (LWDynamicShareContent)umediaobject;
        } else
        {
            umediaobject = (LWShareContent)umediaobject;
        }
        if (umediaobject.getMediaType() == com.umeng.socialize.media.UMediaObject.MediaType.IMAGE)
        {
            umimage = umediaobject.getShareImage();
        } else
        {
            if (umediaobject.getMediaType() == com.umeng.socialize.media.UMediaObject.MediaType.MUSIC)
            {
                return umediaobject.getShareMusic();
            }
            if (umediaobject.getMediaType() == com.umeng.socialize.media.UMediaObject.MediaType.VEDIO)
            {
                return umediaobject.getShareVideo();
            }
        }
        return umimage;
    }

    private boolean validateData()
    {
        if (TextUtils.isEmpty(mTitle))
        {
            Toast.makeText(mContext, "\u8BF7\u8BBE\u7F6E\u6807\u9898...", 0).show();
            return false;
        }
        if (TextUtils.isEmpty(mContentURL))
        {
            Toast.makeText(mContext, "\u8BF7\u8BBE\u7F6EcontentURL...", 0).show();
            return false;
        } else
        {
            return true;
        }
    }

    protected UMediaObject buildMediaObject(UMediaObject umediaobject)
    {
        String s;
        UMediaObject umediaobject1;
        umediaobject1 = umediaobject;
        s = "";
        if (!(umediaobject instanceof LWShareContent)) goto _L2; else goto _L1
_L1:
        LWShareContent lwsharecontent = (LWShareContent)umediaobject;
        mMessageFrom = lwsharecontent.getMessageFrom();
        s = lwsharecontent.getTitle();
        umediaobject1 = convertShareData(umediaobject);
        mShareContent = lwsharecontent.getShareContent();
_L4:
        if (!TextUtils.isEmpty(s))
        {
            mTitle = s;
        }
        return umediaobject1;
_L2:
        if (umediaobject instanceof LWDynamicShareContent)
        {
            LWDynamicShareContent lwdynamicsharecontent = (LWDynamicShareContent)umediaobject;
            mMessageFrom = lwdynamicsharecontent.getMessageFrom();
            s = lwdynamicsharecontent.getTitle();
            umediaobject1 = convertShareData(umediaobject);
            mShareContent = lwdynamicsharecontent.getShareContent();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected boolean doShare(Object obj, com.umeng.socialize.media.UMediaObject.MediaType mediatype)
    {
        boolean flag = false;
        if (obj == null)
        {
            return false;
        }
        if (!validateData())
        {
            return false;
        }
        obj = (IILWMessage)obj;
        if (obj != null)
        {
            ((IILWMessage) (obj)).setMessageActiviy("laiwang.share.sdk.1111");
            flag = mLWAPI.transactData(mContext, ((IILWMessage) (obj)), 0x20131023);
            setPlatformOpId(20);
        }
        return flag;
    }

    protected com.umeng.socialize.media.UMediaObject.MediaType getMediaType(UMediaObject umediaobject)
    {
        com.umeng.socialize.media.UMediaObject.MediaType mediatype1 = com.umeng.socialize.media.UMediaObject.MediaType.TEXT_IMAGE;
        com.umeng.socialize.media.UMediaObject.MediaType mediatype = mediatype1;
        if (umediaobject != null)
        {
            if (umediaobject instanceof UMusic)
            {
                mediatype = com.umeng.socialize.media.UMediaObject.MediaType.MUSIC;
            } else
            {
                mediatype = mediatype1;
                if (umediaobject instanceof UMVideo)
                {
                    return com.umeng.socialize.media.UMediaObject.MediaType.VEDIO;
                }
            }
        }
        return mediatype;
    }

    protected Object getShareImage(UMediaObject umediaobject)
    {
        return null;
    }

    protected Object getShareMusic(UMediaObject umediaobject, String s)
    {
        Object obj = null;
        if (umediaobject instanceof UMusic)
        {
            Object obj1 = (UMusic)umediaobject;
            obj = "";
            String s1;
            String s2;
            String s3;
            String s4;
            if (!TextUtils.isEmpty(((UMusic) (obj1)).getThumb()))
            {
                umediaobject = ((UMusic) (obj1)).getThumb();
            } else
            {
                umediaobject = ((UMediaObject) (obj));
                if (((UMusic) (obj1)).getThumbImage() != null)
                {
                    UMImage umimage = ((UMusic) (obj1)).getThumbImage();
                    if (!umimage.isSerialized())
                    {
                        umimage.waitImageToSerialize();
                    }
                    if (!TextUtils.isEmpty(umimage.toUrl()))
                    {
                        umediaobject = umimage.toUrl();
                    } else
                    {
                        umediaobject = ((UMediaObject) (obj));
                        if (!TextUtils.isEmpty(umimage.getImageCachePath()))
                        {
                            umediaobject = umimage.getImageCachePath();
                        }
                    }
                }
            }
            s1 = ((UMusic) (obj1)).getTitle();
            s2 = ((UMusic) (obj1)).toUrl();
            obj1 = ((UMusic) (obj1)).toUrl();
            s3 = mMessageFrom;
            s4 = msgFlag;
            if (isToCircle)
            {
                obj = "DYNAMIC2";
            } else
            {
                obj = "SMS";
            }
            obj = LWAPIFactory.createMediaMessage(s1, s, s, 3, umediaobject, s, umediaobject, s, s2, ((String) (obj1)), s3, 3.3999999999999999D, s4, ((String) (obj)));
        }
        return obj;
    }

    protected Object getShareText(String s)
    {
        String s1;
        if (isToCircle)
        {
            s1 = "DYNAMIC2";
        } else
        {
            s1 = "SMS";
        }
        return LWAPIFactory.createTextMessage(s, s1);
    }

    protected Object getShareTextAndImage(String s, UMediaObject umediaobject)
    {
        Object obj;
        Object obj1;
label0:
        {
            obj = null;
            if (umediaobject instanceof UMImage)
            {
                obj1 = (UMImage)umediaobject;
                if (!((UMImage) (obj1)).isSerialized())
                {
                    ((UMImage) (obj1)).setMaxWaitTimes(15);
                    ((UMImage) (obj1)).waitImageToSerialize();
                }
                if (isToCircle)
                {
                    obj = "DYNAMIC2";
                } else
                {
                    obj = "SMS";
                }
                if (!umediaobject.isUrlMedia())
                {
                    break label0;
                }
                obj = LWAPIFactory.createComMessage(mTitle, s, s, mContentURL, null, ((UMImage) (obj1)).toUrl(), ((UMImage) (obj1)).toUrl(), mMessageFrom, ((String) (obj)));
            }
            return obj;
        }
        obj1 = ((UMImage) (obj1)).getImageCachePath();
        umediaobject = BitmapUtils.loadImage(((String) (obj1)), mThumbSize, mThumbSize);
        s = LWAPIFactory.createComMessage(mTitle, s, s, mContentURL, umediaobject, ((String) (obj1)), ((String) (obj1)), mMessageFrom, ((String) (obj)));
        obj = (new StringBuilder("### \u6765\u5F80\u56FE\u7247 = ")).append(((String) (obj1))).append(",  thumbbitmap = ");
        boolean flag;
        if (umediaobject == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Log.d("", ((StringBuilder) (obj)).append(flag).toString());
        return s;
    }

    protected Object getShareVideo(UMediaObject umediaobject, String s)
    {
        Object obj = null;
        if (umediaobject instanceof UMVideo)
        {
            Object obj1 = (UMVideo)umediaobject;
            obj = "";
            String s1;
            String s2;
            String s3;
            String s4;
            if (!TextUtils.isEmpty(((UMVideo) (obj1)).getThumb()))
            {
                umediaobject = ((UMVideo) (obj1)).getThumb();
            } else
            {
                umediaobject = ((UMediaObject) (obj));
                if (((UMVideo) (obj1)).getThumbImage() != null)
                {
                    UMImage umimage = ((UMVideo) (obj1)).getThumbImage();
                    if (!umimage.isSerialized())
                    {
                        umimage.waitImageToSerialize();
                    }
                    if (!TextUtils.isEmpty(umimage.toUrl()))
                    {
                        umediaobject = umimage.toUrl();
                    } else
                    {
                        umediaobject = ((UMediaObject) (obj));
                        if (!TextUtils.isEmpty(umimage.getImageCachePath()))
                        {
                            umediaobject = umimage.getImageCachePath();
                        }
                    }
                }
            }
            s1 = ((UMVideo) (obj1)).getTitle();
            s2 = ((UMVideo) (obj1)).toUrl();
            obj1 = ((UMVideo) (obj1)).toUrl();
            s3 = mMessageFrom;
            s4 = msgFlag;
            if (isToCircle)
            {
                obj = "DYNAMIC2";
            } else
            {
                obj = "SMS";
            }
            obj = LWAPIFactory.createMediaMessage(s1, s, s, 4, umediaobject, s, umediaobject, s, s2, ((String) (obj1)), s3, 3.3999999999999999D, s4, ((String) (obj)));
        }
        return obj;
    }

    protected void initPlatformConfig()
    {
        String s;
        String s1;
        if (isToCircle)
        {
            mIcon = ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_laiwang_dynamic");
            mGrayIcon = ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_laiwang_dynamic_gray");
        } else
        {
            mIcon = ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_laiwang");
            mGrayIcon = ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_laiwang_gray");
        }
        mDefaultShareContent = mContext.getResources().getString(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_laiwang_default_content"));
        mLaiWangKey = mContext.getResources().getString(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_laiwang_key"));
        mLaiWangDynamicKey = mContext.getResources().getString(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_laiwang_dynamic_key"));
        mDefaultIcon = mContext.getApplicationInfo().icon;
        if (isToCircle)
        {
            s = "laiwang_dynamic";
        } else
        {
            s = "laiwang";
        }
        mKeyWord = s;
        if (isToCircle)
        {
            s = mLaiWangDynamicKey;
        } else
        {
            s = mLaiWangKey;
        }
        mShowWord = s;
        if (isToCircle)
        {
            s = "laiwang_dynamic";
        } else
        {
            s = "laiwang";
        }
        msgFlag = s;
        s = mContext.getApplicationInfo().loadLabel(mContext.getPackageManager()).toString();
        if (s.contains("."))
        {
            s = "\u56DE\u5230\u5E94\u7528";
        } else
        {
            s = (new StringBuilder("\u56DE\u5230")).append(s).toString();
        }
        s1 = mContext.getPackageName();
        mLWAPI = LWAPIFactory.createLWAPI(mContext, mAppId, mAppKey, mDefaultLWShareApi, s1, s);
    }

    public boolean isClientInstalled()
    {
        return DeviceConfig.isAppInstalled("com.alibaba.android.babylon", mContext);
    }

    public void setContentURL(String s)
    {
        mContentURL = s;
    }

    public void setMessageFrom(String s)
    {
        mMessageFrom = s;
    }

    protected void setSelectedPlatform()
    {
        if (isToCircle)
        {
            SocializeConfig.setSelectedPlatfrom(SHARE_MEDIA.LAIWANG_DYNAMIC);
            return;
        } else
        {
            SocializeConfig.setSelectedPlatfrom(SHARE_MEDIA.LAIWANG);
            return;
        }
    }

    public void setTitle(String s)
    {
        mTitle = s;
    }

    protected void shareAsync(com.umeng.socialize.media.UMediaObject.MediaType mediatype)
    {
        if (!validateData())
        {
            return;
        }
        if (mediatype == com.umeng.socialize.media.UMediaObject.MediaType.TEXT_IMAGE)
        {
            if (TextUtils.isEmpty(mShareContent))
            {
                mShareContent = mDefaultShareContent;
            }
            if (mShareMedia == null)
            {
                mShareMedia = new UMImage(mContext, mDefaultIcon);
                try
                {
                    Thread.sleep(600L);
                }
                catch (InterruptedException interruptedexception)
                {
                    interruptedexception.printStackTrace();
                }
            }
        }
        sendReport(Boolean.valueOf(doShare(createMessage(mediatype), mediatype)));
    }
}
