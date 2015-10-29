// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;


// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            ObserverPool

class aA
    implements Runnable
{

    final ent aA;
    final ObserverPool az;

    public void run()
    {
        az.publish(aA);
    }

    ent(ObserverPool observerpool, ent ent)
    {
        az = observerpool;
        aA = ent;
        super();
    }
}
