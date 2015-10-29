// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.Context;
import android.text.SpannableString;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.UMFriend;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.view.controller.ShareAtController;
import com.umeng.socialize.view.wigets.SearchBox;
import com.umeng.socialize.view.wigets.SectionListView;
import com.umeng.socialize.view.wigets.SlideBar;
import com.umeng.socialize.view.wigets.b;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view:
//            ShareActivity, ai, ah, ac, 
//            ad, ae, af, ag

public class ab extends FrameLayout
{

    public static boolean b = true;
    private static final String c = com/umeng/socialize/view/ab.getName();
    public boolean a;
    private ShareActivity d;
    private Button e;
    private Button f;
    private ProgressBar g;
    private View h;
    private List i;
    private List j;
    private SearchBox k;
    private SlideBar l;
    private ShareAtController m;
    private b n;

    public ab(Context context)
    {
        super(context);
        a = false;
        e();
    }

    public ab(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = false;
        e();
    }

    public ab(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        a = false;
        e();
    }

    static Button a(ab ab1)
    {
        return ab1.e;
    }

    private void a(UMFriend umfriend)
    {
        umfriend.setLastAtTime(System.currentTimeMillis());
        umfriend.getName();
        Object obj = umfriend.getLinkName();
        obj = new SpannableString((new StringBuilder("@")).append(((String) (obj))).append(" ").toString());
        d.inputAt(((SpannableString) (obj)));
        (new Thread(new ai(this, umfriend))).start();
        a();
    }

    static void a(ab ab1, UMFriend umfriend)
    {
        ab1.a(umfriend);
    }

    static void a(ab ab1, List list)
    {
        ab1.i = list;
    }

    private void a(SearchBox searchbox)
    {
        if (searchbox != null)
        {
            searchbox.setText("");
            searchbox.clearFocus();
            searchbox.setInputType(0);
            InputMethodManager inputmethodmanager = (InputMethodManager)getContext().getSystemService("input_method");
            inputmethodmanager.hideSoftInputFromWindow(k.getWindowToken(), 0);
            searchbox.setOnTouchListener(new ah(this, searchbox, inputmethodmanager));
        }
    }

    static b b(ab ab1)
    {
        return ab1.n;
    }

    static void b(ab ab1, List list)
    {
        ab1.j = list;
    }

    static ShareAtController c(ab ab1)
    {
        return ab1.m;
    }

    static SlideBar d(ab ab1)
    {
        return ab1.l;
    }

    static String d()
    {
        return c;
    }

    static List e(ab ab1)
    {
        return ab1.i;
    }

    private void e()
    {
        Object obj = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_at_view"), this, false);
        ((View) (obj)).setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
        addView(((View) (obj)));
        e = (Button)findViewById(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_leftBt"));
        e.setBackgroundResource(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_action_back"));
        e.setOnClickListener(new ac(this));
        f = (Button)findViewById(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_rightBt"));
        f.setBackgroundResource(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_refersh"));
        f.setVisibility(0);
        f.setOnClickListener(new ad(this));
        g = (ProgressBar)findViewById(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_rightBt_progress"));
        h = findViewById(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_progress"));
        obj = (TextView)findViewById(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_middleTv"));
        ((TextView) (obj)).setVisibility(0);
        ((TextView) (obj)).setText(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_friend_list"));
        findViewById(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_middle_tab")).setVisibility(8);
        l = (SlideBar)findViewById(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.ID, "slideBar"));
    }

    static List f(ab ab1)
    {
        return ab1.j;
    }

    private void f()
    {
        l.setVisibility(4);
        h.setVisibility(0);
    }

    static ProgressBar g(ab ab1)
    {
        return ab1.g;
    }

    static Button h(ab ab1)
    {
        return ab1.f;
    }

    static SearchBox i(ab ab1)
    {
        return ab1.k;
    }

    public void a()
    {
    }

    public void a(ShareActivity shareactivity, SHARE_MEDIA share_media, String s)
    {
        d = shareactivity;
        m = new ShareAtController(d, share_media, s);
        m.a(new ae(this));
        a = true;
    }

    public void b()
    {
        a(k);
        f();
        m.a();
        e.setClickable(true);
    }

    protected void c()
    {
        if (d.isFinishing())
        {
            return;
        }
        n = new b(d, i, j);
        SectionListView sectionlistview = (SectionListView)findViewById(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.ID, "listView"));
        sectionlistview.setVerticalScrollBarEnabled(false);
        sectionlistview.setAdapter(n);
        if (b)
        {
            l.setVisibility(0);
        }
        h.setVisibility(8);
        sectionlistview.setPinnedHeaderView(LayoutInflater.from(d).inflate(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_composer_header"), sectionlistview, false));
        sectionlistview.setOnItemClickListener(new af(this));
        TextView textview = (TextView)View.inflate(d, ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_at_overlay"), null);
        d.getWindowManager().addView(textview, new android.view.WindowManager.LayoutParams(-2, -2, 2, 24, -3));
        l.setOverlay(textview);
        l.setListView(sectionlistview);
        k = (SearchBox)findViewById(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.ID, "search_text"));
        k.setListView(sectionlistview);
        a(k);
        k.setSearchResultListener(new ag(this));
    }

}
