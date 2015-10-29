// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util.collections;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;

// Referenced classes of package org.jivesoftware.smack.util.collections:
//            AbstractReferenceMap

static class hash extends SoftReference
{

    private int hash;

    public int hashCode()
    {
        return hash;
    }

    public (int i, Object obj, ReferenceQueue referencequeue)
    {
        super(obj, referencequeue);
        hash = i;
    }
}
