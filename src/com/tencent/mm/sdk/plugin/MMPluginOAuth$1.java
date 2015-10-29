// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.plugin;


// Referenced classes of package com.tencent.mm.sdk.plugin:
//            MMPluginOAuth

class bJ
    implements Runnable
{

    final MMPluginOAuth bJ;

    public void run()
    {
        if (MMPluginOAuth.b(bJ) != null)
        {
            MMPluginOAuth.b(bJ).onResult(bJ);
        }
    }

    esult(MMPluginOAuth mmpluginoauth)
    {
        bJ = mmpluginoauth;
        super();
    }
}
