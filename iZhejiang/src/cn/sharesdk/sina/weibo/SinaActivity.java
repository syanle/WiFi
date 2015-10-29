// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.sina.weibo;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;
import com.mob.tools.utils.UIHandler;
import com.sina.weibo.sdk.api.BaseMediaObject;
import com.sina.weibo.sdk.api.ImageObject;
import com.sina.weibo.sdk.api.TextObject;
import com.sina.weibo.sdk.api.WebpageObject;
import com.sina.weibo.sdk.api.WeiboMultiMessage;
import com.sina.weibo.sdk.api.share.BaseResponse;
import com.sina.weibo.sdk.api.share.IWeiboShareAPI;
import com.sina.weibo.sdk.api.share.SendMultiMessageToWeiboRequest;
import com.sina.weibo.sdk.api.share.WeiboShareSDK;
import com.sina.weibo.sdk.auth.AuthInfo;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.auth.sso.SsoHandler;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.utils.Utility;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

public class SinaActivity extends Activity
    implements android.os.Handler.Callback, com.sina.weibo.sdk.api.share.IWeiboHandler.Response, WeiboAuthListener
{

    private static cn.sharesdk.framework.Platform.ShareParams f;
    private static AuthorizeListener g;
    private String a;
    private long b;
    private SsoHandler c;
    private AuthInfo d;
    private IWeiboShareAPI e;

    public SinaActivity()
    {
    }

    private int a(Bitmap bitmap, android.graphics.Bitmap.CompressFormat compressformat)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(compressformat, 100, bytearrayoutputstream);
        int i = bytearrayoutputstream.size();
        bytearrayoutputstream.close();
        return i;
    }

    private Bitmap a(Context context, Bitmap bitmap)
    {
        try
        {
            File file = File.createTempFile("bm_tmp", ".jpg");
            FileOutputStream fileoutputstream = new FileOutputStream(file);
            bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, fileoutputstream);
            fileoutputstream.flush();
            fileoutputstream.close();
            context = a(context, file.getAbsolutePath());
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Ln.e(context);
            return null;
        }
        return context;
    }

    private Bitmap a(Context context, String s)
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
        context = BitmapFactory.decodeFile(s, new android.graphics.BitmapFactory.Options());
        if (file.length() > b)
        {
            while (i > 40 && a(((Bitmap) (context)), compressformat) > 32768) 
            {
                i -= 5;
                int j = context.getWidth();
                int k = context.getHeight();
                double d1;
                if (k <= i && j <= i)
                {
                    d1 = 1.0D;
                } else
                if (k > j)
                {
                    d1 = (double)i / (double)k;
                } else
                {
                    d1 = (double)i / (double)j;
                }
                context = Bitmap.createScaledBitmap(context, (int)((double)j * d1), (int)(d1 * (double)k), true);
            }
            s = new FileOutputStream(File.createTempFile("sina_bm_tmp", (new StringBuilder()).append(".").append(compressformat.name().toLowerCase()).toString()));
            context.compress(compressformat, 100, s);
            s.flush();
            s.close();
            return context;
        } else
        {
            Ln.i((new StringBuilder()).append("sina weibo decode bitmap size ==>>").append(a(((Bitmap) (context)), compressformat)).toString(), new Object[0]);
            return context;
        }
    }

    private void a()
    {
        WeiboMultiMessage weibomultimessage = new WeiboMultiMessage();
        if (!TextUtils.isEmpty(f.getText()))
        {
            weibomultimessage.textObject = d();
        }
        if (f.getImageData() != null || !TextUtils.isEmpty(f.getImagePath()))
        {
            weibomultimessage.imageObject = c();
        }
        if (!TextUtils.isEmpty(f.getUrl()))
        {
            weibomultimessage.mediaObject = b();
        }
        SendMultiMessageToWeiboRequest sendmultimessagetoweiborequest = new SendMultiMessageToWeiboRequest();
        sendmultimessagetoweiborequest.transaction = String.valueOf(System.currentTimeMillis());
        sendmultimessagetoweiborequest.multiMessage = weibomultimessage;
        e.sendRequest(this, sendmultimessagetoweiborequest, d, a, this);
    }

    public static void a(cn.sharesdk.framework.Platform.ShareParams shareparams)
    {
        f = shareparams;
    }

    public static void a(AuthorizeListener authorizelistener)
    {
        g = authorizelistener;
    }

    private BaseMediaObject b()
    {
        WebpageObject webpageobject;
        webpageobject = new WebpageObject();
        webpageobject.identify = Utility.generateGUID();
        webpageobject.title = f.getTitle();
        webpageobject.description = f.getText();
        b = 32768L;
        if (f.getImageData() == null) goto _L2; else goto _L1
_L1:
        webpageobject.setThumbImage(a(this, f.getImageData()));
_L4:
        webpageobject.actionUrl = f.getUrl();
        webpageobject.defaultText = f.getText();
        return webpageobject;
_L2:
        try
        {
            if (!TextUtils.isEmpty(f.getImagePath()))
            {
                webpageobject.setThumbImage(a(this, f.getImagePath()));
            }
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
            webpageobject.setThumbImage(null);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private ImageObject c()
    {
        ImageObject imageobject = new ImageObject();
        if (f.getImageData() == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        b = 0x200000L;
        imageobject.setImageObject(a(this, f.getImageData()));
        return imageobject;
        Object obj = imageobject;
        if (TextUtils.isEmpty(f.getImagePath()))
        {
            break MISSING_BLOCK_LABEL_87;
        }
        b = 0xa00000L;
        imageobject.setImageObject(a(this, f.getImagePath()));
        return imageobject;
        obj;
        Ln.e(((Throwable) (obj)));
        obj = null;
        return ((ImageObject) (obj));
    }

    private TextObject d()
    {
        TextObject textobject = new TextObject();
        textobject.text = f.getText();
        return textobject;
    }

    private void e()
    {
        UIHandler.sendEmptyMessageDelayed(1, 200L, this);
    }

    public boolean handleMessage(Message message)
    {
        if (message.what == 1)
        {
            finish();
        }
        return false;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (c != null)
        {
            c.authorizeCallBack(i, j, intent);
        }
        e();
    }

    public void onCancel()
    {
        e();
        if (g != null)
        {
            g.onCancel();
        }
    }

    public void onComplete(Bundle bundle)
    {
        e();
        if (g != null)
        {
            g.onComplete(bundle);
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Bundle bundle1 = getIntent().getExtras();
        int i = bundle1.getInt("action");
        String s1 = bundle1.getString("appkey");
        String s2 = bundle1.getString("redirectUrl");
        String s = bundle1.getString("permissions");
        boolean flag = bundle1.getBoolean("isUserClient");
        bundle = s;
        if (s == null)
        {
            bundle = "";
        }
        d = new AuthInfo(this, s1, s2, bundle);
        c = new SsoHandler(this, d);
        if (i == 1)
        {
            if (flag)
            {
                c.authorize(this);
                return;
            } else
            {
                c.authorizeWeb(this);
                return;
            }
        }
        if (i == 2)
        {
            a = bundle1.getString("token");
            e = WeiboShareSDK.createWeiboAPI(this, s1);
            e.registerApp();
            a();
            return;
        } else
        {
            e();
            return;
        }
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        Ln.i("onNewIntent ==>>", new Object[] {
            intent.getExtras().toString()
        });
        e.handleWeiboResponse(intent, this);
    }

    public void onResponse(BaseResponse baseresponse)
    {
        e();
        baseresponse.errCode;
        JVM INSTR tableswitch 0 2: default 36
    //                   0 37
    //                   1 53
    //                   2 68;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L2:
        if (g != null)
        {
            g.onComplete(null);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (g != null)
        {
            g.onCancel();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (g != null)
        {
            g.onError(new Throwable());
            return;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void onWeiboException(WeiboException weiboexception)
    {
        e();
        if (g != null)
        {
            g.onError(weiboexception);
        }
    }
}
