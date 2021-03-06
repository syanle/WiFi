// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider.asymmetric;

import java.util.HashMap;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.eac.EACObjectIdentifiers;
import org.bouncycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;

public class EC
{
    public static class Mappings extends HashMap
    {

        private void addSignatureAlgorithm(String s, String s1, String s2, DERObjectIdentifier derobjectidentifier)
        {
            String s3 = (new StringBuilder()).append(s).append("WITH").append(s1).toString();
            String s4 = (new StringBuilder()).append(s).append("with").append(s1).toString();
            String s5 = (new StringBuilder()).append(s).append("With").append(s1).toString();
            s = (new StringBuilder()).append(s).append("/").append(s1).toString();
            put((new StringBuilder()).append("Signature.").append(s3).toString(), s2);
            put((new StringBuilder()).append("Alg.Alias.Signature.").append(s4).toString(), s3);
            put((new StringBuilder()).append("Alg.Alias.Signature.").append(s5).toString(), s3);
            put((new StringBuilder()).append("Alg.Alias.Signature.").append(s).toString(), s3);
            put((new StringBuilder()).append("Alg.Alias.Signature.").append(derobjectidentifier).toString(), s3);
            put((new StringBuilder()).append("Alg.Alias.Signature.OID.").append(derobjectidentifier).toString(), s3);
        }

        public Mappings()
        {
            put("KeyAgreement.ECDH", "org.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$DH");
            put("KeyAgreement.ECDHC", "org.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$DHC");
            put("KeyAgreement.ECMQV", "org.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$MQV");
            put((new StringBuilder()).append("KeyAgreement.").append(X9ObjectIdentifiers.dhSinglePass_stdDH_sha1kdf_scheme).toString(), "org.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$DHwithSHA1KDF");
            put((new StringBuilder()).append("KeyAgreement.").append(X9ObjectIdentifiers.mqvSinglePass_sha1kdf_scheme).toString(), "org.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$MQVwithSHA1KDF");
            put("KeyFactory.EC", "org.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$EC");
            put("KeyFactory.ECDSA", "org.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$ECDSA");
            put("KeyFactory.ECDH", "org.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$ECDH");
            put("KeyFactory.ECDHC", "org.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$ECDHC");
            put("KeyFactory.ECMQV", "org.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$ECMQV");
            put((new StringBuilder()).append("Alg.Alias.KeyFactory.").append(X9ObjectIdentifiers.id_ecPublicKey).toString(), "EC");
            put((new StringBuilder()).append("Alg.Alias.KeyFactory.").append(X9ObjectIdentifiers.dhSinglePass_stdDH_sha1kdf_scheme).toString(), "EC");
            put((new StringBuilder()).append("Alg.Alias.KeyFactory.").append(X9ObjectIdentifiers.mqvSinglePass_sha1kdf_scheme).toString(), "ECMQV");
            put("KeyFactory.ECGOST3410", "org.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$ECGOST3410");
            put("Alg.Alias.KeyFactory.GOST-3410-2001", "ECGOST3410");
            put("Alg.Alias.KeyFactory.ECGOST-3410", "ECGOST3410");
            put((new StringBuilder()).append("Alg.Alias.KeyFactory.").append(CryptoProObjectIdentifiers.gostR3410_2001).toString(), "ECGOST3410");
            put("KeyPairGenerator.EC", "org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$EC");
            put("KeyPairGenerator.ECDSA", "org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECDSA");
            put("KeyPairGenerator.ECDH", "org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECDH");
            put("KeyPairGenerator.ECDHC", "org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECDHC");
            put("KeyPairGenerator.ECIES", "org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECDH");
            put("KeyPairGenerator.ECMQV", "org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECMQV");
            put((new StringBuilder()).append("Alg.Alias.KeyPairGenerator.").append(X9ObjectIdentifiers.dhSinglePass_stdDH_sha1kdf_scheme).toString(), "EC");
            put((new StringBuilder()).append("Alg.Alias.KeyPairGenerator.").append(X9ObjectIdentifiers.mqvSinglePass_sha1kdf_scheme).toString(), "ECMQV");
            put("KeyPairGenerator.ECGOST3410", "org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECGOST3410");
            put("Alg.Alias.KeyPairGenerator.ECGOST-3410", "ECGOST3410");
            put("Alg.Alias.KeyPairGenerator.GOST-3410-2001", "ECGOST3410");
            put("Signature.ECDSA", "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA");
            put("Signature.NONEwithECDSA", "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSAnone");
            put("Alg.Alias.Signature.SHA1withECDSA", "ECDSA");
            put("Alg.Alias.Signature.ECDSAwithSHA1", "ECDSA");
            put("Alg.Alias.Signature.SHA1WITHECDSA", "ECDSA");
            put("Alg.Alias.Signature.ECDSAWITHSHA1", "ECDSA");
            put("Alg.Alias.Signature.SHA1WithECDSA", "ECDSA");
            put("Alg.Alias.Signature.ECDSAWithSHA1", "ECDSA");
            put("Alg.Alias.Signature.1.2.840.10045.4.1", "ECDSA");
            put((new StringBuilder()).append("Alg.Alias.Signature.").append(TeleTrusTObjectIdentifiers.ecSignWithSha1).toString(), "ECDSA");
            addSignatureAlgorithm("SHA224", "ECDSA", "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA224", X9ObjectIdentifiers.ecdsa_with_SHA224);
            addSignatureAlgorithm("SHA256", "ECDSA", "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA256", X9ObjectIdentifiers.ecdsa_with_SHA256);
            addSignatureAlgorithm("SHA384", "ECDSA", "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA384", X9ObjectIdentifiers.ecdsa_with_SHA384);
            addSignatureAlgorithm("SHA512", "ECDSA", "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA512", X9ObjectIdentifiers.ecdsa_with_SHA512);
            addSignatureAlgorithm("RIPEMD160", "ECDSA", "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSARipeMD160", TeleTrusTObjectIdentifiers.ecSignWithRipemd160);
            put("Signature.SHA1WITHECNR", "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR");
            put("Signature.SHA224WITHECNR", "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR224");
            put("Signature.SHA256WITHECNR", "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR256");
            put("Signature.SHA384WITHECNR", "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR384");
            put("Signature.SHA512WITHECNR", "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR512");
            addSignatureAlgorithm("SHA1", "CVC-ECDSA", "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecCVCDSA", EACObjectIdentifiers.id_TA_ECDSA_SHA_1);
            addSignatureAlgorithm("SHA224", "CVC-ECDSA", "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecCVCDSA224", EACObjectIdentifiers.id_TA_ECDSA_SHA_224);
            addSignatureAlgorithm("SHA256", "CVC-ECDSA", "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecCVCDSA256", EACObjectIdentifiers.id_TA_ECDSA_SHA_256);
        }
    }


    public EC()
    {
    }
}
