// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.utils;

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
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.net.FileNameMap;
import java.net.URLConnection;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.yixin.utils:
//            c, d, YixinHandlerActivity, a, 
//            YXTextMessageData, YXMessage, YXImageMessageData, YXVideoMessageData, 
//            YXMusicMessageData, YXWebPageMessageData, e

public class YixinImpl
{
    public static class ShareParams extends cn.sharesdk.framework.Platform.ShareParams
    {

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
    private static YixinImpl b;
    private c c;
    private d d;

    private YixinImpl()
    {
        c = new c();
    }

    public static YixinImpl a()
    {
        if (b == null)
        {
            b = new YixinImpl();
        }
        return b;
    }

    private void a(YXMessage yxmessage, String s, int i, d d1)
    {
        Object obj = DeviceHelper.getInstance(d1.a().getContext());
        String s1 = (new StringBuilder()).append(((DeviceHelper) (obj)).getPackageName()).append(".yxapi.YXEntryActivity").toString();
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
        if (obj != null && !cn/sharesdk/yixin/utils/YixinHandlerActivity.isAssignableFrom(((Class) (obj))))
        {
            obj = (new StringBuilder()).append(s1).append(" does not extend from ").append(cn/sharesdk/yixin/utils/YixinHandlerActivity.getName()).toString();
            if (a)
            {
                throw new Throwable(((String) (obj)));
            }
            (new Throwable(((String) (obj)))).printStackTrace();
        }
        obj = new a();
        obj.c = (new StringBuilder()).append(s).append(System.currentTimeMillis()).toString();
        obj.a = yxmessage;
        obj.b = i;
        d = d1;
        c.a(((a) (obj)));
    }

    private void a(String s, String s1, int i, d d1)
    {
        YXTextMessageData yxtextmessagedata = new YXTextMessageData();
        yxtextmessagedata.text = s1;
        YXMessage yxmessage = new YXMessage();
        yxmessage.title = s;
        yxmessage.messageData = yxtextmessagedata;
        yxmessage.description = s1;
        a(yxmessage, "text", i, d1);
    }

    private void a(String s, String s1, Bitmap bitmap, int i, d d1)
    {
        YXImageMessageData yximagemessagedata = new YXImageMessageData();
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, bytearrayoutputstream);
        bytearrayoutputstream.flush();
        bytearrayoutputstream.close();
        yximagemessagedata.imageData = bytearrayoutputstream.toByteArray();
        bitmap = new YXMessage();
        bitmap.title = s;
        bitmap.messageData = yximagemessagedata;
        bitmap.description = s1;
        bitmap.thumbData = a(yximagemessagedata.imageData);
        a(((YXMessage) (bitmap)), "img", i, d1);
    }

    private void a(String s, String s1, String s2, int i, d d1)
    {
        YXImageMessageData yximagemessagedata = new YXImageMessageData();
        YXMessage yxmessage;
        if (s2.startsWith("/data/"))
        {
            yximagemessagedata.imageData = a(s2);
        } else
        {
            yximagemessagedata.imagePath = s2;
        }
        yxmessage = new YXMessage();
        yxmessage.title = s;
        yxmessage.messageData = yximagemessagedata;
        yxmessage.description = s1;
        yxmessage.thumbData = b(s2);
        a(yxmessage, "img", i, d1);
    }

