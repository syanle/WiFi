// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;


// Referenced classes of package org.jivesoftware.smack:
//            Roster

public static final class  extends Enum
{

    private static final manual ENUM$VALUES[];
    public static final manual accept_all;
    public static final manual manual;
    public static final manual reject_all;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/jivesoftware/smack/Roster$SubscriptionMode, s);
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
        accept_all = new <init>("accept_all", 0);
        reject_all = new <init>("reject_all", 1);
        manual = new <init>("manual", 2);
        ENUM$VALUES = (new ENUM.VALUES[] {
            accept_all, reject_all, manual
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
