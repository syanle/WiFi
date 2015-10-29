// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sso;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.Tencent;
import com.tencent.tauth.UiError;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMShareMsg;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.controller.UMSsoHandler;
import com.umeng.socialize.db.OauthHelper;
import com.umeng.socialize.media.QZoneShareContent;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMVideo;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socialize.media.UMusic;
import com.umeng.socom.DeviceConfig;
import com.umeng.socom.util.StatisticsDataUtils;
import java.io.File;
import java.util.ArrayList;
import org.json.JSONObject;

public class QZoneSsoHandler extends UMSsoHandler
{
    private static class BaseIUiListener
        implements IUiListener
    {

        Activity activity;
        SocializeEntity entity;
        com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener listener;
        UMShareMsg shareMsg;

        public void onCancel()
        {
            if (listener != null)
            {
                listener.onComplete(SHARE_MEDIA.QZONE, 40000, entity);
            }
        }

        public void onComplete(JSONObject jsonobject)
        {
            if (listener != null)
            {
                listener.onStart();
            }
            QZoneSsoHandler.mSocializeConfig.fireAllListenersOnStart(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener);
            String s = jsonobject.optString("openid", "");
            OauthHelper.setUsid(activity, SHARE_MEDIA.QQ, s);
            OauthHelper.saveQQAccessToken(activity, jsonobject);
            QZoneSsoHandler.mTencent.shareToQQ(activity, QZoneSsoHandler.buildParams(shareMsg, true), QZoneSsoHandler.getShareToQQListener(activity, entity, listener));
        }

        public void onError(UiError uierror)
        {
            if (listener != null)
            {
                listener.onComplete(SHARE_MEDIA.QZONE, 40002, entity);
            }
        }

        public BaseIUiListener(Activity activity1, SocializeEntity socializeentity, UMShareMsg umsharemsg, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
        {
            activity = activity1;
            shareMsg = umsharemsg;
            listener = snspostlistener;
            entity = socializeentity;
        }
    }


    private static final String DEFAULT_TARGET_URL = "http://www.umeng.com/social";
    protected static final String TAG = "QZoneSsoHandler";
    public static boolean isShowToast = true;
    private static SocializeConfig mSocializeConfig = SocializeConfig.getSocializeConfig();
    private static String mTargetUrl = "";
    private static Tencent mTencent = null;
    protected Activity mActivity;
    private com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener mAuthListener;
    private IUiListener mUiListener;

    public QZoneSsoHandler(Activity activity)
    {
        mActivity = null;
        mAuthListener = null;
        mUiListener = new _cls1();
        mActivity = activity;
    }

    private static Bundle buildParams(UMShareMsg umsharemsg, boolean flag)
    {
        String s;
        Bundle bundle;
        bundle = new Bundle();
        s = umsharemsg.mText;
        umsharemsg = umsharemsg.getMedia();
        if (!(umsharemsg instanceof QZoneShareContent)) goto _L2; else goto _L1
_L1:
        String s1;
        Object obj;
        com.umeng.socialize.media.UMediaObject.MediaType mediatype;
        obj = (QZoneShareContent)umsharemsg;
        s = ((QZoneShareContent) (obj)).getTitle();
        s1 = ((QZoneShareContent) (obj)).getShareContent();
        if (!TextUtils.isEmpty(((QZoneShareContent) (obj)).getTargetUrl()))
        {
            mTargetUrl = ((QZoneShareContent) (obj)).getTargetUrl();
        }
        mediatype = ((QZoneShareContent) (obj)).getMediaType();
        if (mediatype != com.umeng.socialize.media.UMediaObject.MediaType.IMAGE) goto _L4; else goto _L3
_L3:
        obj = ((QZoneShareContent) (obj)).getShareImage();
        umsharemsg = ((UMShareMsg) (obj));
        if (!TextUtils.isEmpty(s1)) goto _L6; else goto _L5
_L5:
        byte byte0;
        byte0 = 5;
        umsharemsg = ((UMShareMsg) (obj));
_L12:
        bundle.putString("title", s);
        bundle.putString("summary", s1);
        if (byte0 != 1) goto _L8; else goto _L7
_L7:
        setShareToTextAndImage(bundle, umsharemsg);
_L10:
        if (!flag)
        {
            umsharemsg = new ArrayList();
            umsharemsg.add(bundle.getString("imageUrl"));
            bundle.remove("imageUrl");
            bundle.putStringArrayList("imageUrl", umsharemsg);
        }
        if (TextUtils.isEmpty(bundle.getString("title")))
        {
            bundle.putString("title", "\u5206\u4EAB\u5230QQ\u7A7A\u95F4");
        }
        return bundle;
_L4:
        if (mediatype == com.umeng.socialize.media.UMediaObject.MediaType.MUSIC)
        {
            umsharemsg = ((QZoneShareContent) (obj)).getShareMusic();
            byte0 = 2;
            continue; /* Loop/switch isn't completed */
        }
        if (mediatype == com.umeng.socialize.media.UMediaObject.MediaType.VEDIO)
        {
            umsharemsg = ((QZoneShareContent) (obj)).getShareVideo();
            byte0 = 2;
            continue; /* Loop/switch isn't completed */
        }
          goto _L6
_L2:
        if (umsharemsg instanceof UMImage)
        {
            if (TextUtils.isEmpty(s) && umsharemsg != null)
            {
                s1 = s;
                s = "";
                byte0 = 5;
                continue; /* Loop/switch isn't completed */
            }
        } else
        if ((umsharemsg instanceof UMVideo) || (umsharemsg instanceof UMusic))
        {
            s1 = s;
            s = "";
            byte0 = 2;
            continue; /* Loop/switch isn't completed */
        }
        break; /* Loop/switch isn't completed */
_L8:
        if (byte0 == 5)
        {
            setShareToImage(bundle, umsharemsg);
        } else
        if (byte0 == 2)
        {
            setShareToAudio(bundle, umsharemsg);
        }
        if (true) goto _L10; else goto _L9
_L9:
        s1 = s;
        s = "";
        byte0 = 1;
        continue; /* Loop/switch isn't completed */
_L6:
        byte0 = 1;
        if (true) goto _L12; else goto _L11
_L11:
    }

    private static UMShareMsg getShareMsg(SocializeEntity socializeentity)
    {
        if (socializeentity.getShareMsg() != null)
        {
            UMShareMsg umsharemsg = socializeentity.getShareMsg();
            socializeentity.setShareMsg(null);
            return umsharemsg;
        } else
        {
            UMShareMsg umsharemsg1 = new UMShareMsg();
            umsharemsg1.mText = socializeentity.getShareContent();
            umsharemsg1.setMediaData(socializeentity.getMedia());
            return umsharemsg1;
        }
    }

    private static IUiListener getShareToQQListener(final Activity activity, final SocializeEntity entity, final com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener listener)
    {
        com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener asnspostlistener[] = (com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener[])mSocializeConfig.getListener(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener);
        return new _cls2();
    }

    public static void invokeQQShare(SocializeEntity socializeentity, Context context, String s, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        if (context instanceof Activity) goto _L2; else goto _L1
_L1:
        Log.e("QZoneSsoHandler", "\u5206\u4EAB\u65F6\u8BF7\u4F20\u9012Activity\u5BF9\u8C61...");
_L4:
        return;
_L2:
        Activity activity;
        UMShareMsg umsharemsg;
        mSocializeConfig.fireAllListenersOnStart(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener);
        activity = (Activity)context;
        umsharemsg = getShareMsg(socializeentity);
        String as[] = OauthHelper.getAccessTokenForQQ(context);
        if (as == null)
        {
            break; /* Loop/switch isn't completed */
        }
        mTencent = Tencent.createInstance(s, activity);
        mTencent.setOpenId(as[1]);
        mTencent.setAccessToken(as[0], as[2]);
        mTencent.shareToQQ(activity, buildParams(umsharemsg, true), getShareToQQListener(activity, socializeentity, snspostlistener));
_L5:
        if (!DeviceConfig.isAppInstalled("com.tencent.mobileqq", context))
        {
            mSocializeConfig.fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, SHARE_MEDIA.QZONE, 200, socializeentity);
            sendAnalytic(activity, socializeentity);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (mTencent == null)
        {
            mTencent = Tencent.createInstance(s, activity);
            mTencent.login(activity, s, new BaseIUiListener(activity, socializeentity, umsharemsg, snspostlistener));
        } else
        if (!mTencent.isSessionValid())
        {
            mTencent.reAuth(activity, "all", new BaseIUiListener(activity, socializeentity, umsharemsg, snspostlistener));
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    public static void invokeWebViewShare(SocializeEntity socializeentity, Context context, String s, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        s = Tencent.createInstance(s, context);
        if (context instanceof Activity)
        {
            context = (Activity)context;
            Bundle bundle = buildParams(getShareMsg(socializeentity), false);
            mSocializeConfig.fireAllListenersOnStart(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener);
            s.shareToQzone(context, bundle, getShareToQQListener(context, socializeentity, snspostlistener));
            mSocializeConfig.fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, SHARE_MEDIA.QZONE, 200, socializeentity);
            sendAnalytic(context, socializeentity);
            return;
        } else
        {
            Log.e("QZoneSsoHandler", "\u5206\u4EAB\u65F6\u8BF7\u4F20\u9012Activity\u5BF9\u8C61...");
            return;
        }
    }

    private static boolean isImageFileExist(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            return (new File(s)).exists();
        } else
        {
            return false;
        }
    }

    private static void sendAnalytic(Activity activity, SocializeEntity socializeentity)
    {
        UMShareMsg umsharemsg = getShareMsg(socializeentity);
        SocializeUtils.sendAnalytic(activity, socializeentity.mDescriptor, umsharemsg.mText, umsharemsg.getMedia(), "qzone");
        try
        {
            StatisticsDataUtils.addStatisticsData(activity, SHARE_MEDIA.QZONE, 24);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            return;
        }
    }

    private static void setShareToAudio(Bundle bundle, UMediaObject umediaobject)
    {
        Object obj;
        if (umediaobject == null || !(umediaobject instanceof UMusic) && !(umediaobject instanceof UMVideo))
        {
            Log.e("QZoneSsoHandler", "\u8BF7\u8BBE\u7F6E\u5206\u4EAB\u5A92\u4F53...");
            return;
        }
        obj = "";
        if (!(umediaobject instanceof UMusic)) goto _L2; else goto _L1
_L1:
        obj = (UMusic)umediaobject;
        if (!TextUtils.isEmpty(((UMusic) (obj)).getTargetUrl()))
        {
            bundle.putString("targetUrl", ((UMusic) (obj)).getTargetUrl());
        } else
        {
            bundle.putString("targetUrl", ((UMusic) (obj)).toUrl());
        }
        if (!TextUtils.isEmpty(((UMusic) (obj)).getThumb()))
        {
            bundle.putString("imageUrl", ((UMusic) (obj)).getThumb());
        } else
        if (((UMusic) (obj)).getThumbImage() != null)
        {
            Object obj1 = ((UMusic) (obj)).getThumbImage();
            if (!((UMImage) (obj1)).isSerialized())
            {
                ((UMImage) (obj1)).waitImageToSerialize();
            }
            if (!TextUtils.isEmpty(((UMImage) (obj1)).toUrl()))
            {
                bundle.putString("imageUrl", ((UMImage) (obj1)).toUrl());
            } else
            {
                obj1 = ((UMImage) (obj1)).getImageCachePath();
                if (isImageFileExist(((String) (obj1))))
                {
                    bundle.putString("imageUrl", ((String) (obj1)));
                }
            }
        }
        obj = ((UMusic) (obj)).getTitle();
_L4:
        bundle.putString("audio_url", umediaobject.toUrl());
        bundle.putInt("req_type", 2);
        bundle.putString("title", ((String) (obj)));
        return;
_L2:
        if (!(umediaobject instanceof UMVideo))
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = (UMVideo)umediaobject;
        if (!TextUtils.isEmpty(((UMVideo) (obj)).getTargetUrl()))
        {
            bundle.putString("targetUrl", ((UMVideo) (obj)).getTargetUrl());
        } else
        {
            bundle.putString("targetUrl", ((UMVideo) (obj)).toUrl());
        }
        if (TextUtils.isEmpty(((UMVideo) (obj)).getThumb()))
        {
            break; /* Loop/switch isn't completed */
        }
        bundle.putString("imageUrl", ((UMVideo) (obj)).getThumb());
_L6:
        obj = ((UMVideo) (obj)).getTitle();
        if (true) goto _L4; else goto _L3
_L3:
        if (((UMVideo) (obj)).getThumbImage() == null) goto _L6; else goto _L5
_L5:
        Object obj2 = ((UMVideo) (obj)).getThumbImage();
        if (!TextUtils.isEmpty(((UMImage) (obj2)).toUrl()))
        {
            bundle.putString("imageUrl", ((UMImage) (obj2)).toUrl());
        } else
        {
            obj2 = ((UMImage) (obj2)).getImageCachePath();
            if (isImageFileExist(((String) (obj2))))
            {
                bundle.putString("imageLocalUrl", ((String) (obj2)));
            }
        }
          goto _L6
    }

    private static void setShareToImage(Bundle bundle, UMediaObject umediaobject)
    {
        if (umediaobject == null || !(umediaobject instanceof UMImage))
        {
            Log.e("QZoneSsoHandler", "\u5206\u4EAB\u56FE\u7247\u9519\u8BEF...");
        }
        umediaobject = (UMImage)umediaobject;
        if (umediaobject != null)
        {
            if (!umediaobject.isSerialized())
            {
                umediaobject.waitImageToSerialize();
            }
            if (!TextUtils.isEmpty(umediaobject.getTargetUrl()))
            {
                bundle.putString("targetUrl", umediaobject.getTargetUrl());
            } else
            if (!TextUtils.isEmpty(umediaobject.toUrl()))
            {
                bundle.putString("targetUrl", umediaobject.toUrl());
            } else
            {
                Log.e("QZoneSsoHandler", "\u8BF7\u8BBE\u7F6EQZone targetUrl...");
            }
        }
        if (umediaobject == null || TextUtils.isEmpty(umediaobject.toUrl())) goto _L2; else goto _L1
_L1:
        bundle.putString("imageUrl", umediaobject.toUrl());
_L4:
        bundle.putInt("req_type", 5);
        return;
_L2:
        if (umediaobject != null && !TextUtils.isEmpty(umediaobject.getImageCachePath()))
        {
            umediaobject = umediaobject.getImageCachePath();
            if (isImageFileExist(umediaobject))
            {
                bundle.putString("imageLocalUrl", umediaobject);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static void setShareToTextAndImage(Bundle bundle, UMediaObject umediaobject)
    {
        if (umediaobject != null && (umediaobject instanceof UMImage))
        {
            umediaobject = (UMImage)umediaobject;
        } else
        {
            umediaobject = null;
        }
        bundle.putInt("req_type", 1);
        if (!TextUtils.isEmpty(mTargetUrl))
        {
            bundle.putString("targetUrl", mTargetUrl);
        } else
        if (umediaobject != null)
        {
            if (!TextUtils.isEmpty(umediaobject.getTargetUrl()))
            {
                bundle.putString("targetUrl", umediaobject.getTargetUrl());
            } else
            if (!TextUtils.isEmpty(umediaobject.toUrl()))
            {
                bundle.putString("targetUrl", umediaobject.toUrl());
            } else
            {
                bundle.putString("targetUrl", "http://www.umeng.com/social");
                Log.w("QZoneSsoHandler", "\u6CA1\u6709\u8BBE\u7F6EQZone targetUrl\uFF0C\u6B64\u65F6\u5206\u4EAB\u5C06\u91C7\u7528\u9ED8\u8BA4\u8FDE\u63A5");
            }
        } else
        {
            bundle.putString("targetUrl", "http://www.umeng.com/social");
            Log.w("QZoneSsoHandler", "\u6CA1\u6709\u8BBE\u7F6EQZone targetUrl\uFF0C\u6B64\u65F6\u5206\u4EAB\u5C06\u91C7\u7528\u9ED8\u8BA4\u8FDE\u63A5");
        }
        if (umediaobject != null && !umediaobject.isSerialized())
        {
            umediaobject.waitImageToSerialize();
        }
        if (umediaobject == null || TextUtils.isEmpty(umediaobject.toUrl())) goto _L2; else goto _L1
_L1:
        bundle.putString("imageUrl", umediaobject.toUrl());
_L4:
        return;
_L2:
        if (umediaobject == null || TextUtils.isEmpty(umediaobject.getImageCachePath())) goto _L4; else goto _L3
_L3:
        umediaobject = umediaobject.getImageCachePath();
        if (!isImageFileExist(umediaobject)) goto _L4; else goto _L5
_L5:
        bundle.putString("imageUrl", umediaobject);
        return;
        if (true) goto _L7; else goto _L6
_L7:
        break MISSING_BLOCK_LABEL_43;
_L6:
    }

    public static void setTargetUrl(String s)
    {
        mTargetUrl = s;
    }

    public void authorize(Activity activity, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        if (mTencent != null && mTencent.isSessionValid())
        {
            mTencent.logout(mActivity);
        }
        mAuthListener = umauthlistener;
        SocializeConfig.setSelectedPlatfrom(SHARE_MEDIA.QZONE);
        initTencent(getToken(), mActivity);
        if (mTencent != null && mTencent.getAppId() != null && mTencent.getAppId().equals(getToken()) && mTencent.isSessionValid())
        {
            mTencent.reAuth(mActivity, "all", mUiListener);
        } else
        {
            if (mTencent != null)
            {
                mTencent.login(mActivity, "all", mUiListener);
                return;
            }
            if (mActivity != null)
            {
                Toast.makeText(mActivity, "QQ\u7A7A\u95F4\u6388\u6743\u5931\u8D25...", 0).show();
                return;
            }
        }
    }

    public void authorizeCallBack(int i, int j, Intent intent)
    {
    }

    protected Bundle getAuthorizedData(JSONObject jsonobject)
    {
        String s = jsonobject.optString("access_token", "");
        String s1 = jsonobject.optString("openid", "");
        jsonobject = jsonobject.optString("expires_in", "");
        Bundle bundle = new Bundle();
        bundle.putString("access_token", s);
        bundle.putString("openid", s1);
        bundle.putString("uid", s1);
        bundle.putString("expires_in", jsonobject);
        return bundle;
    }

    public int getRequstCode()
    {
        return 5657;
    }

    protected void initTencent(String s, Context context)
    {
        Log.d("", (new StringBuilder("#### qzone app id  = ")).append(s).toString());
        mTencent = Tencent.createInstance(s, context);
    }








    private class _cls1
        implements IUiListener
    {

        final QZoneSsoHandler this$0;

        public void onCancel()
        {
            Log.d("### Tencent Sso Authorize --> onCancel", "Authorize Cancel");
            if (mAuthListener != null)
            {
                mAuthListener.onCancel(SHARE_MEDIA.QZONE);
            }
        }

        public void onComplete(JSONObject jsonobject)
        {
            Log.d("### ", "### Tencent Sso Authorize --> onComplete");
            jsonobject = getAuthorizedData(jsonobject);
            if (mAuthListener != null)
            {
                mAuthListener.onComplete(jsonobject, SHARE_MEDIA.QZONE);
            }
        }

        public void onError(UiError uierror)
        {
            Log.d("Tencent SSo Authorize --> onError:", uierror.toString());
            if (mAuthListener != null)
            {
                mAuthListener.onError(new SocializeException(uierror.errorCode, uierror.errorMessage), SHARE_MEDIA.QZONE);
            }
        }

        _cls1()
        {
            this$0 = QZoneSsoHandler.this;
            super();
        }
    }


    private class _cls2
        implements IUiListener
    {

        private final Activity val$activity;
        private final SocializeEntity val$entity;
        private final com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener val$listener;

        public void onCancel()
        {
            if (listener != null)
            {
                listener.onComplete(SHARE_MEDIA.QZONE, 200, entity);
            }
            QZoneSsoHandler.mSocializeConfig.fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, SHARE_MEDIA.QZONE, 200, entity);
            QZoneSsoHandler.isShowToast = false;
            QZoneSsoHandler.sendAnalytic(activity, entity);
        }

        public void onComplete(JSONObject jsonobject)
        {
            if (listener != null)
            {
                listener.onComplete(SHARE_MEDIA.QZONE, 200, entity);
            }
            QZoneSsoHandler.mSocializeConfig.fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, SHARE_MEDIA.QZONE, 200, entity);
            QZoneSsoHandler.isShowToast = false;
            QZoneSsoHandler.sendAnalytic(activity, entity);
        }

        public void onError(UiError uierror)
        {
            Log.e("IUiListener", (new StringBuilder("error code : ")).append(uierror.errorCode).append("       error message:").append(uierror.errorMessage).toString());
            if (listener != null)
            {
                listener.onComplete(SHARE_MEDIA.QZONE, 40002, entity);
            }
            QZoneSsoHandler.mSocializeConfig.fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, SHARE_MEDIA.QZONE, 40002, entity);
        }

        _cls2()
        {
            listener = snspostlistener;
            entity = socializeentity;
            activity = activity1;
            super();
        }
    }

}
