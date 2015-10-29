// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce;

import java.security.BasicPermission;
import java.security.Permission;
import java.util.StringTokenizer;
import org.bouncycastle.util.Strings;

public class ProviderConfigurationPermission extends BasicPermission
{

    private static final int ALL = 3;
    private static final String ALL_STR = "all";
    private static final int EC_IMPLICITLY_CA = 2;
    private static final String EC_IMPLICITLY_CA_STR = "ecimplicitlyca";
    private static final int THREAD_LOCAL_EC_IMPLICITLY_CA = 1;
    private static final String THREAD_LOCAL_EC_IMPLICITLY_CA_STR = "threadlocalecimplicitlyca";
    private final String actions;
    private final int permissionMask;

    public ProviderConfigurationPermission(String s)
    {
        super(s);
        actions = "all";
        permissionMask = 3;
    }

    public ProviderConfigurationPermission(String s, String s1)
    {
        super(s, s1);
        actions = s1;
        permissionMask = calculateMask(s1);
    }

    private int calculateMask(String s)
    {
        s = new StringTokenizer(Strings.toLowerCase(s), " ,");
        int i = 0;
        do
        {
            if (!s.hasMoreTokens())
            {
                break;
            }
            String s1 = s.nextToken();
            if (s1.equals("threadlocalecimplicitlyca"))
            {
                i |= 1;
            } else
            if (s1.equals("ecimplicitlyca"))
            {
                i |= 2;
            } else
            if (s1.equals("all"))
            {
                i |= 3;
            }
        } while (true);
        if (i == 0)
        {
            throw new IllegalArgumentException("unknown permissions passed to mask");
        } else
        {
            return i;
        }
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj instanceof ProviderConfigurationPermission)
            {
                if (permissionMask != ((ProviderConfigurationPermission) (obj = (ProviderConfigurationPermission)obj)).permissionMask || !getName().equals(((ProviderConfigurationPermission) (obj)).getName()))
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

    public String getActions()
    {
        return actions;
    }

    public int hashCode()
    {
        return getName().hashCode() + permissionMask;
    }

    public boolean implies(Permission permission)
    {
        if ((permission instanceof ProviderConfigurationPermission) && getName().equals(permission.getName()))
        {
            permission = (ProviderConfigurationPermission)permission;
            if ((permissionMask & ((ProviderConfigurationPermission) (permission)).permissionMask) == ((ProviderConfigurationPermission) (permission)).permissionMask)
            {
                return true;
            }
        }
        return false;
    }
}
