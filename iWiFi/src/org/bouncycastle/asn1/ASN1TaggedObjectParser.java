// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1;

import java.io.IOException;

// Referenced classes of package org.bouncycastle.asn1:
//            DEREncodable, InMemoryRepresentable

public interface ASN1TaggedObjectParser
    extends DEREncodable, InMemoryRepresentable
{

    public abstract DEREncodable getObjectParser(int i, boolean flag)
        throws IOException;

    public abstract int getTagNo();
}
