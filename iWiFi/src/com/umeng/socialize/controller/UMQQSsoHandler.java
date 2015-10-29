// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.tencent.tauth.Tencent;
import com.umeng.socialize.bean.CustomPlatform;
import com.umeng.socialize.bean.QQShareMsg;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SNSPair;
import com.umeng.socialize.bean.ShareType;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMToken;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.media.QQShareContent;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMVideo;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socialize.media.UMusic;
import com.umeng.socialize.net.utils.SocializeNetUtils;
import com.umeng.socialize.view.ShareActivity;
import com.umeng.socom.DeviceConfig;
import com.umeng.socom.util.StatisticsDataUtils;
import com.umeng.socom.util.b;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.umeng.socialize.controller:
//            UMSsoHandler, RequestType

public class UMQQSsoHandler extends UMSsoHandler
{
    private static interface ObtainAppIdListener
    {

        public abstract void onComplete();
    }

    private static class TimeOutHandler extends Handler
    {

        public void handleMessage(Message message)
        {
            if (message.what == 123)
            {
                UMQQSsoHandler.safeCloseDialog();
                UMQQSsoHandler.APP_ID = "";
            }
        }

        private TimeOutHandler()
        {
        }

        TimeOutHandler(TimeOutHandler timeouthandler)
        {
            this();
        }
    }


    private static String APP_ID = "100424468";
    private static boolean GOTO_SHARE_ACTIVITY = false;
    private static final String TAG = "UMQQSsoHandler";
    private static final int TIME_OUT_CODE = 123;
    private static boolean flag = true;
    private static boolean isShareClick = false;
    public static Activity mActivity = null;
    private static String mImageUrl;
    private static ProgressDialog mProgressDialog = null;
    private static CustomPlatform mQQPlatform = null;
    public static QQShareMsg mQqShareMsg = new QQShareMsg("\u5206\u4EAB\u5230QQ", "http://www.umeng.com/social");
    private static int mShareType = 1;
    private static Tencent mTencent = null;
    private static String mTitle;
    private com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener authListener;
    private boolean isTimeOut;
    private int mDefaultIcon;
    private SocializeEntity mEntity;
    private Handler mHandler;
    private int mMediaType;
    private UMediaObject mShareMedia;
    private com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener mSnsPostListener;
    private SocializeConfig mSocializeConfig;
    private Runnable mTimerRunnable;

    protected UMQQSsoHandler(Activity activity)
    {
        this(activity, "");
    }

