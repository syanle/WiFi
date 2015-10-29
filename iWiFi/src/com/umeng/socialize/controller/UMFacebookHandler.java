// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.AppEventsLogger;
import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.Request;
import com.facebook.Response;
import com.facebook.Session;
import com.facebook.SessionState;
import com.facebook.UiLifecycleHelper;
import com.umeng.socialize.bean.APP_PLATFORM;
import com.umeng.socialize.bean.CustomPlatform;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.ShareType;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMShareMsg;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.controller.net.PostPhotoTask;
import com.umeng.socialize.controller.net.UploadImageTask;
import com.umeng.socialize.controller.utils.ToastUtil;
import com.umeng.socialize.controller.utils.TokenUtil;
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socialize.media.FaceBookShareContent;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socialize.net.utils.SocializeNetUtils;
import com.umeng.socom.DeviceConfig;
import com.umeng.socom.Log;
import com.umeng.socom.util.StatisticsDataUtils;
import java.util.List;

// Referenced classes of package com.umeng.socialize.controller:
//            UMSsoHandler

public class UMFacebookHandler extends UMSsoHandler
{
    private static final class PendingAction extends Enum
    {

        private static final PendingAction ENUM$VALUES[];
        public static final PendingAction NONE;
        public static final PendingAction POST_PHOTO;
        public static final PendingAction POST_STATUS_UPDATE;

        public static PendingAction valueOf(String s)
        {
            return (PendingAction)Enum.valueOf(com/umeng/socialize/controller/UMFacebookHandler$PendingAction, s);
        }

        public static PendingAction[] values()
        {
            PendingAction apendingaction[] = ENUM$VALUES;
            int i = apendingaction.length;
            PendingAction apendingaction1[] = new PendingAction[i];
            System.arraycopy(apendingaction, 0, apendingaction1, 0, i);
            return apendingaction1;
        }

        static 
        {
            NONE = new PendingAction("NONE", 0);
            POST_PHOTO = new PendingAction("POST_PHOTO", 1);
            POST_STATUS_UPDATE = new PendingAction("POST_STATUS_UPDATE", 2);
            ENUM$VALUES = (new PendingAction[] {
                NONE, POST_PHOTO, POST_STATUS_UPDATE
            });
        }

        private PendingAction(String s, int i)
        {
            super(s, i);
        }
    }

    public static class PostType extends Enum
    {

        private static final PostType ENUM$VALUES[];
        public static final PostType FEED;
        public static final PostType PHOTO;

        public static PostType valueOf(String s)
        {
            return (PostType)Enum.valueOf(com/umeng/socialize/controller/UMFacebookHandler$PostType, s);
        }

        public static PostType[] values()
        {
            PostType aposttype[] = ENUM$VALUES;
            int i = aposttype.length;
            PostType aposttype1[] = new PostType[i];
            System.arraycopy(aposttype, 0, aposttype1, 0, i);
            return aposttype1;
        }

        static 
        {
            FEED = new PostType("FEED", 0) {

                public String toString()
                {
                    return "post_to_feed";
                }

            };
            PHOTO = new PostType("PHOTO", 1) {

                public String toString()
                {
                    return "post_photo";
                }

            };
            ENUM$VALUES = (new PostType[] {
                FEED, PHOTO
            });
        }

        private PostType(String s, int i)
        {
            super(s, i);
        }

        PostType(String s, int i, PostType posttype)
        {
            this(s, i);
        }
    }


