// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.engines.AESFastEngine;
import org.bouncycastle.crypto.engines.DESEngine;
import org.bouncycastle.crypto.engines.DESedeEngine;
import org.bouncycastle.crypto.engines.GOST28147Engine;
import org.bouncycastle.crypto.engines.RC2Engine;
import org.bouncycastle.crypto.engines.TwofishEngine;
import org.bouncycastle.crypto.modes.AEADBlockCipher;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.modes.CCMBlockCipher;
import org.bouncycastle.crypto.modes.CFBBlockCipher;
import org.bouncycastle.crypto.modes.CTSBlockCipher;
import org.bouncycastle.crypto.modes.EAXBlockCipher;
import org.bouncycastle.crypto.modes.GCMBlockCipher;
import org.bouncycastle.crypto.modes.GOFBBlockCipher;
import org.bouncycastle.crypto.modes.OFBBlockCipher;
import org.bouncycastle.crypto.modes.OpenPGPCFBBlockCipher;
import org.bouncycastle.crypto.modes.PGPCFBBlockCipher;
import org.bouncycastle.crypto.modes.SICBlockCipher;
import org.bouncycastle.crypto.paddings.BlockCipherPadding;
import org.bouncycastle.crypto.paddings.ISO10126d2Padding;
import org.bouncycastle.crypto.paddings.ISO7816d4Padding;
import org.bouncycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.bouncycastle.crypto.paddings.TBCPadding;
import org.bouncycastle.crypto.paddings.X923Padding;
import org.bouncycastle.crypto.paddings.ZeroBytePadding;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.ParametersWithSBox;
import org.bouncycastle.crypto.params.RC2Parameters;
import org.bouncycastle.crypto.params.RC5Parameters;
import org.bouncycastle.jce.spec.GOST28147ParameterSpec;
import org.bouncycastle.util.Strings;

// Referenced classes of package org.bouncycastle.jce.provider:
//            WrapCipherSpi, PBE, BouncyCastleProvider, JCEPBEKey

