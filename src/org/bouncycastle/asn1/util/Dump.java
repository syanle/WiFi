// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.util;

import java.io.FileInputStream;
import java.io.PrintStream;
import org.bouncycastle.asn1.ASN1InputStream;

// Referenced classes of package org.bouncycastle.asn1.util:
//            ASN1Dump

public class Dump
{

    public Dump()
    {
    }

    public static void main(String args[])
        throws Exception
    {
        args = new ASN1InputStream(new FileInputStream(args[0]));
        do
        {
            org.bouncycastle.asn1.DERObject derobject = args.readObject();
            if (derobject != null)
            {
                System.out.println(ASN1Dump.dumpAsString(derobject));
            } else
            {
                return;
            }
        } while (true);
    }
}
