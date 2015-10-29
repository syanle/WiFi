// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.umeng.socialize.common.SocializeUtils;

// Referenced classes of package com.umeng.socialize.view:
//            ShareActivity, ab, bw

class bq
    implements android.view.View.OnClickListener
{

    final ShareActivity a;

    bq(ShareActivity shareactivity)
    {
        a = shareactivity;
        super();
    }

    public void onClick(View view)
    {
        if (ShareActivity.c(a))
        {
            if (!ShareActivity.b(a).a)
            {
                ShareActivity.b(a).a(a, ShareActivity.d(a), ShareActivity.e(a));
            }
            ShareActivity.b(a).b();
            ShareActivity.b(a).setVisibility(0);
        } else
        if (!ShareActivity.f(a).isShowing())
        {
            ((InputMethodManager)a.getSystemService("input_method")).hideSoftInputFromWindow(ShareActivity.g(a).getWindowToken(), 0);
            SocializeUtils.safeShowDialog(ShareActivity.f(a), false);
            return;
        }
    }
}
