// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import java.io.PrintStream;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Security;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            Base64Encoder, Base64Decoder

public class AESEN
{

    private final String CIPHERMODEPADDING = "AES/CBC/PKCS7Padding";
    private final int HASH_ITERATIONS = 10000;
    private IvParameterSpec IV;
    private final String KEY_GENERATION_ALG = "PBKDF2WithHmacSHA1";
    private final int KEY_LENGTH = 256;
    private char humanPassphrase[] = {
        'P', 'e', 'r', ' ', 'v', 'a', 'l', 'l', 'u', 'm', 
        ' ', 'd', 'u', 'c', 'e', 's', ' ', 'L', 'a', 'b', 
        'a', 'n', 't'
    };
    private byte iv[] = {
        10, 1, 11, 5, 4, 15, 7, 9, 23, 3, 
        1, 6, 8, 12, 13, 91
    };
    private SecretKeyFactory keyfactory;
    private PBEKeySpec myKeyspec;
    private byte salt[];
    private SecretKey sk;
    private SecretKeySpec skforAES;

    public AESEN()
    {
        byte abyte0[] = new byte[16];
        abyte0[1] = 1;
        abyte0[2] = 2;
        abyte0[3] = 3;
        abyte0[4] = 4;
        abyte0[5] = 5;
        abyte0[6] = 6;
        abyte0[7] = 7;
        abyte0[8] = 8;
        abyte0[9] = 9;
        abyte0[10] = 10;
        abyte0[11] = 11;
        abyte0[12] = 12;
        abyte0[13] = 13;
        abyte0[14] = 14;
        abyte0[15] = 15;
        salt = abyte0;
        myKeyspec = new PBEKeySpec(humanPassphrase, salt, 10000, 256);
        keyfactory = null;
        sk = null;
        skforAES = null;
        try
        {
            keyfactory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
            sk = keyfactory.generateSecret(myKeyspec);
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            System.out.println("no key factory support for PBEWITHSHAANDTWOFISH-CBC");
        }
        catch (InvalidKeySpecException invalidkeyspecexception)
        {
            System.out.println("invalid key spec for PBEWITHSHAANDTWOFISH-CBC");
        }
        abyte0 = sk.getEncoded();
        System.out.println((new StringBuilder("skAsByteArray=")).append(abyte0.length).append(",").append(Base64Encoder.encode(abyte0)).toString());
        skforAES = new SecretKeySpec(abyte0, "AES");
        IV = new IvParameterSpec(iv);
    }

    private byte[] addPadding(byte abyte0[])
    {
        byte abyte1[];
        int i;
        int j;
        j = 16 - abyte0.length % 16;
        i = j;
        if (j == 0)
        {
            i = 16;
        }
        abyte1 = new byte[abyte0.length + i];
        j = 0;
_L3:
        if (j < abyte0.length) goto _L2; else goto _L1
_L1:
        j = abyte0.length;
_L4:
        if (j >= abyte0.length + i)
        {
            return abyte1;
        }
        break MISSING_BLOCK_LABEL_70;
_L2:
        abyte1[j] = abyte0[j];
        j++;
          goto _L3
        abyte1[j] = (byte)i;
        j++;
          goto _L4
    }

    private byte[] decrypt(String s, SecretKey secretkey, IvParameterSpec ivparameterspec, byte abyte0[])
    {
        Security.addProvider(new BouncyCastleProvider());
        s = Cipher.getInstance(s);
        s.init(2, secretkey, ivparameterspec);
        s = s.doFinal(abyte0);
        return s;
        s;
        s.printStackTrace();
_L2:
        return null;
        s;
        s.printStackTrace();
        continue; /* Loop/switch isn't completed */
        s;
        continue; /* Loop/switch isn't completed */
        s;
        continue; /* Loop/switch isn't completed */
        s;
        continue; /* Loop/switch isn't completed */
        s;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private byte[] dropPadding(byte abyte0[])
    {
        int i = abyte0[abyte0.length - 1];
        byte abyte1[] = new byte[abyte0.length - i];
        i = 0;
        do
        {
            if (i >= abyte1.length)
            {
                return abyte1;
            }
            abyte1[i] = abyte0[i];
            abyte0[i] = 0;
            i++;
        } while (true);
    }

    private byte[] encrypt(String s, SecretKey secretkey, IvParameterSpec ivparameterspec, byte abyte0[])
        throws NoSuchProviderException
    {
        Security.addProvider(new BouncyCastleProvider());
        System.out.println((new StringBuilder("cmp=")).append(s).toString());
        Cipher cipher = Cipher.getInstance(s, "BC");
        cipher.init(1, secretkey, ivparameterspec);
        secretkey = cipher.doFinal(abyte0);
        return secretkey;
        secretkey;
        System.out.println((new StringBuilder("no cipher getinstance support for ")).append(s).toString());
_L2:
        return null;
        secretkey;
        System.out.println((new StringBuilder("no cipher getinstance support for padding ")).append(s).toString());
        continue; /* Loop/switch isn't completed */
        s;
        System.out.println("invalid key exception");
        continue; /* Loop/switch isn't completed */
        s;
        System.out.println("invalid algorithm parameter exception");
        continue; /* Loop/switch isn't completed */
        s;
        System.out.println("illegal block size exception");
        continue; /* Loop/switch isn't completed */
        s;
        System.out.println("bad padding exception");
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String decrypt(String s)
    {
        s = Base64Decoder.decodeToBytes(s);
        return new String(decrypt("AES/CBC/PKCS7Padding", ((SecretKey) (skforAES)), IV, ((byte []) (s))));
    }

    public String encrypt(byte abyte0[])
        throws GeneralSecurityException
    {
        abyte0 = encrypt("AES/CBC/PKCS7Padding", ((SecretKey) (skforAES)), IV, abyte0);
        System.out.println((new StringBuilder("ciphertext=")).append(abyte0).toString());
        return Base64Encoder.encode(abyte0);
    }
}
