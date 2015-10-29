// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

public class CBCBlockCipher
    implements BlockCipher
{

    private byte IV[];
    private int blockSize;
    private byte cbcNextV[];
    private byte cbcV[];
    private BlockCipher cipher;
    private boolean encrypting;

    public CBCBlockCipher(BlockCipher blockcipher)
    {
        cipher = null;
        cipher = blockcipher;
        blockSize = blockcipher.getBlockSize();
        IV = new byte[blockSize];
        cbcV = new byte[blockSize];
        cbcNextV = new byte[blockSize];
    }

    private int decryptBlock(byte abyte0[], int i, byte abyte1[], int j)
        throws DataLengthException, IllegalStateException
    {
        boolean flag = false;
        if (blockSize + i > abyte0.length)
        {
            throw new DataLengthException("input buffer too short");
        }
        System.arraycopy(abyte0, i, cbcNextV, 0, blockSize);
        int l = cipher.processBlock(abyte0, i, abyte1, j);
        for (i = ((flag) ? 1 : 0); i < blockSize; i++)
        {
            int k = j + i;
            abyte1[k] = (byte)(abyte1[k] ^ cbcV[i]);
        }

        abyte0 = cbcV;
        cbcV = cbcNextV;
        cbcNextV = abyte0;
        return l;
    }

    private int encryptBlock(byte abyte0[], int i, byte abyte1[], int j)
        throws DataLengthException, IllegalStateException
    {
        if (blockSize + i > abyte0.length)
        {
            throw new DataLengthException("input buffer too short");
        }
        for (int k = 0; k < blockSize; k++)
        {
            byte abyte2[] = cbcV;
            abyte2[k] = (byte)(abyte2[k] ^ abyte0[i + k]);
        }

        i = cipher.processBlock(cbcV, 0, abyte1, j);
        System.arraycopy(abyte1, j, cbcV, 0, cbcV.length);
        return i;
    }

    public String getAlgorithmName()
    {
        return (new StringBuilder()).append(cipher.getAlgorithmName()).append("/CBC").toString();
    }

    public int getBlockSize()
    {
        return cipher.getBlockSize();
    }

    public BlockCipher getUnderlyingCipher()
    {
        return cipher;
    }

    public void init(boolean flag, CipherParameters cipherparameters)
        throws IllegalArgumentException
    {
        encrypting = flag;
        if (cipherparameters instanceof ParametersWithIV)
        {
            cipherparameters = (ParametersWithIV)cipherparameters;
            byte abyte0[] = cipherparameters.getIV();
            if (abyte0.length != blockSize)
            {
                throw new IllegalArgumentException("initialisation vector must be the same length as block size");
            } else
            {
                System.arraycopy(abyte0, 0, IV, 0, abyte0.length);
                reset();
                cipher.init(flag, cipherparameters.getParameters());
                return;
            }
        } else
        {
            reset();
            cipher.init(flag, cipherparameters);
            return;
        }
    }

    public int processBlock(byte abyte0[], int i, byte abyte1[], int j)
        throws DataLengthException, IllegalStateException
    {
        if (encrypting)
        {
            return encryptBlock(abyte0, i, abyte1, j);
        } else
        {
            return decryptBlock(abyte0, i, abyte1, j);
        }
    }

    public void reset()
    {
        System.arraycopy(IV, 0, cbcV, 0, IV.length);
        Arrays.fill(cbcNextV, (byte)0);
        cipher.reset();
    }
}
