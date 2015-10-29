// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.voms;


// Referenced classes of package org.bouncycastle.voms:
//            VOMSAttribute

public class capability
{

    String capability;
    String fqan;
    String group;
    String role;
    final VOMSAttribute this$0;

    public String getCapability()
    {
        if (group == null && fqan != null)
        {
            split();
        }
        return capability;
    }

    public String getFQAN()
    {
        if (fqan != null)
        {
            return fqan;
        }
        StringBuilder stringbuilder = (new StringBuilder()).append(group).append("/Role=");
        String s;
        if (role != null)
        {
            s = role;
        } else
        {
            s = "";
        }
        stringbuilder = stringbuilder.append(s);
        if (capability != null)
        {
            s = (new StringBuilder()).append("/Capability=").append(capability).toString();
        } else
        {
            s = "";
        }
        fqan = stringbuilder.append(s).toString();
        return fqan;
    }

    public String getGroup()
    {
        if (group == null && fqan != null)
        {
            split();
        }
        return group;
    }

    public String getRole()
    {
        if (group == null && fqan != null)
        {
            split();
        }
        return role;
    }

    protected void split()
    {
        Object obj = null;
        fqan.length();
        int i = fqan.indexOf("/Role=");
        if (i < 0)
        {
            return;
        }
        group = fqan.substring(0, i);
        int j = fqan.indexOf("/Capability=", i + 6);
        String s;
        String s1;
        if (j < 0)
        {
            s = fqan.substring(i + 6);
        } else
        {
            s = fqan.substring(i + 6, j);
        }
        s1 = s;
        if (s.length() == 0)
        {
            s1 = null;
        }
        role = s1;
        if (j < 0)
        {
            s = null;
        } else
        {
            s = fqan.substring(j + 12);
        }
        s1 = obj;
        if (s != null)
        {
            if (s.length() == 0)
            {
                s1 = obj;
            } else
            {
                s1 = s;
            }
        }
        capability = s1;
    }

    public String toString()
    {
        return getFQAN();
    }

    public (String s)
    {
        this$0 = VOMSAttribute.this;
        super();
        fqan = s;
    }

    public fqan(String s, String s1, String s2)
    {
        this$0 = VOMSAttribute.this;
        super();
        group = s;
        role = s1;
        capability = s2;
    }
}
