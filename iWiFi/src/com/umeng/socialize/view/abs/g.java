// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.umeng.socialize.bean.LIKESTATUS;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.view.a;

// Referenced classes of package com.umeng.socialize.view.abs:
//            a, h, i, k, 
//            m, n, o, p, 
//            r

public abstract class g extends com.umeng.socialize.view.abs.a
{

    private View d;
    private View e;
    private View f;
    private View g;
    private View h;
    private View i;
    private View j;
    private ImageView k;
    private ImageView l;
    private ImageView m;
    private ImageView n;
    private TextView o;
    private TextView p;
    private TextView q;
    private TextView r;
    private Activity s;

    public g(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        s = null;
    }

    public g(Context context, String s1)
    {
        super(context, s1);
        s = null;
        s = (Activity)context;
    }

    static View a(g g1)
    {
        return g1.d;
    }

    static View b(g g1)
    {
        return g1.e;
    }

    static View c(g g1)
    {
        return g1.f;
    }

    static View d(g g1)
    {
        return g1.h;
    }

    static Activity e(g g1)
    {
        return g1.s;
    }

    static ImageView f(g g1)
    {
        return g1.l;
    }

    static ImageView g(g g1)
    {
        return g1.m;
    }

    static View h(g g1)
    {
        return g1.i;
    }

    private void h()
    {
        j = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_actionbar"), null);
        Context context = getContext();
        f = j.findViewById(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_like_bt"));
        e = j.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_like_bt_show"));
        d = j.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_like_bt_progress"));
        k = (ImageView)j.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_like_icon"));
        l = (ImageView)j.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_action_share_im"));
        m = (ImageView)j.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_action_comment_im"));
        o = (TextView)j.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_action_like_tv"));
        p = (TextView)j.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_action_share_tv"));
        q = (TextView)j.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_action_comment_tv"));
        r = (TextView)j.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_action_pv_tv"));
        g = j.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_bt"));
        h = j.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_share_bt"));
        i = j.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_user_center_bt"));
        n = (ImageView)j.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_action_user_center_im"));
    }

    static ImageView i(g g1)
    {
        return g1.n;
    }

    public View getErrorView()
    {
        RelativeLayout relativelayout = new RelativeLayout(getContext());
        relativelayout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        relativelayout.setBackgroundResource(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_actionbar_bg"));
        TextView textview = new TextView(getContext());
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        layoutparams.addRule(13);
        textview.setGravity(17);
        textview.setTextSize(2, 16F);
        textview.setText("\u7F51\u7EDC\u5F02\u5E38\uFF0C\u6570\u636E\u52A0\u8F7D\u5931\u8D25");
        relativelayout.addView(textview, layoutparams);
        return relativelayout;
    }

    public View getLoadingView()
    {
        a a1 = new a(getContext());
        a1.a(getActivity());
        return a1;
    }

    public View getView()
    {
        if (j != null)
        {
            onViewUpdate();
            return j;
        } else
        {
            h();
            onViewUpdate();
            Handler handler = new Handler();
            h h1 = new h(this, (com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener[])b.getConfig().getListener(com/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener));
            f.setOnClickListener(new i(this, handler, h1));
            h.setOnClickListener(new k(this, handler));
            h.setOnTouchListener(new m(this));
            g.setOnClickListener(new n(this));
            g.setOnTouchListener(new o(this));
            i.setOnClickListener(new p(this, handler));
            i.setOnTouchListener(new r(this));
            return j;
        }
    }

    public void onViewUpdate()
    {
        super.onViewUpdate();
        Log.d("com.umeng.view.SocialView", "actionbar onViewUpdate.");
        SocializeEntity socializeentity = b.getEntity();
        if (socializeentity == null)
        {
            return;
        }
        if (j == null)
        {
            h();
        }
        if (socializeentity.getLikeStatus() == LIKESTATUS.LIKE)
        {
            k.setImageResource(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_action_like"));
        } else
        {
            k.setImageResource(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_action_unlike"));
        }
        o.setText(String.valueOf(socializeentity.getLikeCount()));
        p.setText(String.valueOf(socializeentity.getShareCount()));
        q.setText(String.valueOf(socializeentity.getCommentCount()));
        r.setText(String.valueOf(socializeentity.getPv()));
    }
}
