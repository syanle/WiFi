// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.os.AsyncTask;
import android.os.Handler;
import android.text.TextUtils;
import com.tencent.mm.sdk.openapi.WXMediaMessage;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.ShareType;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socom.Log;
import com.umeng.socom.util.StatisticsDataUtils;

// Referenced classes of package com.umeng.socialize.controller:
//            UMWXHandler

private class shareMedia extends AsyncTask
{

    String shareContent;
    UMediaObject shareMedia;
    String shareType;
    final UMWXHandler this$0;

    private void sendReport(boolean flag, String s)
    {
        char c = '\u13A5';
        Object obj;
        if (UMWXHandler.f(UMWXHandler.this))
        {
            obj = SHARE_MEDIA.WEIXIN_CIRCLE;
        } else
        {
            obj = SHARE_MEDIA.WEIXIN;
        }
        if (flag)
        {
            android.content.Context context;
            String s1;
            UMediaObject umediaobject;
            try
            {
                StatisticsDataUtils.addStatisticsData(UMWXHandler.b(UMWXHandler.this), ((SHARE_MEDIA) (obj)), 17);
            }
            catch (Exception exception) { }
            c = '\310';
        }
        if (!a(UMWXHandler.b(UMWXHandler.this)))
        {
            if (UMWXHandler.a() != null)
            {
                UMWXHandler.a().onComplete(((SHARE_MEDIA) (obj)), c, UMWXHandler.b());
            }
            UMWXHandler.c().fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, ((SHARE_MEDIA) (obj)), c, UMWXHandler.b());
            if (flag)
            {
                context = UMWXHandler.b(UMWXHandler.this);
                s1 = UMWXHandler.b().mDescriptor;
                umediaobject = shareMedia;
                if (UMWXHandler.f(UMWXHandler.this))
                {
                    obj = "wxtimeline";
                } else
                {
                    obj = "wxsession";
                }
                SocializeUtils.sendAnalytic(context, s1, s, umediaobject, ((String) (obj)));
            }
        }
    }

    protected transient WXMediaMessage doInBackground(Void avoid[])
    {
        avoid = null;
        if (!shareType.equals("image")) goto _L2; else goto _L1
_L1:
        avoid = UMWXHandler.a(UMWXHandler.this, shareMedia);
_L4:
        byte abyte0[] = ((WXMediaMessage) (avoid)).thumbData;
        if (abyte0 != null && abyte0.length > 32768)
        {
            Log.c("UMWXHandler", (new StringBuilder("\u539F\u59CB\u7F29\u7565\u56FE\u5927\u5C0F : ")).append(((WXMediaMessage) (avoid)).thumbData.length / 1024).append(" KB.").toString());
            UMWXHandler.d(UMWXHandler.this).sendEmptyMessage(1);
            avoid.thumbData = UMWXHandler.a(UMWXHandler.this, abyte0, 32768);
            Log.c("UMWXHandler", (new StringBuilder("\u538B\u7F29\u4E4B\u540E\u7F29\u7565\u56FE\u5927\u5C0F : ")).append(((WXMediaMessage) (avoid)).thumbData.length / 1024).append(" KB.").toString());
        }
        return avoid;
_L2:
        if (shareType.equals("music"))
        {
            avoid = UMWXHandler.a(UMWXHandler.this, shareMedia, shareContent);
        } else
        if (shareType.equals("text"))
        {
            avoid = UMWXHandler.a(UMWXHandler.this, shareContent);
        } else
        if (shareType.equals("text_image"))
        {
            avoid = UMWXHandler.a(UMWXHandler.this, shareContent, shareMedia);
        } else
        if (shareType.equals("video"))
        {
            avoid = UMWXHandler.b(UMWXHandler.this, shareMedia, shareContent);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected void onPostExecute(WXMediaMessage wxmediamessage)
    {
        UMWXHandler.e(UMWXHandler.this);
        if (!TextUtils.isEmpty(wxmediamessage.title) && wxmediamessage.title.getBytes().length >= 512)
        {
            wxmediamessage.title = new String(wxmediamessage.title.getBytes(), 0, 512);
        }
        if (!TextUtils.isEmpty(wxmediamessage.description) && wxmediamessage.description.getBytes().length >= 1024)
        {
            wxmediamessage.description = new String(wxmediamessage.description.getBytes(), 0, 1024);
        }
        UMWXHandler.a(wxmediamessage.description);
        UMWXHandler.a(UMWXHandler.f(UMWXHandler.this));
        UMWXHandler.a(shareMedia);
        UMWXHandler.b(UMWXHandler.b(UMWXHandler.this));
        sendReport(UMWXHandler.a(UMWXHandler.this, wxmediamessage, shareType, shareMedia), wxmediamessage.description);
        UMWXHandler.b().setShareType(ShareType.NORMAL);
        super.onPostExecute(wxmediamessage);
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((WXMediaMessage)obj);
    }

    protected void onPreExecute()
    {
        UMWXHandler.a(UMWXHandler.this, UMWXHandler.b(UMWXHandler.this));
        UMWXHandler.c(UMWXHandler.this);
        super.onPreExecute();
    }

    public nsPostListener(String s, String s1, UMediaObject umediaobject)
    {
        this$0 = UMWXHandler.this;
        super();
        shareType = s;
        shareContent = s1;
        shareMedia = umediaobject;
    }
}
