// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.controller.RequestType;
import com.umeng.socialize.controller.UMServiceFactory;
import com.umeng.socialize.view.abs.g;

public class ActionBarView extends g
{

    public static final int ACTION_BAR_BUTTON_WIDTH = 80;
    public static final int ACTION_BAR_HEIGHT = 48;

    public ActionBarView(Context context)
    {
        super(context, "");
        h();
    }

    public ActionBarView(Context context, String s)
    {
        super(context, s);
        h();
    }

    private void h()
    {
        if (b == null)
        {
            setVisibility(8);
        }
    }

    protected void onWindowVisibilityChanged(int i)
    {
        super.onWindowVisibilityChanged(i);
    }

    public void resetEntity(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        setVisibility(0);
        super.resetUMService(UMServiceFactory.getUMSocialService(s, RequestType.SOCIAL));
        onViewLoad();
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Log.w("com.umeng.view.SocialView", "can`t reset entity.the 'descriptor' is empty.");
        if (true) goto _L4; else goto _L3
_L3:
        s;
        throw s;
    }
}
