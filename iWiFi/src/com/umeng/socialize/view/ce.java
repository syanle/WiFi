// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.Context;
import android.view.View;
import android.widget.PopupWindow;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.view.abs.am;
import com.umeng.socialize.view.controller.c;
import com.umeng.socialize.view.wigets.a;
import java.io.PrintStream;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view:
//            aj, cf

public class ce extends PopupWindow
{

    private static aj d = null;
    private Context a;
    private am b;
    private View c;

    public ce(Context context, am am1, UMSocialService umsocialservice)
    {
        super(am1, -1, -1, false);
        a = null;
        b = null;
        c = null;
        a = context;
        b = am1;
        am1 = a(new c(context, umsocialservice));
        b.a(am1);
        d = new aj(context);
        setAnimationStyle(ResContainer.getResourceId(a, com.umeng.socialize.common.ResContainer.ResType.STYLE, "umeng_socialize_shareboard_animation"));
    }

    static Context a(ce ce1)
    {
        return ce1.a;
    }

    static aj a()
    {
        return d;
    }

    private a a(c c1)
    {
        List list = c1.a();
        System.out.println((new StringBuilder("size = ")).append(list.size()).toString());
        return new cf(this, list, c1);
    }

    public void dismiss()
    {
        super.dismiss();
    }

    public void showAtLocation(View view, int i, int j, int k)
    {
        try
        {
            super.showAtLocation(view, i, j, k);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        c = view;
    }

}
