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
import android.os.Handler;
import android.text.TextUtils;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.tencent.mm.sdk.openapi.WXImageObject;
import com.tencent.mm.sdk.openapi.WXMediaMessage;
import com.tencent.mm.sdk.openapi.WXMusicObject;
import com.tencent.mm.sdk.openapi.WXTextObject;
import com.tencent.mm.sdk.openapi.WXVideoObject;
import com.tencent.mm.sdk.openapi.WXWebpageObject;
import com.umeng.socialize.bean.CustomPlatform;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.ShareType;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.media.BaseShareContent;
import com.umeng.socialize.media.CircleShareContent;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMVideo;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socialize.media.UMusic;
import com.umeng.socialize.media.WeiXinShareContent;
import com.umeng.socialize.net.utils.SocializeNetUtils;
import com.umeng.socom.Log;
import com.umeng.socom.util.BitmapUtils;
import com.umeng.socom.util.StatisticsDataUtils;
import java.io.ByteArrayOutputStream;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.umeng.socialize.controller:
//            UMSocialService

public class UMWXHandler
{
    private class LoadResourceTask extends AsyncTask
    {

        String shareContent;
        UMediaObject shareMedia;
        String shareType;
        final UMWXHandler this$0;

        private void sendReport(boolean flag, String s1)
        {
            char c1 = '\u13A5';
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
                Context context;
                String s2;
                UMediaObject umediaobject;
                try
                {
                    StatisticsDataUtils.addStatisticsData(UMWXHandler.b(UMWXHandler.this), ((SHARE_MEDIA) (obj)), 17);
                }
                catch (Exception exception) { }
                c1 = '\310';
            }
            if (!a(UMWXHandler.b(UMWXHandler.this)))
            {
                if (UMWXHandler.a() != null)
                {
                    UMWXHandler.a().onComplete(((SHARE_MEDIA) (obj)), c1, UMWXHandler.b());
                }
                UMWXHandler.c().fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, ((SHARE_MEDIA) (obj)), c1, UMWXHandler.b());
                if (flag)
                {
                    context = UMWXHandler.b(UMWXHandler.this);
                    s2 = UMWXHandler.b().mDescriptor;
                    umediaobject = shareMedia;
                    if (UMWXHandler.f(UMWXHandler.this))
                    {
                        obj = "wxtimeline";
                    } else
                    {
                        obj = "wxsession";
                    }
                    SocializeUtils.sendAnalytic(context, s2, s1, umediaobject, ((String) (obj)));
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

        public LoadResourceTask(String s1, String s2, UMediaObject umediaobject)
        {
            this$0 = UMWXHandler.this;
            super();
            shareType = s1;
            shareContent = s2;
            shareMedia = umediaobject;
        }
    }


    private static final String A = "video";
    private static final String B = "music";
    private static final int C = 1;
    private static final int D = 2;
    private static boolean F = false;
    private static String G = "";
    private static UMediaObject H = null;
    private static Context I = null;
    private static IWXAPIEventHandler J = new _cls1();
    private static final int b = 150;
    private static final int c = 32768;
    private static final int d = 512;
    private static final int e = 1024;
    private static String f;
    private static int h = 0;
    private static int i = 0;
    private static IWXAPI j;
    private static String l;
    private static String m;
    private static com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener r = null;
    private static SocializeEntity s;
    private static final String t = "UMWXHandler";
    private static SocializeConfig w = SocializeConfig.getSocializeConfig();
    private static final String x = "text";
    private static final String y = "image";
    private static final String z = "text_image";
    private boolean E;
    private final Handler K = new _cls2();
    int a;
    private String g;
    private Context k;
    private String n;
    private String o;
    private boolean p;
    private com.umeng.socialize.controller.listener.SocializeListeners.OnCustomPlatformClickListener q;
    private ProgressDialog u;
    private CustomPlatform v;

    protected UMWXHandler(Context context, String s1)
    {
        g = "http://www.umeng.com/social";
        n = "weixin";
        o = "\u5FAE\u4FE1";
        a = 0;
        p = false;
        v = null;
        E = true;
        f = s1;
        if (TextUtils.isEmpty(f))
        {
            throw new NullPointerException("the weixin appid is null");
        }
        j = WXAPIFactory.createWXAPI(context, f);
        j.registerApp(f);
        k = context;
        if (h == 0 || i == 0)
        {
            h = ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_wechat");
            i = ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_wxcircle");
        }
    }