public class JCEBlockCipher extends WrapCipherSpi
    implements PBE
{
    private static class AEADGenericBlockCipher
        implements GenericBlockCipher
    {

        private AEADBlockCipher cipher;

        public int doFinal(byte abyte0[], int i)
            throws IllegalStateException, InvalidCipherTextException
        {
            return cipher.doFinal(abyte0, i);
        }

        public String getAlgorithmName()
        {
            return cipher.getUnderlyingCipher().getAlgorithmName();
        }

        public int getOutputSize(int i)
        {
            return cipher.getOutputSize(i);
        }

        public BlockCipher getUnderlyingCipher()
        {
            return cipher.getUnderlyingCipher();
        }

        public int getUpdateOutputSize(int i)
        {
            return cipher.getUpdateOutputSize(i);
        }

        public void init(boolean flag, CipherParameters cipherparameters)
            throws IllegalArgumentException
        {
            cipher.init(flag, cipherparameters);
        }

        public int processByte(byte byte0, byte abyte0[], int i)
            throws DataLengthException
        {
            return cipher.processByte(byte0, abyte0, i);
        }

        public int processBytes(byte abyte0[], int i, int j, byte abyte1[], int k)
            throws DataLengthException
        {
            return cipher.processBytes(abyte0, i, j, abyte1, k);
        }

        public boolean wrapOnNoPadding()
        {
            return false;
        }

        AEADGenericBlockCipher(AEADBlockCipher aeadblockcipher)
        {
            cipher = aeadblockcipher;
        }
    }

    private static class BufferedGenericBlockCipher
        implements GenericBlockCipher
    {

        private BufferedBlockCipher cipher;

        public int doFinal(byte abyte0[], int i)
            throws IllegalStateException, InvalidCipherTextException
        {
            return cipher.doFinal(abyte0, i);
        }

        public String getAlgorithmName()
        {
            return cipher.getUnderlyingCipher().getAlgorithmName();
        }

        public int getOutputSize(int i)
        {
            return cipher.getOutputSize(i);
        }

        public BlockCipher getUnderlyingCipher()
        {
            return cipher.getUnderlyingCipher();
        }

        public int getUpdateOutputSize(int i)
        {
            return cipher.getUpdateOutputSize(i);
        }

        public void init(boolean flag, CipherParameters cipherparameters)
            throws IllegalArgumentException
        {
            cipher.init(flag, cipherparameters);
        }

        public int processByte(byte byte0, byte abyte0[], int i)
            throws DataLengthException
        {
            return cipher.processByte(byte0, abyte0, i);
        }

        public int processBytes(byte abyte0[], int i, int j, byte abyte1[], int k)
            throws DataLengthException
        {
            return cipher.processBytes(abyte0, i, j, abyte1, k);
        }

        public boolean wrapOnNoPadding()
        {
            return !(cipher instanceof CTSBlockCipher);
        }

        BufferedGenericBlockCipher(BlockCipher blockcipher)
        {
            cipher = new PaddedBufferedBlockCipher(blockcipher);
        }

        BufferedGenericBlockCipher(BlockCipher blockcipher, BlockCipherPadding blockcipherpadding)
        {
            cipher = new PaddedBufferedBlockCipher(blockcipher, blockcipherpadding);
        }

        BufferedGenericBlockCipher(BufferedBlockCipher bufferedblockcipher)
        {
            cipher = bufferedblockcipher;
        }
    }

    public static class DES extends JCEBlockCipher
    {

        public DES()
        {
            super(new DESEngine());
        }
    }

    public static class DESCBC extends JCEBlockCipher
    {

        public DESCBC()
        {
            super(new CBCBlockCipher(new DESEngine()), 64);
        }
    }

    public static class GOST28147 extends JCEBlockCipher
    {

        public GOST28147()
        {
            super(new GOST28147Engine());
        }
    }

    public static class GOST28147cbc extends JCEBlockCipher
    {

        public GOST28147cbc()
        {
            super(new CBCBlockCipher(new GOST28147Engine()), 64);
        }
    }

    private static interface GenericBlockCipher
    {

        public abstract int doFinal(byte abyte0[], int i)
            throws IllegalStateException, InvalidCipherTextException;

        public abstract String getAlgorithmName();

        public abstract int getOutputSize(int i);

        public abstract BlockCipher getUnderlyingCipher();

        public abstract int getUpdateOutputSize(int i);

        public abstract void init(boolean flag, CipherParameters cipherparameters)
            throws IllegalArgumentException;

        public abstract int processByte(byte byte0, byte abyte0[], int i)
            throws DataLengthException;

        public abstract int processBytes(byte abyte0[], int i, int j, byte abyte1[], int k)
            throws DataLengthException;

        public abstract boolean wrapOnNoPadding();
    }

    public static class PBEWithAESCBC extends JCEBlockCipher
    {

        public PBEWithAESCBC()
        {
            super(new CBCBlockCipher(new AESFastEngine()));
        }
    }

    public static class PBEWithMD5AndDES extends JCEBlockCipher
    {

        public PBEWithMD5AndDES()
        {
            super(new CBCBlockCipher(new DESEngine()));
        }
    }

    public static class PBEWithMD5AndRC2 extends JCEBlockCipher
    {

        public PBEWithMD5AndRC2()
        {
            super(new CBCBlockCipher(new RC2Engine()));
        }
    }

    public static class PBEWithSHA1AndDES extends JCEBlockCipher
    {

        public PBEWithSHA1AndDES()
        {
            super(new CBCBlockCipher(new DESEngine()));
        }
    }

    public static class PBEWithSHA1AndRC2 extends JCEBlockCipher
    {

        public PBEWithSHA1AndRC2()
        {
            super(new CBCBlockCipher(new RC2Engine()));
        }
    }

    public static class PBEWithSHAAnd128BitRC2 extends JCEBlockCipher
    {

        public PBEWithSHAAnd128BitRC2()
        {
            super(new CBCBlockCipher(new RC2Engine()));
        }
    }

    public static class PBEWithSHAAnd40BitRC2 extends JCEBlockCipher
    {

        public PBEWithSHAAnd40BitRC2()
        {
            super(new CBCBlockCipher(new RC2Engine()));
        }
    }

    public static class PBEWithSHAAndDES2Key extends JCEBlockCipher
    {

        public PBEWithSHAAndDES2Key()
        {
            super(new CBCBlockCipher(new DESedeEngine()));
        }
    }

    public static class PBEWithSHAAndDES3Key extends JCEBlockCipher
    {

        public PBEWithSHAAndDES3Key()
        {
            super(new CBCBlockCipher(new DESedeEngine()));
        }
    }

    public static class PBEWithSHAAndTwofish extends JCEBlockCipher
    {

        public PBEWithSHAAndTwofish()
        {
            super(new CBCBlockCipher(new TwofishEngine()));
        }
    }

    public static class RC2 extends JCEBlockCipher
    {

        public RC2()
        {
            super(new RC2Engine());
        }
    }

    public static class RC2CBC extends JCEBlockCipher
    {

        public RC2CBC()
        {
            super(new CBCBlockCipher(new RC2Engine()), 64);
        }
    }


    private Class availableSpecs[] = {
        javax/crypto/spec/RC2ParameterSpec, javax/crypto/spec/RC5ParameterSpec, javax/crypto/spec/IvParameterSpec, javax/crypto/spec/PBEParameterSpec, org/bouncycastle/jce/spec/GOST28147ParameterSpec
    };
    private BlockCipher baseEngine;
    private GenericBlockCipher cipher;
    private int ivLength;
    private ParametersWithIV ivParam;
    private String modeName;
    private boolean padded;
    private String pbeAlgorithm;
    private PBEParameterSpec pbeSpec;

    protected JCEBlockCipher(BlockCipher blockcipher)
    {
        ivLength = 0;
        pbeSpec = null;
        pbeAlgorithm = null;
        modeName = null;
        baseEngine = blockcipher;
        cipher = new BufferedGenericBlockCipher(blockcipher);
    }

    protected JCEBlockCipher(BlockCipher blockcipher, int i)
    {
        ivLength = 0;
        pbeSpec = null;
        pbeAlgorithm = null;
        modeName = null;
        baseEngine = blockcipher;
        cipher = new BufferedGenericBlockCipher(blockcipher);
        ivLength = i / 8;
    }

    protected JCEBlockCipher(BufferedBlockCipher bufferedblockcipher, int i)
    {
        ivLength = 0;
        pbeSpec = null;
        pbeAlgorithm = null;
        modeName = null;
        baseEngine = bufferedblockcipher.getUnderlyingCipher();
        cipher = new BufferedGenericBlockCipher(bufferedblockcipher);
        ivLength = i / 8;
    }

    private boolean isAEADModeName(String s)
    {
        return "CCM".equals(s) || "EAX".equals(s) || "GCM".equals(s);
    }

    protected int engineDoFinal(byte abyte0[], int i, int j, byte abyte1[], int k)
        throws IllegalBlockSizeException, BadPaddingException
    {
        int l = 0;
        if (j != 0)
        {
            l = cipher.processBytes(abyte0, i, j, abyte1, k);
        }
        try
        {
            i = cipher.doFinal(abyte1, k + l);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new IllegalBlockSizeException(abyte0.getMessage());
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new BadPaddingException(abyte0.getMessage());
        }
        return l + i;
    }

    protected byte[] engineDoFinal(byte abyte0[], int i, int j)
        throws IllegalBlockSizeException, BadPaddingException
    {
        byte abyte1[] = new byte[engineGetOutputSize(j)];
        if (j != 0)
        {
            i = cipher.processBytes(abyte0, i, j, abyte1, 0);
        } else
        {
            i = 0;
        }
        try
        {
            j = cipher.doFinal(abyte1, i);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new IllegalBlockSizeException(abyte0.getMessage());
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new BadPaddingException(abyte0.getMessage());
        }
        i = j + i;
        if (i == abyte1.length)
        {
            return abyte1;
        } else
        {
            abyte0 = new byte[i];
            System.arraycopy(abyte1, 0, abyte0, 0, i);
            return abyte0;
        }
    }

    protected int engineGetBlockSize()
    {
        return baseEngine.getBlockSize();
    }

    protected byte[] engineGetIV()
    {
        if (ivParam != null)
        {
            return ivParam.getIV();
        } else
        {
            return null;
        }
    }

    protected int engineGetKeySize(Key key)
    {
        return key.getEncoded().length * 8;
    }

    protected int engineGetOutputSize(int i)
    {
        return cipher.getOutputSize(i);
    }

    protected AlgorithmParameters engineGetParameters()
    {
        if (engineParams != null) goto _L2; else goto _L1
_L1:
        if (pbeSpec == null) goto _L4; else goto _L3
_L3:
        try
        {
            engineParams = AlgorithmParameters.getInstance(pbeAlgorithm, BouncyCastleProvider.PROVIDER_NAME);
            engineParams.init(pbeSpec);
        }
        catch (Exception exception)
        {
            return null;
        }
_L2:
        return engineParams;
_L4:
        if (ivParam != null)
        {
            String s1 = cipher.getUnderlyingCipher().getAlgorithmName();
            String s = s1;
            if (s1.indexOf('/') >= 0)
            {
                s = s1.substring(0, s1.indexOf('/'));
            }
            try
            {
                engineParams = AlgorithmParameters.getInstance(s, BouncyCastleProvider.PROVIDER_NAME);
                engineParams.init(ivParam.getIV());
            }
            catch (Exception exception1)
            {
                throw new RuntimeException(exception1.toString());
            }
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    protected void engineInit(int i, Key key, AlgorithmParameters algorithmparameters, SecureRandom securerandom)
        throws InvalidKeyException, InvalidAlgorithmParameterException
    {
        if (algorithmparameters == null) goto _L2; else goto _L1
_L1:
        int j = 0;
_L4:
        if (j == availableSpecs.length)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        Object obj = algorithmparameters.getParameterSpec(availableSpecs[j]);
_L5:
        Object obj1;
        obj1 = obj;
        if (obj == null)
        {
            throw new InvalidAlgorithmParameterException((new StringBuilder()).append("can't handle parameter ").append(algorithmparameters.toString()).toString());
        }
          goto _L3
        obj;
        j++;
          goto _L4
_L2:
        obj1 = null;
_L3:
        engineInit(i, key, ((AlgorithmParameterSpec) (obj1)), securerandom);
        engineParams = algorithmparameters;
        return;
        obj = null;
          goto _L5
    }

    protected void engineInit(int i, Key key, SecureRandom securerandom)
        throws InvalidKeyException
    {
        try
        {
            engineInit(i, key, (AlgorithmParameterSpec)null, securerandom);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Key key)
        {
            throw new InvalidKeyException(key.getMessage());
        }
    }

    protected void engineInit(int i, Key key, AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
        throws InvalidKeyException, InvalidAlgorithmParameterException
    {
        pbeSpec = null;
        pbeAlgorithm = null;
        engineParams = null;
        if (!(key instanceof SecretKey))
        {
            throw new InvalidKeyException((new StringBuilder()).append("Key for algorithm ").append(key.getAlgorithm()).append(" not suitable for symmetric enryption.").toString());
        }
        if (algorithmparameterspec == null && baseEngine.getAlgorithmName().startsWith("RC5-64"))
        {
            throw new InvalidAlgorithmParameterException("RC5 requires an RC5ParametersSpec to be passed in.");
        }
        if (key instanceof JCEPBEKey)
        {
            JCEPBEKey jcepbekey = (JCEPBEKey)key;
            if (jcepbekey.getOID() != null)
            {
                pbeAlgorithm = jcepbekey.getOID().getId();
            } else
            {
                pbeAlgorithm = jcepbekey.getAlgorithm();
            }
            if (jcepbekey.getParam() != null)
            {
                key = jcepbekey.getParam();
                pbeSpec = new PBEParameterSpec(jcepbekey.getSalt(), jcepbekey.getIterationCount());
            } else
            if (algorithmparameterspec instanceof PBEParameterSpec)
            {
                pbeSpec = (PBEParameterSpec)algorithmparameterspec;
                key = PBE.Util.makePBEParameters(jcepbekey, algorithmparameterspec, cipher.getUnderlyingCipher().getAlgorithmName());
            } else
            {
                throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
            }
            if (key instanceof ParametersWithIV)
            {
                ivParam = (ParametersWithIV)key;
            }
        } else
        if (algorithmparameterspec == null)
        {
            key = new KeyParameter(key.getEncoded());
        } else
        if (algorithmparameterspec instanceof IvParameterSpec)
        {
            if (ivLength != 0)
            {
                algorithmparameterspec = (IvParameterSpec)algorithmparameterspec;
                if (algorithmparameterspec.getIV().length != ivLength && !isAEADModeName(modeName))
                {
                    throw new InvalidAlgorithmParameterException((new StringBuilder()).append("IV must be ").append(ivLength).append(" bytes long.").toString());
                }
                key = new ParametersWithIV(new KeyParameter(key.getEncoded()), algorithmparameterspec.getIV());
                ivParam = (ParametersWithIV)key;
            } else
            {
                if (modeName != null && modeName.equals("ECB"))
                {
                    throw new InvalidAlgorithmParameterException("ECB mode does not use an IV");
                }
                key = new KeyParameter(key.getEncoded());
            }
        } else
        if (algorithmparameterspec instanceof GOST28147ParameterSpec)
        {
            GOST28147ParameterSpec gost28147parameterspec = (GOST28147ParameterSpec)algorithmparameterspec;
            key = new ParametersWithSBox(new KeyParameter(key.getEncoded()), ((GOST28147ParameterSpec)algorithmparameterspec).getSbox());
            if (gost28147parameterspec.getIV() != null && ivLength != 0)
            {
                key = new ParametersWithIV(key, gost28147parameterspec.getIV());
                ivParam = (ParametersWithIV)key;
            }
        } else
        if (algorithmparameterspec instanceof RC2ParameterSpec)
        {
            RC2ParameterSpec rc2parameterspec = (RC2ParameterSpec)algorithmparameterspec;
            key = new RC2Parameters(key.getEncoded(), ((RC2ParameterSpec)algorithmparameterspec).getEffectiveKeyBits());
            if (rc2parameterspec.getIV() != null && ivLength != 0)
            {
                key = new ParametersWithIV(key, rc2parameterspec.getIV());
                ivParam = (ParametersWithIV)key;
            }
        } else
        if (algorithmparameterspec instanceof RC5ParameterSpec)
        {
            RC5ParameterSpec rc5parameterspec = (RC5ParameterSpec)algorithmparameterspec;
            key = new RC5Parameters(key.getEncoded(), ((RC5ParameterSpec)algorithmparameterspec).getRounds());
            if (baseEngine.getAlgorithmName().startsWith("RC5"))
            {
                if (baseEngine.getAlgorithmName().equals("RC5-32"))
                {
                    if (rc5parameterspec.getWordSize() != 32)
                    {
                        throw new InvalidAlgorithmParameterException((new StringBuilder()).append("RC5 already set up for a word size of 32 not ").append(rc5parameterspec.getWordSize()).append(".").toString());
                    }
                } else
                if (baseEngine.getAlgorithmName().equals("RC5-64") && rc5parameterspec.getWordSize() != 64)
                {
                    throw new InvalidAlgorithmParameterException((new StringBuilder()).append("RC5 already set up for a word size of 64 not ").append(rc5parameterspec.getWordSize()).append(".").toString());
                }
            } else
            {
                throw new InvalidAlgorithmParameterException("RC5 parameters passed to a cipher that is not RC5.");
            }
            if (rc5parameterspec.getIV() != null && ivLength != 0)
            {
                key = new ParametersWithIV(key, rc5parameterspec.getIV());
                ivParam = (ParametersWithIV)key;
            }
        } else
        {
            throw new InvalidAlgorithmParameterException("unknown parameter type.");
        }
_L9:
        if (ivLength == 0 || (key instanceof ParametersWithIV)) goto _L2; else goto _L1
_L1:
        if (securerandom == null)
        {
            algorithmparameterspec = new SecureRandom();
        } else
        {
            algorithmparameterspec = securerandom;
        }
        if (i != 1 && i != 3) goto _L4; else goto _L3
_L3:
        jcepbekey = new byte[ivLength];
        algorithmparameterspec.nextBytes(jcepbekey);
        key = new ParametersWithIV(key, jcepbekey);
        ivParam = (ParametersWithIV)key;
_L2:
        if (securerandom != null && padded)
        {
            key = new ParametersWithRandom(key, securerandom);
        }
        i;
        JVM INSTR tableswitch 1 4: default 300
    //                   1 1028
    //                   2 1040
    //                   3 1028
    //                   4 1040;
           goto _L5 _L6 _L7 _L6 _L7
_L5:
        try
        {
            throw new InvalidParameterException((new StringBuilder()).append("unknown opmode ").append(i).append(" passed").toString());
        }
        // Misplaced declaration of an exception variable
        catch (Key key)
        {
            throw new InvalidKeyException(key.getMessage());
        }
_L4:
        if (cipher.getUnderlyingCipher().getAlgorithmName().indexOf("PGPCFB") >= 0) goto _L2; else goto _L8
_L8:
        throw new InvalidAlgorithmParameterException("no IV set when one expected");
_L6:
        cipher.init(true, key);
        return;
_L7:
        cipher.init(false, key);
        return;
          goto _L9
    }

    protected void engineSetMode(String s)
        throws NoSuchAlgorithmException
    {
        modeName = Strings.toUpperCase(s);
        if (modeName.equals("ECB"))
        {
            ivLength = 0;
            cipher = new BufferedGenericBlockCipher(baseEngine);
            return;
        }
        if (modeName.equals("CBC"))
        {
            ivLength = baseEngine.getBlockSize();
            cipher = new BufferedGenericBlockCipher(new CBCBlockCipher(baseEngine));
            return;
        }
        if (modeName.startsWith("OFB"))
        {
            ivLength = baseEngine.getBlockSize();
            if (modeName.length() != 3)
            {
                int i = Integer.parseInt(modeName.substring(3));
                cipher = new BufferedGenericBlockCipher(new OFBBlockCipher(baseEngine, i));
                return;
            } else
            {
                cipher = new BufferedGenericBlockCipher(new OFBBlockCipher(baseEngine, baseEngine.getBlockSize() * 8));
                return;
            }
        }
        if (modeName.startsWith("CFB"))
        {
            ivLength = baseEngine.getBlockSize();
            if (modeName.length() != 3)
            {
                int j = Integer.parseInt(modeName.substring(3));
                cipher = new BufferedGenericBlockCipher(new CFBBlockCipher(baseEngine, j));
                return;
            } else
            {
                cipher = new BufferedGenericBlockCipher(new CFBBlockCipher(baseEngine, baseEngine.getBlockSize() * 8));
                return;
            }
        }
        if (modeName.startsWith("PGP"))
        {
            boolean flag = modeName.equalsIgnoreCase("PGPCFBwithIV");
            ivLength = baseEngine.getBlockSize();
            cipher = new BufferedGenericBlockCipher(new PGPCFBBlockCipher(baseEngine, flag));
            return;
        }
        if (modeName.equalsIgnoreCase("OpenPGPCFB"))
        {
            ivLength = 0;
            cipher = new BufferedGenericBlockCipher(new OpenPGPCFBBlockCipher(baseEngine));
            return;
        }
        if (modeName.startsWith("SIC"))
        {
            ivLength = baseEngine.getBlockSize();
            if (ivLength < 16)
            {
                throw new IllegalArgumentException("Warning: SIC-Mode can become a twotime-pad if the blocksize of the cipher is too small. Use a cipher with a block size of at least 128 bits (e.g. AES)");
            } else
            {
                cipher = new BufferedGenericBlockCipher(new BufferedBlockCipher(new SICBlockCipher(baseEngine)));
                return;
            }
        }
        if (modeName.startsWith("CTR"))
        {
            ivLength = baseEngine.getBlockSize();
            cipher = new BufferedGenericBlockCipher(new BufferedBlockCipher(new SICBlockCipher(baseEngine)));
            return;
        }
        if (modeName.startsWith("GOFB"))
        {
            ivLength = baseEngine.getBlockSize();
            cipher = new BufferedGenericBlockCipher(new BufferedBlockCipher(new GOFBBlockCipher(baseEngine)));
            return;
        }
        if (modeName.startsWith("CTS"))
        {
            ivLength = baseEngine.getBlockSize();
            cipher = new BufferedGenericBlockCipher(new CTSBlockCipher(new CBCBlockCipher(baseEngine)));
            return;
        }
        if (modeName.startsWith("CCM"))
        {
            ivLength = baseEngine.getBlockSize();
            cipher = new AEADGenericBlockCipher(new CCMBlockCipher(baseEngine));
            return;
        }
        if (modeName.startsWith("EAX"))
        {
            ivLength = baseEngine.getBlockSize();
            cipher = new AEADGenericBlockCipher(new EAXBlockCipher(baseEngine));
            return;
        }
        if (modeName.startsWith("GCM"))
        {
            ivLength = baseEngine.getBlockSize();
            cipher = new AEADGenericBlockCipher(new GCMBlockCipher(baseEngine));
            return;
        } else
        {
            throw new NoSuchAlgorithmException((new StringBuilder()).append("can't support mode ").append(s).toString());
        }
    }

    protected void engineSetPadding(String s)
        throws NoSuchPaddingException
    {
        String s1 = Strings.toUpperCase(s);
        if (s1.equals("NOPADDING"))
        {
            if (cipher.wrapOnNoPadding())
            {
                cipher = new BufferedGenericBlockCipher(new BufferedBlockCipher(cipher.getUnderlyingCipher()));
            }
            return;
        }
        if (s1.equals("WITHCTS"))
        {
            cipher = new BufferedGenericBlockCipher(new CTSBlockCipher(cipher.getUnderlyingCipher()));
            return;
        }
        padded = true;
        if (isAEADModeName(modeName))
        {
            throw new NoSuchPaddingException("Only NoPadding can be used with AEAD modes.");
        }
        if (s1.equals("PKCS5PADDING") || s1.equals("PKCS7PADDING"))
        {
            cipher = new BufferedGenericBlockCipher(cipher.getUnderlyingCipher());
            return;
        }
        if (s1.equals("ZEROBYTEPADDING"))
        {
            cipher = new BufferedGenericBlockCipher(cipher.getUnderlyingCipher(), new ZeroBytePadding());
            return;
        }
        if (s1.equals("ISO10126PADDING") || s1.equals("ISO10126-2PADDING"))
        {
            cipher = new BufferedGenericBlockCipher(cipher.getUnderlyingCipher(), new ISO10126d2Padding());
            return;
        }
        if (s1.equals("X9.23PADDING") || s1.equals("X923PADDING"))
        {
            cipher = new BufferedGenericBlockCipher(cipher.getUnderlyingCipher(), new X923Padding());
            return;
        }
        if (s1.equals("ISO7816-4PADDING") || s1.equals("ISO9797-1PADDING"))
        {
            cipher = new BufferedGenericBlockCipher(cipher.getUnderlyingCipher(), new ISO7816d4Padding());
            return;
        }
        if (s1.equals("TBCPADDING"))
        {
            cipher = new BufferedGenericBlockCipher(cipher.getUnderlyingCipher(), new TBCPadding());
            return;
        } else
        {
            throw new NoSuchPaddingException((new StringBuilder()).append("Padding ").append(s).append(" unknown.").toString());
        }
    }

    protected int engineUpdate(byte abyte0[], int i, int j, byte abyte1[], int k)
        throws ShortBufferException
    {
        try
        {
            i = cipher.processBytes(abyte0, i, j, abyte1, k);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new ShortBufferException(abyte0.getMessage());
        }
        return i;
    }

    protected byte[] engineUpdate(byte abyte0[], int i, int j)
    {
        byte abyte1[];
        int k = cipher.getUpdateOutputSize(j);
        if (k <= 0)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        abyte1 = new byte[k];
        i = cipher.processBytes(abyte0, i, j, abyte1, 0);
        if (i != 0) goto _L2; else goto _L1
_L1:
        abyte0 = null;
_L4:
        return abyte0;
_L2:
        abyte0 = abyte1;
        if (i == abyte1.length) goto _L4; else goto _L3
_L3:
        abyte0 = new byte[i];
        System.arraycopy(abyte1, 0, abyte0, 0, i);
        return abyte0;
        cipher.processBytes(abyte0, i, j, null, 0);
        return null;
    }
}
