// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.umeng.socialize.common.ResContainer;
import java.io.PrintStream;

// Referenced classes of package com.umeng.socialize.view:
//            an, ak

class am extends com.umeng.socialize.view.abs.SocialPopupDialog.a
{

    final ak a;
    private final Context b;

    am(ak ak, Context context, Context context1)
    {
        a = ak;
        b = context1;
        super(context);
    }

    static ak a(am am1)
    {
        return am1.a;
    }

    public void a(View view)
    {
        view.findViewById(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_leftBt")).setOnClickListener(new an(this));
        view.findViewById(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_rightBt")).setVisibility(8);
        ((Button)view.findViewById(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_leftBt"))).setBackgroundResource(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_action_back"));
        ((TextView)view.findViewById(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.ID, "umeng_socialize_title_bar_middleTv"))).setText(ResContainer.getResourceId(b, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_login"));
        System.out.println("##### create login dialog...");
    }
}
