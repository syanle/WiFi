// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.qpid.management.common.sasl;

import java.security.Provider;

public class SaslProvider extends Provider
{

    private static final long serialVersionUID = 0x9f28d2a4e82066ceL;

    public SaslProvider()
    {
        super("SaslClientFactory", 1.0D, "SASL PLAIN CLIENT MECHANISM");
        put("SaslClientFactory.PLAIN", "ClientSaslFactory");
    }
}
