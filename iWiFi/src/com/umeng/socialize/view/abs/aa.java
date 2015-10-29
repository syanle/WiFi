// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.umeng.socialize.bean.SnsAccount;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.view.controller.UserCenterController;
import com.umeng.socialize.view.wigets.SwitchImageView;
import com.umeng.socom.util.i;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.umeng.socialize.view.abs:
//            ab, ah, ag, ai, 
//            aj, al, ac, ad, 
//            af

public class aa extends RelativeLayout
{
    private static class a
    {

        SwitchImageView a;
        TextView b;
        ImageView c;

        public a(SwitchImageView switchimageview, TextView textview, ImageView imageview)
        {
            a = switchimageview;
            b = textview;
            c = imageview;
        }
    }


    private static final String b = com/umeng/socialize/view/abs/aa.getName();
    public View a;
    private UserCenterController c;
    private Context d;
    private LinearLayout e;
    private ImageView f;
    private TextView g;
    private TextView h;
    private TextView i;
    private UserCenterItems.b j;
    private View k;
    private View l;
    private View m;
    private ViewFlipper n;
    private String o;
    private String p;
    private int q;
    private int r;
    private Map s;

    public aa(Context context, UserCenterController usercentercontroller, int i1)
    {
        super(context);
        d = context;
        c = usercentercontroller;
        q = i1;
        e();
        context = new ab(this);
        c.a(context);
    }

    static UserCenterController a(aa aa1)
    {
        return aa1.c;
    }

