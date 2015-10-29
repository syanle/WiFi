// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


// Referenced classes of package org.jivesoftware.smack.packet:
//            RosterPacket

public static final class _cls9 extends Enum
{

    private static final remove ENUM$VALUES[];
    public static final remove both;
    public static final remove from;
    public static final remove none;
    public static final remove remove;
    public static final remove to;

    public static _cls9 valueOf(String s)
    {
        return (_cls9)Enum.valueOf(org/jivesoftware/smack/packet/RosterPacket$ItemType, s);
    }

    public static _cls9[] values()
    {
        _cls9 a_lcls9[] = ENUM$VALUES;
        int i = a_lcls9.length;
        _cls9 a_lcls9_1[] = new ENUM.VALUES[i];
        System.arraycopy(a_lcls9, 0, a_lcls9_1, 0, i);
        return a_lcls9_1;
    }

    static 
    {
        none = new <init>("none", 0);
        to = new <init>("to", 1);
        from = new <init>("from", 2);
        both = new <init>("both", 3);
        remove = new <init>("remove", 4);
        ENUM$VALUES = (new ENUM.VALUES[] {
            none, to, from, both, remove
        });
    }

    private _cls9(String s, int i)
    {
        super(s, i);
    }
}
