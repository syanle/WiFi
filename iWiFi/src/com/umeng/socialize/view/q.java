// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.location.Location;
import android.text.Editable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMComment;
import com.umeng.socialize.bean.UMLocation;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.common.c;
import com.umeng.socialize.controller.RequestType;
import com.umeng.socialize.controller.UMServiceFactory;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.location.a;
import com.umeng.socialize.location.d;
import com.umeng.socialize.media.BaseMediaObject;
import com.umeng.socialize.media.UMRichMedia;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.umeng.socialize.view:
//            CommentActivity, r, s, t, 
//            u, w, x, y, 
//            z, aa

public class q extends Dialog
{
    private class a
    {

        SHARE_MEDIA a;
        ImageButton b;
        ImageView c;
        boolean d;
        String e;
        View f;
        SnsPlatform g;
        final q h;

        static q a(a a1)
        {
            return a1.h;
        }

        public void a(String s1)
        {
            if (!TextUtils.isEmpty(s1))
            {
                e = s1;
                d = true;
            }
        }

        public boolean a()
        {
            return d && !TextUtils.isEmpty(e) && c.getVisibility() == 0;
        }

        public a(Context context, SnsPlatform snsplatform)
        {
            h = q.this;
            super();
            g = snsplatform;
            a = SHARE_MEDIA.convertToEmun(g.mKeyword);
            f = com.umeng.socialize.view.q.a(q.this).inflate(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_post_comment_platform"), q.b(q.this), false);
            b = (ImageButton)f.findViewById(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_post_cws_ic"));
            c = (ImageView)f.findViewById(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_post_cws_selected"));
            q1 = new z(this);
            b.setOnClickListener(new aa(this, q.this));
        }
    }


    private static final String b = com/umeng/socialize/view/q.getName();
    private static boolean c = true;
    protected ImageView a;
    private Button d;
    private Button e;
    private EditText f;
    private com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener g;
    private SocializeEntity h;
    private ProgressDialog i;
    private CommentActivity j;
    private int k;
    private com.umeng.socialize.location.a l;
    private Location m;
    private ImageButton n;
    private View o;
    private LinearLayout p;
    private UMSocialService q;
    private SocializeConfig r;
    private Map s;
    private LayoutInflater t;

    public q(Context context, SocializeEntity socializeentity)
    {
        super(context, ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.STYLE, "umeng_socialize_popup_dialog"));
        k = 0;
        h = socializeentity;
        q = UMServiceFactory.getUMSocialService(socializeentity.mDescriptor, RequestType.SOCIAL);
        j = (CommentActivity)context;
        r = q.getConfig();
        t = (LayoutInflater)getContext().getSystemService("layout_inflater");
        d();
        c();
        a(r);
    }

    static LayoutInflater a(q q1)
    {
        return q1.t;
    }

    private void a(SHARE_MEDIA share_media)
    {
        if (s.containsKey(share_media))
        {
            ((a)s.get(share_media)).c.setVisibility(0);
        }
    }

    private void a(SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        q.doOauthVerify(j, share_media, umauthlistener);
    }

    private void a(SocializeConfig socializeconfig)
    {
        Object obj;
        if (socializeconfig.isDefaultShareLocation())
        {
            h();
        } else
        {
            a(false);
        }
        obj = com.umeng.socialize.common.c.a(getContext(), socializeconfig);
        s = new HashMap();
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                return;
            }
            SnsPlatform snsplatform = (SnsPlatform)((Iterator) (obj)).next();
            SHARE_MEDIA share_media = SHARE_MEDIA.convertToEmun(snsplatform.mKeyword);
            a a1 = new a(getContext(), snsplatform);
            if (snsplatform.mOauth)
            {
                a1.b.setImageResource(snsplatform.mIcon);
                a1.d = true;
                a1.e = snsplatform.mUsid;
                if (socializeconfig.isDefaultShareComment())
                {
                    a1.c.setVisibility(0);
                }
            } else
            {
                a1.b.setImageResource(snsplatform.mGrayIcon);
            }
            p.addView(a1.f);
            s.put(share_media, a1);
        } while (true);
    }

