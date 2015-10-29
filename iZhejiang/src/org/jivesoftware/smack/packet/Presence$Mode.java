// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


// Referenced classes of package org.jivesoftware.smack.packet:
//            Presence

public static final class  extends Enum
{

    private static final dnd ENUM$VALUES[];
    public static final dnd available;
    public static final dnd away;
    public static final dnd chat;
    public static final dnd dnd;
    public static final dnd xa;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/jivesoftware/smack/packet/Presence$Mode, s);
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
        chat = new <init>("chat", 0);
        available = new <init>("available", 1);
        away = new <init>("away", 2);
        xa = new <init>("xa", 3);
        dnd = new <init>("dnd", 4);
        ENUM$VALUES = (new ENUM.VALUES[] {
            chat, available, away, xa, dnd
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
