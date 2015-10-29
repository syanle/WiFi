// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


// Referenced classes of package org.jivesoftware.smack.packet:
//            Presence

public static final class  extends Enum
{

    private static final error ENUM$VALUES[];
    public static final error available;
    public static final error error;
    public static final error subscribe;
    public static final error subscribed;
    public static final error unavailable;
    public static final error unsubscribe;
    public static final error unsubscribed;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/jivesoftware/smack/packet/Presence$Type, s);
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
        available = new <init>("available", 0);
        unavailable = new <init>("unavailable", 1);
        subscribe = new <init>("subscribe", 2);
        subscribed = new <init>("subscribed", 3);
        unsubscribe = new <init>("unsubscribe", 4);
        unsubscribed = new <init>("unsubscribed", 5);
        error = new <init>("error", 6);
        ENUM$VALUES = (new ENUM.VALUES[] {
            available, unavailable, subscribe, subscribed, unsubscribe, unsubscribed, error
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
