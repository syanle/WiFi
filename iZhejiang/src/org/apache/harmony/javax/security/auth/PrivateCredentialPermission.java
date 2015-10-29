// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.security.Permission;
import java.security.PermissionCollection;
import java.security.Principal;
import java.util.Iterator;
import java.util.Set;

public final class PrivateCredentialPermission extends Permission
{
    private static final class CredOwner
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
                if (obj instanceof CredOwner)
                {
                    if (!principalClass.equals(((CredOwner) (obj = (CredOwner)obj)).principalClass) || !principalName.equals(((CredOwner) (obj)).principalName))
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
                obj = (CredOwner)obj;
                if (!isClassWildcard && !principalClass.equals(((CredOwner) (obj)).principalClass) || !isPNameWildcard && !principalName.equals(((CredOwner) (obj)).principalName))
                {
                    return false;
                }
            }
            return true;
        }

        CredOwner(String s, String s1)
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


    private static final String READ = "read";
    private static final long serialVersionUID = 0x4955dc777b507f4cL;
    private String credentialClass;
    private transient int offset;
    private transient CredOwner set[];

    public PrivateCredentialPermission(String s, String s1)
    {
        super(s);
        if ("read".equalsIgnoreCase(s1))
        {
            initTargetName(s);
            return;
        } else
        {
            throw new IllegalArgumentException("auth.11");
        }
    }

    PrivateCredentialPermission(String s, Set set1)
    {
        super(s);
        credentialClass = s;
        set = new CredOwner[set1.size()];
        s = set1.iterator();
_L2:
        if (!s.hasNext())
        {
            return;
        }
        set1 = (Principal)s.next();
        set1 = new CredOwner(set1.getClass().getName(), set1.getName());
        boolean flag = false;
        int i = 0;
        do
        {
            if (i >= offset)
            {
                i = ((flag) ? 1 : 0);
            } else
            {
label0:
                {
                    if (!set[i].equals(set1))
                    {
                        break label0;
                    }
                    i = 1;
                }
            }
            if (i == 0)
            {
                CredOwner acredowner[] = set;
                i = offset;
                offset = i + 1;
                acredowner[i] = set1;
            }
            if (true)
            {
                continue;
            }
            i++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void initTargetName(String s)
    {
        int i;
        int j;
        int k;
        if (s == null)
        {
            throw new NullPointerException("auth.0E");
        }
        s = s.trim();
        if (s.length() == 0)
        {
            throw new IllegalArgumentException("auth.0F");
        }
        i = s.indexOf(' ');
        if (i == -1)
        {
            throw new IllegalArgumentException("auth.10");
        }
        credentialClass = s.substring(0, i);
        j = i + 1;
        i = 0;
        k = s.length();
        do
        {
            if (j >= k)
            {
                if (i < 1)
                {
                    throw new IllegalArgumentException("auth.10");
                }
                break;
            }
            j = s.indexOf(' ', j);
            int l = s.indexOf('"', j + 2);
            if (j == -1 || l == -1 || s.charAt(j + 1) != '"')
            {
                throw new IllegalArgumentException("auth.10");
            }
            j = l + 2;
            i++;
        } while (true);
        k = s.indexOf(' ') + 1;
        set = new CredOwner[i];
        j = 0;
_L2:
        if (j >= i)
        {
            return;
        }
        int i1 = s.indexOf(' ', k);
        int j1 = s.indexOf('"', i1 + 2);
        CredOwner credowner = new CredOwner(s.substring(k, i1), s.substring(i1 + 2, j1));
        i1 = 0;
        k = 0;
        do
        {
            if (k >= offset)
            {
                k = i1;
            } else
            {
label0:
                {
                    if (!set[k].equals(credowner))
                    {
                        break label0;
                    }
                    k = 1;
                }
            }
            if (k == 0)
            {
                CredOwner acredowner[] = set;
                k = offset;
                offset = k + 1;
                acredowner[k] = credowner;
            }
            k = j1 + 2;
            j++;
            if (true)
            {
                continue;
            }
            k++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        objectinputstream.defaultReadObject();
        initTargetName(getName());
    }

    private boolean sameMembers(Object aobj[], Object aobj1[], int i)
    {
        if (aobj != null || aobj1 != null) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        int j;
        if (aobj == null || aobj1 == null)
        {
            return false;
        }
        j = 0;
_L10:
        int k;
        boolean flag;
        if (j >= i)
        {
            continue; /* Loop/switch isn't completed */
        }
        flag = false;
        k = 0;
_L8:
        if (k < i) goto _L4; else goto _L3
_L3:
        k = ((flag) ? 1 : 0);
_L6:
        if (k == 0)
        {
            return false;
        }
        break; /* Loop/switch isn't completed */
_L4:
        if (!aobj[j].equals(aobj1[k]))
        {
            break; /* Loop/switch isn't completed */
        }
        k = 1;
        if (true) goto _L6; else goto _L5
_L5:
        k++;
        if (true) goto _L8; else goto _L7
_L7:
        j++;
        if (true) goto _L10; else goto _L9
_L9:
        if (true) goto _L1; else goto _L11
_L11:
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            obj = (PrivateCredentialPermission)obj;
            if (!credentialClass.equals(((PrivateCredentialPermission) (obj)).credentialClass) || offset != ((PrivateCredentialPermission) (obj)).offset || !sameMembers(set, ((PrivateCredentialPermission) (obj)).set, offset))
            {
                return false;
            }
        }
        return true;
    }

    public String getActions()
    {
        return "read";
    }

    public String getCredentialClass()
    {
        return credentialClass;
    }

    public String[][] getPrincipals()
    {
        String as[][] = (String[][])Array.newInstance(java/lang/String, new int[] {
            offset, 2
        });
        int i = 0;
        do
        {
            if (i >= as.length)
            {
                return as;
            }
            as[i][0] = set[i].principalClass;
            as[i][1] = set[i].principalName;
            i++;
        } while (true);
    }

    public int hashCode()
    {
        int j = 0;
        int i = 0;
        do
        {
            if (i >= offset)
            {
                return getCredentialClass().hashCode() + j;
            }
            j += set[i].hashCode();
            i++;
        } while (true);
    }

    public boolean implies(Permission permission)
    {
        if (permission != null && getClass() == permission.getClass()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        permission = (PrivateCredentialPermission)permission;
        if (!"*".equals(credentialClass) && !credentialClass.equals(permission.getCredentialClass())) goto _L1; else goto _L3
_L3:
        CredOwner acredowner[];
        CredOwner acredowner1[];
        int i;
        int k;
        int l;
        if (((PrivateCredentialPermission) (permission)).offset == 0)
        {
            return true;
        }
        acredowner = set;
        acredowner1 = ((PrivateCredentialPermission) (permission)).set;
        k = offset;
        l = ((PrivateCredentialPermission) (permission)).offset;
        i = 0;
        break MISSING_BLOCK_LABEL_82;
        if (j == acredowner1.length) goto _L1; else goto _L4
_L4:
        i++;
        if (i >= k)
        {
            return true;
        }
        int j = 0;
        while (j < l && !acredowner[i].implies(acredowner1[j])) 
        {
            j++;
        }
        continue; /* Loop/switch isn't completed */
    }

    public PermissionCollection newPermissionCollection()
    {
        return null;
    }
}
