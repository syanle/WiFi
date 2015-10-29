// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.TextView;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.media.UMediaObject;
import com.umeng.socialize.view.abs.BaseComentActivity;
import com.umeng.socialize.view.wigets.PullToRefreshListView;
import com.umeng.socom.util.i;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.view:
//            j, ci, k, l, 
//            m, n, q, i, 
//            c, e, f, d

public class CommentActivity extends BaseComentActivity
{

    protected static final String a = com/umeng/socialize/view/CommentActivity.getName();
    private String A;
    private String B;
    private String C;
    private String D;
    private String E;
    private String F;
    private String G;
    Map b;
    int c;
    boolean d;
    private Button k;
    private Button l;
    private TextView m;
    public List mCommentsData;
    private PullToRefreshListView n;
    private View o;
    private View p;
    private ci q;
    private BaseAdapter r;
    private int s;
    private q t;
    private String u;
    private String v;
    private String w;
    private String x;
    private String y;
    private String z;

    public CommentActivity()
    {
        s = 10;
        u = "contentLayout";
        v = "comment_item_name";
        w = "comment_item_content";
        x = "comment_item_layout";
        y = "comment_item_time";
        z = "comment_item_has_location";
        A = "comment_list";
        B = "comment_list_progress";
        C = "comment_write";
        D = "title_bar_leftBt";
        E = "title_bar_rightBt";
        F = "title_bar_middleTv";
        G = "comment_avatar";
        c = -1;
        d = false;
    }

    static void a(CommentActivity commentactivity)
    {
        commentactivity.f();
    }

    static void a(CommentActivity commentactivity, q q1)
    {
        commentactivity.t = q1;
    }

