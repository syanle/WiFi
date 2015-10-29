// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.wxapi;

import android.content.pm.PackageManager;
import android.widget.Toast;
import cn.sharesdk.wechat.utils.WXAppExtendObject;
import cn.sharesdk.wechat.utils.WXMediaMessage;
import cn.sharesdk.wechat.utils.WechatHandlerActivity;

public class WXEntryActivity extends WechatHandlerActivity
{

    public WXEntryActivity()
    {
    }

    public void onGetMessageFromWXReq(WXMediaMessage wxmediamessage)
    {
        startActivity(getPackageManager().getLaunchIntentForPackage(getPackageName()));
    }

    public void onShowMessageFromWXReq(WXMediaMessage wxmediamessage)
    {
        if (wxmediamessage != null && wxmediamessage.mediaObject != null && (wxmediamessage.mediaObject instanceof WXAppExtendObject))
        {
            Toast.makeText(this, ((WXAppExtendObject)wxmediamessage.mediaObject).extInfo, 0).show();
        }
    }
}
