// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;
import com.mob.tools.utils.UIHandler;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.net.FileNameMap;
import java.net.URLConnection;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.wechat.utils:
//            j, WXImageObject, WXMediaMessage, WXVideoObject, 
//            WXMusicObject, k, WechatHandlerActivity, d, 
//            WXTextObject, WXEmojiObject, WXWebpageObject, WXAppExtendObject, 
//            WXFileObject, a, l

public class WechatHelper
{
    public static class ShareParams extends cn.sharesdk.framework.Platform.ShareParams
    {

        public String extInfo;
        public String filePath;
        public Bitmap imageData;
        public String imageUrl;
        public String musicUrl;
        protected int scene;
        public int shareType;
        public String title;
        public String url;

        public ShareParams()
        {
        }
    }


    private static boolean a = false;
    private static WechatHelper b;
    private j c;
    private k d;

    private WechatHelper()
    {
        c = new j();
    }

    private int a(Bitmap bitmap, android.graphics.Bitmap.CompressFormat compressformat)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(compressformat, 100, bytearrayoutputstream);
        int i = bytearrayoutputstream.size();
        bytearrayoutputstream.close();
        return i;
    }

    private static int a(android.graphics.BitmapFactory.Options options, int i, int i1)
    {
        int l1 = options.outHeight;
        int k1 = options.outWidth;
        int j1 = 1;
        k1 /= 2;
        for (l1 /= 2; k1 / j1 > i || l1 / j1 > i1; j1 *= 2) { }
        return j1 + 2;
    }

    private Bitmap a(Bitmap bitmap, int i)
    {
        int i1 = bitmap.getWidth();
        int j1 = bitmap.getHeight();
        double d1;
        if (j1 <= i && i1 <= i)
        {
            d1 = 1.0D;
        } else
        if (j1 > i1)
        {
            d1 = (double)i / (double)j1;
        } else
        {
            d1 = (double)i / (double)i1;
        }
        return Bitmap.createScaledBitmap(bitmap, (int)((double)i1 * d1), (int)(d1 * (double)j1), true);
    }

    public static WechatHelper a()
    {
        if (b == null)
        {
            b = new WechatHelper();
        }
        return b;
    }

    private void a(Context context, String s, String s1, Bitmap bitmap, int i, k k1)
    {
        WXImageObject wximageobject = new WXImageObject();
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, bytearrayoutputstream);
        bytearrayoutputstream.flush();
        bytearrayoutputstream.close();
        wximageobject.imageData = bytearrayoutputstream.toByteArray();
        bitmap = new WXMediaMessage();
        bitmap.title = s;
        bitmap.mediaObject = wximageobject;
        bitmap.description = s1;
        bitmap.thumbData = a(context, wximageobject.imageData);
        a(((WXMediaMessage) (bitmap)), "img", i, k1);
    }

    private void a(Context context, String s, String s1, String s2, int i, k k1)
    {
        WXImageObject wximageobject = new WXImageObject();
        WXMediaMessage wxmediamessage;
        if (s2.startsWith("/data/"))
        {
            wximageobject.imageData = a(s2);
        } else
        {
            wximageobject.imagePath = s2;
        }
        wxmediamessage = new WXMediaMessage();
        wxmediamessage.title = s;
        wxmediamessage.mediaObject = wximageobject;
        wxmediamessage.description = s1;
        wxmediamessage.thumbData = b(context, s2);
        a(wxmediamessage, "img", i, k1);
    }

    private void a(Context context, String s, String s1, String s2, Bitmap bitmap, int i, k k1)
    {
        WXVideoObject wxvideoobject = new WXVideoObject();
        wxvideoobject.videoUrl = s2;
        s2 = new WXMediaMessage();
        s2.title = s;
        s2.description = s1;
        s2.mediaObject = wxvideoobject;
        s = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, s);
        s.flush();
        s.close();
        s2.thumbData = a(context, s.toByteArray());
        a(((WXMediaMessage) (s2)), "video", i, k1);
    }

    private void a(Context context, String s, String s1, String s2, String s3, int i, k k1)
    {
        WXVideoObject wxvideoobject = new WXVideoObject();
        wxvideoobject.videoUrl = s2;
        s2 = new WXMediaMessage();
        s2.title = s;
        s2.description = s1;
        s2.mediaObject = wxvideoobject;
        s2.thumbData = b(context, s3);
        a(((WXMediaMessage) (s2)), "video", i, k1);
    }

    private void a(Context context, String s, String s1, String s2, String s3, Bitmap bitmap, int i, 
            k k1)
    {
        WXMusicObject wxmusicobject = new WXMusicObject();
        wxmusicobject.musicUrl = s3;
        wxmusicobject.musicDataUrl = s2;
        s2 = new WXMediaMessage();
        s2.title = s;
        s2.description = s1;
        s2.mediaObject = wxmusicobject;
        s = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, s);
        s.flush();
        s.close();
        s2.thumbData = a(context, s.toByteArray());
        a(((WXMediaMessage) (s2)), "music", i, k1);
    }

    private void a(Context context, String s, String s1, String s2, String s3, String s4, int i, 
            k k1)
    {
        WXMusicObject wxmusicobject = new WXMusicObject();
        wxmusicobject.musicUrl = s3;
        wxmusicobject.musicDataUrl = s2;
        s2 = new WXMediaMessage();
        s2.title = s;
        s2.description = s1;
        s2.mediaObject = wxmusicobject;
        s2.thumbData = b(context, s4);
        a(((WXMediaMessage) (s2)), "music", i, k1);
    }

    private void a(WXMediaMessage wxmediamessage, String s, int i, k k1)
    {
        Object obj = DeviceHelper.getInstance(k1.b().getContext());
        String s1 = (new StringBuilder()).append(((DeviceHelper) (obj)).getPackageName()).append(".wxapi.WXEntryActivity").toString();
        try
        {
            obj = Class.forName(s1);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Ln.e(((Throwable) (obj)));
            obj = null;
        }
        if (obj != null && !cn/sharesdk/wechat/utils/WechatHandlerActivity.isAssignableFrom(((Class) (obj))))
        {
            obj = (new StringBuilder()).append(s1).append(" does not extend from ").append(cn/sharesdk/wechat/utils/WechatHandlerActivity.getName()).toString();
            if (a)
            {
                throw new Throwable(((String) (obj)));
            }
            (new Throwable(((String) (obj)))).printStackTrace();
        }
        obj = new d();
        obj.c = (new StringBuilder()).append(s).append(System.currentTimeMillis()).toString();
        obj.a = wxmediamessage;
        obj.b = i;
        d = k1;
        c.a(((m) (obj)));
    }

    private void a(String s, String s1, int i, k k1)
    {
        WXTextObject wxtextobject = new WXTextObject();
        wxtextobject.text = s1;
        WXMediaMessage wxmediamessage = new WXMediaMessage();
        wxmediamessage.title = s;
        wxmediamessage.mediaObject = wxtextobject;
        wxmediamessage.description = s1;
        a(wxmediamessage, "text", i, k1);
    }

    private byte[] a(Context context, Bitmap bitmap, android.graphics.Bitmap.CompressFormat compressformat)
    {
        if (bitmap == null)
        {
            throw new RuntimeException("checkArgs fail, thumbData is null");
        }
        if (bitmap.isRecycled())
        {
            throw new RuntimeException("checkArgs fail, thumbData is recycled");
        }
        int i1;
        for (int i = 120; i > 40 && a(bitmap, compressformat) > 32768; bitmap = a(bitmap, i1))
        {
            i1 = R.dipToPx(context, i);
            i -= 5;
        }

        context = new ByteArrayOutputStream();
        bitmap.compress(compressformat, 100, context);
        context.flush();
        context.close();
        return context.toByteArray();
    }

    private byte[] a(Context context, byte abyte0[])
    {
        android.graphics.Bitmap.CompressFormat compressformat = BitmapHelper.getBmpFormat(abyte0);
        int i = R.dipToPx(context, 120);
        if (android.graphics.Bitmap.CompressFormat.PNG == compressformat)
        {
            i = R.dipToPx(context, 90);
        }
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        if (abyte0.length > 32768)
        {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options);
            options.inSampleSize = a(options, i, i);
        }
        options.inJustDecodeBounds = false;
        return a(context, BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options), compressformat);
    }

    private byte[] a(String s)
    {
        ByteArrayOutputStream bytearrayoutputstream;
        byte abyte0[];
        int i;
        try
        {
            s = new FileInputStream(s);
            bytearrayoutputstream = new ByteArrayOutputStream();
            abyte0 = new byte[1024];
            i = s.read(abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.e(s);
            return null;
        }
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        bytearrayoutputstream.write(abyte0, 0, i);
        i = s.read(abyte0);
        break MISSING_BLOCK_LABEL_30;
        bytearrayoutputstream.flush();
        s.close();
        bytearrayoutputstream.close();
        s = bytearrayoutputstream.toByteArray();
        return s;
    }

    private void b(Context context, String s, String s1, Bitmap bitmap, int i, k k1)
    {
        WXEmojiObject wxemojiobject = new WXEmojiObject();
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, bytearrayoutputstream);
        bytearrayoutputstream.flush();
        wxemojiobject.emojiData = bytearrayoutputstream.toByteArray();
        bytearrayoutputstream.close();
        bitmap = new WXMediaMessage();
        bitmap.title = s;
        bitmap.mediaObject = wxemojiobject;
        bitmap.description = s1;
        bitmap.thumbData = a(context, wxemojiobject.emojiData);
        a(bitmap, "emoji", i, k1);
    }

    private void b(Context context, String s, String s1, String s2, int i, k k1)
    {
        WXEmojiObject wxemojiobject = new WXEmojiObject();
        wxemojiobject.emojiPath = s2;
        WXMediaMessage wxmediamessage = new WXMediaMessage();
        wxmediamessage.title = s;
        wxmediamessage.mediaObject = wxemojiobject;
        wxmediamessage.description = s1;
        wxmediamessage.thumbData = b(context, s2);
        a(wxmediamessage, "emoji", i, k1);
    }

    private void b(Context context, String s, String s1, String s2, Bitmap bitmap, int i, k k1)
    {
        WXWebpageObject wxwebpageobject = new WXWebpageObject();
        wxwebpageobject.webpageUrl = s2;
        s2 = new WXMediaMessage();
        s2.title = s;
        s2.description = s1;
        s2.mediaObject = wxwebpageobject;
        if (bitmap != null && !bitmap.isRecycled())
        {
            s = new ByteArrayOutputStream();
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, s);
            s.flush();
            s.close();
            s2.thumbData = a(context, s.toByteArray());
            if (((WXMediaMessage) (s2)).thumbData == null)
            {
                throw new RuntimeException("checkArgs fail, thumbData is null");
            }
            if (((WXMediaMessage) (s2)).thumbData.length > 32768)
            {
                throw new RuntimeException((new StringBuilder()).append("checkArgs fail, thumbData is too large: ").append(((WXMediaMessage) (s2)).thumbData.length).append(" > ").append(32768).toString());
            }
        }
        a(s2, "webpage", i, k1);
    }

    private void b(Context context, String s, String s1, String s2, String s3, int i, k k1)
    {
        WXWebpageObject wxwebpageobject = new WXWebpageObject();
        wxwebpageobject.webpageUrl = s2;
        s2 = new WXMediaMessage();
        s2.title = s;
        s2.description = s1;
        s2.mediaObject = wxwebpageobject;
        if (s3 != null && (new File(s3)).exists())
        {
            s2.thumbData = b(context, s3);
            if (((WXMediaMessage) (s2)).thumbData == null)
            {
                throw new RuntimeException("checkArgs fail, thumbData is null");
            }
            if (((WXMediaMessage) (s2)).thumbData.length > 32768)
            {
                throw new RuntimeException((new StringBuilder()).append("checkArgs fail, thumbData is too large: ").append(((WXMediaMessage) (s2)).thumbData.length).append(" > ").append(32768).toString());
            }
        }
        a(s2, "webpage", i, k1);
    }

    private void b(Context context, String s, String s1, String s2, String s3, Bitmap bitmap, int i, 
            k k1)
    {
        WXAppExtendObject wxappextendobject = new WXAppExtendObject();
        wxappextendobject.filePath = s2;
        wxappextendobject.extInfo = s3;
        s2 = new WXMediaMessage();
        s2.title = s;
        s2.description = s1;
        s2.mediaObject = wxappextendobject;
        s = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, s);
        s.flush();
        s.close();
        s2.thumbData = a(context, s.toByteArray());
        a(s2, "appdata", i, k1);
    }

    private void b(Context context, String s, String s1, String s2, String s3, String s4, int i, 
            k k1)
    {
        WXAppExtendObject wxappextendobject = new WXAppExtendObject();
        wxappextendobject.filePath = s2;
        wxappextendobject.extInfo = s3;
        s2 = new WXMediaMessage();
        s2.title = s;
        s2.description = s1;
        s2.mediaObject = wxappextendobject;
        s2.thumbData = b(context, s4);
        a(s2, "appdata", i, k1);
    }

    private byte[] b(Context context, String s)
    {
        File file = new File(s);
        if (!file.exists())
        {
            throw new FileNotFoundException();
        }
        android.graphics.Bitmap.CompressFormat compressformat = BitmapHelper.getBmpFormat(s);
        int i = R.dipToPx(context, 120);
        if (android.graphics.Bitmap.CompressFormat.PNG == compressformat)
        {
            i = R.dipToPx(context, 90);
        }
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        if (file.length() > 32768L)
        {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(s, options);
            options.inSampleSize = a(options, i, i);
        }
        options.inJustDecodeBounds = false;
        s = BitmapFactory.decodeFile(s, options);
        if (s == null)
        {
            file.delete();
            throw new RuntimeException("checkArgs fail, thumbData is null");
        } else
        {
            return a(context, s, compressformat);
        }
    }

    private void c(Context context, String s, String s1, String s2, Bitmap bitmap, int i, k k1)
    {
        WXFileObject wxfileobject = new WXFileObject();
        wxfileobject.filePath = s2;
        s2 = new WXMediaMessage();
        s2.title = s;
        s2.description = s1;
        s2.mediaObject = wxfileobject;
        s = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, s);
        s.flush();
        s.close();
        s2.thumbData = a(context, s.toByteArray());
        a(s2, "filedata", i, k1);
    }

    private void c(Context context, String s, String s1, String s2, String s3, int i, k k1)
    {
        WXFileObject wxfileobject = new WXFileObject();
        wxfileobject.filePath = s2;
        s2 = new WXMediaMessage();
        s2.title = s;
        s2.description = s1;
        s2.mediaObject = wxfileobject;
        s2.thumbData = b(context, s3);
        a(s2, "filedata", i, k1);
    }

    public void a(k k1)
    {
        d = k1;
        k1 = new a();
        k1.a = "snsapi_userinfo";
        k1.b = "sharesdk_wechat_auth";
        c.a(k1);
    }

    public void a(k k1, cn.sharesdk.framework.Platform.ShareParams shareparams, PlatformActionListener platformactionlistener)
    {
        Object obj;
        Object obj1;
        Platform platform;
        Intent intent;
label0:
        {
            platform = k1.b();
            obj = shareparams.getImagePath();
            obj1 = shareparams.getImageUrl();
            if (!TextUtils.isEmpty(((CharSequence) (obj))))
            {
                k1 = ((k) (obj));
                if ((new File(((String) (obj)))).exists())
                {
                    break label0;
                }
            }
            k1 = shareparams.getImageData();
            String s;
            if (k1 != null && !k1.isRecycled())
            {
                obj = new File(R.getCachePath(platform.getContext(), "images"), (new StringBuilder()).append(System.currentTimeMillis()).append(".png").toString());
                obj1 = new FileOutputStream(((File) (obj)));
                k1.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, ((java.io.OutputStream) (obj1)));
                ((FileOutputStream) (obj1)).flush();
                ((FileOutputStream) (obj1)).close();
                k1 = ((File) (obj)).getAbsolutePath();
            } else
            {
                k1 = ((k) (obj));
                if (!TextUtils.isEmpty(((CharSequence) (obj1))))
                {
                    k1 = BitmapHelper.downloadBitmap(platform.getContext(), ((String) (obj1)));
                }
            }
        }