    static void a(q q1, int i1)
    {
        q1.k = i1;
    }

    static void a(q q1, Location location)
    {
        q1.m = location;
    }

    static void a(q q1, SHARE_MEDIA share_media)
    {
        q1.a(share_media);
    }

    static void a(q q1, SHARE_MEDIA share_media, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        q1.a(share_media, umauthlistener);
    }

    static void a(q q1, boolean flag)
    {
        q1.a(flag);
    }

    private void a(boolean flag)
    {
        if (flag)
        {
            n.setVisibility(8);
            o.setVisibility(0);
            return;
        }
        if (m == null)
        {
            n.setImageResource(ResContainer.getResourceId(j, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_location_off"));
            n.setVisibility(0);
            o.setVisibility(8);
            return;
        } else
        {
            n.setImageResource(ResContainer.getResourceId(j, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_location_on"));
            n.setVisibility(0);
            o.setVisibility(8);
            return;
        }
    }

    static boolean a(q q1, String s1, SHARE_MEDIA share_media)
    {
        return q1.a(s1, share_media);
    }

    private boolean a(String s1, SHARE_MEDIA share_media)
    {
        if (s.containsKey(share_media))
        {
            ((a)s.get(share_media)).a(s1);
            return true;
        } else
        {
            return false;
        }
    }

    static LinearLayout b(q q1)
    {
        return q1.p;
    }

    static boolean b()
    {
        return c;
    }

    private void c()
    {
        Log.d(b, "initLocationProvider.....");
        l = new com.umeng.socialize.location.a();
        d d1 = new d();
        d1.a(j);
        l.a(d1);
        l.a(j);
    }

    static void c(q q1)
    {
        q1.g();
    }

    static SocializeConfig d(q q1)
    {
        return q1.r;
    }

    private void d()
    {
        getWindow().setSoftInputMode(16);
        setContentView(ResContainer.getResourceId(j, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_post_comment"));
        android.view.WindowManager.LayoutParams layoutparams = getWindow().getAttributes();
        int i1;
        if (SocializeUtils.isFloatWindowStyle(j))
        {
            int ai[] = SocializeUtils.getFloatWindowSize(j);
            layoutparams.width = ai[0];
            layoutparams.height = ai[1];
            i1 = ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.STYLE, "umeng_socialize_dialog_anim_fade");
        } else
        {
            layoutparams.height = -1;
            layoutparams.width = -1;
            i1 = ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.STYLE, "umeng_socialize_dialog_animations");
        }
        getWindow().getAttributes().windowAnimations = i1;
        getWindow().setAttributes(layoutparams);
        f = (EditText)findViewById(ResContainer.getResourceId(j, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_post_comment_edittext"));
        n = (ImageButton)findViewById(ResContainer.getResourceId(j, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_location_ic"));
        o = findViewById(ResContainer.getResourceId(j, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_location_progressbar"));
        n.setOnClickListener(new r(this));
        p = (LinearLayout)findViewById(ResContainer.getResourceId(j, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_post_ws_area"));
        d = (Button)findViewById(ResContainer.getResourceId(j, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_leftBt"));
        d.setOnClickListener(new s(this));
        e = (Button)findViewById(ResContainer.getResourceId(j, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_rightBt"));
        ((TextView)findViewById(ResContainer.getResourceId(j, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_middleTv"))).setText("\u65B0\u8BC4\u8BBA");
        a = (ImageView)findViewById(ResContainer.getResourceId(j, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_post_comment_previewImg"));
        i = new ProgressDialog(j);
        i.setProgressStyle(0);
        i.setMessage("\u53D1\u9001\u4E2D...");
        i.setCancelable(false);
        g = new t(this);
        e.setOnClickListener(new u(this));
        findViewById(ResContainer.getResourceId(j, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_post_comment_fetch_img")).setOnClickListener(j.getReceiveImageClick());
    }

    static ProgressDialog e(q q1)
    {
        return q1.i;
    }

    private void e()
    {
        SHARE_MEDIA ashare_media[];
        UMComment umcomment;
        Set set;
        umcomment = f();
        if (umcomment == null)
        {
            return;
        }
        set = s.keySet();
        ashare_media = new ArrayList();
        if (set == null) goto _L2; else goto _L1
_L1:
        byte abyte0[] = set.iterator();
_L8:
        if (abyte0.hasNext()) goto _L3; else goto _L2
_L2:
        k = ashare_media.size();
        if (k <= 0) goto _L5; else goto _L4
_L4:
        Object obj;
        abyte0 = h.getShareContent();
        if (!TextUtils.isEmpty(abyte0))
        {
            umcomment.mSignature = abyte0;
        }
        abyte0 = j.getImageBytes();
        obj = h.getMedia();
        if (abyte0 == null) goto _L7; else goto _L6
_L6:
        umcomment.setMediaData(new UMRichMedia(abyte0, com.umeng.socialize.media.UMediaObject.MediaType.IMAGE));
_L5:
        UMRichMedia umrichmedia;
        Exception exception;
        if (ashare_media.size() > 0)
        {
            ashare_media = (SHARE_MEDIA[])ashare_media.toArray(new SHARE_MEDIA[ashare_media.size()]);
        } else
        {
            ashare_media = null;
        }
        q.postComment(j, umcomment, g, ashare_media);
        return;
_L3:
        obj = (SHARE_MEDIA)abyte0.next();
        if (((a)s.get(obj)).a())
        {
            ashare_media.add(obj);
        }
          goto _L8
_L7:
        umrichmedia = UMRichMedia.toUMRichMedia((BaseMediaObject)obj);
        if (umrichmedia != null)
        {
            try
            {
                umcomment.setMediaData(umrichmedia);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                Log.w(b, "can`t set media.", exception);
            }
        }
          goto _L5
    }

    private UMComment f()
    {
        UMComment umcomment = null;
        String s1 = f.getText().toString();
        if (TextUtils.isEmpty(s1.trim()))
        {
            Toast.makeText(j, "\u8F93\u5165\u5185\u5BB9\u4E3A\u7A7A...", 0).show();
        } else
        {
            if (SocializeUtils.countContentLength(s1) > 140)
            {
                Toast.makeText(j, "\u8F93\u5165\u5185\u5BB9\u8D85\u8FC7140\u4E2A\u5B57\uFF0C\u65E0\u6CD5\u53D1\u9001\u3002", 0).show();
                return null;
            }
            UMComment umcomment1 = new UMComment();
            umcomment1.mText = s1;
            umcomment = umcomment1;
            if (m != null)
            {
                umcomment1.mLocation = UMLocation.build(m);
                return umcomment1;
            }
        }
        return umcomment;
    }

    static UMSocialService f(q q1)
    {
        return q1.q;
    }

    static CommentActivity g(q q1)
    {
        return q1.j;
    }

    private void g()
    {
        if (m != null)
        {
            (new android.app.AlertDialog.Builder(j)).setMessage("\u662F\u5426\u5220\u9664\u4F4D\u7F6E\u4FE1\u606F\uFF1F").setCancelable(false).setPositiveButton("\u662F", new w(this)).setNegativeButton("\u5426", new x(this)).create().show();
            return;
        } else
        {
            h();
            return;
        }
    }

    static int h(q q1)
    {
        return q1.k;
    }

    private void h()
    {
        (new y(this, l)).execute(new Void[0]);
    }

    static EditText i(q q1)
    {
        return q1.f;
    }

    static void j(q q1)
    {
        q1.e();
    }

    public void a()
    {
        a.setImageDrawable(null);
        a.setVisibility(8);
    }

    public void a(Bitmap bitmap)
    {
        a.setImageBitmap(bitmap);
        a.setVisibility(0);
    }

    public void dismiss()
    {
        if (l != null)
        {
            l.a();
        }
        super.dismiss();
    }

}
