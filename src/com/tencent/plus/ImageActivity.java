// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.plus;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.jsutil.JsBridge;
import com.tencent.jsutil.JsConfig;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.sdkutil.TemporaryStorage;
import com.tencent.tauth.IRequestListener;
import com.tencent.tauth.QQToken;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.tencent.plus:
//            j, g, i, h, 
//            a, m, n, c, 
//            f, k

public class ImageActivity extends Activity
{

    RelativeLayout a;
    JsBridge b;
    private String c;
    private Handler d;
    private a e;
    private Button f;
    private Button g;
    private m h;
    private TextView i;
    private ProgressBar j;
    private int k;
    private boolean l;
    private long m;
    private int n;
    private int o;
    private int p;
    private Rect q;
    private String r;
    private Bitmap s;
    private QQToken t;
    private android.view.View.OnClickListener u;
    private android.view.View.OnClickListener v;
    private IRequestListener w;
    private IRequestListener x;

    public ImageActivity()
    {
        k = 0;
        l = false;
        m = 0L;
        n = 0;
        o = 640;
        p = 640;
        q = new Rect();
        u = new j(this);
        v = new g(this);
        w = new i(this);
        x = new h(this);
    }

    private Bitmap a(String s1)
    {
        int i1 = 1;
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        s1 = Uri.parse(s1);
        InputStream inputstream = getContentResolver().openInputStream(s1);
        BitmapFactory.decodeStream(inputstream, null, options);
        inputstream.close();
        int k1 = options.outWidth;
        int j1 = options.outHeight;
        do
        {
            if (k1 * j1 <= 0x400000)
            {
                options.inJustDecodeBounds = false;
                options.inSampleSize = i1;
                return BitmapFactory.decodeStream(getContentResolver().openInputStream(s1), null, options);
            }
            k1 /= 2;
            j1 /= 2;
            i1 *= 2;
        } while (true);
    }

    static Rect a(ImageActivity imageactivity, Rect rect)
    {
        imageactivity.q = rect;
        return rect;
    }

    static Drawable a(ImageActivity imageactivity, String s1)
    {
        return imageactivity.b(s1);
    }

