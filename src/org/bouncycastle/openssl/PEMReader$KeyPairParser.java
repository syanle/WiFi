// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.util.encoders.Hex;
import org.bouncycastle.util.io.pem.PemHeader;
import org.bouncycastle.util.io.pem.PemObject;
import org.bouncycastle.util.io.pem.PemObjectParser;

// Referenced classes of package org.bouncycastle.openssl:
//            PEMReader, PasswordException, PasswordFinder, PEMUtilities, 
//            PEMException

private abstract class provider
    implements PemObjectParser
{

    protected String provider;
    final PEMReader this$0;

    protected ASN1Sequence readKeyPair(PemObject pemobject)
        throws IOException
    {
        String s = null;
        Iterator iterator = pemobject.getHeaders().iterator();
        boolean flag = false;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            PemHeader pemheader = (PemHeader)iterator.next();
            if (pemheader.getName().equals("Proc-Type") && pemheader.getValue().equals("4,ENCRYPTED"))
            {
                flag = true;
            } else
            if (pemheader.getName().equals("DEK-Info"))
            {
                s = pemheader.getValue();
            }
        } while (true);
        byte abyte0[] = pemobject.getContent();
        pemobject = abyte0;
        if (flag)
        {
            if (PEMReader.access$400(PEMReader.this) == null)
            {
                throw new PasswordException("No password finder specified, but a password is required");
            }
            pemobject = PEMReader.access$400(PEMReader.this).getPassword();
            if (pemobject == null)
            {
                throw new PasswordException("Password is null, but a password is required");
            }
            StringTokenizer stringtokenizer = new StringTokenizer(s, ",");
            s = stringtokenizer.nextToken();
            byte abyte1[] = Hex.decode(stringtokenizer.nextToken());
            pemobject = PEMUtilities.crypt(false, provider, abyte0, pemobject, s, abyte1);
        }
        try
        {
            pemobject = (ASN1Sequence)ASN1Object.fromByteArray(pemobject);
        }
        // Misplaced declaration of an exception variable
        catch (PemObject pemobject)
        {
            if (flag)
            {
                throw new PEMException("exception decoding - please check password and data.", pemobject);
            } else
            {
                throw new PEMException(pemobject.getMessage(), pemobject);
            }
        }
        // Misplaced declaration of an exception variable
        catch (PemObject pemobject)
        {
            if (flag)
            {
                throw new PEMException("exception decoding - please check password and data.", pemobject);
            } else
            {
                throw new PEMException(pemobject.getMessage(), pemobject);
            }
        }
        return pemobject;
    }

    public (String s)
    {
        this$0 = PEMReader.this;
        super();
        provider = s;
    }
}
