// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


// Referenced classes of package org.jivesoftware.smack.packet:
//            PrivacyItem

public static class 
{

    public static final String SUBSCRIPTION_BOTH = "both";
    public static final String SUBSCRIPTION_FROM = "from";
    public static final String SUBSCRIPTION_NONE = "none";
    public static final String SUBSCRIPTION_TO = "to";
    private value type;
    private String value;

    protected static  fromString(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
              = new <init>();
            .setType((s.toLowerCase()));
            return ;
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

    private void setType(value value1)
    {
        type = value1;
    }

    public type getType()
    {
        return type;
    }

    public String getValue()
    {
        return value;
    }

    public boolean isSuscription()
    {
        return getType() == ption;
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

    public ()
    {
    }
}