    private View a()
    {
        Object obj2 = new android.view.ViewGroup.LayoutParams(-1, -1);
        Object obj1 = new android.view.ViewGroup.LayoutParams(-1, -1);
        Object obj = new android.view.ViewGroup.LayoutParams(-2, -2);
        a = new RelativeLayout(this);
        a.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj2)));
        a.setBackgroundColor(0xff000000);
        obj2 = new RelativeLayout(this);
        ((RelativeLayout) (obj2)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        a.addView(((View) (obj2)));
        e = new a(this);
        e.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
        e.setScaleType(android.widget.ImageView.ScaleType.MATRIX);
        ((RelativeLayout) (obj2)).addView(e);
        h = new m(this);
        obj1 = new android.widget.RelativeLayout.LayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
        ((android.widget.RelativeLayout.LayoutParams) (obj1)).addRule(14, -1);
        ((android.widget.RelativeLayout.LayoutParams) (obj1)).addRule(15, -1);
        h.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
        ((RelativeLayout) (obj2)).addView(h);
        obj1 = new LinearLayout(this);
        obj2 = new android.widget.RelativeLayout.LayoutParams(-2, com.tencent.plus.n.a(this, 80F));
        ((android.widget.RelativeLayout.LayoutParams) (obj2)).addRule(14, -1);
        ((LinearLayout) (obj1)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj2)));
        ((LinearLayout) (obj1)).setOrientation(0);
        ((LinearLayout) (obj1)).setGravity(17);
        a.addView(((View) (obj1)));
        obj2 = new ImageView(this);
        ((ImageView) (obj2)).setLayoutParams(new android.widget.LinearLayout.LayoutParams(com.tencent.plus.n.a(this, 24F), com.tencent.plus.n.a(this, 24F)));
        ((ImageView) (obj2)).setImageDrawable(b("com.tencent.plus.logo.png"));
        ((LinearLayout) (obj1)).addView(((View) (obj2)));
        i = new TextView(this);
        obj2 = new android.widget.LinearLayout.LayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        obj2.leftMargin = com.tencent.plus.n.a(this, 7F);
        i.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj2)));
        i.setEllipsize(android.text.TextUtils.TruncateAt.END);
        i.setSingleLine();
        i.setTextColor(-1);
        i.setTextSize(24F);
        i.setVisibility(8);
        ((LinearLayout) (obj1)).addView(i);
        obj1 = new RelativeLayout(this);
        obj2 = new android.widget.RelativeLayout.LayoutParams(-1, com.tencent.plus.n.a(this, 60F));
        ((android.widget.RelativeLayout.LayoutParams) (obj2)).addRule(12, -1);
        ((android.widget.RelativeLayout.LayoutParams) (obj2)).addRule(9, -1);
        ((RelativeLayout) (obj1)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj2)));
        ((RelativeLayout) (obj1)).setBackgroundDrawable(b("com.tencent.plus.bar.png"));
        int i1 = com.tencent.plus.n.a(this, 10F);
        ((RelativeLayout) (obj1)).setPadding(i1, i1, i1, 0);
        a.addView(((View) (obj1)));
        obj2 = new c(this, this);
        i1 = com.tencent.plus.n.a(this, 14F);
        int j1 = com.tencent.plus.n.a(this, 7F);
        g = new Button(this);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(com.tencent.plus.n.a(this, 78F), com.tencent.plus.n.a(this, 45F));
        g.setLayoutParams(layoutparams);
        g.setText("\u53D6\u6D88");
        g.setTextColor(-1);
        g.setTextSize(18F);
        g.setPadding(i1, j1, i1, j1);
        ((c) (obj2)).b(g);
        ((RelativeLayout) (obj1)).addView(g);
        f = new Button(this);
        layoutparams = new android.widget.RelativeLayout.LayoutParams(com.tencent.plus.n.a(this, 78F), com.tencent.plus.n.a(this, 45F));
        layoutparams.addRule(11, -1);
        f.setLayoutParams(layoutparams);
        f.setTextColor(-1);
        f.setTextSize(18F);
        f.setPadding(i1, j1, i1, j1);
        f.setText("\u9009\u53D6");
        ((c) (obj2)).a(f);
        ((RelativeLayout) (obj1)).addView(f);
        obj2 = new TextView(this);
        layoutparams = new android.widget.RelativeLayout.LayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        layoutparams.addRule(13, -1);
        ((TextView) (obj2)).setLayoutParams(layoutparams);
        ((TextView) (obj2)).setText("\u79FB\u52A8\u548C\u7F29\u653E");
        ((TextView) (obj2)).setPadding(0, com.tencent.plus.n.a(this, 3F), 0, 0);
        ((TextView) (obj2)).setTextSize(18F);
        ((TextView) (obj2)).setTextColor(-1);
        ((RelativeLayout) (obj1)).addView(((View) (obj2)));
        j = new ProgressBar(this);
        obj = new android.widget.RelativeLayout.LayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(14, -1);
        ((android.widget.RelativeLayout.LayoutParams) (obj)).addRule(15, -1);
        j.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        j.setVisibility(8);
        a.addView(j);
        return a;
    }

    static m a(ImageActivity imageactivity)
    {
        return imageactivity.h;
    }

    private void a(int i1, String s1, String s2, String s3)
    {
        Intent intent = new Intent();
        intent.putExtra("key_error_code", i1);
        intent.putExtra("key_error_msg", s2);
        intent.putExtra("key_error_detail", s3);
        intent.putExtra("key_response", s1);
        setResult(-1, intent);
    }

    private void a(Bitmap bitmap)
    {
        Bundle bundle = new Bundle();
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 40, bytearrayoutputstream);
        byte abyte0[] = bytearrayoutputstream.toByteArray();
        bitmap.recycle();
        bundle.putByteArray("picture", abyte0);
        a("user/set_user_face", bundle, "POST", w, null);
    }

    static void a(ImageActivity imageactivity, int i1, String s1, String s2, String s3)
    {
        imageactivity.a(i1, s1, s2, s3);
    }

    static void a(ImageActivity imageactivity, String s1, int i1)
    {
        imageactivity.b(s1, i1);
    }

    private void a(String s1, int i1)
    {
        d.post(new f(this, s1, i1));
    }

    static boolean a(ImageActivity imageactivity, boolean flag)
    {
        imageactivity.l = flag;
        return flag;
    }

    static Rect b(ImageActivity imageactivity)
    {
        return imageactivity.q;
    }

    private Drawable b(String s1)
    {
        Object obj = getAssets();
        obj = ((AssetManager) (obj)).open(s1);
        s1 = Drawable.createFromStream(((InputStream) (obj)), s1);
        ((InputStream) (obj)).close();
        return s1;
        IOException ioexception;
        ioexception;
        s1 = null;
_L2:
        ioexception.printStackTrace();
        return s1;
        ioexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void b()
    {
        IOException ioexception;
        s = a(r);
        if (s == null)
        {
            throw new IOException((new StringBuilder()).append("cannot read picture: '").append(r).append("'!").toString());
        }
          goto _L1
_L3:
        f.setOnClickListener(u);
        g.setOnClickListener(v);
        a.getViewTreeObserver().addOnGlobalLayoutListener(new k(this));
        return;
_L1:
        try
        {
            e.setImageBitmap(s);
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            b("\u56FE\u7247\u8BFB\u53D6\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u8BE5\u56FE\u7247\u662F\u5426\u6709\u6548", 1);
            a(-5, null, "\u56FE\u7247\u8BFB\u53D6\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u8BE5\u56FE\u7247\u662F\u5426\u6709\u6548", ioexception.getMessage());
            d();
        }
        if (true) goto _L3; else goto _L2
_L2:
    }

    static void b(ImageActivity imageactivity, String s1)
    {
        imageactivity.c(s1);
    }

    static void b(ImageActivity imageactivity, String s1, int i1)
    {
        imageactivity.a(s1, i1);
    }

    private void b(String s1, int i1)
    {
        s1 = Toast.makeText(this, s1, 1);
        LinearLayout linearlayout = (LinearLayout)s1.getView();
        ((TextView)linearlayout.getChildAt(0)).setPadding(8, 0, 0, 0);
        ImageView imageview = new ImageView(this);
        imageview.setLayoutParams(new android.widget.LinearLayout.LayoutParams(com.tencent.plus.n.a(this, 16F), com.tencent.plus.n.a(this, 16F)));
        if (i1 == 0)
        {
            imageview.setImageDrawable(b("com.tencent.plus.ic_success.png"));
        } else
        {
            imageview.setImageDrawable(b("com.tencent.plus.ic_error.png"));
        }
        linearlayout.addView(imageview, 0);
        linearlayout.setOrientation(0);
        linearlayout.setGravity(17);
        s1.setView(linearlayout);
        s1.setGravity(17, 0, 0);
        s1.show();
    }

    static a c(ImageActivity imageactivity)
    {
        return imageactivity.e;
    }

    private void c()
    {
        float f4 = q.width();
        Object obj = e.getImageMatrix();
        float af[] = new float[9];
        ((Matrix) (obj)).getValues(af);
        float f1 = af[2];
        float f2 = af[5];
        float f3 = af[0];
        f4 = (float)o / f4;
        int i1 = (int)(((float)q.left - f1) / f3);
        int j1 = (int)(((float)q.top - f2) / f3);
        Object obj1 = new Matrix();
        ((Matrix) (obj1)).set(((Matrix) (obj)));
        ((Matrix) (obj1)).postScale(f4, f4);
        int l1 = (int)(650F / f3);
        int k1 = Math.min(s.getWidth() - i1, l1);
        l1 = Math.min(s.getHeight() - j1, l1);
        obj = Bitmap.createBitmap(s, i1, j1, k1, l1, ((Matrix) (obj1)), true);
        obj1 = Bitmap.createBitmap(((Bitmap) (obj)), 0, 0, o, p);
        ((Bitmap) (obj)).recycle();
        a(((Bitmap) (obj1)));
    }

    private void c(String s1)
    {
        s1 = d(s1);
        if (!"".equals(s1))
        {
            i.setText(s1);
            i.setVisibility(0);
        }
    }

    static ProgressBar d(ImageActivity imageactivity)
    {
        return imageactivity.j;
    }

    private String d(String s1)
    {
        return s1.replaceAll("&gt;", ">").replaceAll("&lt;", "<").replaceAll("&quot;", "\"").replaceAll("&#39;", "'").replaceAll("&amp;", "&");
    }

    private void d()
    {
        finish();
        if (n != 0)
        {
            overridePendingTransition(0, n);
        }
    }

    static Button e(ImageActivity imageactivity)
    {
        return imageactivity.g;
    }

    private void e()
    {
        k = k + 1;
        a("user/get_simple_userinfo", ((Bundle) (null)), "GET", x, null);
    }

    static Button f(ImageActivity imageactivity)
    {
        return imageactivity.f;
    }

    static void g(ImageActivity imageactivity)
    {
        imageactivity.c();
    }

    static boolean h(ImageActivity imageactivity)
    {
        return imageactivity.l;
    }

    static long i(ImageActivity imageactivity)
    {
        return imageactivity.m;
    }

    static void j(ImageActivity imageactivity)
    {
        imageactivity.d();
    }

    static Handler k(ImageActivity imageactivity)
    {
        return imageactivity.d;
    }

    static String l(ImageActivity imageactivity)
    {
        return imageactivity.c;
    }

    static int m(ImageActivity imageactivity)
    {
        return imageactivity.k;
    }

    static void n(ImageActivity imageactivity)
    {
        imageactivity.e();
    }

    public void a(String s1, long l1)
    {
    }

    public void a(String s1, Bundle bundle, String s2, IRequestListener irequestlistener, Object obj)
    {
        WnsClientLog.getInstance().v("openSDK_LOG", (new StringBuilder()).append("requestAsync() ,graphPath = ").append(s1).append("").toString());
        obj = TemporaryStorage.getId();
        s2 = bundle;
        if (bundle == null)
        {
            s2 = new Bundle();
        }
        s2.putString("oauth_consumer_key", t.getAppId());
        s2.putString("openid", t.getOpenId());
        s2.putString("access_token", t.getAccessToken());
        s2.putString("format", "json");
        TemporaryStorage.set(((String) (obj)), s2);
        bundle = TemporaryStorage.getId();
        TemporaryStorage.set(bundle, irequestlistener);
        b.executeMethod("requestAsync", new String[] {
            s1, obj, bundle
        });
    }

    public void onBackPressed()
    {
        setResult(0);
        d();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setRequestedOrientation(1);
        setContentView(a());
        b = JsBridge.getInstance(getApplicationContext(), JsConfig.mTencentFileProtocolPath);
        d = new Handler();
        bundle = getIntent().getBundleExtra("key_params");
        r = bundle.getString("picture");
        c = bundle.getString("return_activity");
        String s1 = bundle.getString("appid");
        String s2 = bundle.getString("access_token");
        long l1 = bundle.getLong("expires_in");
        String s3 = bundle.getString("openid");
        n = bundle.getInt("exitAnim");
        t = new QQToken(s1, getApplicationContext());
        t.setAccessToken(s2, (new StringBuilder()).append((l1 - System.currentTimeMillis()) / 1000L).append("").toString());
        t.setOpenId(s3);
        b();
        e();
        m = System.currentTimeMillis();
        a("10653", 0L);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        e.setImageBitmap(null);
        if (s != null && !s.isRecycled())
        {
            s.recycle();
        }
    }
}
