// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


// Referenced classes of package org.jivesoftware.smack.packet:
//            Message

public static final class  extends Enum
{

    private static final error ENUM$VALUES[];
    public static final error chat;
    public static final error error;
    public static final error groupchat;
    public static final error headline;
    public static final error normal;

    public static  fromString(String s)
    {
        try
        {
            s = valueOf(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return normal;
        }
        return s;
    }

    public static normal valueOf(String s)
    {
        return (normal)Enum.valueOf(org/jivesoftware/smack/packet/Message$Type, s);
    }

    public static normal[] values()
    {
        normal anormal[] = ENUM$VALUES;
        int i = anormal.length;
        normal anormal1[] = new ENUM.VALUES[i];
        System.arraycopy(anormal, 0, anormal1, 0, i);
        return anormal1;
    }

    static 
    {
        normal = new <init>("normal", 0);
        chat = new <init>("chat", 1);
        groupchat = new <init>("groupchat", 2);
        headline = new <init>("headline", 3);
        error = new <init>("error", 4);
        ENUM$VALUES = (new ENUM.VALUES[] {
            normal, chat, groupchat, headline, error
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
