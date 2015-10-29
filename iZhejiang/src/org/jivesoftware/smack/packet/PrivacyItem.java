// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


public class PrivacyItem
{
    public static class PrivacyRule
    {

        public static final String SUBSCRIPTION_BOTH = "both";
        public static final String SUBSCRIPTION_FROM = "from";
        public static final String SUBSCRIPTION_NONE = "none";
        public static final String SUBSCRIPTION_TO = "to";
        private Type type;
        private String value;

        protected static PrivacyRule fromString(String s)
        {
            if (s == null)
            {
                return null;
            } else
            {
                PrivacyRule privacyrule = new PrivacyRule();
                privacyrule.setType(Type.valueOf(s.toLowerCase()));
                return privacyrule;
            }
        }

        private void setSuscriptionValue(String s)
        {
            if ("both".equalsIgnoreCase(s))
            {
                s = "both";
            } else
            if ("to".equalsIgnoreCase(s))
            {
                s = "to";
            } else
            if ("from".equalsIgnoreCase(s))
            {
                s = "from";
            } else
            if ("none".equalsIgnoreCase(s))
            {
                s = "none";
            } else
            {
                s = null;
            }
            value = s;
        }

        private void setType(Type type1)
        {
            type = type1;
        }

        public Type getType()
        {
            return type;
        }

        public String getValue()
        {
            return value;
        }

        public boolean isSuscription()
        {
            return getType() == Type.subscription;
        }

        protected void setValue(String s)
        {
            if (isSuscription())
            {
                setSuscriptionValue(s);
                return;
            } else
            {
                value = s;
                return;
            }
        }

        public PrivacyRule()
        {
        }
    }

    public static final class Type extends Enum
    {

        private static final Type ENUM$VALUES[];
        public static final Type group;
        public static final Type jid;
        public static final Type subscription;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(org/jivesoftware/smack/packet/PrivacyItem$Type, s);
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
            group = new Type("group", 0);
            jid = new Type("jid", 1);
            subscription = new Type("subscription", 2);
            ENUM$VALUES = (new Type[] {
                group, jid, subscription
            });
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


    private boolean allow;
    private boolean filterIQ;
    private boolean filterMessage;
    private boolean filterPresence_in;
    private boolean filterPresence_out;
    private int order;
    private PrivacyRule rule;

    public PrivacyItem(String s, boolean flag, int i)
    {
        filterIQ = false;
        filterMessage = false;
        filterPresence_in = false;
        filterPresence_out = false;
        setRule(PrivacyRule.fromString(s));
        setAllow(flag);
        setOrder(i);
    }

    private PrivacyRule getRule()
    {
        return rule;
    }

    private void setAllow(boolean flag)
    {
        allow = flag;
    }

    private void setOrder(int i)
    {
        order = i;
    }

    private void setRule(PrivacyRule privacyrule)
    {
        rule = privacyrule;
    }

    public int getOrder()
    {
        return order;
    }

    public Type getType()
    {
        if (getRule() == null)
        {
            return null;
        } else
        {
            return getRule().getType();
        }
    }

    public String getValue()
    {
        if (getRule() == null)
        {
            return null;
        } else
        {
            return getRule().getValue();
        }
    }

    public boolean isAllow()
    {
        return allow;
    }

    public boolean isFilterEverything()
    {
        return !isFilterIQ() && !isFilterMessage() && !isFilterPresence_in() && !isFilterPresence_out();
    }

    public boolean isFilterIQ()
    {
        return filterIQ;
    }

    public boolean isFilterMessage()
    {
        return filterMessage;
    }

    public boolean isFilterPresence_in()
    {
        return filterPresence_in;
    }

    public boolean isFilterPresence_out()
    {
        return filterPresence_out;
    }

    public void setFilterIQ(boolean flag)
    {
        filterIQ = flag;
    }

    public void setFilterMessage(boolean flag)
    {
        filterMessage = flag;
    }

    public void setFilterPresence_in(boolean flag)
    {
        filterPresence_in = flag;
    }

    public void setFilterPresence_out(boolean flag)
    {
        filterPresence_out = flag;
    }

    public void setValue(String s)
    {
        if (getRule() != null || s != null)
        {
            getRule().setValue(s);
        }
    }

    public String toXML()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<item");
        if (isAllow())
        {
            stringbuilder.append(" action=\"allow\"");
        } else
        {
            stringbuilder.append(" action=\"deny\"");
        }
        stringbuilder.append(" order=\"").append(getOrder()).append("\"");
        if (getType() != null)
        {
            stringbuilder.append(" type=\"").append(getType()).append("\"");
        }
        if (getValue() != null)
        {
            stringbuilder.append(" value=\"").append(getValue()).append("\"");
        }
        if (isFilterEverything())
        {
            stringbuilder.append("/>");
        } else
        {
            stringbuilder.append(">");
            if (isFilterIQ())
            {
                stringbuilder.append("<iq/>");
            }
            if (isFilterMessage())
            {
                stringbuilder.append("<message/>");
            }
            if (isFilterPresence_in())
            {
                stringbuilder.append("<presence-in/>");
            }
            if (isFilterPresence_out())
            {
                stringbuilder.append("<presence-out/>");
            }
            stringbuilder.append("</item>");
        }
        return stringbuilder.toString();
    }
}
