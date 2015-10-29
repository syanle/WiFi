// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.view.View;
import android.widget.AdapterView;
import com.umeng.socialize.bean.UMFriend;
import com.umeng.socialize.view.wigets.b;

// Referenced classes of package com.umeng.socialize.view:
//            bw

class by
    implements android.widget.AdapterView.OnItemClickListener
{

    final bw a;

    by(bw bw1)
    {
        a = bw1;
        super();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (UMFriend)bw.a(a).getItem(i);
        bw.a(a, adapterview);
    }
}