    private static int $SWITCH_TABLE$com$umeng$socialize$controller$UMFacebookHandler$PendingAction[];
    private static final String PERMISSION = "publish_actions, user_photos, read_stream";
    private final String PENDING_ACTION_BUNDLE_KEY;
    private final String TAG;
    private final String TARGET_URL;
    private boolean isChineseOS;
    private Activity mActivity;
    private com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener mAuthListener;
    private String mCaption;
    private String mDescription;
    private com.facebook.widget.FacebookDialog.Callback mDialogCallback = new com.facebook.widget.FacebookDialog.Callback() {

        final UMFacebookHandler this$0;

        public void onComplete(com.facebook.widget.FacebookDialog.PendingCall pendingcall, Bundle bundle1)
        {
            Log.d("HelloFacebook", (new StringBuilder("Success! ")).append(bundle1.toString()).toString());
            mUiLifecycleHelper.onSaveInstanceState(bundle1);
        }

        public void onError(com.facebook.widget.FacebookDialog.PendingCall pendingcall, Exception exception, Bundle bundle1)
        {
            Log.d("HelloFacebook", String.format("Error: %s", new Object[] {
                exception.toString()
            }));
        }

            
            {
                this$0 = UMFacebookHandler.this;
                super();
            }
    };
    private SocializeEntity mEntity;
    private PendingAction mPendingAction;
    private com.umeng.socialize.controller.listener.SocializeListeners.OnCustomPlatformClickListener mPlatformClickListener;
    private Bundle mPostParams;
    private PostType mPostType;
    private String mShareContent;
    private UMediaObject mShareMedia;
    private com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener mSnsPostListener;
    private SocializeConfig mSocializeConfig;
    private com.facebook.Session.StatusCallback mStatusCallback = new com.facebook.Session.StatusCallback() {

        final UMFacebookHandler this$0;

        public void call(Session session, SessionState sessionstate, Exception exception)
        {
            onStatusChange(session, sessionstate, exception);
        }

            
            {
                this$0 = UMFacebookHandler.this;
                super();
            }
    };
    private String mTargetUrl;
    private String mTitle;
    private UiLifecycleHelper mUiLifecycleHelper;
    private String mUploadedImgUrl;

