// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider.asymmetric.ec;

import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.bouncycastle.jce.provider.JCEECPrivateKey;
import org.bouncycastle.jce.provider.JCEECPublicKey;
import org.bouncycastle.jce.provider.JDKKeyFactory;
import org.bouncycastle.jce.provider.ProviderUtil;
import org.bouncycastle.jce.spec.ECParameterSpec;
import org.bouncycastle.jce.spec.ECPrivateKeySpec;
import org.bouncycastle.jce.spec.ECPublicKeySpec;

// Referenced classes of package org.bouncycastle.jce.provider.asymmetric.ec:
//            EC5Util

public class KeyFactory extends JDKKeyFactory
{
    public static class EC extends KeyFactory
    {

        public EC()
        {
            super("EC");
        }
    }

    public static class ECDH extends KeyFactory
    {

        public ECDH()
        {
            super("ECDH");
        }
    }

    public static class ECDHC extends KeyFactory
    {

        public ECDHC()
        {
            super("ECDHC");
        }
    }

    public static class ECDSA extends KeyFactory
    {

        public ECDSA()
        {
            super("ECDSA");
        }
    }

    public static class ECGOST3410 extends KeyFactory
    {

        public ECGOST3410()
        {
            super("ECGOST3410");
        }
    }

    public static class ECMQV extends KeyFactory
    {

        public ECMQV()
        {
            super("ECMQV");
        }
    }


    String algorithm;

    KeyFactory(String s)
    {
        algorithm = s;
    }

    protected PrivateKey engineGeneratePrivate(KeySpec keyspec)
        throws InvalidKeySpecException
    {
        if (keyspec instanceof PKCS8EncodedKeySpec)
        {
            try
            {
                keyspec = (JCEECPrivateKey)JDKKeyFactory.createPrivateKeyFromDERStream(((PKCS8EncodedKeySpec)keyspec).getEncoded());
                keyspec = new JCEECPrivateKey(algorithm, keyspec);
            }
            // Misplaced declaration of an exception variable
            catch (KeySpec keyspec)
            {
                throw new InvalidKeySpecException(keyspec.toString());
            }
            return keyspec;
        }
        if (keyspec instanceof ECPrivateKeySpec)
        {
            return new JCEECPrivateKey(algorithm, (ECPrivateKeySpec)keyspec);
        }
        if (keyspec instanceof java.security.spec.ECPrivateKeySpec)
        {
            return new JCEECPrivateKey(algorithm, (java.security.spec.ECPrivateKeySpec)keyspec);
        } else
        {
            throw new InvalidKeySpecException((new StringBuilder()).append("Unknown KeySpec type: ").append(keyspec.getClass().getName()).toString());
        }
    }

    protected PublicKey engineGeneratePublic(KeySpec keyspec)
        throws InvalidKeySpecException
    {
        if (keyspec instanceof X509EncodedKeySpec)
        {
            try
            {
                keyspec = (JCEECPublicKey)JDKKeyFactory.createPublicKeyFromDERStream(((X509EncodedKeySpec)keyspec).getEncoded());
                keyspec = new JCEECPublicKey(algorithm, keyspec);
            }
            // Misplaced declaration of an exception variable
            catch (KeySpec keyspec)
            {
                throw new InvalidKeySpecException(keyspec.toString());
            }
            return keyspec;
        }
        if (keyspec instanceof ECPublicKeySpec)
        {
            return new JCEECPublicKey(algorithm, (ECPublicKeySpec)keyspec);
        }
        if (keyspec instanceof java.security.spec.ECPublicKeySpec)
        {
            return new JCEECPublicKey(algorithm, (java.security.spec.ECPublicKeySpec)keyspec);
        } else
        {
            throw new InvalidKeySpecException((new StringBuilder()).append("Unknown KeySpec type: ").append(keyspec.getClass().getName()).toString());
        }
    }

    protected KeySpec engineGetKeySpec(Key key, Class class1)
        throws InvalidKeySpecException
    {
        if (class1.isAssignableFrom(java/security/spec/PKCS8EncodedKeySpec) && key.getFormat().equals("PKCS#8"))
        {
            return new PKCS8EncodedKeySpec(key.getEncoded());
        }
        if (class1.isAssignableFrom(java/security/spec/X509EncodedKeySpec) && key.getFormat().equals("X.509"))
        {
            return new X509EncodedKeySpec(key.getEncoded());
        }
        if (class1.isAssignableFrom(java/security/spec/ECPublicKeySpec) && (key instanceof ECPublicKey))
        {
            key = (ECPublicKey)key;
            if (key.getParams() != null)
            {
                return new java.security.spec.ECPublicKeySpec(key.getW(), key.getParams());
            } else
            {
                class1 = ProviderUtil.getEcImplicitlyCa();
                return new java.security.spec.ECPublicKeySpec(key.getW(), EC5Util.convertSpec(EC5Util.convertCurve(class1.getCurve(), class1.getSeed()), class1));
            }
        }
        if (class1.isAssignableFrom(java/security/spec/ECPrivateKeySpec) && (key instanceof ECPrivateKey))
        {
            key = (ECPrivateKey)key;
            if (key.getParams() != null)
            {
                return new java.security.spec.ECPrivateKeySpec(key.getS(), key.getParams());
            } else
            {
                class1 = ProviderUtil.getEcImplicitlyCa();
                return new java.security.spec.ECPrivateKeySpec(key.getS(), EC5Util.convertSpec(EC5Util.convertCurve(class1.getCurve(), class1.getSeed()), class1));
            }
        } else
        {
            throw new RuntimeException((new StringBuilder()).append("not implemented yet ").append(key).append(" ").append(class1).toString());
        }
    }

    protected Key engineTranslateKey(Key key)
        throws InvalidKeyException
    {
        if (key instanceof ECPublicKey)
        {
            return new JCEECPublicKey((ECPublicKey)key);
        }
        if (key instanceof ECPrivateKey)
        {
            return new JCEECPrivateKey((ECPrivateKey)key);
        } else
        {
            throw new InvalidKeyException("key type unknown");
        }
    }
}
