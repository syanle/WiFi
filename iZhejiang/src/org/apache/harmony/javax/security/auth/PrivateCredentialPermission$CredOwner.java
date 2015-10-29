// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth;

import java.io.Serializable;

// Referenced classes of package org.apache.harmony.javax.security.auth:
//            PrivateCredentialPermission

private static final class principalName
    implements Serializable
{

    private static final long serialVersionUID = 0xb22e5616b9037436L;
    private transient boolean isClassWildcard;
    private transient boolean isPNameWildcard;
    String principalClass;
    String principalName;

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj instanceof principalName)
            {
                if (!principalClass.equals(((principalClass) (obj = (principalClass)obj)).principalClass) || !principalName.equals(((principalName) (obj)).principalName))
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return principalClass.hashCode() + principalName.hashCode();
    }

    boolean implies(Object obj)
    {
        if (obj != this)
        {
            obj = (principalName)obj;
            if (!isClassWildcard && !principalClass.equals(((principalClass) (obj)).principalClass) || !isPNameWildcard && !principalName.equals(((principalName) (obj)).principalName))
            {
                return false;
            }
        }
        return true;
    }

    (String s, String s1)
    {
        if ("*".equals(s))
        {
            isClassWildcard = true;
        }
        if ("*".equals(s1))
        {
            isPNameWildcard = true;
        }
        if (isClassWildcard && !isPNameWildcard)
        {
            throw new IllegalArgumentException("auth.12");
        } else
        {
            principalClass = s;
            principalName = s1;
            return;
        }
    }
}