    static WXMediaMessage a(UMWXHandler umwxhandler, UMediaObject umediaobject)
    {
        return umwxhandler.c(umediaobject);
    }

    static WXMediaMessage a(UMWXHandler umwxhandler, UMediaObject umediaobject, String s1)
    {
        return umwxhandler.a(umediaobject, s1);
    }

    static WXMediaMessage a(UMWXHandler umwxhandler, String s1)
    {
        return umwxhandler.c(s1);
    }

    static WXMediaMessage a(UMWXHandler umwxhandler, String s1, UMediaObject umediaobject)
    {
        return umwxhandler.b(s1, umediaobject);
    }

    private WXMediaMessage a(UMediaObject umediaobject, String s1)
    {
        WXMusicObject wxmusicobject;
        WXMediaMessage wxmediamessage;
        if (umediaobject instanceof UMusic)
        {
            umediaobject = (UMusic)umediaobject;
        } else
        if (umediaobject instanceof WeiXinShareContent)
        {
            umediaobject = ((WeiXinShareContent)umediaobject).getShareMusic();
        } else
        {
            umediaobject = null;
        }
        wxmusicobject = new WXMusicObject();
        wxmusicobject.musicUrl = g;
        wxmusicobject.musicDataUrl = umediaobject.toUrl();
        wxmediamessage = new WXMediaMessage();
        wxmediamessage.mediaObject = wxmusicobject;
        wxmediamessage.title = umediaobject.getTitle();
        wxmediamessage.description = s1;
        if (!TextUtils.isEmpty(umediaobject.getThumb()))
        {
            wxmediamessage.thumbData = BitmapUtils.bitmap2Bytes(BitmapUtils.loadImage(umediaobject.getThumb(), 150, 150));
            return wxmediamessage;
        } else
        {
            wxmediamessage.thumbData = umediaobject.toByte();
            return wxmediamessage;
        }
    }

    static com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener a()
    {
        return r;
    }

    private String a(com.umeng.socialize.media.UMediaObject.MediaType mediatype)
    {
        String s1 = "";
        if (mediatype == com.umeng.socialize.media.UMediaObject.MediaType.IMAGE)
        {
            s1 = "image";
        } else
        {
            if (mediatype == com.umeng.socialize.media.UMediaObject.MediaType.MUSIC)
            {
                return "music";
            }
            if (mediatype == com.umeng.socialize.media.UMediaObject.MediaType.VEDIO)
            {
                return "video";
            }
        }
        return s1;
    }

    static void a(SocializeEntity socializeentity)
    {
        s = socializeentity;
    }

    static void a(UMWXHandler umwxhandler, Context context)
    {
        umwxhandler.c(context);
    }

    static void a(com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        r = snspostlistener;
    }

    static void a(UMediaObject umediaobject)
    {
        H = umediaobject;
    }

    static void a(String s1)
    {
        G = s1;
    }

