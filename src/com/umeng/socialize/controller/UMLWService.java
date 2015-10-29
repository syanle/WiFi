// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.content.Context;

// Referenced classes of package com.umeng.socialize.controller:
//            UMLWHandler

public class UMLWService
{

    public UMLWService()
    {
    }

    public static UMLWHandler supportLWDynamicPlatform(Context context, String s, String s1, String s2)
    {
        context = new UMLWHandler(context, s, s1, s2);
        context.setToCircle(true);
        context.addToSocialSDK();
        return context;
    }

    public static UMLWHandler supportLWPlatform(Context context, String s, String s1, String s2)
    {
        context = new UMLWHandler(context, s, s1, s2);
        context.addToSocialSDK();
        return context;
    }
}
