// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.plugin;


// Referenced classes of package com.tencent.mm.sdk.plugin:
//            MMPluginOAuth

class bM
    implements Runnable
{

    final MMPluginOAuth bL;
    final String bM;
    final bM bN;

    public void run()
    {
        MMPluginOAuth.a(bL, bM);
    }

    ( , MMPluginOAuth mmpluginoauth, String s)
    {
        bN = ;
        bL = mmpluginoauth;
        bM = s;
        super();
    }
}
