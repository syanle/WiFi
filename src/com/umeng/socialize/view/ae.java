// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.util.Log;
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
//            ab

class ae
    implements com.umeng.socialize.view.controller.ShareAtController.ASyncLifeListener
{

    final ab a;

    ae(ab ab1)
    {
        a = ab1;
        super();
    }

    public void a()
    {
        ab.g(a).setVisibility(0);
        ab.h(a).setVisibility(4);
    }

    public void a(List list)
    {
        int i = com.umeng.socialize.view.ab.b(a).getCount();
        ab.a(a, new ArrayList(list));
        if (ab.d(a) != null)
        {
            com.umeng.socialize.view.ab.b(a).a(ab.e(a), ab.f(a));
        }
        com.umeng.socialize.view.ab.b(a).notifyDataSetChanged();
        ab.d(a).updateAlphabet(com.umeng.socialize.view.ab.b(a).a());
        int j = com.umeng.socialize.view.ab.b(a).getCount();
        ab.g(a).setVisibility(8);
        ab.h(a).setVisibility(0);
        Toast.makeText(a.getContext(), (new StringBuilder("\u5DF2\u6210\u529F\u66F4\u65B0 ")).append(j - i).append(" \u4E2A\u597D\u53CB. ").toString(), 0).show();
    }

    public void b()
    {
        ab.g(a).setVisibility(8);
        ab.h(a).setVisibility(0);
        Toast.makeText(a.getContext(), "\u66F4\u65B0\u5931\u8D25\u4E86\uFF0C\u8BF7\u91CD\u8BD5.", 0).show();
    }

    public void b(List list)
    {
        com.umeng.socialize.view.ab.b(a, new ArrayList(list));
        if (ab.f(a) == null) goto _L2; else goto _L1
_L1:
        list = ab.f(a).iterator();
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
        ab.a(a, new ArrayList(list));
        try
        {
            a.c();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            Log.w(ab.d(), list.toString());
        }
    }
}
