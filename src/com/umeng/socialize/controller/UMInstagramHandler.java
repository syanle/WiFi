// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.media.InstagramShareContent;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socialize.net.utils.SocializeNetUtils;
import java.io.File;

// Referenced classes of package com.umeng.socialize.controller:
//            CustomHandler

public class UMInstagramHandler extends CustomHandler
{

    private Context mContext;

    public UMInstagramHandler(Context context)
    {
        super(context);
        mContext = null;
        mContext = context;
    }

    public void authorize(Activity activity, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
    }

    public void authorizeCallBack(int i, int j, Intent intent)
    {
    }

    protected UMediaObject buildMediaObject(UMediaObject umediaobject)
    {
        Object obj = umediaobject;
        if (umediaobject instanceof InstagramShareContent)
        {
            obj = ((InstagramShareContent)umediaobject).getShareImage();
        }
        return ((UMediaObject) (obj));
    }

    protected boolean doShare(Object obj, com.umeng.socialize.media.UMediaObject.MediaType mediatype)
    {
        obj = obj.toString();
        mediatype = new Intent();
        mediatype.setAction("android.intent.action.SEND");
        mediatype.setPackage("com.instagram.android");
        mediatype.putExtra("android.intent.extra.STREAM", Uri.fromFile(new File(((String) (obj)))));
        Log.d("", (new StringBuilder("### \u5206\u4EAB\u5230instagram, image path = ")).append(((String) (obj))).toString());
        mediatype.setType("image/*");
        mContext.startActivity(mediatype);
        return false;
    }

    protected Object getShareImage(UMediaObject umediaobject)
    {
        UMImage umimage = (UMImage)umediaobject;
        if (umimage != null && !umimage.isSerialized())
        {
            umimage.waitImageToSerialize();
        }
        String s = umimage.toUrl();
        umediaobject = s;
        if (TextUtils.isEmpty(s))
        {
            umediaobject = umimage.getImageCachePath();
        }
        if (!TextUtils.isEmpty(umediaobject) && !SocializeNetUtils.startWithHttp(umediaobject))
        {
            return umediaobject;
        }
        if (mContext != null)
        {
            Toast.makeText(mContext, "\u62B1\u6B49,Instagram\u53EA\u652F\u6301\u672C\u5730\u56FE\u7247\u5206\u4EAB...", 0).show();
        }
        return null;
    }

    protected Object getShareMusic(UMediaObject umediaobject, String s)
    {
        return null;
    }

    protected Object getShareText(String s)
    {
        return null;
    }

    protected Object getShareTextAndImage(String s, UMediaObject umediaobject)
    {
        return getShareImage(umediaobject);
    }

    protected Object getShareVideo(UMediaObject umediaobject, String s)
    {
        return null;
    }

    protected void initPlatformConfig()
    {
        mIcon = ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_instagram_on");
        mGrayIcon = ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_instagram_off");
        mShowWord = "Instagram";
        mKeyWord = "instagram";
        mPlatformOpId = 23;
    }

    public boolean isClientInstalled()
    {
        return mContext.getPackageManager().getLaunchIntentForPackage("com.instagram.android") != null;
    }

    protected void setSelectedPlatform()
    {
        SocializeConfig.setSelectedPlatfrom(SHARE_MEDIA.INSTAGRAM);
    }

    protected void shareAsync(com.umeng.socialize.media.UMediaObject.MediaType mediatype)
    {
        Object obj = createMessage(mediatype);
        if (!(obj instanceof String)) goto _L2; else goto _L1
_L1:
        if ((new File(obj.toString())).exists()) goto _L4; else goto _L3
_L3:
        Log.e(TAG, "\u5206\u4EAB\u5230Instagram\u7684\u56FE\u7247\u4E0D\u5B58\u5728!!");
_L6:
        return;
_L4:
        doShare(obj, mediatype);
        sendReport(Boolean.valueOf(true));
        return;
_L2:
        if (mContext != null)
        {
            Toast.makeText(mContext, "\u62B1\u6B49,Instagram\u53EA\u652F\u6301\u672C\u5730\u56FE\u7247\u5206\u4EAB...", 0).show();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