    private void b()
    {
        n = (PullToRefreshListView)findViewById(((com.umeng.socialize.common.ResContainer.a)b.get(A)).d);
        o = findViewById(((com.umeng.socialize.common.ResContainer.a)b.get(B)).d);
        p = findViewById(((com.umeng.socialize.common.ResContainer.a)b.get(C)).d);
        q = new j(this, this);
        int i1 = ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.COLOR, "umeng_socialize_comments_bg");
        q.setBackgroundColor(getResources().getColor(i1));
        q.a(ci.a.a);
        k = (Button)findViewById(((com.umeng.socialize.common.ResContainer.a)b.get(D)).d);
        k.setOnClickListener(new k(this));
        l = (Button)findViewById(((com.umeng.socialize.common.ResContainer.a)b.get(E)).d);
        l.setVisibility(8);
        m = (TextView)findViewById(((com.umeng.socialize.common.ResContainer.a)b.get(F)).d);
        m.setText("\u8BC4\u8BBA\u5217\u8868");
        p.setOnClickListener(new l(this));
        n.setOnRefreshListener(new m(this));
        n.setOnItemClickListener(new n(this));
    }

    static void b(CommentActivity commentactivity)
    {
        commentactivity.c();
    }

    static ci c(CommentActivity commentactivity)
    {
        return commentactivity.q;
    }

    private void c()
    {
        boolean flag = false;
        int i1;
        if (mCommentsData == null)
        {
            i1 = 0;
        } else
        {
            i1 = mCommentsData.size();
        }
        if (i1 < s)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (i1 != 0)
        {
            q.a(ci.a.a);
        } else
        if (mCommentsData == null || mCommentsData.size() > c)
        {
            q.a(ci.a.c);
        } else
        {
            d = true;
            q.a(ci.a.d);
        }
        i1 = ((flag) ? 1 : 0);
        if (mCommentsData != null)
        {
            i1 = mCommentsData.size();
        }
        c = i1;
    }

    static String d(CommentActivity commentactivity)
    {
        return commentactivity.x;
    }

    private void d()
    {
        n.setVisibility(8);
        o.setVisibility(0);
    }

    static String e(CommentActivity commentactivity)
    {
        return commentactivity.v;
    }

    static String f(CommentActivity commentactivity)
    {
        return commentactivity.w;
    }

    private void f()
    {
        n.setVisibility(0);
        o.setVisibility(8);
    }

    static String g(CommentActivity commentactivity)
    {
        return commentactivity.G;
    }

    static String h(CommentActivity commentactivity)
    {
        return commentactivity.y;
    }

    static String i(CommentActivity commentactivity)
    {
        return commentactivity.z;
    }

    static com.umeng.socialize.view.abs.BaseComentActivity.FetchDataListener j(CommentActivity commentactivity)
    {
        return commentactivity.h;
    }

    static PullToRefreshListView k(CommentActivity commentactivity)
    {
        return commentactivity.n;
    }

    static SocializeEntity l(CommentActivity commentactivity)
    {
        return commentactivity.f;
    }

    static q m(CommentActivity commentactivity)
    {
        return commentactivity.t;
    }

    protected void a()
    {
        t.a();
    }

    protected void a(Bitmap bitmap)
    {
        if (bitmap != null && t != null && t.isShowing())
        {
            t.a(bitmap);
        }
    }

    public void commentsChanged()
    {
        Log.d(a, "changeComments.......");
        String s1;
        if (n.getAdapter() == null)
        {
            new i(this);
            android.widget.AbsListView.LayoutParams layoutparams = new android.widget.AbsListView.LayoutParams(-1, com.umeng.socom.util.i.a(55F));
            q.setLayoutParams(layoutparams);
            if (mCommentsData != null && mCommentsData.size() > 0)
            {
                Log.d(a, mCommentsData.toString());
            }
            n.addFooterView(q);
            n.setAdapter(r);
        } else
        {
            r.notifyDataSetChanged();
        }
        n.onRefreshCompleteKeepState();
        s1 = (new StringBuilder("\u66F4\u65B0\u4E8E\uFF1A")).append((new SimpleDateFormat("yyyy-MM-dd HH:mm")).format(Long.valueOf(System.currentTimeMillis()))).toString();
        n.setLastUpdated(s1);
        if (n.getFirstVisiblePosition() == 0)
        {
            n.setSelection(1);
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        if (keyevent.getKeyCode() == 4)
        {
            finish();
        }
        return super.dispatchKeyEvent(keyevent);
    }

    public BaseAdapter getAdapter()
    {
        new i(this);
        int i1 = com.umeng.socom.util.i.a(80F);
        return new com.umeng.socialize.view.i(this, ResContainer.getResourceId(this, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_default_avatar"), i1);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        bundle = new HashMap();
        bundle.put(u, new com.umeng.socialize.common.ResContainer.a(com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_comment_view"));
        bundle.put(x, new com.umeng.socialize.common.ResContainer.a(com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_comment_item"));
        bundle.put(v, new com.umeng.socialize.common.ResContainer.a(com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_item_name"));
        bundle.put(w, new com.umeng.socialize.common.ResContainer.a(com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_item_content"));
        bundle.put(y, new com.umeng.socialize.common.ResContainer.a(com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_item_time"));
        bundle.put(z, new com.umeng.socialize.common.ResContainer.a(com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_item_has_location"));
        bundle.put(A, new com.umeng.socialize.common.ResContainer.a(com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_list"));
        bundle.put(B, new com.umeng.socialize.common.ResContainer.a(com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_list_progress"));
        bundle.put(C, new com.umeng.socialize.common.ResContainer.a(com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_write"));
        bundle.put(D, new com.umeng.socialize.common.ResContainer.a(com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_leftBt"));
        bundle.put(E, new com.umeng.socialize.common.ResContainer.a(com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_rightBt"));
        bundle.put(F, new com.umeng.socialize.common.ResContainer.a(com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_middleTv"));
        bundle.put(G, new com.umeng.socialize.common.ResContainer.a(com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_comment_avatar"));
        b = (new c(this, this, bundle)).a();
        setContentView(((com.umeng.socialize.common.ResContainer.a)b.get(u)).d);
        bundle = f.getMedia();
        e e1 = new e(this, bundle);
        if (bundle != null && !bundle.isUrlMedia())
        {
            bundle.toByte(e1);
        }
        b();
        r = getAdapter();
        h = new f(this);
        fetchFormNet(h, -1L);
    }

    protected void onResume()
    {
        super.onResume();
    }

    protected void onStop()
    {
        super.onStop();
    }

    public void reflushData()
    {
        fetchFormNet(new d(this), -1L);
    }

}
