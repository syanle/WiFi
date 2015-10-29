// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.umeng.socialize.bean.UMFriend;
import com.umeng.socialize.view.wigets.SlideBar;
import com.umeng.socialize.view.wigets.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view:
//            bw

class bx
    implements com.umeng.socialize.view.controller.ShareAtController.ASyncLifeListener
{

    final bw a;

    bx(bw bw1)
    {
        a = bw1;
        super();
    }

    public void a()
    {
        bw.e(a).setVisibility(0);
        bw.f(a).setVisibility(4);
    }

    public void a(List list)
    {
        int i = bw.a(a).getCount();
        bw.a(a, new ArrayList(list));
        if (com.umeng.socialize.view.bw.b(a) != null)
        {
            bw.a(a).a(bw.c(a), bw.d(a));
        }
        bw.a(a).notifyDataSetChanged();
        com.umeng.socialize.view.bw.b(a).updateAlphabet(bw.a(a).a());
        int j = bw.a(a).getCount();
        bw.e(a).setVisibility(8);
        bw.f(a).setVisibility(0);
        Toast.makeText(bw.g(a), (new StringBuilder("\u5DF2\u6210\u529F\u66F4\u65B0 ")).append(j - i).append(" \u4E2A\u597D\u53CB. ").toString(), 0).show();
    }

    public void b()
    {
        bw.e(a).setVisibility(8);
        bw.f(a).setVisibility(0);
        Toast.makeText(bw.g(a), "\u66F4\u65B0\u5931\u8D25\u4E86\uFF0C\u8BF7\u91CD\u8BD5.", 0).show();
    }

    public void b(List list)
    {
        com.umeng.socialize.view.bw.b(a, new ArrayList(list));
        if (bw.d(a) == null) goto _L2; else goto _L1
_L1:
        list = bw.d(a).iterator();
_L5:
        if (list.hasNext()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        ((UMFriend)list.next()).mGroup = "\u5E38".charAt(0);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void c(List list)
    {
        bw.a(a, new ArrayList(list));
        a.a();
    }
}