    private void a(String s1, UMediaObject umediaobject)
    {
        String s2 = "";
        Object obj;
        Object obj1;
        UMediaObject umediaobject1;
        if (!TextUtils.isEmpty(s1) && umediaobject == null)
        {
            obj = "text";
            umediaobject1 = umediaobject;
            obj1 = s1;
        } else
        if (TextUtils.isEmpty(s1) && umediaobject != null && (umediaobject instanceof UMImage))
        {
            obj = "image";
            obj1 = s1;
            umediaobject1 = umediaobject;
        } else
        if (umediaobject != null && (umediaobject instanceof UMusic))
        {
            obj = "music";
            obj1 = s1;
            umediaobject1 = umediaobject;
        } else
        if (umediaobject != null && (umediaobject instanceof UMVideo))
        {
            obj = "video";
            obj1 = s1;
            umediaobject1 = umediaobject;
        } else
        if (!TextUtils.isEmpty(s1) && umediaobject != null && (umediaobject instanceof UMImage))
        {
            obj = "text_image";
            obj1 = s1;
            umediaobject1 = umediaobject;
        } else
        {
            obj = s2;
            obj1 = s1;
            umediaobject1 = umediaobject;
            if (umediaobject != null)
            {
                obj = s2;
                obj1 = s1;
                umediaobject1 = umediaobject;
                if (umediaobject instanceof BaseShareContent)
                {
                    obj = (BaseShareContent)umediaobject;
                    s1 = ((BaseShareContent) (obj)).getShareContent();
                    String s3;
                    if (p)
                    {
                        obj1 = (CircleShareContent)umediaobject;
                        if (!TextUtils.isEmpty(((CircleShareContent) (obj1)).getTitle()))
                        {
                            m = ((CircleShareContent) (obj1)).getTitle();
                        }
                    } else
                    {
                        obj1 = (WeiXinShareContent)umediaobject;
                        if (!TextUtils.isEmpty(((WeiXinShareContent) (obj1)).getTitle()))
                        {
                            l = ((WeiXinShareContent) (obj1)).getTitle();
                        }
                    }
                    if (((BaseShareContent) (obj)).getMediaType() == com.umeng.socialize.media.UMediaObject.MediaType.IMAGE)
                    {
                        umediaobject = ((BaseShareContent) (obj)).getShareImage();
                    } else
                    if (((BaseShareContent) (obj)).getMediaType() == com.umeng.socialize.media.UMediaObject.MediaType.MUSIC)
                    {
                        umediaobject = ((BaseShareContent) (obj)).getShareMusic();
                    } else
                    if (((BaseShareContent) (obj)).getMediaType() == com.umeng.socialize.media.UMediaObject.MediaType.VEDIO)
                    {
                        umediaobject = ((BaseShareContent) (obj)).getShareVideo();
                    }
                    s3 = a(((BaseShareContent) (obj)).getMediaType());
                    if (TextUtils.isEmpty(s3) && !TextUtils.isEmpty(s1))
                    {
                        obj = "text";
                        obj1 = s1;
                        umediaobject1 = umediaobject;
                    } else
                    {
                        obj = s3;
                        obj1 = s1;
                        umediaobject1 = umediaobject;
                        if (s3 == "image")
                        {
                            obj = s3;
                            obj1 = s1;
                            umediaobject1 = umediaobject;
                            if (!TextUtils.isEmpty(s1))
                            {
                                obj = "text_image";
                                obj1 = s1;
                                umediaobject1 = umediaobject;
                            }
                        }
                    }
                }
            }
        }
        if (!TextUtils.isEmpty(((CharSequence) (obj))))
        {
            (new LoadResourceTask(((String) (obj)), ((String) (obj1)), umediaobject1)).execute(new Void[0]);
            return;
        } else
        {
            Log.b("UMWXHandler", "\u5206\u4EAB\u7684\u5A92\u4F53\u53EA\u652F\u6301\u6587\u5B57\uFF0C\u56FE\u7247\uFF0C\u56FE\u6587\u5206\u4EAB...");
            return;
        }
    }

    static void a(boolean flag)
    {
        F = flag;
    }

    private boolean a(WXMediaMessage wxmediamessage, String s1, UMediaObject umediaobject)
    {
        if (r != null)
        {
            r.onStart();
        }
        w.fireAllListenersOnStart(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener);
        umediaobject = new com.tencent.mm.sdk.openapi.SendMessageToWX.Req();
        umediaobject.transaction = b(s1);
        umediaobject.message = wxmediamessage;
        int i1;
        if (p)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        umediaobject.scene = i1;
        return j.sendReq(umediaobject);
    }

    static boolean a(UMWXHandler umwxhandler)
    {
        return umwxhandler.E;
    }

    static boolean a(UMWXHandler umwxhandler, WXMediaMessage wxmediamessage, String s1, UMediaObject umediaobject)
    {
        return umwxhandler.a(wxmediamessage, s1, umediaobject);
    }

    static byte[] a(UMWXHandler umwxhandler, byte abyte0[], int i1)
    {
        return umwxhandler.a(abyte0, i1);
    }

