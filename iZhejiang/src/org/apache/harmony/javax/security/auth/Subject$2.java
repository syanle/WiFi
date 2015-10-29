// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth;

import java.security.AccessControlContext;
import java.security.PrivilegedAction;

// Referenced classes of package org.apache.harmony.javax.security.auth:
//            Subject, SubjectDomainCombiner

class val.combiner
    implements PrivilegedAction
{

    private final SubjectDomainCombiner val$combiner;
    private final AccessControlContext val$context;

    public volatile Object run()
    {
        return run();
    }

    public AccessControlContext run()
    {
        return new AccessControlContext(val$context, val$combiner);
    }

    ainCombiner()
    {
        val$context = accesscontrolcontext;
        val$combiner = subjectdomaincombiner;
        super();
    }
}
