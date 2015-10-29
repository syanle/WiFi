// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.controller.UMSocialService;

// Referenced classes of package com.umeng.socialize.view.abs:
//            SocializeBaseView

public abstract class a extends SocializeBaseView
{

    private String d;
    private String e;

    public a(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public a(Context context, String s)
    {
        super(context, s);
    }

    public abstract View getErrorView();

    public abstract View getView();

    public final void onViewLoad(UMSocialService umsocialservice)
    {
        super.onViewLoad(umsocialservice);
        removeAllViews();
        if (umsocialservice == null || !umsocialservice.getEntity().mInitialized)
        {
            addView(getErrorView());
            return;
        } else
        {
            umsocialservice = umsocialservice.getEntity();
            d = ((SocializeEntity) (umsocialservice)).mEntityKey;
            e = ((SocializeEntity) (umsocialservice)).mSessionID;
            addView(getView());
            return;
        }
    }
}
