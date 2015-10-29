// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.app.Dialog;
import android.os.Bundle;
import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.UMFriend;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.view.controller.ShareAtController;
import com.umeng.socialize.view.wigets.SearchBox;
import com.umeng.socialize.view.wigets.SectionListView;
import com.umeng.socialize.view.wigets.SlideBar;
import com.umeng.socialize.view.wigets.b;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view:
//            bx, ShareActivity, cd, cc, 
//            ca, cb, by, bz

public class bw extends Dialog
{

    private ShareActivity a;
    private Button b;
    private Button c;
    private ProgressBar d;
    private View e;
    private List f;
    private List g;
    private SearchBox h;
    private SlideBar i;
    private ShareAtController j;
    private b k;

    public bw(ShareActivity shareactivity, SHARE_MEDIA share_media, String s)
    {
        super(shareactivity, 0x1030010);
        a = shareactivity;
        j = new ShareAtController(a, share_media, s);
        j.a(new bx(this));
    }

    static b a(bw bw1)
    {
        return bw1.k;
    }

    private void a(UMFriend umfriend)
    {
        umfriend.setLastAtTime(System.currentTimeMillis());
        umfriend.getName();
        Object obj = umfriend.getLinkName();
        obj = new SpannableString((new StringBuilder("@")).append(((String) (obj))).append(" ").toString());
        a.inputAt(((SpannableString) (obj)));
        (new Thread(new cd(this, umfriend))).start();
        SocializeUtils.safeDismissDialog(this);
    }

    static void a(bw bw1, UMFriend umfriend)
    {
        bw1.a(umfriend);
    }

    static void a(bw bw1, List list)
    {
        bw1.f = list;
    }

    private void a(SearchBox searchbox)
    {
        if (searchbox != null)
        {
            searchbox.setText("");
            searchbox.clearFocus();
            searchbox.setInputType(0);
            InputMethodManager inputmethodmanager = (InputMethodManager)a.getSystemService("input_method");
            inputmethodmanager.hideSoftInputFromWindow(h.getWindowToken(), 0);
            searchbox.setOnTouchListener(new cc(this, searchbox, inputmethodmanager));
        }
    }

    static SlideBar b(bw bw1)
    {
        return bw1.i;
    }

    private void b()
    {
        setContentView(ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_at_view"));
        Object obj = getWindow().getAttributes();
        obj.height = -1;
        obj.width = -1;
        obj.softInputMode = 32;
        getWindow().setAttributes(((android.view.WindowManager.LayoutParams) (obj)));
        b = (Button)findViewById(ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_leftBt"));
        b.setBackgroundResource(ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_action_back"));
        b.setOnClickListener(new ca(this));
        c = (Button)findViewById(ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_rightBt"));
        c.setBackgroundResource(ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_refersh"));
        c.setVisibility(0);
        c.setVisibility(0);
        c.setOnClickListener(new cb(this));
        d = (ProgressBar)findViewById(ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_rightBt_progress"));
        e = findViewById(ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_progress"));
        obj = (TextView)findViewById(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_middleTv"));
        ((TextView) (obj)).setVisibility(0);
        ((TextView) (obj)).setText("\u597D\u53CB\u5217\u8868");
        findViewById(ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_middle_tab")).setVisibility(8);
        i = (SlideBar)findViewById(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.ID, "slideBar"));
    }

    static void b(bw bw1, List list)
    {
        bw1.g = list;
    }

    static List c(bw bw1)
    {
        return bw1.f;
    }

    private void c()
    {
        i.setVisibility(4);
        e.setVisibility(0);
    }

    static List d(bw bw1)
    {
        return bw1.g;
    }

    static ProgressBar e(bw bw1)
    {
        return bw1.d;
    }

    static Button f(bw bw1)
    {
        return bw1.c;
    }

    static ShareActivity g(bw bw1)
    {
        return bw1.a;
    }

    static Button h(bw bw1)
    {
        return bw1.b;
    }

    static ShareAtController i(bw bw1)
    {
        return bw1.j;
    }

    static SearchBox j(bw bw1)
    {
        return bw1.h;
    }

    protected void a()
    {
        if (a.isFinishing())
        {
            return;
        } else
        {
            k = new b(a, f, g);
            SectionListView sectionlistview = (SectionListView)findViewById(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.ID, "listView"));
            sectionlistview.setVerticalScrollBarEnabled(false);
            sectionlistview.setAdapter(k);
            i.setVisibility(0);
            e.setVisibility(8);
            sectionlistview.setPinnedHeaderView(LayoutInflater.from(a).inflate(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_composer_header"), sectionlistview, false));
            sectionlistview.setOnItemClickListener(new by(this));
            TextView textview = (TextView)View.inflate(a, ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_at_overlay"), null);
            a.getWindowManager().addView(textview, new android.view.WindowManager.LayoutParams(-2, -2, 2, 24, -3));
            i.setOverlay(textview);
            i.setListView(sectionlistview);
            h = (SearchBox)findViewById(ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.ID, "search_text"));
            h.setListView(sectionlistview);
            a(h);
            h.setSearchResultListener(new bz(this));
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getWindow().getAttributes().windowAnimations = ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.STYLE, "umeng_socialize_dialog_animations");
        b();
    }

    public void show()
    {
        super.show();
        a(h);
        c();
        j.a();
        b.setClickable(true);
    }
}
