// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;

// Referenced classes of package cn.sharesdk.framework.authorize:
//            RegisterView

class c
    implements android.view.View.OnClickListener
{

    final RegisterView a;

    c(RegisterView registerview)
    {
        a = registerview;
        super();
    }

    public void onClick(View view)
    {
        try
        {
            int i = R.getStringRes(view.getContext(), "website");
            Object obj = view.getResources().getString(i);
            if (!TextUtils.isEmpty(((CharSequence) (obj))))
            {
                obj = new Intent("android.intent.action.VIEW", Uri.parse(((String) (obj))));
                view.getContext().startActivity(((Intent) (obj)));
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (View view)
        {
            Ln.e(view);
        }
    }
}