    private byte[] a(byte abyte0[], int i1)
    {
        byte abyte1[] = abyte0;
        if (abyte0 == null) goto _L2; else goto _L1
_L1:
        abyte1 = abyte0;
        if (abyte0.length < i1) goto _L2; else goto _L3
_L3:
        Bitmap bitmap;
        ByteArrayOutputStream bytearrayoutputstream;
        boolean flag;
        int j1;
        bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
        flag = false;
        j1 = 1;
_L7:
        if (!flag && j1 <= 10) goto _L5; else goto _L4
_L4:
        abyte1 = abyte0;
        if (bytearrayoutputstream != null)
        {
            abyte0 = bytearrayoutputstream.toByteArray();
            if (!bitmap.isRecycled())
            {
                bitmap.recycle();
            }
            abyte1 = abyte0;
            if (abyte0 != null)
            {
                abyte1 = abyte0;
                if (abyte0.length <= 0)
                {
                    Log.b("UMWXHandler", "### \u60A8\u7684\u539F\u59CB\u56FE\u7247\u592A\u5927,\u5BFC\u81F4\u7F29\u7565\u56FE\u538B\u7F29\u8FC7\u540E\u8FD8\u5927\u4E8E32KB,\u8BF7\u5C06\u5206\u4EAB\u5230\u5FAE\u4FE1\u7684\u56FE\u7247\u8FDB\u884C\u9002\u5F53\u7F29\u5C0F.");
                    abyte1 = abyte0;
                }
            }
        }
_L2:
        return abyte1;
_L5:
        int k1 = (int)(Math.pow(0.80000000000000004D, j1) * 100D);
        Log.c("UMWXHandler", (new StringBuilder("quality = ")).append(k1).toString());
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, k1, bytearrayoutputstream);
        Log.c("UMWXHandler", (new StringBuilder("WeiXin Thumb Size = ")).append(bytearrayoutputstream.toByteArray().length / 1024).append(" KB").toString());
        if (bytearrayoutputstream != null && bytearrayoutputstream.size() < i1)
        {
            flag = true;
        } else
        {
            bytearrayoutputstream.reset();
            j1++;
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    static Context b(UMWXHandler umwxhandler)
    {
        return umwxhandler.k;
    }

    static WXMediaMessage b(UMWXHandler umwxhandler, UMediaObject umediaobject, String s1)
    {
        return umwxhandler.b(umediaobject, s1);
    }

    private WXMediaMessage b(UMediaObject umediaobject, String s1)
    {
        UMVideo umvideo = null;
        if (!(umediaobject instanceof UMVideo)) goto _L2; else goto _L1
_L1:
        umvideo = (UMVideo)umediaobject;
_L8:
        WXMediaMessage wxmediamessage;
        WXVideoObject wxvideoobject = new WXVideoObject();
        wxmediamessage = new WXMediaMessage(wxvideoobject);
        if (umvideo != null)
        {
            wxmediamessage.title = umvideo.getTitle();
        }
        wxmediamessage.description = s1;
        wxvideoobject.videoUrl = umediaobject.toUrl();
        if (umvideo == null || TextUtils.isEmpty(umvideo.getThumb())) goto _L4; else goto _L3
_L3:
        wxmediamessage.thumbData = BitmapUtils.bitmap2Bytes(BitmapUtils.loadImage(umvideo.getThumb(), 150, 150));
_L6:
        return wxmediamessage;
_L2:
        if (umediaobject instanceof WeiXinShareContent)
        {
            umvideo = ((WeiXinShareContent)umediaobject).getShareVideo();
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (umvideo == null) goto _L6; else goto _L5
_L5:
        wxmediamessage.thumbData = umvideo.toByte();
        return wxmediamessage;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private WXMediaMessage b(String s1, UMediaObject umediaobject)
    {
        WXMediaMessage wxmediamessage;
        Object obj = new WXWebpageObject();
        obj.webpageUrl = g;
        wxmediamessage = new WXMediaMessage(((com.tencent.mm.sdk.openapi.WXMediaMessage.IMediaObject) (obj)));
        if (p)
        {
            obj = m;
        } else
        {
            obj = l;
        }
        wxmediamessage.title = ((String) (obj));
        wxmediamessage.description = s1;
        if (!umediaobject.isUrlMedia()) goto _L2; else goto _L1
_L1:
        obj = umediaobject.toUrl();
        umediaobject = d(((String) (obj)));
        s1 = umediaobject;
        if (umediaobject == null)
        {
            s1 = BitmapUtils.loadImage(((String) (obj)), 150, 150);
        }
        if (s1 != null)
        {
            wxmediamessage.thumbData = UMImage.bitmap2Bytes(s1);
        }
        if (s1 != null && !s1.isRecycled())
        {
            s1.recycle();
        }
_L4:
        return wxmediamessage;
_L2:
        s1 = umediaobject.toByte();
        int i1;
        if (s1 != null)
        {
            i1 = s1.length;
        } else
        {
            i1 = 0;
        }
        if (i1 == 0)
        {
            return wxmediamessage;
        }
        s1 = BitmapFactory.decodeByteArray(s1, 0, i1);
        if (i1 >= 32768)
        {
            wxmediamessage.thumbData = UMImage.bitmap2Bytes(Bitmap.createScaledBitmap(s1, 150, 150, true));
        } else
        {
            wxmediamessage.thumbData = UMImage.bitmap2Bytes(s1);
        }
        if (s1 != null && !s1.isRecycled())
        {
            s1.recycle();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static SocializeEntity b()
    {
        return s;
    }

    static UMediaObject b(UMWXHandler umwxhandler, UMediaObject umediaobject)
    {
        return umwxhandler.b(umediaobject);
    }

    private UMediaObject b(UMediaObject umediaobject)
    {
        if (umediaobject != null) goto _L2; else goto _L1
_L1:
        umediaobject = null;
_L4:
        return umediaobject;
_L2:
        Object obj;
        if (!TextUtils.isEmpty(umediaobject.toUrl()))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = "";
        if (umediaobject instanceof UMImage)
        {
            obj = ((UMImage)umediaobject).getTargetUrl();
        }
        if (TextUtils.isEmpty(((CharSequence) (obj))))
        {
            break; /* Loop/switch isn't completed */
        }
_L5:
        Object obj1;
        if (umediaobject instanceof WeiXinShareContent)
        {
            obj = (WeiXinShareContent)umediaobject;
            obj1 = ((WeiXinShareContent) (obj)).getTargetUrl();
        } else
        {
            obj1 = obj;
            obj = umediaobject;
            if (umediaobject instanceof CircleShareContent)
            {
                obj = (CircleShareContent)umediaobject;
                obj1 = ((CircleShareContent) (obj)).getTargetUrl();
            }
        }
        umediaobject = ((UMediaObject) (obj));
        if (!TextUtils.isEmpty(((CharSequence) (obj1))))
        {
            g = ((String) (obj1));
            return ((UMediaObject) (obj));
        }
        if (true) goto _L4; else goto _L3
_L3:
        obj = "";
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    private String b(String s1)
    {
        if (s1 == null)
        {
            return String.valueOf(System.currentTimeMillis());
        } else
        {
            return (new StringBuilder(String.valueOf(s1))).append(System.currentTimeMillis()).toString();
        }
    }

    static void b(Context context)
    {
        I = context;
    }

    static void b(UMWXHandler umwxhandler, String s1, UMediaObject umediaobject)
    {
        umwxhandler.a(s1, umediaobject);
    }

    private WXMediaMessage c(UMediaObject umediaobject)
    {
        Bitmap bitmap = null;
        WXImageObject wximageobject;
        WXMediaMessage wxmediamessage;
        Object obj;
        if (umediaobject instanceof UMImage)
        {
            umediaobject = (UMImage)umediaobject;
        } else
        if (umediaobject instanceof WeiXinShareContent)
        {
            umediaobject = ((WeiXinShareContent)umediaobject).getShareImage();
        } else
        {
            umediaobject = null;
        }
        wximageobject = new WXImageObject();
        wxmediamessage = new WXMediaMessage();
        obj = umediaobject.toUrl();
        if (!TextUtils.isEmpty(((CharSequence) (obj)))) goto _L2; else goto _L1
_L1:
        obj = umediaobject.getImageCachePath();
        if (!TextUtils.isEmpty(((CharSequence) (obj))))
        {
            wximageobject.imagePath = ((String) (obj));
            obj = d(((String) (obj)));
            wxmediamessage.thumbData = BitmapUtils.bitmap2Bytes(((Bitmap) (obj)));
            umediaobject = bitmap;
            if (obj != null)
            {
                umediaobject = bitmap;
                if (!((Bitmap) (obj)).isRecycled())
                {
                    ((Bitmap) (obj)).recycle();
                    umediaobject = bitmap;
                }
            }
        } else
        {
            umediaobject = umediaobject.toByte();
            wximageobject.imageData = umediaobject;
            wxmediamessage.thumbData = umediaobject;
        }
        if (wxmediamessage.thumbData == null)
        {
            wxmediamessage.thumbData = umediaobject;
        }
_L4:
        wxmediamessage.mediaObject = wximageobject;
        return wxmediamessage;
_L2:
        if (SocializeNetUtils.startWithHttp(((String) (obj))))
        {
            wximageobject.imageUrl = ((String) (obj));
            Log.c("UMWXHandler", (new StringBuilder("\u5206\u4EAB\u5230\u5FAE\u4FE1\u7684\u56FE\u7247url : ")).append(wximageobject.imageUrl).toString());
        } else
        {
            wximageobject.imagePath = ((String) (obj));
            Log.c("UMWXHandler", (new StringBuilder("\u5206\u4EAB\u5230\u5FAE\u4FE1\u7684\u56FE\u7247\u672C\u5730\u8DEF\u5F84 : ")).append(wximageobject.imagePath).toString());
        }
        bitmap = d(((String) (obj)));
        umediaobject = bitmap;
        if (bitmap == null)
        {
            umediaobject = BitmapUtils.loadImage(((String) (obj)), 150, 150);
        }
        wxmediamessage.thumbData = BitmapUtils.bitmap2Bytes(umediaobject);
        if (umediaobject != null && !umediaobject.isRecycled())
        {
            umediaobject.recycle();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private WXMediaMessage c(String s1)
    {
        WXTextObject wxtextobject = new WXTextObject();
        wxtextobject.text = s1;
        WXMediaMessage wxmediamessage = new WXMediaMessage();
        wxmediamessage.mediaObject = wxtextobject;
        wxmediamessage.description = s1;
        if (p)
        {
            s1 = l;
        } else
        {
            s1 = m;
        }
        wxmediamessage.title = s1;
        return wxmediamessage;
    }

    static SocializeConfig c()
    {
        return w;
    }

    private void c(Context context)
    {
        u = new ProgressDialog(k, ResContainer.getResourceId(k, com.umeng.socialize.common.ResContainer.ResType.STYLE, "Theme.UMDialog"));
        context = k.getString(ResContainer.getResourceId(k, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_waitting"));
        if (!SHARE_MEDIA.WEIXIN.toString().equals(SocializeConfig.getSelectedPlatfrom().toString())) goto _L2; else goto _L1
_L1:
        context = k.getString(ResContainer.getResourceId(k, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_waitting_weixin"));
_L4:
        u.setMessage(context);
        return;
_L2:
        if (SHARE_MEDIA.WEIXIN_CIRCLE.toString().equals(SocializeConfig.getSelectedPlatfrom().toString()))
        {
            context = k.getString(ResContainer.getResourceId(k, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_waitting_weixin_circle"));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static void c(UMWXHandler umwxhandler)
    {
        umwxhandler.j();
    }

    static Context d()
    {
        return I;
    }

    private Bitmap d(String s1)
    {
label0:
        {
            Bitmap bitmap = null;
            if (BitmapUtils.isCacheFileExist(s1))
            {
                if (!BitmapUtils.isNeedScale(s1, 32768))
                {
                    break label0;
                }
                bitmap = BitmapUtils.getBitmapFromFile(s1, 150, 150);
            }
            return bitmap;
        }
        return BitmapUtils.getBitmapFromFile(s1);
    }

    static Handler d(UMWXHandler umwxhandler)
    {
        return umwxhandler.K;
    }

    static String e()
    {
        return G;
    }

    static void e(UMWXHandler umwxhandler)
    {
        umwxhandler.k();
    }

    static UMediaObject f()
    {
        return H;
    }

    static boolean f(UMWXHandler umwxhandler)
    {
        return umwxhandler.p;
    }

    static void g(UMWXHandler umwxhandler)
    {
        umwxhandler.i();
    }

    static boolean g()
    {
        return F;
    }

    public static IWXAPI getWXApi()
    {
        return j;
    }

    public static IWXAPIEventHandler getWXEventHandler()
    {
        return J;
    }

    static IWXAPI h()
    {
        return j;
    }

    static com.umeng.socialize.controller.listener.SocializeListeners.OnCustomPlatformClickListener h(UMWXHandler umwxhandler)
    {
        return umwxhandler.q;
    }

    private void i()
    {
        if (!p)
        {
            SocializeConfig.setSelectedPlatfrom(SHARE_MEDIA.WEIXIN);
            return;
        } else
        {
            SocializeConfig.setSelectedPlatfrom(SHARE_MEDIA.WEIXIN_CIRCLE);
            return;
        }
    }

    private void j()
    {
        if ((k instanceof Activity) && !((Activity)k).isFinishing())
        {
            u.show();
        }
    }

    private void k()
    {
        if ((k instanceof Activity) && !((Activity)k).isFinishing())
        {
            u.dismiss();
        }
    }

    protected boolean a(Context context)
    {
        if (k == null)
        {
            return false;
        }
        boolean flag = true;
        context = (new StringBuilder(String.valueOf(k.getPackageName()))).append(".wxapi.WXEntryActivity").toString();
        try
        {
            Class.forName(context);
            Log.c("UMWXHandler", (new StringBuilder("### \u5FAE\u4FE1\u6216\u5FAE\u4FE1\u670B\u53CB\u5708\u56DE\u8C03\u7C7B\u5730\u5740 : ")).append(context).toString());
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            Log.b("UMWXHandler", (new StringBuilder(String.valueOf(context))).append(" \u7C7B\u6CA1\u6709\u627E\u5230. \u8BF7\u628Aweixin\u6587\u4EF6\u5939\u4E2D\u7684wxapi\u76EE\u5F55\u62F7\u8D1D\u5230\u60A8\u7684\u5305\u76EE\u5F55\u4E0B.").toString());
            flag = false;
        }
        return flag;
    }

    public boolean addWXCustomPlatform(UMSocialService umsocialservice, String s1, int i1, boolean flag, com.umeng.socialize.controller.listener.SocializeListeners.OnCustomPlatformClickListener oncustomplatformclicklistener)
    {
        Iterator iterator;
        o = s1;
        a = i1;
        p = flag;
        q = oncustomplatformclicklistener;
        s1 = build();
        oncustomplatformclicklistener = umsocialservice.getConfig().getCustomPlatforms();
        iterator = oncustomplatformclicklistener.iterator();
_L2:
        if (iterator.hasNext())
        {
            CustomPlatform customplatform = (CustomPlatform)iterator.next();
            if (!customplatform.toString().equals(s1.toString()))
            {
                continue; /* Loop/switch isn't completed */
            }
            Log.e("com.umeng.socialize", "find the same custom-platform has added,and then remove old one.");
            oncustomplatformclicklistener.remove(customplatform);
        }
        umsocialservice.getConfig().addCustomPlatform(s1);
        return true;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final CustomPlatform build()
    {
        String s1;
        int i1;
        if (a == 0)
        {
            if (p)
            {
                i1 = i;
            } else
            {
                i1 = h;
            }
            a = i1;
        }
        if (p)
        {
            s1 = "weixin_circle";
        } else
        {
            s1 = n;
        }
        n = s1;
        if (p)
        {
            s1 = "\u670B\u53CB\u5708";
        } else
        {
            s1 = o;
        }
        o = s1;
        v = new CustomPlatform(n, o, a);
        if (p)
        {
            i1 = ResContainer.getResourceId(k, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_wxcircle_gray");
        } else
        {
            i1 = ResContainer.getResourceId(k, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_wechat_gray");
        }
        v.mGrayIcon = i1;
        v.mClickListener = new _cls3();
        return v;
    }

    public int getIcon()
    {
        return a;
    }

    public com.umeng.socialize.controller.listener.SocializeListeners.OnCustomPlatformClickListener getListener()
    {
        return q;
    }

    public String getShowWords()
    {
        return o;
    }

    public boolean isShowCompressToast()
    {
        return E;
    }

    public boolean isToCircle()
    {
        return p;
    }

    public void setCircleTitle(String s1)
    {
        if (!TextUtils.isEmpty(s1))
        {
            m = s1;
        }
    }

    public void setContentURL(String s1)
    {
        g = s1;
    }

    public UMWXHandler setIcon(int i1)
    {
        a = i1;
        return this;
    }

    public UMWXHandler setListener(com.umeng.socialize.controller.listener.SocializeListeners.OnCustomPlatformClickListener oncustomplatformclicklistener)
    {
        q = oncustomplatformclicklistener;
        return this;
    }

    public UMWXHandler setShowWords(String s1)
    {
        o = s1;
        return this;
    }

    public UMWXHandler setToCircle(boolean flag)
    {
        p = flag;
        return this;
    }

    public void setWXTitle(String s1)
    {
        if (!TextUtils.isEmpty(s1))
        {
            l = s1;
        }
    }

    public void showCompressToast(boolean flag)
    {
        E = flag;
    }

    static 
    {
        h = 0;
        i = 0;
        F = false;
    }

    private class _cls2 extends Handler
    {

        final UMWXHandler this$0;

        public void handleMessage(Message message)
        {
            if (message.what == 1 && UMWXHandler.a(UMWXHandler.this))
            {
                Toast.makeText(UMWXHandler.b(UMWXHandler.this), "\u56FE\u7247\u5927\u5C0F\u8D85\u8FC732KB\uFF0C\u6B63\u5728\u5BF9\u56FE\u7247\u8FDB\u884C\u538B\u7F29...", 0).show();
            } else
            if (message.what == 2)
            {
                Toast.makeText(UMWXHandler.b(UMWXHandler.this), "\u6807\u9898\u957F\u5EA6\u8D85\u8FC7512 Bytes...", 0).show();
                return;
            }
        }

        _cls2()
        {
            this$0 = UMWXHandler.this;
            super();
        }
    }


    private class _cls3
        implements com.umeng.socialize.controller.listener.SocializeListeners.OnCustomPlatformClickListener
    {

        final UMWXHandler this$0;

        public void onClick(CustomPlatform customplatform, SocializeEntity socializeentity, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
        {
            Object obj = null;
            String s1;
            if (socializeentity != null)
            {
                UMWXHandler.a(socializeentity);
                UMWXHandler.g(UMWXHandler.this);
                obj = socializeentity.getShareMsg();
                if (obj != null && UMWXHandler.b().getShareType() == ShareType.SHAKE)
                {
                    s1 = ((UMShareMsg) (obj)).mText;
                    obj = ((UMShareMsg) (obj)).getMedia();
                } else
                {
                    s1 = socializeentity.getShareContent();
                    obj = socializeentity.getMedia();
                }
            } else
            {
                s1 = null;
            }
            if (UMWXHandler.h(UMWXHandler.this) != null)
            {
                UMWXHandler.h(UMWXHandler.this).onClick(customplatform, socializeentity, snspostlistener);
            }
            UMWXHandler.a(snspostlistener);
            if (!UMWXHandler.h().isWXAppInstalled())
            {
                Toast.makeText(UMWXHandler.b(UMWXHandler.this), "\u4F60\u8FD8\u6CA1\u6709\u5B89\u88C5\u5FAE\u4FE1", 0).show();
                return;
            }
            if (!UMWXHandler.h().isWXAppSupportAPI())
            {
                Toast.makeText(UMWXHandler.b(UMWXHandler.this), "\u4F60\u5B89\u88C5\u7684\u5FAE\u4FE1\u7248\u672C\u4E0D\u652F\u6301\u5F53\u524DAPI", 0).show();
                return;
            }
            if (obj != null || !TextUtils.isEmpty(s1))
            {
                UMWXHandler.b(UMWXHandler.this, s1, UMWXHandler.b(UMWXHandler.this, ((UMediaObject) (obj))));
                return;
            } else
            {
                Toast.makeText(UMWXHandler.b(UMWXHandler.this), "\u8BF7\u8BBE\u7F6E\u5206\u4EAB\u5185\u5BB9...", 0).show();
                return;
            }
        }

        _cls3()
        {
            this$0 = UMWXHandler.this;
            super();
        }
    }


    private class _cls1
        implements IWXAPIEventHandler
    {

        public void onReq(BaseReq basereq)
        {
        }

        public void onResp(BaseResp baseresp)
        {
            SHARE_MEDIA share_media;
            int i1;
            i1 = 0;
            share_media = SocializeConfig.getSelectedPlatfrom();
            baseresp.errCode;
            JVM INSTR tableswitch -4 0: default 44
        //                       -4 180
        //                       -3 173
        //                       -2 159
        //                       -1 153
        //                       0 138;
               goto _L1 _L2 _L3 _L4 _L5 _L6
_L2:
            break MISSING_BLOCK_LABEL_180;
_L1:
            Log.c("UMWXHandler", "### \u5FAE\u4FE1\u53D1\u9001 -- \u672A\u77E5\u9519\u8BEF.");
_L7:
            if (UMWXHandler.a() != null)
            {
                UMWXHandler.a().onComplete(share_media, i1, UMWXHandler.b());
            }
            UMWXHandler.c().fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, share_media, i1, UMWXHandler.b());
            if (i1 == 200)
            {
                Context context = UMWXHandler.d();
                String s1 = UMWXHandler.b().mDescriptor;
                String s2 = UMWXHandler.e();
                UMediaObject umediaobject = UMWXHandler.f();
                if (UMWXHandler.g())
                {
                    baseresp = "wxtimeline";
                } else
                {
                    baseresp = "wxsession";
                }
                SocializeUtils.sendAnalytic(context, s1, s2, umediaobject, baseresp);
                UMWXHandler.b(null);
            }
            return;
_L6:
            Log.c("UMWXHandler", "### \u5FAE\u4FE1\u5206\u4EAB\u6210\u529F.");
            i1 = 200;
              goto _L7
_L5:
            i1 = -1;
              goto _L7
_L4:
            i1 = 40000;
            Log.c("UMWXHandler", "### \u5FAE\u4FE1\u5206\u4EAB\u53D6\u6D88");
              goto _L7
_L3:
            i1 = -3;
              goto _L7
            i1 = -4;
            Log.c("UMWXHandler", "### \u5FAE\u4FE1\u53D1\u9001\u88AB\u62D2\u7EDD");
              goto _L7
        }

        _cls1()
        {
        }
    }

}
