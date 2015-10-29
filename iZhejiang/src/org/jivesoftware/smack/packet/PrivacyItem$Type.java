// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


// Referenced classes of package org.jivesoftware.smack.packet:
//            PrivacyItem

public static final class  extends Enum
{

    private static final subscription ENUM$VALUES[];
    public static final subscription group;
    public static final subscription jid;
    public static final subscription subscription;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/jivesoftware/smack/packet/PrivacyItem$Type, s);
    }

    public static [] values()
    {
         a[] = ENUM$VALUES;
        int i = a.length;
         a1[] = new ENUM.VALUES[i];
        System.arraycopy(a, 0, a1, 0, i);
        return a1;
    }

    static 
    {
        group = new <init>("group", 0);
        jid = new <init>("jid", 1);
        subscription = new <init>("subscription", 2);
        ENUM$VALUES = (new ENUM.VALUES[] {
            group, jid, subscription
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
