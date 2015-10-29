// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider.asymmetric.ec;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import java.util.Hashtable;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.bouncycastle.asn1.nist.NISTNamedCurves;
import org.bouncycastle.asn1.sec.SECNamedCurves;
import org.bouncycastle.asn1.teletrust.TeleTrusTNamedCurves;
import org.bouncycastle.asn1.x9.X962NamedCurves;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.generators.ECKeyPairGenerator;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECKeyGenerationParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.jce.provider.JCEECPrivateKey;
import org.bouncycastle.jce.provider.JCEECPublicKey;
import org.bouncycastle.jce.provider.JDKKeyPairGenerator;
import org.bouncycastle.jce.provider.ProviderUtil;
import org.bouncycastle.jce.spec.ECNamedCurveSpec;
import org.bouncycastle.jce.spec.ECParameterSpec;

// Referenced classes of package org.bouncycastle.jce.provider.asymmetric.ec:
//            EC5Util

public abstract class KeyPairGenerator extends JDKKeyPairGenerator
{
    public static class EC extends KeyPairGenerator
    {

        private static Hashtable ecParameters;
        String algorithm;
        int certainty;
        Object ecParams;
        ECKeyPairGenerator engine;
        boolean initialised;
        ECKeyGenerationParameters param;
        SecureRandom random;
        int strength;

        public KeyPair generateKeyPair()
        {
            if (!initialised)
            {
                throw new IllegalStateException("EC Key Pair Generator not initialised");
            }
            Object obj = engine.generateKeyPair();
            Object obj1 = (ECPublicKeyParameters)((AsymmetricCipherKeyPair) (obj)).getPublic();
            obj = (ECPrivateKeyParameters)((AsymmetricCipherKeyPair) (obj)).getPrivate();
            if (ecParams instanceof ECParameterSpec)
            {
                ECParameterSpec ecparameterspec = (ECParameterSpec)ecParams;
                obj1 = new JCEECPublicKey(algorithm, ((ECPublicKeyParameters) (obj1)), ecparameterspec);
                return new KeyPair(((java.security.PublicKey) (obj1)), new JCEECPrivateKey(algorithm, ((ECPrivateKeyParameters) (obj)), ((JCEECPublicKey) (obj1)), ecparameterspec));
            }
            if (ecParams == null)
            {
                return new KeyPair(new JCEECPublicKey(algorithm, ((ECPublicKeyParameters) (obj1))), new JCEECPrivateKey(algorithm, ((ECPrivateKeyParameters) (obj))));
            } else
            {
                java.security.spec.ECParameterSpec ecparameterspec1 = (java.security.spec.ECParameterSpec)ecParams;
                obj1 = new JCEECPublicKey(algorithm, ((ECPublicKeyParameters) (obj1)), ecparameterspec1);
                return new KeyPair(((java.security.PublicKey) (obj1)), new JCEECPrivateKey(algorithm, ((ECPrivateKeyParameters) (obj)), ((JCEECPublicKey) (obj1)), ecparameterspec1));
            }
        }

