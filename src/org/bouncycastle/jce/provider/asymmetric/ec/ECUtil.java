// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider.asymmetric.ec;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.bouncycastle.asn1.nist.NISTNamedCurves;
import org.bouncycastle.asn1.sec.SECNamedCurves;
import org.bouncycastle.asn1.teletrust.TeleTrusTNamedCurves;
import org.bouncycastle.asn1.x9.X962NamedCurves;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.jce.interfaces.ECPrivateKey;
import org.bouncycastle.jce.interfaces.ECPublicKey;
import org.bouncycastle.jce.provider.JCEECPublicKey;
import org.bouncycastle.jce.provider.ProviderUtil;
import org.bouncycastle.jce.spec.ECParameterSpec;

// Referenced classes of package org.bouncycastle.jce.provider.asymmetric.ec:
//            EC5Util

public class ECUtil
{

    public ECUtil()
    {
    }

    static int[] convertMidTerms(int ai[])
    {
        int ai1[] = new int[3];
        if (ai.length == 1)
        {
            ai1[0] = ai[0];
            return ai1;
        }
        if (ai.length != 3)
        {
            throw new IllegalArgumentException("Only Trinomials and pentanomials supported");
        }
        if (ai[0] < ai[1] && ai[0] < ai[2])
        {
            ai1[0] = ai[0];
            if (ai[1] < ai[2])
            {
                ai1[1] = ai[1];
                ai1[2] = ai[2];
                return ai1;
            } else
            {
                ai1[1] = ai[2];
                ai1[2] = ai[1];
                return ai1;
            }
        }
        if (ai[1] < ai[2])
        {
            ai1[0] = ai[1];
            if (ai[0] < ai[2])
            {
                ai1[1] = ai[0];
                ai1[2] = ai[2];
                return ai1;
            } else
            {
                ai1[1] = ai[2];
                ai1[2] = ai[0];
                return ai1;
            }
        }
        ai1[0] = ai[2];
        if (ai[0] < ai[1])
        {
            ai1[1] = ai[0];
            ai1[2] = ai[1];
            return ai1;
        } else
        {
            ai1[1] = ai[1];
            ai1[2] = ai[0];
            return ai1;
        }
    }

    public static AsymmetricKeyParameter generatePrivateKeyParameter(PrivateKey privatekey)
        throws InvalidKeyException
    {
        if (privatekey instanceof ECPrivateKey)
        {
            ECPrivateKey ecprivatekey = (ECPrivateKey)privatekey;
            privatekey = ecprivatekey.getParameters();
            if (privatekey == null)
            {
                privatekey = ProviderUtil.getEcImplicitlyCa();
            }
            return new ECPrivateKeyParameters(ecprivatekey.getD(), new ECDomainParameters(privatekey.getCurve(), privatekey.getG(), privatekey.getN(), privatekey.getH(), privatekey.getSeed()));
        } else
        {
            throw new InvalidKeyException("can't identify EC private key.");
        }
    }

    public static AsymmetricKeyParameter generatePublicKeyParameter(PublicKey publickey)
        throws InvalidKeyException
    {
        if (publickey instanceof ECPublicKey)
        {
            publickey = (ECPublicKey)publickey;
            ECParameterSpec ecparameterspec = publickey.getParameters();
            if (ecparameterspec == null)
            {
                ecparameterspec = ProviderUtil.getEcImplicitlyCa();
                return new ECPublicKeyParameters(((JCEECPublicKey)publickey).engineGetQ(), new ECDomainParameters(ecparameterspec.getCurve(), ecparameterspec.getG(), ecparameterspec.getN(), ecparameterspec.getH(), ecparameterspec.getSeed()));
            } else
            {
                return new ECPublicKeyParameters(publickey.getQ(), new ECDomainParameters(ecparameterspec.getCurve(), ecparameterspec.getG(), ecparameterspec.getN(), ecparameterspec.getH(), ecparameterspec.getSeed()));
            }
        }
        if (publickey instanceof java.security.interfaces.ECPublicKey)
        {
            publickey = (java.security.interfaces.ECPublicKey)publickey;
            ECParameterSpec ecparameterspec1 = EC5Util.convertSpec(publickey.getParams(), false);
            return new ECPublicKeyParameters(EC5Util.convertPoint(publickey.getParams(), publickey.getW(), false), new ECDomainParameters(ecparameterspec1.getCurve(), ecparameterspec1.getG(), ecparameterspec1.getN(), ecparameterspec1.getH(), ecparameterspec1.getSeed()));
        } else
        {
            throw new InvalidKeyException("cannot identify EC public key.");
        }
    }

    public static String getCurveName(DERObjectIdentifier derobjectidentifier)
    {
        String s1 = X962NamedCurves.getName(derobjectidentifier);
        String s = s1;
        if (s1 == null)
        {
            String s2 = SECNamedCurves.getName(derobjectidentifier);
            s = s2;
            if (s2 == null)
            {
                s = NISTNamedCurves.getName(derobjectidentifier);
            }
            s2 = s;
            if (s == null)
            {
                s2 = TeleTrusTNamedCurves.getName(derobjectidentifier);
            }
            s = s2;
            if (s2 == null)
            {
                s = ECGOST3410NamedCurves.getName(derobjectidentifier);
            }
        }
        return s;
    }

    public static X9ECParameters getNamedCurveByOid(DERObjectIdentifier derobjectidentifier)
    {
        X9ECParameters x9ecparameters = X962NamedCurves.getByOID(derobjectidentifier);
        X9ECParameters x9ecparameters2 = x9ecparameters;
        if (x9ecparameters == null)
        {
            x9ecparameters2 = SECNamedCurves.getByOID(derobjectidentifier);
            X9ECParameters x9ecparameters1 = x9ecparameters2;
            if (x9ecparameters2 == null)
            {
                x9ecparameters1 = NISTNamedCurves.getByOID(derobjectidentifier);
            }
            x9ecparameters2 = x9ecparameters1;
            if (x9ecparameters1 == null)
            {
                x9ecparameters2 = TeleTrusTNamedCurves.getByOID(derobjectidentifier);
            }
        }
        return x9ecparameters2;
    }

    public static DERObjectIdentifier getNamedCurveOid(String s)
    {
        DERObjectIdentifier derobjectidentifier1 = X962NamedCurves.getOID(s);
        DERObjectIdentifier derobjectidentifier = derobjectidentifier1;
        if (derobjectidentifier1 == null)
        {
            DERObjectIdentifier derobjectidentifier2 = SECNamedCurves.getOID(s);
            derobjectidentifier = derobjectidentifier2;
            if (derobjectidentifier2 == null)
            {
                derobjectidentifier = NISTNamedCurves.getOID(s);
            }
            derobjectidentifier2 = derobjectidentifier;
            if (derobjectidentifier == null)
            {
                derobjectidentifier2 = TeleTrusTNamedCurves.getOID(s);
            }
            derobjectidentifier = derobjectidentifier2;
            if (derobjectidentifier2 == null)
            {
                derobjectidentifier = ECGOST3410NamedCurves.getOID(s);
            }
        }
        return derobjectidentifier;
    }
}
