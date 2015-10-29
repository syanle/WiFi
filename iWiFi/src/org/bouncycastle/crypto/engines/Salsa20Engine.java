// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.MaxBytesExceededException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Strings;

public class Salsa20Engine
    implements StreamCipher
{

    private static final byte sigma[] = Strings.toByteArray("expand 32-byte k");
    private static final int stateSize = 16;
    private static final byte tau[] = Strings.toByteArray("expand 16-byte k");
    private int cW0;
    private int cW1;
    private int cW2;
    private int engineState[];
    private int index;
    private boolean initialised;
    private byte keyStream[];
    private byte workingIV[];
    private byte workingKey[];
    private int x[];

    public Salsa20Engine()
    {
        index = 0;
        engineState = new int[16];
        x = new int[16];
        keyStream = new byte[64];
        workingKey = null;
        workingIV = null;
        initialised = false;
    }

    private int byteToIntLittle(byte abyte0[], int i)
    {
        return abyte0[i] & 0xff | (abyte0[i + 1] & 0xff) << 8 | (abyte0[i + 2] & 0xff) << 16 | abyte0[i + 3] << 24;
    }

    private byte[] intToByteLittle(int i, byte abyte0[], int j)
    {
        abyte0[j] = (byte)i;
        abyte0[j + 1] = (byte)(i >>> 8);
        abyte0[j + 2] = (byte)(i >>> 16);
        abyte0[j + 3] = (byte)(i >>> 24);
        return abyte0;
    }

    private boolean limitExceeded()
    {
        boolean flag1 = false;
        cW0 = cW0 + 1;
        boolean flag = flag1;
        if (cW0 == 0)
        {
            cW1 = cW1 + 1;
            flag = flag1;
            if (cW1 == 0)
            {
                cW2 = cW2 + 1;
                flag = flag1;
                if ((cW2 & 0x20) != 0)
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    private boolean limitExceeded(int i)
    {
        if (cW0 >= 0)
        {
            cW0 = cW0 + i;
        } else
        {
            cW0 = cW0 + i;
            if (cW0 >= 0)
            {
                cW1 = cW1 + 1;
                if (cW1 == 0)
                {
                    cW2 = cW2 + 1;
                    if ((cW2 & 0x20) != 0)
                    {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private void resetCounter()
    {
        cW0 = 0;
        cW1 = 0;
        cW2 = 0;
    }

    private int rotl(int i, int j)
    {
        return i << j | i >>> -j;
    }

    private void salsa20WordToByte(int ai[], byte abyte0[])
    {
        int l = 0;
        System.arraycopy(ai, 0, x, 0, ai.length);
        for (int i = 0; i < 10; i++)
        {
            int ai1[] = x;
            ai1[4] = ai1[4] ^ rotl(x[0] + x[12], 7);
            ai1 = x;
            ai1[8] = ai1[8] ^ rotl(x[4] + x[0], 9);
            ai1 = x;
            ai1[12] = ai1[12] ^ rotl(x[8] + x[4], 13);
            ai1 = x;
            ai1[0] = ai1[0] ^ rotl(x[12] + x[8], 18);
            ai1 = x;
            ai1[9] = ai1[9] ^ rotl(x[5] + x[1], 7);
            ai1 = x;
            ai1[13] = ai1[13] ^ rotl(x[9] + x[5], 9);
            ai1 = x;
            ai1[1] = ai1[1] ^ rotl(x[13] + x[9], 13);
            ai1 = x;
            ai1[5] = ai1[5] ^ rotl(x[1] + x[13], 18);
            ai1 = x;
            ai1[14] = ai1[14] ^ rotl(x[10] + x[6], 7);
            ai1 = x;
            ai1[2] = ai1[2] ^ rotl(x[14] + x[10], 9);
            ai1 = x;
            ai1[6] = ai1[6] ^ rotl(x[2] + x[14], 13);
            ai1 = x;
            ai1[10] = ai1[10] ^ rotl(x[6] + x[2], 18);
            ai1 = x;
            ai1[3] = ai1[3] ^ rotl(x[15] + x[11], 7);
            ai1 = x;
            ai1[7] = ai1[7] ^ rotl(x[3] + x[15], 9);
            ai1 = x;
            ai1[11] = ai1[11] ^ rotl(x[7] + x[3], 13);
            ai1 = x;
            ai1[15] = ai1[15] ^ rotl(x[11] + x[7], 18);
            ai1 = x;
            ai1[1] = ai1[1] ^ rotl(x[0] + x[3], 7);
            ai1 = x;
            ai1[2] = ai1[2] ^ rotl(x[1] + x[0], 9);
            ai1 = x;
            ai1[3] = ai1[3] ^ rotl(x[2] + x[1], 13);
            ai1 = x;
            ai1[0] = ai1[0] ^ rotl(x[3] + x[2], 18);
            ai1 = x;
            ai1[6] = ai1[6] ^ rotl(x[5] + x[4], 7);
            ai1 = x;
            ai1[7] = ai1[7] ^ rotl(x[6] + x[5], 9);
            ai1 = x;
            ai1[4] = ai1[4] ^ rotl(x[7] + x[6], 13);
            ai1 = x;
            ai1[5] = ai1[5] ^ rotl(x[4] + x[7], 18);
            ai1 = x;
            ai1[11] = ai1[11] ^ rotl(x[10] + x[9], 7);
            ai1 = x;
            ai1[8] = ai1[8] ^ rotl(x[11] + x[10], 9);
            ai1 = x;
            ai1[9] = ai1[9] ^ rotl(x[8] + x[11], 13);
            ai1 = x;
            ai1[10] = ai1[10] ^ rotl(x[9] + x[8], 18);
            ai1 = x;
            ai1[12] = ai1[12] ^ rotl(x[15] + x[14], 7);
            ai1 = x;
            ai1[13] = ai1[13] ^ rotl(x[12] + x[15], 9);
            ai1 = x;
            ai1[14] = ai1[14] ^ rotl(x[13] + x[12], 13);
            ai1 = x;
            ai1[15] = ai1[15] ^ rotl(x[14] + x[13], 18);
        }

        int j = 0;
        for (; l < 16; l++)
        {
            intToByteLittle(x[l] + ai[l], abyte0, j);
            j += 4;
        }

        byte byte0 = 16;
        l = j;
        for (int k = byte0; k < x.length; k++)
        {
            intToByteLittle(x[k], abyte0, l);
            l += 4;
        }

    }

    private void setKey(byte abyte0[], byte abyte1[])
    {
        workingKey = abyte0;
        workingIV = abyte1;
        index = 0;
        resetCounter();
        engineState[1] = byteToIntLittle(workingKey, 0);
        engineState[2] = byteToIntLittle(workingKey, 4);
        engineState[3] = byteToIntLittle(workingKey, 8);
        engineState[4] = byteToIntLittle(workingKey, 12);
        byte byte0;
        if (workingKey.length == 32)
        {
            abyte0 = sigma;
            byte0 = 16;
        } else
        {
            abyte0 = tau;
            byte0 = 0;
        }
        engineState[11] = byteToIntLittle(workingKey, byte0);
        engineState[12] = byteToIntLittle(workingKey, byte0 + 4);
        engineState[13] = byteToIntLittle(workingKey, byte0 + 8);
        engineState[14] = byteToIntLittle(workingKey, byte0 + 12);
        engineState[0] = byteToIntLittle(abyte0, 0);
        engineState[5] = byteToIntLittle(abyte0, 4);
        engineState[10] = byteToIntLittle(abyte0, 8);
        engineState[15] = byteToIntLittle(abyte0, 12);
        engineState[6] = byteToIntLittle(workingIV, 0);
        engineState[7] = byteToIntLittle(workingIV, 4);
        abyte0 = engineState;
        engineState[9] = 0;
        abyte0[8] = 0;
        initialised = true;
    }

    public String getAlgorithmName()
    {
        return "Salsa20";
    }

    public void init(boolean flag, CipherParameters cipherparameters)
    {
        if (!(cipherparameters instanceof ParametersWithIV))
        {
            throw new IllegalArgumentException("Salsa20 Init parameters must include an IV");
        }
        cipherparameters = (ParametersWithIV)cipherparameters;
        byte abyte0[] = cipherparameters.getIV();
        if (abyte0 == null || abyte0.length != 8)
        {
            throw new IllegalArgumentException("Salsa20 requires exactly 8 bytes of IV");
        }
        if (!(cipherparameters.getParameters() instanceof KeyParameter))
        {
            throw new IllegalArgumentException("Salsa20 Init parameters must include a key");
        } else
        {
            workingKey = ((KeyParameter)cipherparameters.getParameters()).getKey();
            workingIV = abyte0;
            setKey(workingKey, workingIV);
            return;
        }
    }

    public void processBytes(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        if (!initialised)
        {
            throw new IllegalStateException((new StringBuilder()).append(getAlgorithmName()).append(" not initialised").toString());
        }
        if (i + j > abyte0.length)
        {
            throw new DataLengthException("input buffer too short");
        }
        if (k + j > abyte1.length)
        {
            throw new DataLengthException("output buffer too short");
        }
        if (limitExceeded(j))
        {
            throw new MaxBytesExceededException("2^70 byte limit per IV would be exceeded; Change IV");
        }
        for (int l = 0; l < j; l++)
        {
            if (index == 0)
            {
                salsa20WordToByte(engineState, keyStream);
                int ai[] = engineState;
                ai[8] = ai[8] + 1;
                if (engineState[8] == 0)
                {
                    int ai1[] = engineState;
                    ai1[9] = ai1[9] + 1;
                }
            }
            abyte1[l + k] = (byte)(keyStream[index] ^ abyte0[l + i]);
            index = index + 1 & 0x3f;
        }

    }

    public void reset()
    {
        setKey(workingKey, workingIV);
    }

    public byte returnByte(byte byte0)
    {
        if (limitExceeded())
        {
            throw new MaxBytesExceededException("2^70 byte limit per IV; Change IV");
        }
        if (index == 0)
        {
            salsa20WordToByte(engineState, keyStream);
            int ai[] = engineState;
            ai[8] = ai[8] + 1;
            if (engineState[8] == 0)
            {
                int ai1[] = engineState;
                ai1[9] = ai1[9] + 1;
            }
        }
        byte byte1 = (byte)(keyStream[index] ^ byte0);
        index = index + 1 & 0x3f;
        return byte1;
    }

}
