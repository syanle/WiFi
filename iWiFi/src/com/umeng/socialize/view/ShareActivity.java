// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.umeng.socialize.bean.QQShareMsg;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeConstants;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.common.c;
import com.umeng.socialize.controller.RequestType;
import com.umeng.socialize.controller.UMServiceFactory;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.location.a;
import com.umeng.socialize.location.d;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMVideo;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socialize.media.UMusic;
import com.umeng.socialize.view.abs.s;
import com.umeng.socialize.view.wigets.KeyboardListenRelativeLayout;
import com.umeng.socom.Log;
import java.io.File;
import java.util.Set;

// Referenced classes of package com.umeng.socialize.view:
//            bo, ab, bp, bw, 
//            bq, br, bs, bu, 
//            bv, bf, bt, bi, 
//            bj, bk, bl, bm, 
//            bh, bn, be

public class ShareActivity extends s
{

    public static final String FOLLOW_FILE_NAME = "umeng_follow";
    private static int J[];
    private static final String b = com/umeng/socialize/view/ShareActivity.getName();
    private static final int c = 140;
    private a A;
    private Location B;
    private int C;
    private boolean D;
    private bw E;
    private UMediaObject F;
    private boolean G;
    private QQShareMsg H;
    private int I;
    protected ImageView a;
    private Button d;
    private Button e;
    private EditText f;
    private ImageButton g;
    private ImageButton h;
    private View k;
    private View l;
    private ab m;
    private TextView n;
    private RelativeLayout o;
    private CheckBox p;
    private KeyboardListenRelativeLayout q;
    private com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener r;
    private com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener s;
    private SocializeEntity t;
    private ProgressDialog u;
    private Context v;
    private boolean w;
    private UMSocialService x;
    private String y;
    private SHARE_MEDIA z;

    public ShareActivity()
    {
        D = false;
        G = false;
        H = null;
        I = 0;
    }

    private void a(SocializeConfig socializeconfig)
    {
        if (socializeconfig.isDefaultShareLocation())
        {
            k();
            return;
        } else
        {
            a(false);
            return;
        }
    }

    static void a(ShareActivity shareactivity)
    {
        shareactivity.i();
    }

    static void a(ShareActivity shareactivity, int i1)
    {
        shareactivity.C = i1;
    }

    static void a(ShareActivity shareactivity, Location location)
    {
        shareactivity.B = location;
    }

    static void a(ShareActivity shareactivity, UMediaObject umediaobject)
    {
        shareactivity.F = umediaobject;
    }

    static void a(ShareActivity shareactivity, boolean flag)
    {
        shareactivity.w = flag;
    }

