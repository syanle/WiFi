// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


// Referenced classes of package org.jivesoftware.smack.packet:
//            RosterPacket

public static class value
{

    public static final value SUBSCRIPTION_PENDING = new <init>("subscribe");
    public static final <init> UNSUBSCRIPTION_PENDING = new <init>("unsubscribe");
    private String value;

    public static value fromString(String s)
    {
        if (s != null)
        {
            s = s.toLowerCase();
            if ("unsubscribe".equals(s))
            {
                return UNSUBSCRIPTION_PENDING;
            }
            if ("subscribe".equals(s))
            {
                return SUBSCRIPTION_PENDING;
            }
        }
        return null;
    }

    public String toString()
    {
        return value;
    }


    private (String s)
    {
        value = s;
    }
}
