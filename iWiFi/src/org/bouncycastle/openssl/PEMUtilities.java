// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.IOException;
import java.security.Provider;
import java.security.Security;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.generators.OpenSSLPBEParametersGenerator;
import org.bouncycastle.crypto.generators.PKCS5S2ParametersGenerator;
import org.bouncycastle.crypto.params.KeyParameter;

// Referenced classes of package org.bouncycastle.openssl:
//            EncryptionException

final class PEMUtilities
{

    private static final Map KEYSIZES;
    private static final Set PKCS5_SCHEME_1;
    private static final Set PKCS5_SCHEME_2;

    PEMUtilities()
    {
    }

    static byte[] crypt(boolean flag, String s, byte abyte0[], char ac[], String s1, byte abyte1[])
        throws IOException
    {
        Provider provider = null;
        if (s != null)
        {
            Provider provider1 = Security.getProvider(s);
            provider = provider1;
            if (provider1 == null)
            {
                throw new EncryptionException((new StringBuilder()).append("cannot find provider: ").append(s).toString());
            }
        }
        return crypt(flag, provider, abyte0, ac, s1, abyte1);
    }

    static byte[] crypt(boolean flag, Provider provider, byte abyte0[], char ac[], String s, byte abyte1[])
        throws IOException
    {
        char c = '\200';
        boolean flag1 = true;
        boolean flag2 = false;
        Object obj = new IvParameterSpec(abyte1);
        String s2 = "CBC";
        String s1 = "PKCS5Padding";
        if (s.endsWith("-CFB"))
        {
            s2 = "CFB";
            s1 = "NoPadding";
        }
        if (s.endsWith("-ECB") || "DES-EDE".equals(s) || "DES-EDE3".equals(s))
        {
            s2 = "ECB";
            obj = null;
        }
        if (s.endsWith("-OFB"))
        {
            s2 = "OFB";
            s1 = "NoPadding";
        }
        if (s.startsWith("DES-EDE"))
        {
            if (!s.startsWith("DES-EDE3"))
            {
                flag2 = true;
            }
            ac = getKey(ac, "DESede", 24, abyte1, flag2);
            s = "DESede";
            abyte1 = ((byte []) (obj));
        } else
        if (s.startsWith("DES-"))
        {
            ac = getKey(ac, "DES", 8, abyte1);
            s = "DES";
            abyte1 = ((byte []) (obj));
        } else
        if (s.startsWith("BF-"))
        {
            ac = getKey(ac, "Blowfish", 16, abyte1);
            s = "Blowfish";
            abyte1 = ((byte []) (obj));
        } else
        if (s.startsWith("RC2-"))
        {
            byte abyte2[];
            if (s.startsWith("RC2-40-"))
            {
                c = '(';
            } else
            if (s.startsWith("RC2-64-"))
            {
                c = '@';
            } else
            {
                c = '\200';
            }
            s = getKey(ac, "RC2", c / 8, abyte1);
            if (obj == null)
            {
                ac = new RC2ParameterSpec(c);
            } else
            {
                ac = new RC2ParameterSpec(c, abyte1);
            }
            obj = "RC2";
            abyte1 = ac;
            ac = s;
            s = ((String) (obj));
        } else
        if (s.startsWith("AES-"))
        {
            abyte2 = abyte1;
            if (abyte1.length > 8)
            {
                abyte2 = new byte[8];
                System.arraycopy(abyte1, 0, abyte2, 0, 8);
            }
            if (!s.startsWith("AES-128-"))
            {
                if (s.startsWith("AES-192-"))
                {
                    c = '\300';
                } else
                if (s.startsWith("AES-256-"))
                {
                    c = '\u0100';
                } else
                {
                    throw new EncryptionException("unknown AES encryption with private key");
                }
            }
            ac = getKey(ac, "AES", c / 8, abyte2);
            abyte1 = ((byte []) (obj));
            s = "AES";
        } else
        {
            throw new EncryptionException("unknown encryption with private key");
        }
        s = (new StringBuilder()).append(s).append("/").append(s2).append("/").append(s1).toString();
        try
        {
            provider = Cipher.getInstance(s, provider);
        }
        // Misplaced declaration of an exception variable
        catch (Provider provider)
        {
            throw new EncryptionException("exception using cipher - please check password and data.", provider);
        }
        if (flag)
        {
            c = flag1;
        } else
        {
            c = '\002';
        }
        if (abyte1 != null)
        {
            break MISSING_BLOCK_LABEL_522;
        }
        provider.init(c, ac);
_L1:
        provider = provider.doFinal(abyte0);
        return provider;
        provider.init(c, ac, abyte1);
          goto _L1
    }