    protected UMQQSsoHandler(Activity activity, String s)
    {
        mShareMedia = null;
        mDefaultIcon = 0;
        mSocializeConfig = SocializeConfig.getSocializeConfig();
        mHandler = new TimeOutHandler(null);
        isTimeOut = false;
        mMediaType = 0;
        mTimerRunnable = new _cls1();
        authListener = new _cls2();
        APP_ID = s;
        mActivity = activity;
        mDefaultIcon = ResContainer.getResourceId(mActivity, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_qq_on");
        mProgressDialog = new ProgressDialog(mActivity, ResContainer.getResourceId(mActivity, com.umeng.socialize.common.ResContainer.ResType.STYLE, "Theme.UMDialog"));
        s = activity.getString(ResContainer.getResourceId(activity, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_waitting_qq"));
        mProgressDialog.setMessage(s);
        if (!TextUtils.isEmpty(APP_ID))
        {
            initTencent();
        }
        b.a(DeviceConfig.getAppkey(activity));
    }

    private static Bundle buildParams()
    {
        Bundle bundle = new Bundle();
        if (mQqShareMsg.i())
        {
            boolean flag1;
            if (!TextUtils.isEmpty(mQqShareMsg.a()))
            {
                bundle.putString("title", mQqShareMsg.a());
            } else
            if (!TextUtils.isEmpty(mTitle))
            {
                bundle.putString("title", mTitle);
            } else
            if (mShareType != 5)
            {
                bundle.putString("title", "\u5206\u4EAB\u5230QQ");
            }
            if (mShareType == 1)
            {
                setShareToTextAndImage(bundle);
            } else
            if (mShareType == 5)
            {
                setShareToImage(bundle);
            } else
            if (mShareType == 2)
            {
                setShareToAudio(bundle);
            }
            flag1 = Environment.getExternalStorageState().equals("mounted");
            if (!TextUtils.isEmpty(bundle.getString("imageUrl")) && !flag1)
            {
                Toast.makeText(mActivity, "\u65E0SD\u5361\uFF0C\u4E0D\u80FD\u8FDB\u884C\u542B\u6709\u56FE\u7247\u7684\u5206\u4EAB", 0).show();
            }
            Log.i("UMQQSsoHandler", (new StringBuilder("share image url :")).append(bundle.getString("imageUrl")).toString());
        } else
        {
            Toast.makeText(mActivity, "\u4F20\u5165\u7684\u53C2\u6570\u6709\u8BEF, \u8BF7\u6B63\u786E\u8BBE\u7F6E\u8981\u5206\u4EAB\u7684\u5185\u5BB9...", 0).show();
        }
        Log.d("UMQQSsoHandler", (new StringBuilder("#####  qq \u53C2\u6570 : ")).append(mQqShareMsg.toString()).toString());
        return bundle;
    }

    private UMToken buildUmToken(JSONObject jsonobject)
    {
        String s = jsonobject.optString("access_token", "");
        jsonobject = jsonobject.optString("openid", "");
        jsonobject = UMToken.buildToken(new SNSPair(mQQPlatform.mKeyword, jsonobject), s, jsonobject);
        Log.d("UMQQSsoHandler", (new StringBuilder("QQ TOKEN : ")).append(jsonobject.toString()).toString());
        return jsonobject;
    }

    private byte[] fileToByte(String s)
    {
        Object obj1 = null;
        if (!TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        s = obj1;
_L3:
        return s;
_L2:
        Object obj = new FileInputStream(s);
        s = ((String) (obj));
        byte abyte0[] = new ByteArrayOutputStream(((FileInputStream) (obj)).available());
        s = ((String) (obj));
        byte abyte1[] = new byte[1024];
_L4:
        s = ((String) (obj));
        int i = ((FileInputStream) (obj)).read(abyte1);
        if (i != -1)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        s = ((String) (obj));
        abyte0 = abyte0.toByteArray();
        s = abyte0;
        if (obj != null)
        {
            try
            {
                ((FileInputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                return abyte0;
            }
            return abyte0;
        }
          goto _L3
        s = ((String) (obj));
        abyte0.write(abyte1, 0, i);
          goto _L4
        Exception exception;
        exception;
_L8:
        s = ((String) (obj));
        exception.printStackTrace();
        s = obj1;
        if (obj == null) goto _L3; else goto _L5
_L5:
        try
        {
            ((FileInputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return null;
        obj;
        s = null;
_L7:
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
            }
        }
        throw obj;
        obj;
        if (true) goto _L7; else goto _L6
_L6:
        exception;
        obj = null;
          goto _L8
    }

    private void getQQAppIdFromServer(final ObtainAppIdListener listener)
    {
        if (DeviceConfig.isNetworkAvailable(mActivity))
        {
            isTimeOut = false;
            (new _cls4()).execute();
            return;
        } else
        {
            Toast.makeText(mActivity, "\u60A8\u7684\u7F51\u7EDC\u4E0D\u53EF\u7528,\u8BF7\u68C0\u67E5\u7F51\u7EDC\u8FDE\u63A5...", 0).show();
            safeCloseDialog();
            return;
        }
    }

    public static Tencent getTencent()
    {
        return mTencent;
    }

    private void gotoShare()
    {
        if (GOTO_SHARE_ACTIVITY)
        {
            Intent intent = new Intent(mActivity, com/umeng/socialize/view/ShareActivity);
            intent.putExtra("QQ-SSO", true);
            intent.putExtra("media_type", mMediaType);
            intent.putExtra("share_content", mQqShareMsg);
            intent.putExtra("sns", SHARE_MEDIA.QQ.toString());
            if (mEntity != null && !TextUtils.isEmpty(mEntity.mEntityKey))
            {
                intent.putExtra("dc", mEntity.mEntityKey);
            }
            mActivity.startActivity(intent);
            return;
        } else
        {
            shareToQQ();
            return;
        }
    }

    private void initTencent()
    {
        if (mTencent == null && mActivity != null)
        {
            mTencent = Tencent.createInstance(APP_ID, mActivity);
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

    private boolean isTencentInited()
    {
        return mTencent != null && mTencent.isSessionValid() && !TextUtils.isEmpty(mTencent.getOpenId());
    }

    private void loginDeal(final com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener authListener)
    {
        if (!isTencentInited()) goto _L2; else goto _L1
_L1:
        mTencent.logout(mActivity);
_L4:
        if (mEntity != null && isShareClick)
        {
            mEntity.addStatisticsData(mActivity, SHARE_MEDIA.QQ, 3);
        }
        Log.i("UMQQSsoHandler", "QQ oauth login...");
        mTencent.login(mActivity, "all", new _cls7());
        return;
_L2:
        if (mTencent == null)
        {
            initTencent();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private boolean ready()
    {
        boolean flag1;
        if (!DeviceConfig.isAppInstalled("com.tencent.mobileqq", mActivity))
        {
            flag1 = true;
        } else
        {
            boolean flag2 = isTencentInited();
            flag1 = flag2;
            if (!flag2)
            {
                Log.d("UMQQSsoHandler", "mTencent is not ready.");
                return flag2;
            }
        }
        return flag1;
    }

    private static void safeCloseDialog()
    {
        if (mProgressDialog != null && !mActivity.isFinishing() && mProgressDialog.isShowing())
        {
            mProgressDialog.dismiss();
        }
    }

    private static void safeShowDialog()
    {
        if (mProgressDialog != null && !mActivity.isFinishing() && !mProgressDialog.isShowing())
        {
            mProgressDialog.show();
        }
    }

    private void sendReport()
    {
        if (flag)
        {
            SocializeUtils.sendAnalytic(mActivity, mEntity.mDescriptor, mQqShareMsg.f(), mShareMedia, "qq");
            try
            {
                StatisticsDataUtils.addStatisticsData(mActivity, SHARE_MEDIA.QQ, 16);
            }
            catch (Exception exception) { }
            flag = false;
        }
    }

    private void setImageUrl(String s, int i)
    {
        mImageUrl = s;
        if (!TextUtils.isEmpty(s))
        {
            mQqShareMsg.k().put(Integer.valueOf(i), s);
        }
    }

    private void setShareContent(String s, UMediaObject umediaobject)
    {
        String s2 = "";
        Object obj;
        String s1;
        if (umediaobject != null && (umediaobject instanceof QQShareContent))
        {
            obj = (QQShareContent)umediaobject;
            s2 = ((QQShareContent) (obj)).getShareContent();
            s1 = ((QQShareContent) (obj)).getTargetUrl();
            s = ((QQShareContent) (obj)).getTitle();
            Object obj1 = ((QQShareContent) (obj)).getMediaType();
            if (obj1 == com.umeng.socialize.media.UMediaObject.MediaType.IMAGE)
            {
                obj = ((QQShareContent) (obj)).getShareImage();
                umediaobject = s;
            } else
            if (obj1 == com.umeng.socialize.media.UMediaObject.MediaType.MUSIC)
            {
                obj = ((QQShareContent) (obj)).getShareMusic();
                umediaobject = s;
            } else
            if (obj1 == com.umeng.socialize.media.UMediaObject.MediaType.VEDIO)
            {
                obj = ((QQShareContent) (obj)).getShareVideo();
                umediaobject = s;
            } else
            {
                obj = umediaobject;
                umediaobject = s;
            }
        } else
        {
            s1 = "";
            obj = umediaobject;
            umediaobject = s2;
            s2 = s;
        }
        mShareMedia = ((UMediaObject) (obj));
        if (obj != null && !TextUtils.isEmpty(((UMediaObject) (obj)).toUrl()) && !(obj instanceof UMImage))
        {
            if (obj instanceof UMusic)
            {
                obj1 = (UMusic)obj;
                umediaobject = ((UMusic) (obj1)).getTitle();
                s = ((UMusic) (obj1)).getThumb();
                if (TextUtils.isEmpty(s) && ((UMusic) (obj1)).getThumbImage() != null)
                {
                    if (!TextUtils.isEmpty(((UMusic) (obj1)).getThumbImage().toUrl()))
                    {
                        s = ((UMusic) (obj1)).getThumbImage().toUrl();
                    } else
                    if (!TextUtils.isEmpty(((UMusic) (obj1)).getThumbImage().getImageCachePath()))
                    {
                        s = ((UMusic) (obj1)).getThumbImage().getImageCachePath();
                    }
                }
                mQqShareMsg.g(((UMediaObject) (obj)).toUrl());
                mQqShareMsg.c(((UMediaObject) (obj)).toUrl());
                mMediaType = 2;
            } else
            if (obj instanceof UMVideo)
            {
                obj1 = (UMVideo)obj;
                umediaobject = ((UMVideo) (obj1)).getTitle();
                s = ((UMVideo) (obj1)).getThumb();
                if (TextUtils.isEmpty(s) && ((UMVideo) (obj1)).getThumbImage() != null)
                {
                    if (!TextUtils.isEmpty(((UMVideo) (obj1)).getThumbImage().toUrl()))
                    {
                        s = ((UMVideo) (obj1)).getThumbImage().toUrl();
                    } else
                    if (!TextUtils.isEmpty(((UMVideo) (obj1)).getThumbImage().getImageCachePath()))
                    {
                        s = ((UMVideo) (obj1)).getThumbImage().getImageCachePath();
                    }
                }
                mQqShareMsg.c(((UMediaObject) (obj)).toUrl());
                mMediaType = 3;
            } else
            {
                s = "";
            }
            mShareType = 2;
            mQqShareMsg.a(umediaobject);
            mQqShareMsg.e(s2);
            mQqShareMsg.b(s);
        } else
        if (obj != null && (obj instanceof UMImage))
        {
            obj = (UMImage)obj;
            s = umediaobject;
            if (TextUtils.isEmpty(umediaobject))
            {
                s = ((UMImage) (obj)).getTitle();
            }
            mQqShareMsg.a(s);
            mQqShareMsg.e(s2);
            mQqShareMsg.b(((UMImage) (obj)).toUrl());
            if (!((UMImage) (obj)).isSerialized())
            {
                ((UMImage) (obj)).waitImageToSerialize();
            }
            mQqShareMsg.f(((UMImage) (obj)).getImageCachePath());
            mMediaType = 1;
            if (TextUtils.isEmpty(s2))
            {
                mShareType = 5;
            }
        } else
        if (!TextUtils.isEmpty(mQqShareMsg.c()))
        {
            mQqShareMsg.e(s2);
        } else
        {
            Log.e("UMQQSsoHandler", "\u8BBE\u7F6E\u7684QQ\u5206\u4EAB\u5185\u5BB9\u4E0D\u5408\u6CD5!\u5206\u4EAB\u7684\u591A\u5A92\u4F53\u5FC5\u987B\u662Furl\u5F62\u5F0F,\u4E0D\u80FD\u4F20\u9012\u672C\u5730\u6587\u4EF6.\u8BF7\u53C2\u8003CustomPlatformFragment\u4E2D\u7684addQQPlatform\u65B9\u6CD5");
            safeCloseDialog();
        }
        if (!TextUtils.isEmpty(s1))
        {
            mQqShareMsg.c(s1);
        }
    }

    private static void setShareToAudio(Bundle bundle)
    {
        String s = mQqShareMsg.c();
        String s1 = mQqShareMsg.g();
        bundle.putInt("req_type", 2);
        bundle.putString("summary", mQqShareMsg.f());
        bundle.putString("targetUrl", s);
        if (mQqShareMsg != null && !TextUtils.isEmpty(mQqShareMsg.b()))
        {
            bundle.putString("imageUrl", mQqShareMsg.b());
        } else
        if (mQqShareMsg != null && !TextUtils.isEmpty(s1) && isImageFileExist(s1))
        {
            bundle.putString("imageLocalUrl", s1);
        }
        s1 = mQqShareMsg.h();
        if (!TextUtils.isEmpty(s1))
        {
            s = s1;
        }
        bundle.putString("audio_url", s);
    }

    private static void setShareToImage(Bundle bundle)
    {
        String s;
        String s1;
        s = mQqShareMsg.g();
        s1 = mQqShareMsg.b();
        if (mQqShareMsg == null || TextUtils.isEmpty(s1)) goto _L2; else goto _L1
_L1:
        bundle.putString("imageUrl", s1);
_L4:
        bundle.putInt("req_type", 5);
        return;
_L2:
        if (mQqShareMsg != null && !TextUtils.isEmpty(s) && isImageFileExist(s))
        {
            bundle.putString("imageLocalUrl", s);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static void setShareToTextAndImage(Bundle bundle)
    {
        bundle.putInt("req_type", 1);
        bundle.putString("summary", mQqShareMsg.f());
        bundle.putString("targetUrl", mQqShareMsg.c());
        String s = mQqShareMsg.g();
        String s1 = mQqShareMsg.b();
        if (mQqShareMsg != null && !TextUtils.isEmpty(s1))
        {
            bundle.putString("imageUrl", s1);
        } else
        if (mQqShareMsg != null && !TextUtils.isEmpty(s))
        {
            bundle.putString("imageUrl", s);
            return;
        }
    }

    private void uploadToken(final Context context, final UMToken token)
    {
        if (DeviceConfig.isNetworkAvailable(mActivity))
        {
            (new _cls9()).execute();
            return;
        } else
        {
            Toast.makeText(context, "\u60A8\u7684\u7F51\u7EDC\u4E0D\u53EF\u7528,\u8BF7\u68C0\u67E5\u7F51\u7EDC\u8FDE\u63A5...", 0).show();
            safeCloseDialog();
            return;
        }
    }

    public void authorize(Activity activity, final com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener authListener)
    {
        if (isTencentInited())
        {
            mTencent.logout(mActivity);
        } else
        if (mTencent == null)
        {
            Log.e("UMQQSsoHandler", "Tencent\u6210\u5458\u53D8\u91CF\u672A\u521D\u59CB\u5316!!");
            return;
        }
        login(new _cls5());
    }

    public void authorizeCallBack(int i, int j, Intent intent)
    {
        Log.i("UMQQSsoHandler", "had been QQ sso authorizeCallBack...");
    }

    public final CustomPlatform build()
    {
        mQQPlatform = new CustomPlatform("qq", "QQ\u597D\u53CB", mDefaultIcon);
        mQQPlatform.mGrayIcon = ResContainer.getResourceId(mActivity, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_qq_off");
        mQQPlatform.mClickListener = new _cls3();
        return mQQPlatform;
    }

    public void canOpenShareActivity(boolean flag1)
    {
        GOTO_SHARE_ACTIVITY = flag1;
    }

    public void getBitmapUrl(Context context, final UMediaObject media, String s)
    {
        if (media == null)
        {
            Log.e("UMQQSsoHandler", (new StringBuilder("media is null...")).append(media).toString());
        }
        (new _cls11()).execute();
    }

    public boolean getCanOpenShareActivity()
    {
        return GOTO_SHARE_ACTIVITY;
    }

    public QQShareMsg getQqShareMsg()
    {
        return mQqShareMsg;
    }

    public int getRequstCode()
    {
        return 5658;
    }

    public String getTargetUrl()
    {
        return mQqShareMsg.c();
    }

    public boolean isCanOpenShareActivity()
    {
        return GOTO_SHARE_ACTIVITY;
    }

    public void login(final com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener authListener)
    {
        if (TextUtils.isEmpty(APP_ID))
        {
            getQQAppIdFromServer(new _cls6());
            return;
        } else
        {
            loginDeal(authListener);
            return;
        }
    }

    public void setTargetUrl(String s)
    {
        if (!TextUtils.isEmpty(s) && SocializeNetUtils.startWithHttp(s))
        {
            mQqShareMsg.c(s);
            return;
        } else
        {
            Log.d("UMQQSsoHandler", "target url \u5FC5\u987B\u586B\u5199, \u4E14\u5FC5\u987B\u4EE5\"http://\"\u5F00\u5934.");
            return;
        }
    }

    public void setTitle(String s)
    {
        mTitle = s;
        mQqShareMsg.a(mTitle);
    }

    public void shareToQQ()
    {
        if (ready())
        {
            if (mSnsPostListener != null)
            {
                mSnsPostListener.onStart();
            }
            mSocializeConfig.fireAllListenersOnStart(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener);
            flag = true;
            if (!DeviceConfig.isAppInstalled("com.tencent.mobileqq", mActivity))
            {
                safeCloseDialog();
            }
            mTencent.shareToQQ(mActivity, buildParams(), new _cls10());
            mEntity.setShareType(ShareType.NORMAL);
            if (!DeviceConfig.isAppInstalled("com.tencent.mobileqq", mActivity))
            {
                mSocializeConfig.fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, SHARE_MEDIA.QZONE, 200, mEntity);
                sendReport();
            }
            return;
        } else
        {
            Log.d("UMQQSsoHandler", "QQ\u5E73\u53F0\u8FD8\u6CA1\u6709\u6388\u6743");
            authorize(mActivity, null);
            return;
        }
    }

    public void shareToQQ(String s)
    {
        mQqShareMsg.e(s);
        shareToQQ();
    }

    static 
    {
        GOTO_SHARE_ACTIVITY = true;
    }































    private class _cls1
        implements Runnable
    {

        final UMQQSsoHandler this$0;

        public void run()
        {
            isTimeOut = true;
            Toast.makeText(UMQQSsoHandler.mActivity, "\u7F51\u7EDC\u8D85\u65F6, \u8BF7\u91CD\u8BD5...", 0).show();
            Message message = Message.obtain(mHandler);
            message.what = 123;
            mHandler.sendMessage(message);
        }

        _cls1()
        {
            this$0 = UMQQSsoHandler.this;
            super();
        }
    }


    private class _cls2
        implements com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener
    {

        final UMQQSsoHandler this$0;

        public void onCancel(SHARE_MEDIA share_media)
        {
        }

        public void onComplete(Bundle bundle, SHARE_MEDIA share_media)
        {
            if (!TextUtils.isEmpty(bundle.getString("uid")))
            {
                gotoShare();
                return;
            } else
            {
                Toast.makeText(UMQQSsoHandler.mActivity, "\u6388\u6743\u5931\u8D25", 0).show();
                return;
            }
        }

        public void onError(SocializeException socializeexception, SHARE_MEDIA share_media)
        {
        }

        public void onStart(SHARE_MEDIA share_media)
        {
        }

        _cls2()
        {
            this$0 = UMQQSsoHandler.this;
            super();
        }
    }


    private class _cls4 extends UMAsyncTask
    {

        final UMQQSsoHandler this$0;
        private final ObtainAppIdListener val$listener;

        protected g doInBackground()
        {
            return (new a(new SocializeEntity("com.umeng.qq.sso", RequestType.SOCIAL))).g(UMQQSsoHandler.mActivity);
        }

        protected volatile Object doInBackground()
        {
            return doInBackground();
        }

        protected void onPostExecute(g g1)
        {
            super.onPostExecute(g1);
            if (g1 != null && g1.a != null && !isTimeOut)
            {
                UMQQSsoHandler.APP_ID = (String)g1.a.get("qzone");
                if (TextUtils.isEmpty(UMQQSsoHandler.APP_ID))
                {
                    UMQQSsoHandler.APP_ID = "100424468";
                }
                mHandler.removeCallbacks(mTimerRunnable);
                OauthHelper.saveQQAppId(UMQQSsoHandler.mActivity, UMQQSsoHandler.APP_ID);
                if (listener != null)
                {
                    listener.onComplete();
                }
            }
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((g)obj);
        }

        _cls4()
        {
            this$0 = UMQQSsoHandler.this;
            listener = obtainappidlistener;
            super();
        }
    }


    private class _cls7
        implements IUiListener
    {

        final UMQQSsoHandler this$0;
        private final com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener val$authListener;

        public void onCancel()
        {
            Log.d("UMQQSsoHandler", "cancel");
            UMQQSsoHandler.safeCloseDialog();
            if (authListener != null)
            {
                authListener.onCancel(SHARE_MEDIA.QQ);
            }
            if (UMQQSsoHandler.isShareClick && mEntity != null)
            {
                mEntity.addOauthData(UMQQSsoHandler.mActivity, SHARE_MEDIA.QQ, 0);
                UMQQSsoHandler.isShareClick = false;
            }
        }

        public void onComplete(JSONObject jsonobject)
        {
            Log.d("UMQQSsoHandler", "QQ SSO \u6388\u6743\u6210\u529F!");
            uploadToken(UMQQSsoHandler.mActivity, buildUmToken(jsonobject));
            OauthHelper.saveQQAccessToken(UMQQSsoHandler.mActivity, jsonobject);
            SHARE_MEDIA share_media = SocializeConfig.getSelectedPlatfrom();
            if (share_media != null && share_media == SHARE_MEDIA.QQ)
            {
                OauthHelper.setUsid(UMQQSsoHandler.mActivity, share_media, jsonobject.optString("openid", ""));
            }
            if (UMQQSsoHandler.isShareClick && mEntity != null && UMQQSsoHandler.isShareClick && mEntity != null)
            {
                mEntity.addOauthData(UMQQSsoHandler.mActivity, SHARE_MEDIA.QQ, 1);
                UMQQSsoHandler.isShareClick = false;
            }
            if (authListener != null)
            {
                String s = jsonobject.optString("access_token", "");
                String s1 = jsonobject.optString("openid", "");
                jsonobject = jsonobject.optString("expires_in", "");
                Bundle bundle = new Bundle();
                bundle.putString("uid", s1);
                bundle.putString("access_token", s);
                bundle.putString("expires_in", jsonobject);
                UMQQSsoHandler.safeCloseDialog();
                authListener.onComplete(bundle, SHARE_MEDIA.QQ);
            }
        }

        public void onError(UiError uierror)
        {
            Log.d("UMQQSsoHandler", (new StringBuilder("\u6388\u6743\u5931\u8D25! ==> errorCode = ")).append(uierror.errorCode).append(", errorMsg = ").append(uierror.errorMessage).append(", detail = ").append(uierror.errorDetail).toString());
            UMQQSsoHandler.safeCloseDialog();
            if (authListener != null)
            {
                authListener.onError(new SocializeException(uierror.errorCode, uierror.errorDetail), SHARE_MEDIA.QQ);
            }
            if (UMQQSsoHandler.isShareClick && mEntity != null)
            {
                mEntity.addOauthData(UMQQSsoHandler.mActivity, SHARE_MEDIA.QQ, 0);
                UMQQSsoHandler.isShareClick = false;
            }
        }

        _cls7()
        {
            this$0 = UMQQSsoHandler.this;
            authListener = umauthlistener;
            super();
        }
    }


    private class _cls9 extends UMAsyncTask
    {

        final UMQQSsoHandler this$0;
        private final Context val$context;
        private final com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener val$mClientListener;
        private final UMToken val$token;

        protected Integer doInBackground()
        {
            return Integer.valueOf((new com.umeng.socialize.controller.impl.b(new SocializeEntity("qq", RequestType.SOCIAL))).a(context, token));
        }

        protected volatile Object doInBackground()
        {
            return doInBackground();
        }

        protected void onPostExecute(Integer integer)
        {
            super.onPostExecute(integer);
            if (200 != integer.intValue())
            {
                Log.d("UMQQSsoHandler", "##### Token \u4E0A\u4F20\u5931\u8D25");
            } else
            {
                Log.d("UMQQSsoHandler", "##### Token \u4E0A\u4F20\u6210\u529F");
            }
            Log.d("UMQQSsoHandler", (new StringBuilder("UPLOAD RESULT : CODE = ")).append(integer).toString());
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Integer)obj);
        }

        protected void onPreExecute()
        {
            super.onPreExecute();
            mClientListener.onStart();
        }

        _cls9()
        {
            this$0 = UMQQSsoHandler.this;
            mClientListener = socializeclientlistener;
            context = context1;
            token = umtoken;
            super();
        }
    }


    private class _cls8
        implements com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener
    {

        final UMQQSsoHandler this$0;
        private final Context val$context;
        private final UMToken val$token;

        public void onComplete(int i, SocializeEntity socializeentity)
        {
            if (i == 200 && token != null)
            {
                socializeentity = token.getToken();
                SHARE_MEDIA share_media = SHARE_MEDIA.convertToEmun(token.mPaltform);
                if (share_media != null && !TextUtils.isEmpty(socializeentity))
                {
                    OauthHelper.saveAccessToken(context, share_media, socializeentity, "null");
                    OauthHelper.setUsid(context, share_media, token.mUsid);
                }
                Log.d("UMQQSsoHandler", "##### QQ TOKEN UPLOAD DONE.");
            }
        }

        public void onStart()
        {
            Log.d("UMQQSsoHandler", "#### QQ TOKEN UPLOAD.");
        }

        _cls8()
        {
            this$0 = UMQQSsoHandler.this;
            token = umtoken;
            context = context1;
            super();
        }
    }


    private class _cls5
        implements com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener
    {

        final UMQQSsoHandler this$0;
        private final com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener val$authListener;

        public void onCancel(SHARE_MEDIA share_media)
        {
            if (authListener != null)
            {
                authListener.onCancel(share_media);
            }
        }

        public void onComplete(Bundle bundle, SHARE_MEDIA share_media)
        {
            gotoShare();
            if (authListener != null)
            {
                authListener.onComplete(bundle, share_media);
            }
        }

        public void onError(SocializeException socializeexception, SHARE_MEDIA share_media)
        {
            authListener.onError(socializeexception, share_media);
        }

        public void onStart(SHARE_MEDIA share_media)
        {
            authListener.onStart(share_media);
        }

        _cls5()
        {
            this$0 = UMQQSsoHandler.this;
            authListener = umauthlistener;
            super();
        }
    }


    private class _cls3
        implements com.umeng.socialize.controller.listener.SocializeListeners.OnCustomPlatformClickListener
    {

        final UMQQSsoHandler this$0;

        public void onClick(CustomPlatform customplatform, SocializeEntity socializeentity, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
        {
            customplatform = null;
            mSnsPostListener = snspostlistener;
            SocializeConfig.setSelectedPlatfrom(SHARE_MEDIA.QQ);
            if (socializeentity != null)
            {
                mEntity = socializeentity;
                customplatform = mEntity.getShareMsg();
                class _cls1
                    implements ObtainAppIdListener
                {

                    final _cls3 this$1;

                    public void onComplete()
                    {
                        initTencent();
                        if (!DeviceConfig.isAppInstalled("com.tencent.mobileqq", UMQQSsoHandler.mActivity))
                        {
                            gotoShare();
                            return;
                        } else
                        {
                            authorize(UMQQSsoHandler.mActivity, authListener);
                            return;
                        }
                    }

                _cls1()
                {
                    this$1 = _cls3.this;
                    super();
                }
                }

                if (customplatform != null && mEntity.getShareType() == ShareType.SHAKE)
                {
                    socializeentity = ((UMShareMsg) (customplatform)).mText;
                    customplatform = customplatform.getMedia();
                } else
                {
                    snspostlistener = socializeentity.getShareContent();
                    customplatform = socializeentity.getMedia();
                    socializeentity = snspostlistener;
                }
            } else
            {
                socializeentity = null;
            }
            setShareContent(socializeentity, customplatform);
            UMQQSsoHandler.safeShowDialog();
            customplatform = OauthHelper.getAccessTokenForQQ(UMQQSsoHandler.mActivity);
            socializeentity = new _cls1();
            UMQQSsoHandler.isShareClick = true;
            if (customplatform != null)
            {
                UMQQSsoHandler.APP_ID = OauthHelper.getQQAppId(UMQQSsoHandler.mActivity);
                if (!TextUtils.isEmpty(UMQQSsoHandler.APP_ID))
                {
                    UMQQSsoHandler.safeShowDialog();
                    UMQQSsoHandler.mTencent = Tencent.createInstance(UMQQSsoHandler.APP_ID, UMQQSsoHandler.mActivity);
                    UMQQSsoHandler.mTencent.setOpenId(customplatform[1]);
                    UMQQSsoHandler.mTencent.setAccessToken(customplatform[0], customplatform[2]);
                    gotoShare();
                    return;
                } else
                {
                    getQQAppIdFromServer(socializeentity);
                    return;
                }
            }
            if (TextUtils.isEmpty(UMQQSsoHandler.APP_ID))
            {
                getQQAppIdFromServer(socializeentity);
                return;
            } else
            {
                initTencent();
                gotoShare();
                return;
            }
        }


        _cls3()
        {
            this$0 = UMQQSsoHandler.this;
            super();
        }
    }


    private class _cls11 extends UMAsyncTask
    {

        final UMQQSsoHandler this$0;
        private final Context val$context;
        private final com.umeng.socialize.controller.impl.b val$controller;
        private final UMediaObject val$media;
        private final long val$startTime;
        private final String val$usid;

        protected volatile Object doInBackground()
        {
            return doInBackground();
        }

        protected String doInBackground()
        {
            Object obj = new StringBuilder("media is null ? --");
            byte abyte0[];
            boolean flag1;
            if (media == null)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            Log.i("UMQQSsoHandler", ((StringBuilder) (obj)).append(flag1).append("---doInBackground").toString());
            if (media instanceof UMImage)
            {
                obj = (UMImage)media;
            } else
            {
                obj = null;
            }
            if (obj == null) goto _L2; else goto _L1
_L1:
            abyte0 = fileToByte(((UMImage) (obj)).getImageCachePath());
            if (abyte0 == null) goto _L2; else goto _L3
_L3:
            if (abyte0 != null && abyte0.length > 0)
            {
                if (!TextUtils.isEmpty((CharSequence)UMQQSsoHandler.mQqShareMsg.k().get(Integer.valueOf(abyte0.length))))
                {
                    UMQQSsoHandler.mImageUrl = (String)UMQQSsoHandler.mQqShareMsg.k().get(Integer.valueOf(abyte0.length));
                    UMQQSsoHandler.mQqShareMsg.b(UMQQSsoHandler.mImageUrl);
                    Log.i("UMQQSsoHandler", (new StringBuilder("obtain image url form cache...")).append(UMQQSsoHandler.mImageUrl).toString());
                } else
                {
                    Log.i("UMQQSsoHandler", "obtain image url form server...");
                    obj = controller.a(context, ((UMediaObject) (obj)), usid);
                    setImageUrl(((String) (obj)), abyte0.length);
                    UMQQSsoHandler.mQqShareMsg.b(UMQQSsoHandler.mImageUrl);
                    Log.i("UMQQSsoHandler", (new StringBuilder("obtain image url form server...")).append(UMQQSsoHandler.mImageUrl).toString());
                }
                UMQQSsoHandler.mImageUrl = "";
            } else
            {
                Log.i("UMQQSsoHandler", "datas is null...");
            }
_L5:
            Log.i("UMQQSsoHandler", "doInBackground end...");
            return "";
_L2:
            Log.i("UMQQSsoHandler", "uMediaObject is null...");
            if (true) goto _L5; else goto _L4
_L4:
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((String)obj);
        }

        protected void onPostExecute(String s)
        {
            super.onPostExecute(s);
            Log.i("UMQQSsoHandler", (new StringBuilder("upload image kill time: ")).append(System.currentTimeMillis() - startTime).toString());
            UMQQSsoHandler.safeCloseDialog();
            gotoShare();
        }

        protected void onPreExecute()
        {
            super.onPreExecute();
            UMQQSsoHandler.safeShowDialog();
            Log.i("UMQQSsoHandler", (new StringBuilder("upload image start time: ")).append(System.currentTimeMillis()).append("---onPreExecute").toString());
        }

        _cls11()
        {
            this$0 = UMQQSsoHandler.this;
            media = umediaobject;
            controller = b1;
            context = context1;
            usid = s;
            startTime = l;
            super();
        }
    }


    private class _cls6
        implements ObtainAppIdListener
    {

        final UMQQSsoHandler this$0;
        private final com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener val$authListener;

        public void onComplete()
        {
            loginDeal(authListener);
        }

        _cls6()
        {
            this$0 = UMQQSsoHandler.this;
            authListener = umauthlistener;
            super();
        }
    }


    private class _cls10
        implements IUiListener
    {

        final UMQQSsoHandler this$0;

        public void onCancel()
        {
            UMQQSsoHandler.safeCloseDialog();
            if (mSnsPostListener != null)
            {
                mSnsPostListener.onComplete(SHARE_MEDIA.QQ, 200, mEntity);
            }
            mSocializeConfig.fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, SHARE_MEDIA.QQ, 200, mEntity);
            sendReport();
        }

        public void onComplete(JSONObject jsonobject)
        {
            UMQQSsoHandler.safeCloseDialog();
            if (mSnsPostListener != null)
            {
                mSnsPostListener.onComplete(SHARE_MEDIA.QQ, 200, mEntity);
            }
            mSocializeConfig.fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, SHARE_MEDIA.QQ, 200, mEntity);
            sendReport();
        }

        public void onError(UiError uierror)
        {
            Log.d("UMQQSsoHandler", (new StringBuilder("\u5206\u4EAB\u5931\u8D25! ==> errorCode = ")).append(uierror.errorCode).append(", errorMsg = ").append(uierror.errorMessage.toLowerCase()).append(", detail = ").append(uierror.errorDetail).toString());
            UMQQSsoHandler.safeCloseDialog();
            if (mSnsPostListener != null)
            {
                mSnsPostListener.onComplete(SHARE_MEDIA.QQ, uierror.errorCode, mEntity);
            }
            mSocializeConfig.fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, SHARE_MEDIA.QQ, uierror.errorCode, mEntity);
        }

        _cls10()
        {
            this$0 = UMQQSsoHandler.this;
            super();
        }
    }

}