label1:
        {
label2:
            {
                intent = new Intent("android.intent.action.SEND");
                obj = platform.getShortLintk(shareparams.getText(), false);
                intent.putExtra("android.intent.extra.TEXT", ((String) (obj)));
                intent.putExtra("Kdescription", ((String) (obj)));
                if (TextUtils.isEmpty(k1))
                {
                    break MISSING_BLOCK_LABEL_490;
                }
                obj = new File(k1);
                if (!((File) (obj)).exists())
                {
                    break label1;
                }
                if (k1.startsWith("/data/"))
                {
                    obj1 = new File(R.getCachePath(platform.getContext(), "images"), (new StringBuilder()).append(System.currentTimeMillis()).append(((File) (obj)).getName()).toString());
                    s = ((File) (obj1)).getAbsolutePath();
                    ((File) (obj1)).createNewFile();
                    if (R.copyFile(k1, s))
                    {
                        obj = obj1;
                    }
                }
                intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(((File) (obj))));
                obj = URLConnection.getFileNameMap().getContentTypeFor(k1);
                if (obj != null)
                {
                    k1 = ((k) (obj));
                    if (((String) (obj)).length() > 0)
                    {
                        break label2;
                    }
                }
                k1 = "image/*";
            }
            intent.setType(k1);
        }
