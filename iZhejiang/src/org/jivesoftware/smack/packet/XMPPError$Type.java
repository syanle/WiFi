// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


// Referenced classes of package org.jivesoftware.smack.packet:
//            XMPPError

public static final class  extends Enum
{

    public static final CONTINUE AUTH;
    public static final CONTINUE CANCEL;
    public static final CONTINUE CONTINUE;
    private static final CONTINUE ENUM$VALUES[];
    public static final CONTINUE MODIFY;
    public static final CONTINUE WAIT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/jivesoftware/smack/packet/XMPPError$Type, s);
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
        WAIT = new <init>("WAIT", 0);
        CANCEL = new <init>("CANCEL", 1);
        MODIFY = new <init>("MODIFY", 2);
        AUTH = new <init>("AUTH", 3);
        CONTINUE = new <init>("CONTINUE", 4);
        ENUM$VALUES = (new ENUM.VALUES[] {
            WAIT, CANCEL, MODIFY, AUTH, CONTINUE
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