    private void a(String s, String s1, String s2, Bitmap bitmap, int i, d d1)
    {
        YXVideoMessageData yxvideomessagedata = new YXVideoMessageData();
        yxvideomessagedata.videoUrl = s2;
        s2 = new YXMessage();
        s2.title = s;
        s2.description = s1;
        s2.messageData = yxvideomessagedata;
        s = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, s);
        s.flush();
        s.close();
        s2.thumbData = a(s.toByteArray());
        a(((YXMessage) (s2)), "video", i, d1);
    }

    private void a(String s, String s1, String s2, String s3, int i, d d1)
    {
        YXVideoMessageData yxvideomessagedata = new YXVideoMessageData();
        yxvideomessagedata.videoUrl = s2;
        s2 = new YXMessage();
        s2.title = s;
        s2.description = s1;
        s2.messageData = yxvideomessagedata;
        s2.thumbData = b(s3);
        a(((YXMessage) (s2)), "video", i, d1);
    }

    private void a(String s, String s1, String s2, String s3, Bitmap bitmap, int i, d d1)
    {
        YXMusicMessageData yxmusicmessagedata = new YXMusicMessageData();
        yxmusicmessagedata.musicUrl = s3;
        yxmusicmessagedata.musicDataUrl = s2;
        s2 = new YXMessage();
        s2.title = s;
        s2.description = s1;
        s2.messageData = yxmusicmessagedata;
        s = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, s);
        s.flush();
        s.close();
        s2.thumbData = a(s.toByteArray());
        a(((YXMessage) (s2)), "music", i, d1);
    }

    private void a(String s, String s1, String s2, String s3, String s4, int i, d d1)
    {
        YXMusicMessageData yxmusicmessagedata = new YXMusicMessageData();
        yxmusicmessagedata.musicUrl = s3;
        yxmusicmessagedata.musicDataUrl = s2;
        s2 = new YXMessage();
        s2.title = s;
        s2.description = s1;
        s2.messageData = yxmusicmessagedata;
        s2.thumbData = b(s4);
        a(((YXMessage) (s2)), "music", i, d1);
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

    private byte[] a(byte abyte0[])
    {
        double d1;
        Object obj;
label0:
        {
            double d2 = (double)abyte0.length / 65536D - 1.0D;
            obj = new ByteArrayInputStream(abyte0);
            String s = URLConnection.guessContentTypeFromStream(((java.io.InputStream) (obj)));
            ((ByteArrayInputStream) (obj)).close();
            android.graphics.Bitmap.CompressFormat compressformat = android.graphics.Bitmap.CompressFormat.JPEG;
            obj = compressformat;
            d1 = d2;
            if (s == null)
            {
                break label0;
            }
            if (!s.endsWith("png"))
            {
                obj = compressformat;
                d1 = d2;
                if (!s.endsWith("gif"))
                {
                    break label0;
                }
            }
            obj = android.graphics.Bitmap.CompressFormat.PNG;
            d1 = d2;
        }
        byte abyte1[];
        do
        {
            d1++;
            Object obj1 = new ByteArrayInputStream(abyte0);
            Object obj2 = new android.graphics.BitmapFactory.Options();
            obj2.inPreferredConfig = android.graphics.Bitmap.Config.RGB_565;
            obj2.inPurgeable = true;
            obj2.inInputShareable = true;
            obj2.inSampleSize = (int)Math.ceil(d1);
            obj2 = BitmapFactory.decodeStream(((java.io.InputStream) (obj1)), null, ((android.graphics.BitmapFactory.Options) (obj2)));
            ((ByteArrayInputStream) (obj1)).close();
            if (obj2 == null)
            {
                throw new RuntimeException("checkArgs fail, thumbData is null");
            }
            if (((Bitmap) (obj2)).isRecycled())
            {
                throw new RuntimeException("checkArgs fail, thumbData is recycled");
            }
            obj1 = new ByteArrayOutputStream();
            ((Bitmap) (obj2)).compress(((android.graphics.Bitmap.CompressFormat) (obj)), 100, ((java.io.OutputStream) (obj1)));
            ((ByteArrayOutputStream) (obj1)).flush();
            ((ByteArrayOutputStream) (obj1)).close();
            if (obj2 != null && !((Bitmap) (obj2)).isRecycled())
            {
                ((Bitmap) (obj2)).recycle();
            }
            abyte1 = ((ByteArrayOutputStream) (obj1)).toByteArray();
        } while (abyte1 != null && abyte1.length > 0x10000);
        return abyte1;
    }

    private void b(String s, String s1, String s2, Bitmap bitmap, int i, d d1)
    {
        YXWebPageMessageData yxwebpagemessagedata = new YXWebPageMessageData();
        yxwebpagemessagedata.webPageUrl = s2;
        s2 = new YXMessage();
        s2.title = s;
        s2.description = s1;
        s2.messageData = yxwebpagemessagedata;
        if (bitmap != null && !bitmap.isRecycled())
        {
            s = new ByteArrayOutputStream();
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, s);
            s.flush();
            s.close();
            s2.thumbData = a(s.toByteArray());
            if (((YXMessage) (s2)).thumbData == null)
            {
                throw new RuntimeException("checkArgs fail, thumbData is null");
            }
            if (((YXMessage) (s2)).thumbData.length > 0x10000)
            {
                throw new RuntimeException((new StringBuilder()).append("checkArgs fail, thumbData is too large: ").append(((YXMessage) (s2)).thumbData.length).append(" > ").append(0x10000).toString());
            }
        }
        a(s2, "webpage", i, d1);
    }

    private void b(String s, String s1, String s2, String s3, int i, d d1)
    {
        YXWebPageMessageData yxwebpagemessagedata = new YXWebPageMessageData();
        yxwebpagemessagedata.webPageUrl = s2;
        s2 = new YXMessage();
        s2.title = s;
        s2.description = s1;
        s2.messageData = yxwebpagemessagedata;
        if (s3 != null && (new File(s3)).exists())
        {
            s2.thumbData = b(s3);
            if (((YXMessage) (s2)).thumbData == null)
            {
                throw new RuntimeException("checkArgs fail, thumbData is null");
            }
            if (((YXMessage) (s2)).thumbData.length > 0x10000)
            {
                throw new RuntimeException((new StringBuilder()).append("checkArgs fail, thumbData is too large: ").append(((YXMessage) (s2)).thumbData.length).append(" > ").append(0x10000).toString());
            }
        }
        a(s2, "webpage", i, d1);
    }

    private byte[] b(String s)
    {
        File file = new File(s);
        if (!file.exists())
        {
            throw new FileNotFoundException();
        }
        android.graphics.Bitmap.CompressFormat compressformat = android.graphics.Bitmap.CompressFormat.JPEG;
        String s1 = c(s);
        if (s1.endsWith("png") || s1.endsWith("gif"))
        {
            compressformat = android.graphics.Bitmap.CompressFormat.PNG;
        }
        double d1 = (double)file.length() / 65536D - 1.0D;
        byte abyte0[];
        do
        {
            d1++;
            Bitmap bitmap = BitmapHelper.getBitmap(s, (int)Math.ceil(d1));
            if (bitmap == null)
            {
                throw new RuntimeException("checkArgs fail, thumbData is null");
            }
            if (bitmap.isRecycled())
            {
                throw new RuntimeException("checkArgs fail, thumbData is recycled");
            }
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            bitmap.compress(compressformat, 100, bytearrayoutputstream);
            bytearrayoutputstream.flush();
            bytearrayoutputstream.close();
            if (bitmap != null && !bitmap.isRecycled())
            {
                bitmap.recycle();
            }
            abyte0 = bytearrayoutputstream.toByteArray();
        } while (abyte0 != null && abyte0.length > 0x10000);
        return abyte0;
    }

    private String c(String s)
    {
        String s1 = URLConnection.getFileNameMap().getContentTypeFor(s);
        if (s1 == null) goto _L2; else goto _L1
_L1:
        Object obj = s1;
        if (s1.length() > 0) goto _L3; else goto _L2
_L2:
        if (!s.toLowerCase().endsWith("jpg") && !s.toLowerCase().endsWith("jepg")) goto _L5; else goto _L4
_L4:
        obj = "image/jpeg";
_L3:
        return ((String) (obj));
_L5:
        if (s.toLowerCase().endsWith("png"))
        {
            return "image/png";
        }
        if (s.toLowerCase().endsWith("gif"))
        {
            return "image/gif";
        }
        try
        {
            obj = new FileInputStream(s);
            s = URLConnection.guessContentTypeFromStream(((java.io.InputStream) (obj)));
            ((FileInputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.e(s);
            s = null;
        }
        if (s == null)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = s;
        if (s.length() > 0) goto _L3; else goto _L6
_L6:
        return "application/octet-stream";
    }

    public void a(d d1)
    {
        Platform platform = d1.a();
        Object obj1 = d1.b();
        Object obj = d1.c();
        int i = ((cn.sharesdk.framework.Platform.ShareParams) (obj1)).getShareType();
        String s = ((cn.sharesdk.framework.Platform.ShareParams) (obj1)).getTitle();
        String s1 = ((cn.sharesdk.framework.Platform.ShareParams) (obj1)).getText();
        int j = ((cn.sharesdk.framework.Platform.ShareParams) (obj1)).getScence();
        String s2 = ((cn.sharesdk.framework.Platform.ShareParams) (obj1)).getImagePath();
        String s3 = ((cn.sharesdk.framework.Platform.ShareParams) (obj1)).getImageUrl();
        Bitmap bitmap = ((cn.sharesdk.framework.Platform.ShareParams) (obj1)).getImageData();
        String s4 = ((cn.sharesdk.framework.Platform.ShareParams) (obj1)).getMusicUrl();
        obj1 = ((cn.sharesdk.framework.Platform.ShareParams) (obj1)).getUrl();
        switch (i)
        {
        case 3: // '\003'
        default:
            if (obj != null)
            {
                ((PlatformActionListener) (obj)).onError(platform, 9, new IllegalArgumentException((new StringBuilder()).append("shareType = ").append(i).toString()));
            }
            return;

        case 1: // '\001'
            a(s, s1, j, d1);
            return;

        case 2: // '\002'
            if (s2 != null && s2.length() > 0)
            {
                a(s, s1, s2, j, d1);
                return;
            }
            if (bitmap != null && !bitmap.isRecycled())
            {
                a(s, s1, bitmap, j, d1);
                return;
            }
            if (s3 != null && s3.length() > 0)
            {
                a(s, s1, BitmapHelper.downloadBitmap(platform.getContext(), s3), j, d1);
                return;
            } else
            {
                a(s, s1, "", j, d1);
                return;
            }

        case 5: // '\005'
            s4 = platform.getShortLintk((new StringBuilder()).append(s4).append(" ").append(((String) (obj1))).toString(), false);
            obj = s4.split(" ")[0];
            s4 = s4.split(" ")[1];
            if (s2 != null && s2.length() > 0)
            {
                a(s, s1, ((String) (obj)), s4, s2, j, d1);
                return;
            }
            if (bitmap != null && !bitmap.isRecycled())
            {
                a(s, s1, ((String) (obj)), s4, bitmap, j, d1);
                return;
            }
            if (s3 != null && s3.length() > 0)
            {
                a(s, s1, ((String) (obj)), s4, BitmapHelper.downloadBitmap(platform.getContext(), s3), j, d1);
                return;
            } else
            {
                a(s, s1, ((String) (obj)), s4, "", j, d1);
                return;
            }

        case 6: // '\006'
            obj = platform.getShortLintk(((String) (obj1)), false);
            if (s2 != null && s2.length() > 0)
            {
                a(s, s1, ((String) (obj)), s2, j, d1);
                return;
            }
            if (bitmap != null && !bitmap.isRecycled())
            {
                a(s, s1, ((String) (obj)), bitmap, j, d1);
                return;
            }
            if (s3 != null && s3.length() > 0)
            {
                a(s, s1, ((String) (obj)), BitmapHelper.downloadBitmap(platform.getContext(), s3), j, d1);
                return;
            } else
            {
                a(s, s1, ((String) (obj)), "", j, d1);
                return;
            }

        case 4: // '\004'
            obj = platform.getShortLintk(((String) (obj1)), false);
            break;
        }
        if (s2 != null && s2.length() > 0)
        {
            b(s, s1, ((String) (obj)), s2, j, d1);
            return;
        }
        if (bitmap != null && !bitmap.isRecycled())
        {
            b(s, s1, ((String) (obj)), bitmap, j, d1);
            return;
        }
        if (s3 != null && s3.length() > 0)
        {
            b(s, s1, ((String) (obj)), BitmapHelper.downloadBitmap(platform.getContext(), s3), j, d1);
            return;
        } else
        {
            b(s, s1, ((String) (obj)), "", j, d1);
            return;
        }
    }

    public void a(d d1, cn.sharesdk.framework.Platform.ShareParams shareparams, PlatformActionListener platformactionlistener)
    {
        Object obj;
        Platform platform;
        Object obj1;
label0:
        {
            platform = d1.a();
            obj = shareparams.getImagePath();
            obj1 = shareparams.getImageUrl();
            if (!TextUtils.isEmpty(((CharSequence) (obj))))
            {
                d1 = ((d) (obj));
                if ((new File(((String) (obj)))).exists())
                {
                    break label0;
                }
            }
            d1 = shareparams.getImageData();
            if (d1 != null && !d1.isRecycled())
            {
                obj = new File(R.getCachePath(platform.getContext(), "images"), (new StringBuilder()).append(System.currentTimeMillis()).append(".png").toString());
                obj1 = new FileOutputStream(((File) (obj)));
                d1.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, ((java.io.OutputStream) (obj1)));
                ((FileOutputStream) (obj1)).flush();
                ((FileOutputStream) (obj1)).close();
                d1 = ((File) (obj)).getAbsolutePath();
            } else
            {
                d1 = ((d) (obj));
                if (obj1 != null)
                {
                    d1 = BitmapHelper.downloadBitmap(platform.getContext(), ((String) (obj1)));
                }
            }
        }
label1:
        {
label2:
            {
                obj1 = new Intent("android.intent.action.SEND");
                ((Intent) (obj1)).putExtra("android.intent.extra.TEXT", platform.getShortLintk(shareparams.getText(), false));
                if (TextUtils.isEmpty(d1))
                {
                    break MISSING_BLOCK_LABEL_393;
                }
                obj = new File(d1);
                if (!((File) (obj)).exists())
                {
                    break label1;
                }
                ((Intent) (obj1)).putExtra("android.intent.extra.STREAM", Uri.fromFile(((File) (obj))));
                obj = URLConnection.getFileNameMap().getContentTypeFor(d1);
                if (obj != null)
                {
                    d1 = ((d) (obj));
                    if (((String) (obj)).length() > 0)
                    {
                        break label2;
                    }
                }
                d1 = "image/*";
            }
            ((Intent) (obj1)).setType(d1);
        }
_L1:
        if (((Integer)shareparams.get("scene", java/lang/Integer)).intValue() == 1)
        {
            d1 = "im.yixin.activity.share.ShareToSnsActivity";
        } else
        {
            d1 = "im.yixin.activity.share.ShareToSessionActivity";
        }
        ((Intent) (obj1)).setClassName("im.yixin", d1);
        ((Intent) (obj1)).addFlags(0x10000000);
        platform.getContext().startActivity(((Intent) (obj1)));
        d1 = DeviceHelper.getInstance(platform.getContext());
        obj = platform.getContext().getPackageName();
        obj1 = new HashMap();
        ((HashMap) (obj1)).put("ShareParams", shareparams);
        if (TextUtils.isEmpty(d1.getTopTaskPackageName()))
        {
            if (platformactionlistener != null && platformactionlistener != null)
            {
                platformactionlistener.onComplete(platform, 9, ((HashMap) (obj1)));
            }
            return;
        } else
        {
            UIHandler.sendEmptyMessageDelayed(0, 2000L, new e(this, d1, ((String) (obj)), platformactionlistener, platform, ((HashMap) (obj1))));
            return;
        }
        ((Intent) (obj1)).setType("text/plain");
          goto _L1
    }

    public boolean a(Context context, String s)
    {
        return c.a(context, s);
    }

    public boolean a(YixinHandlerActivity yixinhandleractivity)
    {
        return c.a(yixinhandleractivity, d);
    }

    public boolean b()
    {
        return c.a();
    }

    public boolean c()
    {
        return c.b();
    }

}