_L1:
        if (((Integer)shareparams.get("scene", java/lang/Integer)).intValue() == 1)
        {
            k1 = "com.tencent.mm.ui.tools.ShareToTimeLineUI";
        } else
        {
            k1 = "com.tencent.mm.ui.tools.ShareImgUI";
        }
        intent.setClassName("com.tencent.mm", k1);
        intent.addFlags(0x10000000);
        platform.getContext().startActivity(intent);
        k1 = DeviceHelper.getInstance(platform.getContext());
        obj = platform.getContext().getPackageName();
        obj1 = new HashMap();
        ((HashMap) (obj1)).put("ShareParams", shareparams);
        if (TextUtils.isEmpty(k1.getTopTaskPackageName()))
        {
            if (platformactionlistener != null && platformactionlistener != null)
            {
                platformactionlistener.onComplete(platform, 9, ((HashMap) (obj1)));
            }
            return;
        } else
        {
            UIHandler.sendEmptyMessageDelayed(0, 2000L, new l(this, k1, ((String) (obj)), platformactionlistener, platform, ((HashMap) (obj1))));
            return;
        }
        intent.setType("text/plain");
          goto _L1
    }

    public boolean a(Context context, String s)
    {
        return c.a(context, s);
    }

    public boolean a(WechatHandlerActivity wechathandleractivity)
    {
        return c.a(wechathandleractivity, d);
    }

    public void b(k k1)
    {
        Platform platform = k1.b();
        Object obj = k1.a();
        PlatformActionListener platformactionlistener = k1.c();
        int i = ((cn.sharesdk.framework.Platform.ShareParams) (obj)).getShareType();
        String s = ((cn.sharesdk.framework.Platform.ShareParams) (obj)).getTitle();
        String s1 = ((cn.sharesdk.framework.Platform.ShareParams) (obj)).getText();
        int i1 = ((cn.sharesdk.framework.Platform.ShareParams) (obj)).getScence();
        String s2 = ((cn.sharesdk.framework.Platform.ShareParams) (obj)).getImagePath();
        String s3 = ((cn.sharesdk.framework.Platform.ShareParams) (obj)).getImageUrl();
        Bitmap bitmap = ((cn.sharesdk.framework.Platform.ShareParams) (obj)).getImageData();
        String s7 = ((cn.sharesdk.framework.Platform.ShareParams) (obj)).getMusicUrl();
        String s8 = ((cn.sharesdk.framework.Platform.ShareParams) (obj)).getUrl();
        String s9 = ((cn.sharesdk.framework.Platform.ShareParams) (obj)).getFilePath();
        String s10 = ((cn.sharesdk.framework.Platform.ShareParams) (obj)).getExtInfo();
        obj = platform.getContext();
        switch (i)
        {
        case 3: // '\003'
        default:
            if (platformactionlistener != null)
            {
                platformactionlistener.onError(platform, 9, new IllegalArgumentException((new StringBuilder()).append("shareType = ").append(i).toString()));
            }
            return;

        case 1: // '\001'
            a(s, s1, i1, k1);
            return;

        case 2: // '\002'
            if (s2 != null && s2.length() > 0)
            {
                a(((Context) (obj)), s, s1, s2, i1, k1);
                return;
            }
            if (bitmap != null && !bitmap.isRecycled())
            {
                a(((Context) (obj)), s, s1, bitmap, i1, k1);
                return;
            }
            if (s3 != null && s3.length() > 0)
            {
                a(((Context) (obj)), s, s1, BitmapHelper.downloadBitmap(platform.getContext(), s3), i1, k1);
                return;
            } else
            {
                a(((Context) (obj)), s, s1, "", i1, k1);
                return;
            }

        case 5: // '\005'
            s7 = platform.getShortLintk((new StringBuilder()).append(s7).append(" ").append(s8).toString(), false);
            String s4 = s7.split(" ")[0];
            s7 = s7.split(" ")[1];
            if (s2 != null && s2.length() > 0)
            {
                a(((Context) (obj)), s, s1, s4, s7, s2, i1, k1);
                return;
            }
            if (bitmap != null && !bitmap.isRecycled())
            {
                a(((Context) (obj)), s, s1, s4, s7, bitmap, i1, k1);
                return;
            }
            if (s3 != null && s3.length() > 0)
            {
                a(((Context) (obj)), s, s1, s4, s7, BitmapHelper.downloadBitmap(platform.getContext(), s3), i1, k1);
                return;
            } else
            {
                a(((Context) (obj)), s, s1, s4, s7, "", i1, k1);
                return;
            }

        case 6: // '\006'
            String s5 = platform.getShortLintk(s8, false);
            if (s2 != null && s2.length() > 0)
            {
                a(((Context) (obj)), s, s1, s5, s2, i1, k1);
                return;
            }
            if (bitmap != null && !bitmap.isRecycled())
            {
                a(((Context) (obj)), s, s1, s5, bitmap, i1, k1);
                return;
            }
            if (s3 != null && s3.length() > 0)
            {
                a(((Context) (obj)), s, s1, s5, BitmapHelper.downloadBitmap(platform.getContext(), s3), i1, k1);
                return;
            } else
            {
                a(((Context) (obj)), s, s1, s5, "", i1, k1);
                return;
            }

        case 4: // '\004'
            String s6 = platform.getShortLintk(s8, false);
            if (s2 != null && s2.length() > 0)
            {
                b(((Context) (obj)), s, s1, s6, s2, i1, k1);
                return;
            }
            if (bitmap != null && !bitmap.isRecycled())
            {
                b(((Context) (obj)), s, s1, s6, bitmap, i1, k1);
                return;
            }
            if (s3 != null && s3.length() > 0)
            {
                b(((Context) (obj)), s, s1, s6, BitmapHelper.downloadBitmap(platform.getContext(), s3), i1, k1);
                return;
            } else
            {
                b(((Context) (obj)), s, s1, s6, "", i1, k1);
                return;
            }

        case 7: // '\007'
            if (i1 == 1)
            {
                throw new Throwable("WechatMoments does not support SAHRE_APP");
            }
            if (i1 == 2)
            {
                throw new Throwable("WechatFavorite does not support SAHRE_APP");
            }
            if (s2 != null && s2.length() > 0)
            {
                b(((Context) (obj)), s, s1, s9, s10, s2, i1, k1);
                return;
            }
            if (bitmap != null && !bitmap.isRecycled())
            {
                b(((Context) (obj)), s, s1, s9, s10, bitmap, i1, k1);
                return;
            }
            if (s3 != null && s3.length() > 0)
            {
                b(((Context) (obj)), s, s1, s9, s10, BitmapHelper.downloadBitmap(platform.getContext(), s3), i1, k1);
                return;
            } else
            {
                b(((Context) (obj)), s, s1, s9, s10, "", i1, k1);
                return;
            }

        case 8: // '\b'
            if (i1 == 1)
            {
                throw new Throwable("WechatMoments does not support SHARE_FILE");
            }
            if (s2 != null && s2.length() > 0)
            {
                c(((Context) (obj)), s, s1, s9, s2, i1, k1);
                return;
            }
            if (bitmap != null && !bitmap.isRecycled())
            {
                c(((Context) (obj)), s, s1, s9, bitmap, i1, k1);
                return;
            }
            if (s3 != null && s3.length() > 0)
            {
                c(((Context) (obj)), s, s1, s9, BitmapHelper.downloadBitmap(platform.getContext(), s3), i1, k1);
                return;
            } else
            {
                c(((Context) (obj)), s, s1, s9, "", i1, k1);
                return;
            }

        case 9: // '\t'
            break;
        }
        if (i1 == 1)
        {
            throw new Throwable("WechatMoments does not support SHARE_EMOJI");
        }
        if (i1 == 2)
        {
            throw new Throwable("WechatFavorite does not support SHARE_EMOJI");
        }
        if (s2 != null && s2.length() > 0)
        {
            b(((Context) (obj)), s, s1, s2, i1, k1);
            return;
        }
        if (s3 != null && s3.length() > 0)
        {
            b(((Context) (obj)), s, s1, BitmapHelper.downloadBitmap(platform.getContext(), s3), i1, k1);
            return;
        }
        if (bitmap != null && !bitmap.isRecycled())
        {
            b(((Context) (obj)), s, s1, bitmap, i1, k1);
            return;
        } else
        {
            b(((Context) (obj)), s, s1, "", i1, k1);
            return;
        }
    }

    public boolean b()
    {
        return c.a();
    }

    public boolean c()
    {
        return c.b();
    }

    public boolean d()
    {
        return c.c();
    }

}
