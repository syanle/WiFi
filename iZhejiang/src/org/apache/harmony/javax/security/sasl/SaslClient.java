// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.sasl;


// Referenced classes of package org.apache.harmony.javax.security.sasl:
//            SaslException

public interface SaslClient
{

    public abstract void dispose()
        throws SaslException;

    public abstract byte[] evaluateChallenge(byte abyte0[])
        throws SaslException;

    public abstract String getMechanismName();

    public abstract Object getNegotiatedProperty(String s);

    public abstract boolean hasInitialResponse();

    public abstract boolean isComplete();

    public abstract byte[] unwrap(byte abyte0[], int i, int j)
        throws SaslException;

    public abstract byte[] wrap(byte abyte0[], int i, int j)
        throws SaslException;
}
