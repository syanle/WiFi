// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            DNSSEC, KEYBase, SIGBase

public static class > extends >
{

    private KEYBase key;
    private SIGBase sig;

    (KEYBase keybase, SIGBase sigbase)
    {
        super((new StringBuilder("key ")).append(keybase.getName()).append("/").append(>(keybase.getAlgorithm())).append("/").append(keybase.getFootprint()).append(" ").append("does not match signature ").append(sigbase.getSigner()).append("/").append(>(sigbase.getAlgorithm())).append("/").append(sigbase.getFootprint()).toString());
    }
}
