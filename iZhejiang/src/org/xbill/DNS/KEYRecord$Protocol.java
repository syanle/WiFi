// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            KEYRecord, Mnemonic

public static class 
{

    public static final int ANY = 255;
    public static final int DNSSEC = 3;
    public static final int EMAIL = 2;
    public static final int IPSEC = 4;
    public static final int NONE = 0;
    public static final int TLS = 1;
    private static Mnemonic protocols;

    public static String string(int i)
    {
        return protocols.getText(i);
    }

    public static int value(String s)
    {
        return protocols.getValue(s);
    }

    static 
    {
        protocols = new Mnemonic("KEY protocol", 2);
        protocols.setMaximum(255);
        protocols.setNumericAllowed(true);
        protocols.add(0, "NONE");
        protocols.add(1, "TLS");
        protocols.add(2, "EMAIL");
        protocols.add(3, "DNSSEC");
        protocols.add(4, "IPSEC");
        protocols.add(255, "ANY");
    }

    private ()
    {
    }
}