    static SecretKey generateSecretKeyForPKCS5Scheme2(String s, char ac[], byte abyte0[], int i)
    {
        PKCS5S2ParametersGenerator pkcs5s2parametersgenerator = new PKCS5S2ParametersGenerator();
        pkcs5s2parametersgenerator.init(PBEParametersGenerator.PKCS5PasswordToBytes(ac), abyte0, i);
        return new SecretKeySpec(((KeyParameter)pkcs5s2parametersgenerator.generateDerivedParameters(getKeySize(s))).getKey(), s);
    }

    private static SecretKey getKey(char ac[], String s, int i, byte abyte0[])
    {
        return getKey(ac, s, i, abyte0, false);
    }

    private static SecretKey getKey(char ac[], String s, int i, byte abyte0[], boolean flag)
    {
        OpenSSLPBEParametersGenerator opensslpbeparametersgenerator = new OpenSSLPBEParametersGenerator();
        opensslpbeparametersgenerator.init(PBEParametersGenerator.PKCS5PasswordToBytes(ac), abyte0);
        ac = ((KeyParameter)opensslpbeparametersgenerator.generateDerivedParameters(i * 8)).getKey();
        if (flag && ac.length >= 24)
        {
            System.arraycopy(ac, 0, ac, 16, 8);
        }
        return new SecretKeySpec(ac, s);
    }

    static int getKeySize(String s)
    {
        if (!KEYSIZES.containsKey(s))
        {
            throw new IllegalStateException((new StringBuilder()).append("no key size for algorithm: ").append(s).toString());
        } else
        {
            return ((Integer)KEYSIZES.get(s)).intValue();
        }
    }

    static boolean isPKCS12(DERObjectIdentifier derobjectidentifier)
    {
        return derobjectidentifier.getId().startsWith(PKCSObjectIdentifiers.pkcs_12PbeIds.getId());
    }

    static boolean isPKCS5Scheme1(DERObjectIdentifier derobjectidentifier)
    {
        return PKCS5_SCHEME_1.contains(derobjectidentifier);
    }

    static boolean isPKCS5Scheme2(DERObjectIdentifier derobjectidentifier)
    {
        return PKCS5_SCHEME_2.contains(derobjectidentifier);
    }

    static 
    {
        KEYSIZES = new HashMap();
        PKCS5_SCHEME_1 = new HashSet();
        PKCS5_SCHEME_2 = new HashSet();
        PKCS5_SCHEME_1.add(PKCSObjectIdentifiers.pbeWithMD2AndDES_CBC);
        PKCS5_SCHEME_1.add(PKCSObjectIdentifiers.pbeWithMD2AndRC2_CBC);
        PKCS5_SCHEME_1.add(PKCSObjectIdentifiers.pbeWithMD5AndDES_CBC);
        PKCS5_SCHEME_1.add(PKCSObjectIdentifiers.pbeWithMD5AndRC2_CBC);
        PKCS5_SCHEME_1.add(PKCSObjectIdentifiers.pbeWithSHA1AndDES_CBC);
        PKCS5_SCHEME_1.add(PKCSObjectIdentifiers.pbeWithSHA1AndRC2_CBC);
        PKCS5_SCHEME_2.add(PKCSObjectIdentifiers.id_PBES2);
        PKCS5_SCHEME_2.add(PKCSObjectIdentifiers.des_EDE3_CBC);
        PKCS5_SCHEME_2.add(NISTObjectIdentifiers.id_aes128_CBC);
        PKCS5_SCHEME_2.add(NISTObjectIdentifiers.id_aes192_CBC);
        PKCS5_SCHEME_2.add(NISTObjectIdentifiers.id_aes256_CBC);
        KEYSIZES.put(PKCSObjectIdentifiers.des_EDE3_CBC.getId(), new Integer(192));
        KEYSIZES.put(NISTObjectIdentifiers.id_aes128_CBC.getId(), new Integer(128));
        KEYSIZES.put(NISTObjectIdentifiers.id_aes192_CBC.getId(), new Integer(192));
        KEYSIZES.put(NISTObjectIdentifiers.id_aes256_CBC.getId(), new Integer(256));
    }
}