        public void initialize(int i, SecureRandom securerandom)
        {
            strength = i;
            random = securerandom;
            ecParams = ecParameters.get(new Integer(i));
            if (ecParams != null)
            {
                try
                {
                    initialize(((AlgorithmParameterSpec) ((ECGenParameterSpec)ecParams)), securerandom);
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (SecureRandom securerandom)
                {
                    throw new InvalidParameterException("key size not configurable.");
                }
            } else
            {
                throw new InvalidParameterException("unknown key size.");
            }
        }

        public void initialize(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
            throws InvalidAlgorithmParameterException
        {
            if (algorithmparameterspec instanceof ECParameterSpec)
            {
                ECParameterSpec ecparameterspec = (ECParameterSpec)algorithmparameterspec;
                ecParams = algorithmparameterspec;
                param = new ECKeyGenerationParameters(new ECDomainParameters(ecparameterspec.getCurve(), ecparameterspec.getG(), ecparameterspec.getN()), securerandom);
                engine.init(param);
                initialised = true;
                return;
            }
            if (algorithmparameterspec instanceof java.security.spec.ECParameterSpec)
            {
                java.security.spec.ECParameterSpec ecparameterspec1 = (java.security.spec.ECParameterSpec)algorithmparameterspec;
                ecParams = algorithmparameterspec;
                algorithmparameterspec = EC5Util.convertCurve(ecparameterspec1.getCurve());
                param = new ECKeyGenerationParameters(new ECDomainParameters(algorithmparameterspec, EC5Util.convertPoint(algorithmparameterspec, ecparameterspec1.getGenerator(), false), ecparameterspec1.getOrder(), BigInteger.valueOf(ecparameterspec1.getCofactor())), securerandom);
                engine.init(param);
                initialised = true;
                return;
            }
            if (!(algorithmparameterspec instanceof ECGenParameterSpec)) goto _L2; else goto _L1
_L1:
            String s = ((ECGenParameterSpec)algorithmparameterspec).getName();
            if (!algorithm.equals("ECGOST3410")) goto _L4; else goto _L3
_L3:
            algorithmparameterspec = ECGOST3410NamedCurves.getByName(s);
            if (algorithmparameterspec == null)
            {
                throw new InvalidAlgorithmParameterException((new StringBuilder()).append("unknown curve name: ").append(s).toString());
            }
            ecParams = new ECNamedCurveSpec(s, algorithmparameterspec.getCurve(), algorithmparameterspec.getG(), algorithmparameterspec.getN(), algorithmparameterspec.getH(), algorithmparameterspec.getSeed());
_L5:
            algorithmparameterspec = (java.security.spec.ECParameterSpec)ecParams;
            org.bouncycastle.math.ec.ECCurve eccurve = EC5Util.convertCurve(algorithmparameterspec.getCurve());
            param = new ECKeyGenerationParameters(new ECDomainParameters(eccurve, EC5Util.convertPoint(eccurve, algorithmparameterspec.getGenerator(), false), algorithmparameterspec.getOrder(), BigInteger.valueOf(algorithmparameterspec.getCofactor())), securerandom);
            engine.init(param);
            initialised = true;
            return;
_L4:
            Object obj = X962NamedCurves.getByName(s);
            algorithmparameterspec = ((AlgorithmParameterSpec) (obj));
            if (obj != null)
            {
                break MISSING_BLOCK_LABEL_484;
            }
            obj = SECNamedCurves.getByName(s);
            algorithmparameterspec = ((AlgorithmParameterSpec) (obj));
            if (obj == null)
            {
                algorithmparameterspec = NISTNamedCurves.getByName(s);
            }
            obj = algorithmparameterspec;
            if (algorithmparameterspec == null)
            {
                obj = TeleTrusTNamedCurves.getByName(s);
            }
            algorithmparameterspec = ((AlgorithmParameterSpec) (obj));
            if (obj != null)
            {
                break MISSING_BLOCK_LABEL_484;
            }
            DERObjectIdentifier derobjectidentifier;
            try
            {
                derobjectidentifier = new DERObjectIdentifier(s);
                obj = X962NamedCurves.getByOID(derobjectidentifier);
            }
            // Misplaced declaration of an exception variable
            catch (AlgorithmParameterSpec algorithmparameterspec)
            {
                throw new InvalidAlgorithmParameterException((new StringBuilder()).append("unknown curve name: ").append(s).toString());
            }
            algorithmparameterspec = ((AlgorithmParameterSpec) (obj));
            if (obj != null)
            {
                break MISSING_BLOCK_LABEL_398;
            }
            algorithmparameterspec = SECNamedCurves.getByOID(derobjectidentifier);
            obj = algorithmparameterspec;
            if (algorithmparameterspec != null)
            {
                break MISSING_BLOCK_LABEL_410;
            }
            obj = NISTNamedCurves.getByOID(derobjectidentifier);
            algorithmparameterspec = ((AlgorithmParameterSpec) (obj));
            if (obj != null)
            {
                break MISSING_BLOCK_LABEL_422;
            }
            algorithmparameterspec = TeleTrusTNamedCurves.getByOID(derobjectidentifier);
            if (algorithmparameterspec != null)
            {
                break MISSING_BLOCK_LABEL_484;
            }
            throw new InvalidAlgorithmParameterException((new StringBuilder()).append("unknown curve OID: ").append(s).toString());
            ecParams = new ECNamedCurveSpec(s, algorithmparameterspec.getCurve(), algorithmparameterspec.getG(), algorithmparameterspec.getN(), algorithmparameterspec.getH(), null);
            if (true) goto _L5; else goto _L2
_L2:
            if (algorithmparameterspec == null && ProviderUtil.getEcImplicitlyCa() != null)
            {
                ECParameterSpec ecparameterspec2 = ProviderUtil.getEcImplicitlyCa();
                ecParams = algorithmparameterspec;
                param = new ECKeyGenerationParameters(new ECDomainParameters(ecparameterspec2.getCurve(), ecparameterspec2.getG(), ecparameterspec2.getN()), securerandom);
                engine.init(param);
                initialised = true;
                return;
            }
            if (algorithmparameterspec == null && ProviderUtil.getEcImplicitlyCa() == null)
            {
                throw new InvalidAlgorithmParameterException("null parameter passed but no implicitCA set");
            } else
            {
                throw new InvalidAlgorithmParameterException("parameter object not a ECParameterSpec");
            }
        }

        static 
        {
            ecParameters = new Hashtable();
            ecParameters.put(new Integer(192), new ECGenParameterSpec("prime192v1"));
            ecParameters.put(new Integer(239), new ECGenParameterSpec("prime239v1"));
            ecParameters.put(new Integer(256), new ECGenParameterSpec("prime256v1"));
            ecParameters.put(new Integer(224), new ECGenParameterSpec("P-224"));
            ecParameters.put(new Integer(384), new ECGenParameterSpec("P-384"));
            ecParameters.put(new Integer(521), new ECGenParameterSpec("P-521"));
        }

        public EC()
        {
            super("EC");
            engine = new ECKeyPairGenerator();
            ecParams = null;
            strength = 239;
            certainty = 50;
            random = new SecureRandom();
            initialised = false;
            algorithm = "EC";
        }

        public EC(String s)
        {
            super(s);
            engine = new ECKeyPairGenerator();
            ecParams = null;
            strength = 239;
            certainty = 50;
            random = new SecureRandom();
            initialised = false;
            algorithm = s;
        }
    }

    public static class ECDH extends EC
    {

        public ECDH()
        {
            super("ECDH");
        }
    }

    public static class ECDHC extends EC
    {

        public ECDHC()
        {
            super("ECDHC");
        }
    }

    public static class ECDSA extends EC
    {

        public ECDSA()
        {
            super("ECDSA");
        }
    }

    public static class ECGOST3410 extends EC
    {

        public ECGOST3410()
        {
            super("ECGOST3410");
        }
    }

    public static class ECMQV extends EC
    {

        public ECMQV()
        {
            super("ECMQV");
        }
    }


    public KeyPairGenerator(String s)
    {
        super(s);
    }
}
