// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth;

import java.security.DomainCombiner;
import java.security.Principal;
import java.security.ProtectionDomain;
import java.util.Set;

// Referenced classes of package org.apache.harmony.javax.security.auth:
//            AuthPermission, Subject

public class SubjectDomainCombiner
    implements DomainCombiner
{

    private static final AuthPermission _GET = new AuthPermission("getSubjectFromDomainCombiner");
    private Subject subject;

    public SubjectDomainCombiner(Subject subject1)
    {
        if (subject1 == null)
        {
            throw new NullPointerException();
        } else
        {
            subject = subject1;
            return;
        }
    }

    public ProtectionDomain[] combine(ProtectionDomain aprotectiondomain[], ProtectionDomain aprotectiondomain1[])
    {
        int k;
        int i = 0;
        if (aprotectiondomain != null)
        {
            i = 0 + aprotectiondomain.length;
        }
        k = i;
        if (aprotectiondomain1 != null)
        {
            k = i + aprotectiondomain1.length;
        }
        if (k != 0) goto _L2; else goto _L1
_L1:
        aprotectiondomain = null;
_L5:
        return aprotectiondomain;
_L2:
        ProtectionDomain aprotectiondomain2[];
        int j;
        aprotectiondomain2 = new ProtectionDomain[k];
        j = 0;
        if (aprotectiondomain == null) goto _L4; else goto _L3
_L3:
        Principal aprincipal[];
        Set set = subject.getPrincipals();
        aprincipal = (Principal[])set.toArray(new Principal[set.size()]);
        j = 0;
_L6:
        if (j < aprotectiondomain.length)
        {
            break MISSING_BLOCK_LABEL_109;
        }
_L4:
        aprotectiondomain = aprotectiondomain2;
        if (aprotectiondomain1 != null)
        {
            System.arraycopy(aprotectiondomain1, 0, aprotectiondomain2, j, aprotectiondomain1.length);
            return aprotectiondomain2;
        }
          goto _L5
        if (aprotectiondomain[j] != null)
        {
            aprotectiondomain2[j] = new ProtectionDomain(aprotectiondomain[j].getCodeSource(), aprotectiondomain[j].getPermissions(), aprotectiondomain[j].getClassLoader(), aprincipal);
        }
        j++;
          goto _L6
    }

    public Subject getSubject()
    {
        SecurityManager securitymanager = System.getSecurityManager();
        if (securitymanager != null)
        {
            securitymanager.checkPermission(_GET);
        }
        return subject;
    }

}
