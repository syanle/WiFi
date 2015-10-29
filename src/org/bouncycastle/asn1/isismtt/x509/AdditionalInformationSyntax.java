// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.isismtt.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.x500.DirectoryString;

public class AdditionalInformationSyntax extends ASN1Encodable
{

    private DirectoryString information;

    public AdditionalInformationSyntax(String s)
    {
        this(new DirectoryString(s));
    }

    private AdditionalInformationSyntax(DirectoryString directorystring)
    {
        information = directorystring;
    }

    public static AdditionalInformationSyntax getInstance(Object obj)
    {
        if (obj instanceof AdditionalInformationSyntax)
        {
            return (AdditionalInformationSyntax)obj;
        }
        if (obj instanceof ASN1String)
        {
            return new AdditionalInformationSyntax(DirectoryString.getInstance(obj));
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal object in getInstance: ").append(obj.getClass().getName()).toString());
        }
    }

    public DirectoryString getInformation()
    {
        return information;
    }

    public DERObject toASN1Object()
    {
        return information.toASN1Object();
    }
}
