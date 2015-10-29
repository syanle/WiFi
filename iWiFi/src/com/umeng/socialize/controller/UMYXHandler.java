// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.media.BaseMediaObject;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMVideo;
import com.umeng.socialize.media.UMWebPage;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socialize.media.UMusic;
import com.umeng.socialize.media.YiXinCircleShareContent;
import com.umeng.socialize.media.YiXinShareContent;
import com.umeng.socialize.net.utils.SocializeNetUtils;
import com.umeng.socom.Log;
import com.umeng.socom.util.BitmapUtils;
import com.umeng.socom.util.StatisticsDataUtils;
import im.yixin.sdk.api.BaseReq;
import im.yixin.sdk.api.BaseResp;
import im.yixin.sdk.api.IYXAPI;
import im.yixin.sdk.api.IYXAPICallbackEventHandler;
import im.yixin.sdk.api.YXAPIFactory;
import im.yixin.sdk.api.YXImageMessageData;
import im.yixin.sdk.api.YXMessage;
import im.yixin.sdk.api.YXMusicMessageData;
import im.yixin.sdk.api.YXTextMessageData;
import im.yixin.sdk.api.YXVideoMessageData;
import im.yixin.sdk.api.YXWebPageMessageData;

// Referenced classes of package com.umeng.socialize.controller:
//            CustomHandler

public class UMYXHandler extends CustomHandler
{
    private class ShareAsyncTask extends AsyncTask
    {

        private YXMessage mYXShareMsg;
        private com.umeng.socialize.media.UMediaObject.MediaType shareType;
        final UMYXHandler this$0;

        private void disposeText(YXMessage yxmessage)
        {
            if (isToCircle && TextUtils.isEmpty(yxmessage.title))
            {
                yxmessage.title = yxmessage.description;
            }
            if (!TextUtils.isEmpty(yxmessage.title) && yxmessage.title.getBytes().length >= mTitleLimit)
            {
                yxmessage.description = new String(yxmessage.description.getBytes(), 0, 512);
            }
            if (!TextUtils.isEmpty(yxmessage.description) && yxmessage.description.getBytes().length >= mDescriptionLimit)
            {
                yxmessage.description = new String(yxmessage.description.getBytes(), 0, 1024);
            }
        }

        private void initTitle()
        {
        }

        protected transient Boolean doInBackground(Void avoid[])
        {
            initTitle();
            if (shareType != com.umeng.socialize.media.UMediaObject.MediaType.WEBPAGE) goto _L2; else goto _L1
_L1:
            mYXShareMsg = getShareWebPage(mShareMedia);
_L4:
            boolean flag = false;
            if (mYXShareMsg != null)
            {
                disposeText(mYXShareMsg);
                mYXShareMsg.thumbData = compressBitmap(mYXShareMsg.thumbData);
                flag = doShare(mYXShareMsg, shareType);
            }
            return Boolean.valueOf(flag);
_L2:
            avoid = ((Void []) (createMessage(shareType)));
            if (avoid != null && (avoid instanceof YXMessage))
            {
                mYXShareMsg = (YXMessage)avoid;
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((Void[])aobj);
        }

        protected void onPostExecute(Boolean boolean1)
        {
            UMYXHandler.tmpIsToCircle = isToCircle;
            UMYXHandler.tmpDesc = mYXShareMsg.description;
            UMYXHandler.tmpMediaObject = mShareMedia;
            UMYXHandler.tmpContext = mContext;
            sendReport(boolean1);
            if (isShowWaitingDlg)
            {
                safeCloseDialog();
            }
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Boolean)obj);
        }

        protected void onPreExecute()
        {
            if (isShowWaitingDlg)
            {
                safeShowDialog();
            }
            super.onPreExecute();
            fireAllListenersOnStart();
        }

