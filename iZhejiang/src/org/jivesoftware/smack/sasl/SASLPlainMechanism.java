// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.sasl;

import org.jivesoftware.smack.SASLAuthentication;

// Referenced classes of package org.jivesoftware.smack.sasl:
//            SASLMechanism

public class SASLPlainMechanism extends SASLMechanism
{

    public SASLPlainMechanism(SASLAuthentication saslauthentication)
    {
        super(saslauthentication);
    }

    protected String getName()
    {
        return "PLAIN";
    }
}
