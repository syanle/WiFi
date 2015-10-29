// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth;

import java.security.AccessControlContext;
import java.security.DomainCombiner;
import java.security.PrivilegedAction;

// Referenced classes of package org.apache.harmony.javax.security.auth:
//            Subject

class val.context
    implements PrivilegedAction
{

    private final AccessControlContext val$context;

    public volatile Object run()
    {
        return run();
    }

    public DomainCombiner run()
    {
        return val$context.getDomainCombiner();
    }

    ()
    {
        val$context = accesscontrolcontext;
        super();
    }
}
