// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.umeng.socialize.common.ResContainer;

public class b
{

    Context a;
    public View b;

    public b(Context context)
    {
        b = ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_actionbar"), null);
    }
}
