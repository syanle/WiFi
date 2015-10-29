// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.umeng.socialize.bean.UMComment;
import com.umeng.socialize.common.SocializeConstants;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socom.net.p;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.view:
//            CommentActivity

class i extends BaseAdapter
{

    final CommentActivity a;
    private final int b;
    private final int c;

    i(CommentActivity commentactivity, int j, int k)
    {
        a = commentactivity;
        b = j;
        c = k;
        super();
    }

    public int getCount()
    {
        if (a.mCommentsData == null)
        {
            return 0;
        } else
        {
            return a.mCommentsData.size();
        }
    }

    public Object getItem(int j)
    {
        return null;
    }

    public long getItemId(int j)
    {
        return 0L;
    }

    public View getView(int j, View view, ViewGroup viewgroup)
    {
        viewgroup = view;
        if (view == null)
        {
            viewgroup = ((LayoutInflater)a.getSystemService("layout_inflater")).inflate(((com.umeng.socialize.common.ResContainer.a)a.b.get(CommentActivity.d(a))).d, null);
        }
        view = (UMComment)a.mCommentsData.get(j);
        Object obj = (TextView)viewgroup.findViewById(((com.umeng.socialize.common.ResContainer.a)a.b.get(CommentActivity.e(a))).d);
        TextView textview = (TextView)viewgroup.findViewById(((com.umeng.socialize.common.ResContainer.a)a.b.get(CommentActivity.f(a))).d);
        ((TextView) (obj)).setText(((UMComment) (view)).mUname);
        textview.setText(((UMComment) (view)).mText);
        obj = (ImageView)viewgroup.findViewById(((com.umeng.socialize.common.ResContainer.a)a.b.get(CommentActivity.g(a))).d);
        ((ImageView) (obj)).setImageResource(b);
        if (!TextUtils.isEmpty(((UMComment) (view)).mUserIcon))
        {
            p.a(a, ((ImageView) (obj)), ((UMComment) (view)).mUserIcon, false, null, null, SocializeConstants.ROUNDER_ICON);
        }
        ((TextView)viewgroup.findViewById(((com.umeng.socialize.common.ResContainer.a)a.b.get(CommentActivity.h(a))).d)).setText(SocializeUtils.beforeData(a, ((UMComment) (view)).mDt));
        obj = viewgroup.findViewById(((com.umeng.socialize.common.ResContainer.a)a.b.get(CommentActivity.i(a))).d);
        if (((UMComment) (view)).mLocation == null)
        {
            ((View) (obj)).setVisibility(4);
        } else
        {
            ((View) (obj)).setVisibility(0);
        }
        viewgroup.setLayoutParams(new android.widget.AbsListView.LayoutParams(-1, c));
        return viewgroup;
    }
}