    private void a(SnsPlatform snsplatform, TextView textview)
    {
        if (snsplatform.mOauth)
        {
            if (snsplatform.mAccount != null && !TextUtils.isEmpty(snsplatform.mAccount.getUserName()))
            {
                textview.setText(snsplatform.mAccount.getUserName());
                return;
            } else
            {
                textview.setText(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_authorize"));
                return;
            }
        } else
        {
            textview.setText(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_unauthorize"));
            return;
        }
    }

    static void a(aa aa1, SwitchImageView switchimageview, boolean flag)
    {
        aa1.a(switchimageview, flag);
    }

    private void a(SwitchImageView switchimageview, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        com.umeng.socialize.view.wigets.SwitchImageView.OnCheckedChangeListener oncheckedchangelistener = switchimageview.a();
        if (oncheckedchangelistener == null) goto _L2; else goto _L1
_L1:
        switchimageview.a(null);
        switchimageview.a(flag);
        switchimageview.a(oncheckedchangelistener);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        switchimageview.a(flag);
        if (true) goto _L4; else goto _L3
_L3:
        switchimageview;
        throw switchimageview;
    }

    static ViewFlipper b(aa aa1)
    {
        return aa1.n;
    }

    static TextView c(aa aa1)
    {
        return aa1.g;
    }

    static TextView d(aa aa1)
    {
        return aa1.i;
    }

    static String e(aa aa1)
    {
        return aa1.o;
    }

    private void e()
    {
        View view = View.inflate(d, ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_ucenter"), null);
        k = view.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_leftBt"));
        view.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_rightBt")).setVisibility(8);
        ((TextView)view.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_middleTv"))).setText(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_ucenter"));
        e = (LinearLayout)view.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_share_config_area"));
        c();
        addView(view, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        m = view.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_ucenter_info"));
        if (16 == (q & 0xf0))
        {
            m.setVisibility(8);
        }
        Object obj = view.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_share_area"));
        if (32 == (q & 0xf0))
        {
            ((View) (obj)).setVisibility(8);
        }
        f = (ImageView)view.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_ic"));
        g = (TextView)view.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_loginNm"));
        h = (TextView)view.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_loginAddr"));
        n = (ViewFlipper)view.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_login_switch"));
        i = (TextView)view.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_tv"));
        o = d.getString(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_ucenter_login_title_guide"));
        p = d.getString(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_ucenter_login_title_platform"));
        i.setText(p);
        view.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_loginButton")).setOnClickListener(new ah(this, new ag(this)));
        a = View.inflate(d, ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_full_curtain"), null);
        obj = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        addView(a, ((android.view.ViewGroup.LayoutParams) (obj)));
        a.setClickable(false);
        a.setOnTouchListener(new ai(this));
        j = new aj(this, d);
        l = view.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_load_error"));
        l.setVisibility(8);
        l.setOnClickListener(new al(this));
    }

    static View f(aa aa1)
    {
        return aa1.m;
    }

    static View g(aa aa1)
    {
        return aa1.l;
    }

    static int h(aa aa1)
    {
        return aa1.r;
    }

    static Map i(aa aa1)
    {
        return aa1.s;
    }

    static UserCenterItems.b j(aa aa1)
    {
        return aa1.j;
    }

    static Context k(aa aa1)
    {
        return aa1.d;
    }

    public void a()
    {
        l.setVisibility(8);
        r = m.getVisibility();
        m.setVisibility(0);
        c.a(new ac(this));
    }

    public void a(android.view.View.OnClickListener onclicklistener)
    {
        k.setOnClickListener(onclicklistener);
    }

    protected void a(SnsAccount snsaccount)
    {
        if (snsaccount != null)
        {
            g.setText(snsaccount.getUserName());
            Object obj = snsaccount.getAccountIconUrl();
            if (!TextUtils.isEmpty(((CharSequence) (obj))))
            {
                int i1 = ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_default_avatar");
                obj = (new com.umeng.socialize.common.SocialResHelper.a(d, f, ((String) (obj)))).a(i1).a(true);
                String s1 = snsaccount.getPlatform();
                if (s1 != null && "qzone".equals(s1))
                {
                    ((com.umeng.socialize.common.SocialResHelper.a) (obj)).a(com.umeng.socialize.common.SocialResHelper.LoadMode.LOAD_NETWORK_ELSE_CACHE);
                }
                ((com.umeng.socialize.common.SocialResHelper.a) (obj)).a();
            }
            h.setText(snsaccount.getProfileUrl());
            i.setText(p);
        }
    }

    protected void b()
    {
        Iterator iterator = s.keySet().iterator();
        do
        {
            SnsPlatform snsplatform;
            a a1;
            SwitchImageView switchimageview;
            do
            {
                if (!iterator.hasNext())
                {
                    invalidate();
                    return;
                }
                snsplatform = (SnsPlatform)iterator.next();
                a1 = (a)s.get(snsplatform);
                switchimageview = a1.a;
                TextView textview = a1.b;
                switchimageview.a = true;
                switchimageview.a(snsplatform.mOauth);
                switchimageview.a = false;
                Log.d(b, (new StringBuilder("set oauth status ")).append(snsplatform.mShowWord).append("  ").append(snsplatform.mOauth).toString());
                a(snsplatform, textview);
            } while (a1.a.a() != null);
            switchimageview.a(new ad(this, switchimageview, snsplatform));
            switchimageview.setOnTouchListener(new af(this, switchimageview));
        } while (true);
    }

    public void c()
    {
        List list = c.a();
        s = new HashMap();
        new i(d);
        int j1 = com.umeng.socom.util.i.a(46F);
        int i1 = 0;
        do
        {
            if (i1 >= list.size())
            {
                return;
            }
            SnsPlatform snsplatform = (SnsPlatform)list.get(i1);
            View view = View.inflate(d, ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_ucenter_platform_item"), null);
            TextView textview = (TextView)view.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_msg"));
            ImageView imageview = (ImageView)view.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_icon"));
            SwitchImageView switchimageview;
            if (snsplatform.mOauth)
            {
                imageview.setImageResource(snsplatform.mIcon);
            } else
            {
                imageview.setImageResource(snsplatform.mGrayIcon);
            }
            switchimageview = (SwitchImageView)view.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_toggle"));
            switchimageview.b();
            textview.setText(snsplatform.mShowWord);
            if (i1 == list.size() - 1)
            {
                ViewGroup viewgroup = (ViewGroup)view;
                View view1 = viewgroup.findViewById(ResContainer.getResourceId(d, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_divider"));
                if (view1 != null)
                {
                    viewgroup.removeView(view1);
                }
            }
            s.put(snsplatform, new a(switchimageview, textview, imageview));
            e.addView(view, new android.widget.RelativeLayout.LayoutParams(-1, j1));
            i1++;
        } while (true);
    }

    public void d()
    {
        if (s == null || s.size() <= 0) goto _L2; else goto _L1
_L1:
        Iterator iterator = s.values().iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        a a1 = (a)iterator.next();
        if (a1.a.a)
        {
            a1.a.a = false;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

}
