// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            X509Extension, X509Extensions

public class X509ExtensionsGenerator
{

    private Vector extOrdering;
    private Hashtable extensions;

    public X509ExtensionsGenerator()
    {
        extensions = new Hashtable();
        extOrdering = new Vector();
    }

    public void addExtension(DERObjectIdentifier derobjectidentifier, boolean flag, DEREncodable derencodable)
    {
        try
        {
            addExtension(derobjectidentifier, flag, derencodable.getDERObject().getEncoded("DER"));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (DERObjectIdentifier derobjectidentifier)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("error encoding value: ").append(derobjectidentifier).toString());
        }
    }

    public void addExtension(DERObjectIdentifier derobjectidentifier, boolean flag, byte abyte0[])
    {
        if (extensions.containsKey(derobjectidentifier))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("extension ").append(derobjectidentifier).append(" already added").toString());
        } else
        {
            extOrdering.addElement(derobjectidentifier);
            extensions.put(derobjectidentifier, new X509Extension(flag, new DEROctetString(abyte0)));
            return;
        }
    }

    public X509Extensions generate()
    {
        return new X509Extensions(extOrdering, extensions);
    }

    public boolean isEmpty()
    {
        return extOrdering.isEmpty();
    }

    public void reset()
    {
        extensions = new Hashtable();
        extOrdering = new Vector();
    }
}