    static int[] $SWITCH_TABLE$com$umeng$socialize$controller$UMFacebookHandler$PendingAction()
    {
        int ai[] = $SWITCH_TABLE$com$umeng$socialize$controller$UMFacebookHandler$PendingAction;
        if (ai != null)
        {
            return ai;
        }
        ai = new int[PendingAction.values().length];
        try
        {
            ai[PendingAction.NONE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai[PendingAction.POST_PHOTO.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai[PendingAction.POST_STATUS_UPDATE.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        $SWITCH_TABLE$com$umeng$socialize$controller$UMFacebookHandler$PendingAction = ai;
        return ai;
    }

    public UMFacebookHandler(Activity activity)
    {
        this(activity, PostType.FEED);
    }

    public UMFacebookHandler(Activity activity, PostType posttype)
    {
        mUiLifecycleHelper = null;
        mActivity = null;
        mSocializeConfig = SocializeConfig.getSocializeConfig();
        mAuthListener = null;
        PENDING_ACTION_BUNDLE_KEY = "com.umeng.share:PendingAction";
        TARGET_URL = "http://www.umeng.com/social";
        TAG = getClass().getName();
        mPendingAction = PendingAction.NONE;
        mPostType = PostType.FEED;
        mUploadedImgUrl = "";
        mShareContent = "";
        mCaption = "";
        mDescription = "";
        mTargetUrl = "";
        mTitle = "";
        mShareMedia = null;
        mPostParams = new Bundle();
        isChineseOS = true;
        mSnsPostListener = null;
        mActivity = activity;
        mUiLifecycleHelper = new UiLifecycleHelper(mActivity, mStatusCallback);
        Object obj = null;
        activity = obj;
        if (mActivity != null)
        {
            Intent intent = mActivity.getIntent();
            activity = obj;
            if (intent != null)
            {
                Bundle bundle = intent.getExtras();
                activity = bundle;
                if (bundle != null)
                {
                    Log.d(TAG, "#### facebook onCreate Bundle");
                    mPendingAction = PendingAction.valueOf(bundle.getString("com.umeng.share:PendingAction"));
                    activity = bundle;
                }
            }
        }
        mUiLifecycleHelper.onCreate(activity);
        mPostType = posttype;
        initLocalInfo();
    }

    private void addParams()
    {
        if (mPostParams == null)
        {
            mPostParams = new Bundle();
        } else
        {
            mPostParams.clear();
        }
        mPostParams.putString("message", mShareContent);
        mPostParams.putString("name", mTitle);
        mPostParams.putString("caption", mCaption);
        mPostParams.putString("description", mDescription);
        mPostParams.putString("link", mTargetUrl);
        Log.d(TAG, (new StringBuilder("### facebook \uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD : message : ")).append(mShareContent).append(", title : ").append(mTitle).append(", caption : ").append(mCaption).toString());
    }

    private CustomPlatform build()
    {
        CustomPlatform customplatform = new CustomPlatform("facebook", ResContainer.getResourceId(mActivity, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_facebook"));
        customplatform.mTag = APP_PLATFORM.FACEBOOK.toString();
        customplatform.mGrayIcon = ResContainer.getResourceId(mActivity, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_facebook_off");
        customplatform.mClickListener = new com.umeng.socialize.controller.listener.SocializeListeners.OnCustomPlatformClickListener() {

            final UMFacebookHandler this$0;

            public void onClick(CustomPlatform customplatform1, SocializeEntity socializeentity, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
            {
                handleOnClick(customplatform1, socializeentity, snspostlistener);
            }

            
            {
                this$0 = UMFacebookHandler.this;
                super();
            }
        };
        return customplatform;
    }

    private void buildMediaObject(String s, UMediaObject umediaobject)
    {
        if (umediaobject == null)
        {
            Log.e(TAG, "### facebook \uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD.");
            return;
        }
        if (umediaobject instanceof FaceBookShareContent)
        {
            umediaobject = (FaceBookShareContent)umediaobject;
            mShareContent = umediaobject.getShareContent();
            mShareMedia = umediaobject.getShareImage();
            if (TextUtils.isEmpty(mShareContent))
            {
                mShareContent = s;
            }
            mTitle = umediaobject.getTitle();
            mCaption = umediaobject.getCaption();
            mDescription = umediaobject.getDescription();
            mTargetUrl = umediaobject.getTargetUrl();
        } else
        if (umediaobject instanceof UMImage)
        {
            umediaobject = (UMImage)umediaobject;
            mShareContent = s;
            mShareMedia = umediaobject;
            mTitle = umediaobject.getTitle();
            mTargetUrl = umediaobject.getTargetUrl();
        } else
        {
            Log.e(TAG, "### facebook \uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD");
        }
        checkTargetUrl();
    }

    private void checkTargetUrl()
    {
label0:
        {
            if (TextUtils.isEmpty(mTargetUrl) && mShareMedia != null)
            {
                if (!mShareMedia.isUrlMedia())
                {
                    break label0;
                }
                mTargetUrl = mShareMedia.toUrl();
            }
            return;
        }
        mTargetUrl = "http://www.umeng.com/social";
    }

    private void clearParams()
    {
        mPostParams.clear();
        mUploadedImgUrl = "";
    }

    private void directShare()
    {
        if (mPostType == PostType.PHOTO)
        {
            performPublish(PendingAction.POST_PHOTO, false);
            return;
        } else
        {
            performPublish(PendingAction.POST_STATUS_UPDATE, false);
            return;
        }
    }

    private void executePostStatus()
    {
        mPostParams.putString("picture", mUploadedImgUrl);
        (new Request(Session.getActiveSession(), "me/feed", mPostParams, HttpMethod.POST, new com.facebook.Request.Callback() {

            final UMFacebookHandler this$0;

            public void onCompleted(Response response)
            {
                handleResponse(response);
            }

            
            {
                this$0 = UMFacebookHandler.this;
                super();
            }
        })).executeAsync();
        clearParams();
    }

    private void handleOnClick(CustomPlatform customplatform, SocializeEntity socializeentity, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        String s = "";
        UMediaObject umediaobject = null;
        isShareAfterLogin = true;
        SocializeConfig.setSelectedPlatfrom(SHARE_MEDIA.FACEBOOK);
        if (socializeentity != null)
        {
            mEntity = socializeentity;
            if (mEntity.getShareType() == ShareType.SHAKE)
            {
                s = mEntity.getShareMsg().mText;
                umediaobject = mEntity.getShareMsg().getMedia();
            } else
            {
                s = mEntity.getShareContent();
                umediaobject = mEntity.getMedia();
            }
        }
        if (mPlatformClickListener != null)
        {
            mPlatformClickListener.onClick(customplatform, socializeentity, snspostlistener);
        }
        mSnsPostListener = snspostlistener;
        if (umediaobject != null || !TextUtils.isEmpty(s))
        {
            if (mSnsPostListener != null)
            {
                mSnsPostListener.onStart();
            }
            mSocializeConfig.fireAllListenersOnStart(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener);
            buildMediaObject(s, umediaobject);
            shareToFacebook();
            return;
        } else
        {
            ToastUtil.showToast(mActivity, "\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFDFacebook\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD...");
            return;
        }
    }

    private void handlePendingAction()
    {
        PendingAction pendingaction;
        pendingaction = mPendingAction;
        mPendingAction = PendingAction.NONE;
        $SWITCH_TABLE$com$umeng$socialize$controller$UMFacebookHandler$PendingAction()[pendingaction.ordinal()];
        JVM INSTR tableswitch 2 3: default 44
    //                   2 81
    //                   3 74;
           goto _L1 _L2 _L3
_L1:
        break; /* Loop/switch isn't completed */
_L2:
        break MISSING_BLOCK_LABEL_81;
_L4:
        if (mSocializeConfig.isShowToast())
        {
            String s;
            if (isChineseOS)
            {
                s = "\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD...";
            } else
            {
                s = "sharing...";
            }
            ToastUtil.showToast(mActivity, s);
        }
        return;
_L3:
        postStatus();
          goto _L4
        postPhoto();
          goto _L4
    }

    private void handleResponse(Response response)
    {
        int i = 0;
        FacebookRequestError facebookrequesterror = response.getError();
        if (facebookrequesterror == null)
        {
            if (isChineseOS)
            {
                response = "\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD";
            } else
            {
                response = "done.";
            }
            sendReport(true);
        } else
        {
            if (isChineseOS)
            {
                response = "\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD";
            } else
            {
                response = "failed.";
            }
            Log.d(TAG, (new StringBuilder("#### ")).append(response).append(facebookrequesterror.toString()).toString());
            i = facebookrequesterror.getErrorCode();
            sendReport(false);
        }
        if (mSnsPostListener != null)
        {
            mSnsPostListener.onComplete(SHARE_MEDIA.FACEBOOK, i, mEntity);
        }
        if (mSocializeConfig.isShowToast())
        {
            ToastUtil.showToast(mActivity, response);
        }
    }

    private void initLocalInfo()
    {
        if (mActivity != null && !DeviceConfig.getLocaleInfo(mActivity)[1].equals("zh"))
        {
            isChineseOS = false;
        }
    }

    private boolean isResOrLocalImage()
    {
        String s = mShareMedia.toUrl();
        return TextUtils.isEmpty(s) || !TextUtils.isEmpty(s) && !SocializeNetUtils.startWithHttp(s);
    }

    private boolean isSessionOpened()
    {
        Session session = Session.getActiveSession();
        return session != null && session.isOpened();
    }

    private void onStatusChange(Session session, SessionState sessionstate, Exception exception)
    {
        if (session != null && (exception == null || !(exception instanceof FacebookOperationCanceledException) && !(exception instanceof FacebookAuthorizationException))) goto _L2; else goto _L1
_L1:
        Object obj;
        if (isChineseOS)
        {
            sessionstate = "\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD";
        } else
        {
            sessionstate = "oauth failed...";
        }
        obj = sessionstate;
        if (exception != null)
        {
            obj = (new StringBuilder(String.valueOf(sessionstate))).append(" : ").append(exception.getMessage()).toString();
        }
        Log.d(TAG, (new StringBuilder("### facebook")).append(((String) (obj))).append(" state =  ").append(session.getState()).toString());
_L4:
        return;
_L2:
        if (!session.isOpened())
        {
            break; /* Loop/switch isn't completed */
        }
        sessionstate = session.getAccessToken();
        exception = session.getExpirationDate();
        TokenUtil.saveTokenToLocal(mActivity, sessionstate, exception);
        sessionstate = session.getAuthorizationBundle();
        if (mAuthListener != null)
        {
            mAuthListener.onComplete(sessionstate, SHARE_MEDIA.FACEBOOK);
        }
        if (isShareAfterLogin)
        {
            if (mPostType == PostType.PHOTO)
            {
                mPendingAction = PendingAction.POST_PHOTO;
            }
            if (hasPublishPermission())
            {
                directShare();
                return;
            } else
            {
                session.requestNewPublishPermissions(new com.facebook.Session.NewPermissionsRequest(mActivity, new String[] {
                    "publish_actions, user_photos, read_stream"
                }));
                return;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        Log.d(TAG, (new StringBuilder("### facebook\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD : SessionState = ")).append(session.getState()).toString());
        if (mSocializeConfig.isShowToast())
        {
            ToastUtil.showToast(mActivity, (new StringBuilder("Facebook\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD, state = ")).append(session.getState()).toString());
        }
        if (mAuthListener != null)
        {
            session = new SocializeException((new StringBuilder("Facebook\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD")).append(session.getState()).toString());
            mAuthListener.onError(session, SHARE_MEDIA.FACEBOOK);
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    private void performPublish(PendingAction pendingaction, boolean flag)
    {
        Session session = Session.getActiveSession();
        if (session == null) goto _L2; else goto _L1
_L1:
        mPendingAction = pendingaction;
        if (!hasPublishPermission()) goto _L4; else goto _L3
_L3:
        handlePendingAction();
_L6:
        return;
_L4:
        if (session.isOpened())
        {
            session.requestNewPublishPermissions(new com.facebook.Session.NewPermissionsRequest(mActivity, new String[] {
                "publish_actions, user_photos, read_stream"
            }));
            return;
        }
_L2:
        if (flag)
        {
            mPendingAction = pendingaction;
            handlePendingAction();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void postPhoto()
    {
        if (mShareMedia == null)
        {
            Log.e(TAG, "### postPhoto, image data is null...");
            return;
        } else
        {
            PostPhotoTask postphototask = new PostPhotoTask(mShareContent, mShareMedia);
            postphototask.setPostListener(new com.umeng.socialize.controller.net.PostPhotoTask.OnPostPhotoListener() {

                final UMFacebookHandler this$0;

                public void onComplete(Response response)
                {
                    handleResponse(response);
                }

            
            {
                this$0 = UMFacebookHandler.this;
                super();
            }
            });
            postphototask.execute(new Void[0]);
            return;
        }
    }

    private void postStatus()
    {
        if (hasPublishPermission())
        {
            addParams();
            if (mShareMedia != null && (mShareMedia instanceof UMImage))
            {
                if (isResOrLocalImage())
                {
                    uploadImage();
                    return;
                } else
                {
                    mUploadedImgUrl = mShareMedia.toUrl();
                    executePostStatus();
                    return;
                }
            } else
            {
                ToastUtil.showToast(mActivity, "\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD, \uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD...");
                return;
            }
        } else
        {
            mPendingAction = PendingAction.POST_STATUS_UPDATE;
            return;
        }
    }

    private void shareToFacebook()
    {
        if (mActivity == null || !TokenUtil.isTokenValid(mActivity) || !isSessionOpened())
        {
            break MISSING_BLOCK_LABEL_96;
        }
        Log.d(TAG, (new StringBuilder("### facebook\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD, post type = ")).append(mPostType).toString());
        if (!hasPublishPermission()) goto _L2; else goto _L1
_L1:
        directShare();
_L4:
        return;
_L2:
        Session session = Session.getActiveSession();
        if (session == null) goto _L4; else goto _L3
_L3:
        session.requestNewPublishPermissions(new com.facebook.Session.NewPermissionsRequest(mActivity, new String[] {
            "publish_actions, user_photos, read_stream"
        }));
        return;
        authorize(mActivity, mAuthListener);
        return;
    }

    private void uploadImage()
    {
        if (hasPublishPermission())
        {
            UploadImageTask uploadimagetask = new UploadImageTask(mActivity, (UMImage)mShareMedia);
            uploadimagetask.setUploadListener(new com.umeng.socialize.controller.net.ImageUrlTask.OnUploadListener() {

                final UMFacebookHandler this$0;

                public void onComplete(String s)
                {
                    if (!TextUtils.isEmpty(s))
                    {
                        mUploadedImgUrl = s;
                        executePostStatus();
                    }
                }

            
            {
                this$0 = UMFacebookHandler.this;
                super();
            }
            });
            uploadimagetask.execute(new Void[0]);
            return;
        } else
        {
            mPendingAction = PendingAction.POST_PHOTO;
            return;
        }
    }

    public void addToSocialSDK()
    {
        mSocializeConfig.addCustomPlatform(build());
        mSocializeConfig.setSsoHandler(this);
    }

    public void authorize(Activity activity, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        if (activity == null || activity.isFinishing())
        {
            Log.e(TAG, "\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD, activity = null");
        } else
        {
            mAuthListener = umauthlistener;
            umauthlistener = Session.getActiveSession();
            if (!umauthlistener.isOpened() && !umauthlistener.isClosed())
            {
                umauthlistener.openForRead((new com.facebook.Session.OpenRequest(activity)).setCallback(mStatusCallback));
            } else
            {
                Log.d(TAG, "### \uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFDSession");
                Session.openActiveSession(activity, true, mStatusCallback);
            }
            if (mAuthListener != null)
            {
                mAuthListener.onStart(SHARE_MEDIA.FACEBOOK);
                return;
            }
        }
    }

    public void authorizeCallBack(int i, int j, Intent intent)
    {
        onActivityResult(i, j, intent);
    }

    public PostType getPostType()
    {
        return mPostType;
    }

    public int getRequstCode()
    {
        return 64206;
    }

    protected boolean hasPublishPermission()
    {
label0:
        {
            Object obj = Session.getActiveSession();
            boolean flag = false;
            if (obj != null)
            {
                obj = ((Session) (obj)).getPermissions();
                if (!((List) (obj)).contains("publish_actions") || !((List) (obj)).contains("user_photos") || !((List) (obj)).contains("read_stream"))
                {
                    break label0;
                }
                flag = true;
            }
            return flag;
        }
        return false;
    }

    public void logOut()
    {
        Session session = Session.getActiveSession();
        if (session != null)
        {
            session.closeAndClearTokenInformation();
        }
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        onActivityResult(i, j, intent, mDialogCallback);
    }

    public void onActivityResult(int i, int j, Intent intent, com.facebook.widget.FacebookDialog.Callback callback)
    {
        mUiLifecycleHelper.onActivityResult(i, j, intent, callback);
    }

    public void onCreate(Bundle bundle)
    {
        mUiLifecycleHelper.onCreate(bundle);
    }

    public void onDestroy()
    {
        mUiLifecycleHelper.onDestroy();
    }

    public void onPause()
    {
        mUiLifecycleHelper.onPause();
    }

    public void onResume(Activity activity)
    {
        mUiLifecycleHelper.onResume();
        if (mActivity != null)
        {
            mActivity = activity;
            AppEventsLogger.activateApp(mActivity);
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        mUiLifecycleHelper.onSaveInstanceState(bundle);
    }

    public void onStop()
    {
        mUiLifecycleHelper.onStop();
    }

    protected void sendReport(boolean flag)
    {
        SHARE_MEDIA share_media = SocializeConfig.getSelectedPlatfrom();
        com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener asnspostlistener[] = (com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener[])mSocializeConfig.getListener(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener);
        int i = 40001;
        if (flag)
        {
            SocializeUtils.sendAnalytic(mActivity, mEntity.mDescriptor, mShareContent, mShareMedia, share_media.toString());
            StatisticsDataUtils.addStatisticsData(mActivity, share_media, 22);
            i = 200;
        }
        if (mSnsPostListener != null)
        {
            mSnsPostListener.onComplete(share_media, i, mEntity);
        }
        mSocializeConfig.fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, share_media, i, mEntity);
    }

    public void setPostType(PostType posttype)
    {
        mPostType = posttype;
    }






}
