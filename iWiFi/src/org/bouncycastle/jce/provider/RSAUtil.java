// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.params.RSAPrivateCrtKeyParameters;

class RSAUtil
{

    RSAUtil()
    {
    }

    static RSAKeyParameters generatePrivateKeyParameter(RSAPrivateKey rsaprivatekey)
    {
        if (rsaprivatekey instanceof RSAPrivateCrtKey)
        {
            rsaprivatekey = (RSAPrivateCrtKey)rsaprivatekey;
            return new RSAPrivateCrtKeyParameters(rsaprivatekey.getModulus(), rsaprivatekey.getPublicExponent(), rsaprivatekey.getPrivateExponent(), rsaprivatekey.getPrimeP(), rsaprivatekey.getPrimeQ(), rsaprivatekey.getPrimeExponentP(), rsaprivatekey.getPrimeExponentQ(), rsaprivatekey.getCrtCoefficient());
        } else
        {
            return new RSAKeyParameters(true, rsaprivatekey.getModulus(), rsaprivatekey.getPrivateExponent());
        }
    }

    static RSAKeyParameters generatePublicKeyParameter(RSAPublicKey rsapublickey)
    {
        return new RSAKeyParameters(false, rsapublickey.getModulus(), rsapublickey.getPublicExponent());
    }

    static boolean isRsaOid(DERObjectIdentifier derobjectidentifier)
    {
        return derobjectidentifier.equals(PKCSObjectIdentifiers.rsaEncryption) || derobjectidentifier.equals(X509ObjectIdentifiers.id_ea_rsa) || derobjectidentifier.equals(PKCSObjectIdentifiers.id_RSASSA_PSS) || derobjectidentifier.equals(PKCSObjectIdentifiers.id_RSAES_OAEP);
    }
}
