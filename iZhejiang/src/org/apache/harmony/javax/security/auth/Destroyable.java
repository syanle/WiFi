// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth;


// Referenced classes of package org.apache.harmony.javax.security.auth:
//            DestroyFailedException

public interface Destroyable
{

    public abstract void destroy()
        throws DestroyFailedException;

    public abstract boolean isDestroyed();
}