    private void a(boolean flag)
    {
        if (flag)
        {
            h.setVisibility(8);
            k.setVisibility(0);
            return;
        }
        if (B == null)
        {
            h.setImageResource(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_location_off"));
            h.setVisibility(0);
            k.setVisibility(8);
            return;
        } else
        {
            h.setImageResource(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_location_on"));
            h.setVisibility(0);
            k.setVisibility(8);
            return;
        }
    }

    static ab b(ShareActivity shareactivity)
    {
        return shareactivity.m;
    }

    static void b(ShareActivity shareactivity, int i1)
    {
        shareactivity.I = i1;
    }

    static void b(ShareActivity shareactivity, boolean flag)
    {
        shareactivity.a(flag);
    }

    static String c()
    {
        return b;
    }

    static boolean c(ShareActivity shareactivity)
    {
        return shareactivity.D;
    }

    static SHARE_MEDIA d(ShareActivity shareactivity)
    {
        return shareactivity.z;
    }

    static int[] d()
    {
        int ai[] = J;
        if (ai != null)
        {
            return ai;
        }
        ai = new int[com.umeng.socialize.media.UMediaObject.MediaType.values().length];
        try
        {
            ai[com.umeng.socialize.media.UMediaObject.MediaType.IMAGE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai[com.umeng.socialize.media.UMediaObject.MediaType.MUSIC.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai[com.umeng.socialize.media.UMediaObject.MediaType.TEXT.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai[com.umeng.socialize.media.UMediaObject.MediaType.TEXT_IMAGE.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai[com.umeng.socialize.media.UMediaObject.MediaType.VEDIO.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai[com.umeng.socialize.media.UMediaObject.MediaType.WEBPAGE.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        J = ai;
        return ai;
    }

    static String e(ShareActivity shareactivity)
    {
        return shareactivity.y;
    }

    static bw f(ShareActivity shareactivity)
    {
        return shareactivity.E;
    }

    private void f()
    {
        Log.c(b, "initLocationProvider.....");
        A = new a();
        d d1 = new d();
        d1.a(this);
        A.a(d1);
        A.a(this);
        h.setImageResource(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_location_off"));
    }

    static EditText g(ShareActivity shareactivity)
    {
        return shareactivity.f;
    }

    private void g()
    {
        f = (EditText)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_share_edittext"));
        Object obj;
        if (!G)
        {
            if (!TextUtils.isEmpty(t.getShareContent()))
            {
                f.setText(t.getShareContent());
                f.setSelection(f.getText().length());
            }
        } else
        if (H != null)
        {
            f.setText(H.f());
            f.setSelection(f.getText().length());
        }
        h = (ImageButton)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_location_ic"));
        k = findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_location_progressbar"));
        h.setOnClickListener(new bo(this));
        if (D)
        {
            ab.b = false;
            m = new bp(this, v);
            m.setVisibility(8);
            q.addView(m, -1, -1);
        }
        if (!G || !TextUtils.isEmpty(y))
        {
            E = new bw(this, z, y);
        }
        g = (ImageButton)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_share_at"));
        if (G || !com.umeng.socialize.common.c.b(z))
        {
            g.setVisibility(8);
        }
        if (D && m == null)
        {
            g.setVisibility(8);
        }
        g.setOnClickListener(new bq(this));
        n = (TextView)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_share_word_num"));
        n.setText(String.valueOf(140));
        w = h();
        d = (Button)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_leftBt"));
        d.setOnClickListener(new br(this));
        e = (Button)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_rightBt"));
        obj = (TextView)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_middleTv"));
        if (!G)
        {
            ((TextView) (obj)).setText((new StringBuilder("\u5206\u4EAB\u5230")).append(com.umeng.socialize.common.c.a(this, z)).toString());
        } else
        {
            ((TextView) (obj)).setText("\u5206\u4EAB\u5230QQ");
        }
        a = (ImageView)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_share_previewImg"));
        l = findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_share_previewImg_remove"));
        l.setOnClickListener(new bs(this));
        obj = (ProgressBar)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_share_previewImg_progressbar"));
        if (F == null && G && H != null)
        {
            int i1;
            if (I == 1)
            {
                if (!TextUtils.isEmpty(H.g()))
                {
                    F = new UMImage(this, new File(H.g()));
                } else
                {
                    F = new UMImage(getApplicationContext(), H.b());
                }
            } else
            if (I == 2)
            {
                F = new UMusic(H.b());
            } else
            if (I == 3)
            {
                F = new UMVideo(H.b());
            }
            Log.c(b, "##### QQ SHARE, NEW MEDIA -----");
        }
        if (F != null)
        {
            if (F.getMediaType() == com.umeng.socialize.media.UMediaObject.MediaType.MUSIC)
            {
                i1 = ResContainer.getResourceId(v, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_share_music");
                a.setImageResource(i1);
                a.setVisibility(0);
                l.setVisibility(0);
            } else
            if (F.getMediaType() == com.umeng.socialize.media.UMediaObject.MediaType.VEDIO)
            {
                int j1 = ResContainer.getResourceId(v, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_share_video");
                a.setImageResource(j1);
                a.setVisibility(0);
                l.setVisibility(0);
            } else
            if (F.getMediaType() == com.umeng.socialize.media.UMediaObject.MediaType.IMAGE)
            {
                a.setImageDrawable(null);
                int k1 = ResContainer.getResourceId(v, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_share_pic");
                F.toByte(new bt(this, ((ProgressBar) (obj)), k1));
            }
        }
        o = (RelativeLayout)findViewById(ResContainer.getResourceId(v, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_follow_layout"));
        if (x != null)
        {
            obj = x.getConfig().getFollowFids(z);
        } else
        {
            obj = null;
        }
        if (obj == null || ((Set) (obj)).size() <= 0 || m() || z != SHARE_MEDIA.SINA && z != SHARE_MEDIA.TENCENT)
        {
            o.setVisibility(8);
        }
        p = (CheckBox)findViewById(ResContainer.getResourceId(v, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_follow_check"));
        u = new ProgressDialog(v);
        u.setProgressStyle(0);
        u.setMessage("\u53D1\u9001\u4E2D...");
        u.setCancelable(false);
        obj = new bu(this);
        f.addTextChangedListener(((android.text.TextWatcher) (obj)));
        r = new bv(this);
        e.setOnClickListener(new bf(this));
        obj = findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_post_fetch_image"));
        ((View) (obj)).setOnClickListener(getReceiveImageClick());
        ((View) (obj)).setVisibility(8);
    }

    static Button h(ShareActivity shareactivity)
    {
        return shareactivity.d;
    }

    private boolean h()
    {
        int i1 = 140 - SocializeUtils.countContentLength(f.getText().toString());
        Log.c(b, (new StringBuilder("onTextChanged ")).append(i1).append("   ").append(SocializeUtils.countContentLength(f.getText().toString())).toString());
        if (i1 >= 0)
        {
            n.setText((new StringBuilder()).append(i1).toString());
            return false;
        } else
        {
            n.setText((new StringBuilder()).append(i1).toString());
            return true;
        }
    }

    static UMSocialService i(ShareActivity shareactivity)
    {
        return shareactivity.x;
    }

    private void i()
    {
        if (B != null)
        {
            (new android.app.AlertDialog.Builder(this)).setMessage("\u662F\u5426\u5220\u9664\u4F4D\u7F6E\u4FE1\u606F\uFF1F").setCancelable(false).setPositiveButton("\u662F", new bi(this)).setNegativeButton("\u5426", new bj(this)).create().show();
            return;
        } else
        {
            k();
            return;
        }
    }

    static SocializeEntity j(ShareActivity shareactivity)
    {
        return shareactivity.t;
    }

    private void j()
    {
        if (a.getDrawable() == null) goto _L2; else goto _L1
_L1:
        String s1;
        String s2;
        s2 = "";
        s1 = s2;
        if (F == null) goto _L4; else goto _L3
_L3:
        d()[F.getMediaType().ordinal()];
        JVM INSTR tableswitch 1 3: default 64
    //                   1 146
    //                   2 153
    //                   3 139;
           goto _L5 _L6 _L7 _L8
_L5:
        s1 = s2;
_L4:
        (new android.app.AlertDialog.Builder(this)).setMessage((new StringBuilder("\u4F60\u786E\u5B9A\u5220\u9664")).append(s1).append("\u5417\uFF1F").toString()).setCancelable(false).setPositiveButton("\u786E\u5B9A", new bk(this)).setNegativeButton("\u53D6\u6D88", new bl(this)).create().show();
_L2:
        return;
_L8:
        s1 = "\u97F3\u4E50";
        continue; /* Loop/switch isn't completed */
_L6:
        s1 = "\u56FE\u7247";
        continue; /* Loop/switch isn't completed */
_L7:
        s1 = "\u89C6\u9891";
        if (true) goto _L4; else goto _L9
_L9:
    }

    private void k()
    {
        (new bm(this, A)).execute(new Void[0]);
    }

    static void k(ShareActivity shareactivity)
    {
        shareactivity.j();
    }

    static UMediaObject l(ShareActivity shareactivity)
    {
        return shareactivity.F;
    }

    private void l()
    {
        android.content.SharedPreferences.Editor editor = getSharedPreferences("umeng_follow", 0).edit();
        editor.putBoolean(z.toString(), true);
        editor.commit();
    }

    static View m(ShareActivity shareactivity)
    {
        return shareactivity.l;
    }

    private boolean m()
    {
        return getSharedPreferences("umeng_follow", 0).getBoolean(z.toString(), false);
    }

    static boolean n(ShareActivity shareactivity)
    {
        return shareactivity.h();
    }

    static ProgressDialog o(ShareActivity shareactivity)
    {
        return shareactivity.u;
    }

    static void p(ShareActivity shareactivity)
    {
        shareactivity.e();
    }

    static Context q(ShareActivity shareactivity)
    {
        return shareactivity.v;
    }

    static boolean r(ShareActivity shareactivity)
    {
        return shareactivity.w;
    }

    static boolean s(ShareActivity shareactivity)
    {
        return shareactivity.G;
    }

    static Location t(ShareActivity shareactivity)
    {
        return shareactivity.B;
    }

    static com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener u(ShareActivity shareactivity)
    {
        return shareactivity.r;
    }

    static RelativeLayout v(ShareActivity shareactivity)
    {
        return shareactivity.o;
    }

    static CheckBox w(ShareActivity shareactivity)
    {
        return shareactivity.p;
    }

    static void x(ShareActivity shareactivity)
    {
        shareactivity.l();
    }

    static int y(ShareActivity shareactivity)
    {
        return shareactivity.I;
    }

    protected void a()
    {
        a.setImageDrawable(null);
        a.setVisibility(8);
    }

    protected void a(Bitmap bitmap)
    {
        if (bitmap != null)
        {
            a.setImageBitmap(bitmap);
            a.setVisibility(0);
        }
    }

    protected void b()
    {
        if (C == -3)
        {
            ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(getWindow().peekDecorView().getWindowToken(), 0);
            (new Handler()).postDelayed(new bh(this), 500L);
            return;
        } else
        {
            finish();
            return;
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        if (SocializeConstants.BACKKEY_COMPLETE_CLOSE && keyevent.getKeyCode() == 4)
        {
            if (u.isShowing())
            {
                u.dismiss();
            }
            (new Handler()).postDelayed(new bn(this), 400L);
            if (x != null)
            {
                x.getConfig().cleanListeners();
            }
            return true;
        } else
        {
            return super.dispatchKeyEvent(keyevent);
        }
    }

    public void inputAt(SpannableString spannablestring)
    {
        int i1 = f.getSelectionStart();
        f.getText().insert(i1, spannablestring);
    }

    protected void onCreate(Bundle bundle)
    {
        D = SocializeUtils.isFloatWindowStyle(this);
        if (!D)
        {
            setTheme(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.STYLE, "Theme.UMDefault"));
        }
        super.onCreate(bundle);
        v = this;
        setContentView(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_post_share"));
        bundle = getWindow().getAttributes();
        bundle.softInputMode = 16;
        if (D)
        {
            int ai[] = SocializeUtils.getFloatWindowSize(v);
            bundle.width = ai[0];
            bundle.height = ai[1];
        }
        getWindow().setAttributes(bundle);
        q = (KeyboardListenRelativeLayout)findViewById(ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_share_root"));
        q.setOnKeyboardStateChangedListener(new be(this));
        if (getIntent().getExtras().containsKey("QQ-SSO"))
        {
            G = getIntent().getBooleanExtra("QQ-SSO", false);
        }
        y = getIntent().getStringExtra("dc");
        z = SHARE_MEDIA.convertToEmun(getIntent().getStringExtra("sns"));
        if (z == null)
        {
            Toast.makeText(this, "\u51FA\u9519\u5566\uFF01", 0).show();
            b();
        }
        if (TextUtils.isEmpty(y))
        {
            Log.b(b, "####No EntityPool key..............");
            b();
        }
        x = UMServiceFactory.getUMSocialService(y, RequestType.SOCIAL);
        t = x.getEntity();
        F = t.getMedia();
        t.addStatisticsData(this, z, 15);
        if (G)
        {
            H = (QQShareMsg)getIntent().getParcelableExtra("share_content");
            I = getIntent().getIntExtra("media_type", 0);
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if (A != null)
        {
            A.a();
        }
        s = null;
    }

    protected void onResume()
    {
        g();
        f();
        f.requestFocus();
        if (x != null)
        {
            a(x.getConfig());
        }
        super.onResume();
    }

    protected void onStop()
    {
        super.onStop();
        if (u != null && u.isShowing())
        {
            u.setMessage("\u53D1\u9001\u4E2D...");
            u.dismiss();
        }
    }

}