        public ShareAsyncTask(com.umeng.socialize.media.UMediaObject.MediaType mediatype)
        {
            this$0 = UMYXHandler.this;
            super();
            mYXShareMsg = null;
            shareType = mediatype;
        }
    }


    private static final String TAG = com/umeng/socialize/controller/UMYXHandler.getSimpleName();
    private static IYXAPICallbackEventHandler mCallbackHandler = new IYXAPICallbackEventHandler() {

        public void onReq(BaseReq basereq)
        {
            Log.d("", "### \u6613\u4FE1\u8BF7\u6C42");
        }

        public void onResp(BaseResp baseresp)
        {
            baseresp.getType();
            JVM INSTR tableswitch 1 1: default 24
        //                       1 25;
               goto _L1 _L2
_L1:
            return;
_L2:
            SHARE_MEDIA share_media;
            int i;
            baseresp = (im.yixin.sdk.api.SendMessageToYX.Resp)baseresp;
            i = 0;
            Log.LOG = true;
            share_media = SocializeConfig.getSelectedPlatfrom();
            ((im.yixin.sdk.api.SendMessageToYX.Resp) (baseresp)).errCode;
            JVM INSTR tableswitch -4 0: default 80
        //                       -4 219
        //                       -3 212
        //                       -2 197
        //                       -1 191
        //                       0 175;
               goto _L3 _L4 _L5 _L6 _L7 _L8
_L3:
            Log.d(UMYXHandler.TAG, "### \u5FAE\u4FE1\u53D1\u9001 -- \u672A\u77E5\u9519\u8BEF.");
_L9:
            if (UMYXHandler.mSnsPostListener != null)
            {
                UMYXHandler.mSnsPostListener.onComplete(share_media, i, UMYXHandler.mEntity);
            }
            SocializeConfig.getSocializeConfig().fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, share_media, i, UMYXHandler.mEntity);
            if (i == 200)
            {
                Context context = UMYXHandler.tmpContext;
                String s = UMYXHandler.mEntity.mDescriptor;
                String s1 = UMYXHandler.tmpDesc;
                UMediaObject umediaobject = UMYXHandler.tmpMediaObject;
                if (UMYXHandler.tmpIsToCircle)
                {
                    baseresp = "yxtimeline";
                } else
                {
                    baseresp = "yxsession";
                }
                SocializeUtils.sendAnalytic(context, s, s1, umediaobject, baseresp);
                UMYXHandler.tmpContext = null;
                return;
            }
            if (true) goto _L1; else goto _L8
_L8:
            i = 200;
            Log.d(UMYXHandler.TAG, "### \u6613\u4FE1\u5206\u4EAB\u6210\u529F.");
              goto _L9
_L7:
            i = -1;
              goto _L9
_L6:
            i = -2;
            Log.d(UMYXHandler.TAG, "### \u6613\u4FE1\u5206\u4EAB\u53D6\u6D88");
              goto _L9
_L5:
            i = -3;
              goto _L9
_L4:
            i = -4;
            Log.d(UMYXHandler.TAG, "### \u6613\u4FE1\u53D1\u9001\u88AB\u62D2\u7EDD");
              goto _L9
        }

    };
    private static IYXAPI mYXApi;
    private static Context tmpContext = null;
    private static String tmpDesc = "";
    private static boolean tmpIsToCircle = false;
    private static UMediaObject tmpMediaObject = null;
    private boolean isShowWaitingDlg;
    private String mTargetUrl;
    private String mTitle;

    public UMYXHandler(Context context)
    {
        this(context, "");
    }

    public UMYXHandler(Context context, String s)
    {
        this(context, s, false);
    }

    public UMYXHandler(Context context, String s, boolean flag)
    {
        super(context, s, flag);
        mTargetUrl = "";
        mTitle = "";
        isShowWaitingDlg = true;
        mYXApi = YXAPIFactory.createYXAPI(mContext, mAppId);
        mYXApi.registerApp();
        buildDialog(mContext);
    }

    private void buildDialog(Context context)
    {
        mProgressDialog = new ProgressDialog(mContext, ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.STYLE, "Theme.UMDialog"));
        context = mContext.getString(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_loading_message"));
        mProgressDialog.setMessage(context);
    }

    private void checkTargetUrl(String s)
    {
        if (TextUtils.isEmpty(mTargetUrl) || !SocializeNetUtils.startWithHttp(mTargetUrl))
        {
            if (!TextUtils.isEmpty(s) && SocializeNetUtils.startWithHttp(s))
            {
                mTargetUrl = s;
            } else
            {
                mTargetUrl = "http://www.umeng.com/social";
            }
            Log.e(TAG, (new StringBuilder("### \u5206\u4EAB\u5230\u6613\u4FE1\u7684url\u4E3A\u7A7A, \u6216\u8005\u6CA1\u6709\u4EE5http\u3001https\u3001www\u5F00\u5934.\n\u66FF\u6362\u4E3A : ")).append(mTargetUrl).toString());
        }
    }

    private void checkTitle(String s)
    {
        if (TextUtils.isEmpty(mTitle) && !TextUtils.isEmpty(s))
        {
            mTitle = s;
        }
    }

    public static IYXAPICallbackEventHandler getCallbackHandler()
    {
        return mCallbackHandler;
    }

    public static IYXAPI getYXApi()
    {
        return mYXApi;
    }

    private void safeCloseDialog()
    {
        if (mContext instanceof Activity)
        {
            if (!((Activity)mContext).isFinishing())
            {
                mProgressDialog.dismiss();
            }
        } else
        if (mContext != null)
        {
            mProgressDialog.dismiss();
            return;
        }
    }

    private void safeShowDialog()
    {
        if (mContext instanceof Activity)
        {
            if (!((Activity)mContext).isFinishing())
            {
                mProgressDialog.show();
            }
        } else
        if (mContext != null)
        {
            mProgressDialog.show();
            return;
        }
    }

    protected UMediaObject buildMediaObject(UMediaObject umediaobject)
    {
        if (umediaobject != null) goto _L2; else goto _L1
_L1:
        umediaobject = null;
_L4:
        return umediaobject;
_L2:
        Object obj;
        Object obj1;
        String s;
        obj = null;
        s = "";
        obj1 = "";
        if (!(umediaobject instanceof YiXinShareContent))
        {
            break; /* Loop/switch isn't completed */
        }
        umediaobject = (YiXinShareContent)umediaobject;
        obj = umediaobject.getShareMedia();
        s = umediaobject.getTitle();
        obj1 = umediaobject.getTargetUrl();
        mShareContent = umediaobject.getShareContent();
_L5:
        if (!TextUtils.isEmpty(s))
        {
            mTitle = s;
        }
        umediaobject = ((UMediaObject) (obj));
        if (!TextUtils.isEmpty(((CharSequence) (obj1))))
        {
            umediaobject = ((UMediaObject) (obj));
            if (SocializeNetUtils.startWithHttp(((String) (obj1))))
            {
                mTargetUrl = ((String) (obj1));
                return ((UMediaObject) (obj));
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (umediaobject instanceof YiXinCircleShareContent)
        {
            umediaobject = (YiXinCircleShareContent)umediaobject;
            obj = umediaobject.getShareMedia();
            s = umediaobject.getTitle();
            obj1 = umediaobject.getTargetUrl();
            mShareContent = umediaobject.getShareContent();
        } else
        if (umediaobject instanceof BaseMediaObject)
        {
            obj1 = (BaseMediaObject)umediaobject;
            obj = (BaseMediaObject)umediaobject;
            s = ((BaseMediaObject) (obj1)).getTitle();
            obj1 = ((BaseMediaObject) (obj1)).getTargetUrl();
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    protected boolean doShare(Object obj, com.umeng.socialize.media.UMediaObject.MediaType mediatype)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (mYXApi != null)
        {
            flag = flag1;
            if (obj instanceof YXMessage)
            {
                obj = (YXMessage)obj;
                im.yixin.sdk.api.SendMessageToYX.Req req = new im.yixin.sdk.api.SendMessageToYX.Req();
                req.transaction = buildTransaction(mediatype.toString());
                req.message = ((YXMessage) (obj));
                int i;
                if (isToCircle)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                req.scene = i;
                flag = mYXApi.sendRequest(req);
            }
        }
        return flag;
    }

    public void enableLoadingDialog(boolean flag)
    {
        isShowWaitingDlg = flag;
    }

    protected Object getShareImage(UMediaObject umediaobject)
    {
        Object obj;
        YXImageMessageData yximagemessagedata;
        umediaobject = (UMImage)umediaobject;
        obj = null;
        yximagemessagedata = new YXImageMessageData();
        if (!umediaobject.isSerialized())
        {
            umediaobject.waitImageToSerialize();
        }
        if (!umediaobject.isUrlMedia()) goto _L2; else goto _L1
_L1:
        obj = umediaobject.toUrl();
        if (SocializeNetUtils.startWithHttp(((String) (obj))))
        {
            yximagemessagedata.imageUrl = ((String) (obj));
        } else
        {
            yximagemessagedata.imagePath = ((String) (obj));
        }
        if (!TextUtils.isEmpty(umediaobject.getThumb()))
        {
            umediaobject = BitmapUtils.getBitmapFromFile(umediaobject.getThumb(), mThumbSize, mThumbSize);
        } else
        {
            umediaobject = BitmapUtils.getBitmapFromFile(((String) (obj)), mThumbSize, mThumbSize);
        }
        Log.d(TAG, (new StringBuilder("### \u56FE\u7247url = ")).append(((String) (obj))).toString());
        umediaobject = createThumb(umediaobject, 220F);
_L4:
        obj = new YXMessage();
        obj.messageData = yximagemessagedata;
        obj.thumbData = BitmapUtils.bitmap2Bytes(umediaobject);
        if (umediaobject != null && !umediaobject.isRecycled())
        {
            Log.d(TAG, (new StringBuilder("###\u6613\u4FE1\u7F29\u7565\u56FEwidth = ")).append(umediaobject.getWidth()).append(", height = ").append(umediaobject.getHeight()).toString());
            umediaobject.recycle();
        }
        return obj;
_L2:
        Log.d(TAG, "### \u5206\u4EAB\u5230\u6613\u4FE1\u7684\u4E3A\u672C\u5730\u6216\u8005\u8D44\u6E90\u56FE\u7247");
        String s = umediaobject.getImageCachePath();
        if (!TextUtils.isEmpty(s))
        {
            yximagemessagedata.imagePath = s;
            umediaobject = createThumb(BitmapUtils.getBitmapFromFile(s, mThumbSize, mThumbSize), 220F);
            Log.d(TAG, (new StringBuilder("#### \u56FE\u7247\u8DEF\u5F84  : ")).append(s).toString());
        } else
        {
            yximagemessagedata.imageData = umediaobject.toByte();
            umediaobject = ((UMediaObject) (obj));
            if (yximagemessagedata.imageData != null)
            {
                umediaobject = ((UMediaObject) (obj));
                if (yximagemessagedata.imageData.length > 0)
                {
                    umediaobject = BitmapUtils.getBitmapOptions(yximagemessagedata.imageData);
                    Bitmap bitmap = BitmapFactory.decodeByteArray(yximagemessagedata.imageData, 0, yximagemessagedata.imageData.length, umediaobject);
                    umediaobject = ((UMediaObject) (obj));
                    if (bitmap != null)
                    {
                        umediaobject = ((UMediaObject) (obj));
                        if (!bitmap.isRecycled())
                        {
                            umediaobject = Bitmap.createScaledBitmap(bitmap, mThumbSize, mThumbSize, true);
                            bitmap.recycle();
                        }
                    }
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected Object getShareMusic(UMediaObject umediaobject, String s)
    {
        UMusic umusic = (UMusic)umediaobject;
        YXMusicMessageData yxmusicmessagedata = new YXMusicMessageData();
        String s1 = umusic.getTargetUrl();
        umediaobject = s1;
        if (TextUtils.isEmpty(s1))
        {
            umediaobject = umusic.toUrl();
        }
        yxmusicmessagedata.musicUrl = umediaobject;
        yxmusicmessagedata.musicDataUrl = umusic.toUrl();
        umediaobject = new YXMessage();
        umediaobject.messageData = yxmusicmessagedata;
        umediaobject.title = umusic.getTitle();
        umediaobject.description = s;
        umediaobject.thumbData = getThumbByteArray(umusic);
        return umediaobject;
    }

    protected Object getShareText(String s)
    {
        YXTextMessageData yxtextmessagedata = new YXTextMessageData();
        yxtextmessagedata.text = s;
        YXMessage yxmessage = new YXMessage();
        yxmessage.messageData = yxtextmessagedata;
        yxmessage.description = s;
        return yxmessage;
    }

    protected Object getShareTextAndImage(String s, UMediaObject umediaobject)
    {
        return getShareWebPage(umediaobject);
    }

    protected Object getShareVideo(UMediaObject umediaobject, String s)
    {
        UMVideo umvideo = (UMVideo)umediaobject;
        YXVideoMessageData yxvideomessagedata = new YXVideoMessageData();
        yxvideomessagedata.videoUrl = umediaobject.toUrl();
        umediaobject = new YXMessage(yxvideomessagedata);
        umediaobject.title = umvideo.getTitle();
        umediaobject.description = s;
        umediaobject.thumbData = getThumbByteArray(umvideo);
        return umediaobject;
    }

    protected YXMessage getShareWebPage(UMediaObject umediaobject)
    {
        String s;
        Object obj;
        String s1;
        s1 = "";
        s = "";
        obj = "";
        if (!(umediaobject instanceof UMWebPage)) goto _L2; else goto _L1
_L1:
        obj = (UMWebPage)umediaobject;
        s1 = ((UMWebPage) (obj)).getTitle();
        s = ((UMWebPage) (obj)).getDescription();
        obj = ((UMWebPage) (obj)).getTargetUrl();
_L4:
        YXWebPageMessageData yxwebpagemessagedata = new YXWebPageMessageData();
        checkTitle(s1);
        checkTargetUrl(((String) (obj)));
        yxwebpagemessagedata.webPageUrl = mTargetUrl;
        obj = new YXMessage(yxwebpagemessagedata);
        obj.title = mTitle;
        obj.description = s;
        obj.thumbData = getThumbByteArray(umediaobject);
        return ((YXMessage) (obj));
_L2:
        if (umediaobject instanceof UMImage)
        {
            obj = (UMImage)umediaobject;
            s1 = ((UMImage) (obj)).getTitle();
            s = mShareContent;
            obj = ((UMImage) (obj)).getTargetUrl();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String getTargetUrl()
    {
        return mTargetUrl;
    }

    protected boolean haveCallback(Context context)
    {
        if (context == null)
        {
            return false;
        }
        context = (new StringBuilder(String.valueOf(mContext.getPackageName()))).append(".yxapi.YXEntryActivity").toString();
        try
        {
            Class.forName(context);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            Log.e(TAG, (new StringBuilder(String.valueOf(context))).append(" \u7C7B\u6CA1\u6709\u627E\u5230. \u8BF7\u628Ayixin\u6587\u4EF6\u5939\u4E2D\u7684yxapi\u76EE\u5F55\u62F7\u8D1D\u5230\u60A8\u7684\u5305\u76EE\u5F55\u4E0B.").toString());
            return false;
        }
        return true;
    }

    protected void initPlatformConfig()
    {
        if (isToCircle)
        {
            mIcon = ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_yixin_circle");
            mGrayIcon = ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_yixin_circle_gray");
            mShowWord = "\u6613\u4FE1\u670B\u53CB\u5708";
            mKeyWord = "yixin_circle";
        } else
        {
            mIcon = ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_yixin");
            mGrayIcon = ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_yixin_gray");
            mShowWord = "\u6613\u4FE1";
            mKeyWord = "yixin";
        }
        mThumbLimit = 0x10000;
        mThumbSize = 200;
        mPlatformOpId = 21;
    }

    public boolean isClientInstalled()
    {
        return mYXApi.isYXAppInstalled();
    }

    public boolean isShowWaitingDlg()
    {
        return isShowWaitingDlg;
    }

    protected void sendReport(Boolean boolean1)
    {
        int i = 40002;
        Object obj;
        if (isToCircle)
        {
            obj = SHARE_MEDIA.YIXIN_CIRCLE;
        } else
        {
            obj = SHARE_MEDIA.YIXIN;
        }
        if (boolean1.booleanValue())
        {
            String s;
            String s1;
            UMediaObject umediaobject;
            try
            {
                StatisticsDataUtils.addStatisticsData(mContext, ((SHARE_MEDIA) (obj)), 21);
            }
            catch (Exception exception) { }
            i = 200;
        }
        if (!haveCallback(mContext))
        {
            fireAllListenersOnComplete(((SHARE_MEDIA) (obj)), i, mEntity);
            if (boolean1.booleanValue())
            {
                obj = mContext;
                s = mEntity.mDescriptor;
                s1 = mShareContent;
                umediaobject = mShareMedia;
                if (isToCircle)
                {
                    boolean1 = "yxtimeline";
                } else
                {
                    boolean1 = "yxsession";
                }
                SocializeUtils.sendAnalytic(((Context) (obj)), s, s1, umediaobject, boolean1);
            }
        }
    }

    protected void setSelectedPlatform()
    {
        if (isToCircle)
        {
            SocializeConfig.setSelectedPlatfrom(SHARE_MEDIA.YIXIN_CIRCLE);
            return;
        } else
        {
            SocializeConfig.setSelectedPlatfrom(SHARE_MEDIA.YIXIN);
            return;
        }
    }

    public void setTargetUrl(String s)
    {
        mTargetUrl = s;
    }

    protected void shareAsync(com.umeng.socialize.media.UMediaObject.MediaType mediatype)
    {
        (new ShareAsyncTask(mediatype)).execute(new Void[0]);
    }













}
