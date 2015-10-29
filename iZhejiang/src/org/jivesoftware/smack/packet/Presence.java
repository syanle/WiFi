// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;

import org.jivesoftware.smack.util.StringUtils;

// Referenced classes of package org.jivesoftware.smack.packet:
//            Packet, XMPPError

public class Presence extends Packet
{
    public static final class Mode extends Enum
    {

        private static final Mode ENUM$VALUES[];
        public static final Mode available;
        public static final Mode away;
        public static final Mode chat;
        public static final Mode dnd;
        public static final Mode xa;

        public static Mode valueOf(String s)
        {
            return (Mode)Enum.valueOf(org/jivesoftware/smack/packet/Presence$Mode, s);
        }

        public static Mode[] values()
        {
            Mode amode[] = ENUM$VALUES;
            int i = amode.length;
            Mode amode1[] = new Mode[i];
            System.arraycopy(amode, 0, amode1, 0, i);
            return amode1;
        }

        static 
        {
            chat = new Mode("chat", 0);
            available = new Mode("available", 1);
            away = new Mode("away", 2);
            xa = new Mode("xa", 3);
            dnd = new Mode("dnd", 4);
            ENUM$VALUES = (new Mode[] {
                chat, available, away, xa, dnd
            });
        }

        private Mode(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class Type extends Enum
    {

        private static final Type ENUM$VALUES[];
        public static final Type available;
        public static final Type error;
        public static final Type subscribe;
        public static final Type subscribed;
        public static final Type unavailable;
        public static final Type unsubscribe;
        public static final Type unsubscribed;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(org/jivesoftware/smack/packet/Presence$Type, s);
        }

        public static Type[] values()
        {
            Type atype[] = ENUM$VALUES;
            int i = atype.length;
            Type atype1[] = new Type[i];
            System.arraycopy(atype, 0, atype1, 0, i);
            return atype1;
        }

        static 
        {
            available = new Type("available", 0);
            unavailable = new Type("unavailable", 1);
            subscribe = new Type("subscribe", 2);
            subscribed = new Type("subscribed", 3);
            unsubscribe = new Type("unsubscribe", 4);
            unsubscribed = new Type("unsubscribed", 5);
            error = new Type("error", 6);
            ENUM$VALUES = (new Type[] {
                available, unavailable, subscribe, subscribed, unsubscribe, unsubscribed, error
            });
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


    private String language;
    private Mode mode;
    private int priority;
    private String status;
    private Type type;

    public Presence(Type type1)
    {
        type = Type.available;
        status = null;
        priority = 0x80000000;
        mode = null;
        setType(type1);
    }

    public Presence(Type type1, String s, int i, Mode mode1)
    {
        type = Type.available;
        status = null;
        priority = 0x80000000;
        mode = null;
        setType(type1);
        setStatus(s);
        setPriority(i);
        setMode(mode1);
    }

    private String getLanguage()
    {
        return language;
    }

    public Mode getMode()
    {
        return mode;
    }

    public int getPriority()
    {
        return priority;
    }

    public String getStatus()
    {
        return status;
    }

    public Type getType()
    {
        return type;
    }

    public boolean isAvailable()
    {
        return type == Type.available;
    }

    public boolean isAway()
    {
        return type == Type.available && (mode == Mode.away || mode == Mode.xa || mode == Mode.dnd);
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public void setMode(Mode mode1)
    {
        mode = mode1;
    }

    public void setPriority(int i)
    {
        if (i < -128 || i > 128)
        {
            throw new IllegalArgumentException((new StringBuilder("Priority value ")).append(i).append(" is not valid. Valid range is -128 through 128.").toString());
        } else
        {
            priority = i;
            return;
        }
    }

    public void setStatus(String s)
    {
        status = s;
    }

    public void setType(Type type1)
    {
        if (type1 == null)
        {
            throw new NullPointerException("Type cannot be null");
        } else
        {
            type = type1;
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(type);
        if (mode != null)
        {
            stringbuilder.append(": ").append(mode);
        }
        if (getStatus() != null)
        {
            stringbuilder.append(" (").append(getStatus()).append(")");
        }
        return stringbuilder.toString();
    }

    public String toXML()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<presence");
        if (getXmlns() != null)
        {
            stringbuilder.append(" xmlns=\"").append(getXmlns()).append("\"");
        }
        if (language != null)
        {
            stringbuilder.append(" xml:lang=\"").append(getLanguage()).append("\"");
        }
        if (getPacketID() != null)
        {
            stringbuilder.append(" id=\"").append(getPacketID()).append("\"");
        }
        if (getTo() != null)
        {
            stringbuilder.append(" to=\"").append(StringUtils.escapeForXML(getTo())).append("\"");
        }
        if (getFrom() != null)
        {
            stringbuilder.append(" from=\"").append(StringUtils.escapeForXML(getFrom())).append("\"");
        }
        if (type != Type.available)
        {
            stringbuilder.append(" type=\"").append(type).append("\"");
        }
        stringbuilder.append(">");
        if (status != null)
        {
            stringbuilder.append("<status>").append(StringUtils.escapeForXML(status)).append("</status>");
        }
        if (priority != 0x80000000)
        {
            stringbuilder.append("<priority>").append(priority).append("</priority>");
        }
        if (mode != null && mode != Mode.available)
        {
            stringbuilder.append("<show>").append(mode).append("</show>");
        }
        stringbuilder.append(getExtensionsXML());
        XMPPError xmpperror = getError();
        if (xmpperror != null)
        {
            stringbuilder.append(xmpperror.toXML());
        }
        stringbuilder.append("</presence>");
        return stringbuilder.toString();
    }
}
