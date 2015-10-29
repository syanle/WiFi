// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.crypto.tls;

import java.io.IOException;
import java.security.SecureRandom;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

// Referenced classes of package org.bouncycastle.crypto.tls:
//            TlsCipher, TlsClientContext, SecurityParameters, TlsUtils, 
//            TlsMac, TlsFatalAlert

public class TlsBlockCipher
    implements TlsCipher
{

    protected TlsClientContext context;
    protected BlockCipher decryptCipher;
    protected BlockCipher encryptCipher;
    protected TlsMac readMac;
    protected TlsMac writeMac;

    public TlsBlockCipher(TlsClientContext tlsclientcontext, BlockCipher blockcipher, BlockCipher blockcipher1, Digest digest, Digest digest1, int i)
    {
        context = tlsclientcontext;
        encryptCipher = blockcipher;
        decryptCipher = blockcipher1;
        int j = digest.getDigestSize();
        int k = digest1.getDigestSize();
        int l = blockcipher.getBlockSize();
        int i1 = blockcipher1.getBlockSize();
        tlsclientcontext = tlsclientcontext.getSecurityParameters();
        tlsclientcontext = TlsUtils.PRF(((SecurityParameters) (tlsclientcontext)).masterSecret, "key expansion", TlsUtils.concat(((SecurityParameters) (tlsclientcontext)).serverRandom, ((SecurityParameters) (tlsclientcontext)).clientRandom), i * 2 + j + k + l + i1);
        writeMac = new TlsMac(digest, tlsclientcontext, 0, digest.getDigestSize());
        j = digest.getDigestSize() + 0;
        readMac = new TlsMac(digest1, tlsclientcontext, j, digest1.getDigestSize());
        j += digest1.getDigestSize();
        initCipher(true, blockcipher, tlsclientcontext, i, j, j + i * 2);
        j += i;
        initCipher(false, blockcipher1, tlsclientcontext, i, j, j + i + blockcipher.getBlockSize());
    }

    protected int chooseExtraPadBlocks(SecureRandom securerandom, int i)
    {
        return Math.min(lowestBitSet(securerandom.nextInt()), i);
    }

    public byte[] decodeCiphertext(short word0, byte abyte0[], int i, int j)
        throws IOException
    {
        boolean flag = true;
        int k1 = readMac.getSize() + 1;
        int i1 = decryptCipher.getBlockSize();
        if (j < k1)
        {
            throw new TlsFatalAlert((short)50);
        }
        if (j % i1 != 0)
        {
            throw new TlsFatalAlert((short)21);
        }
        for (int k = 0; k < j; k += i1)
        {
            decryptCipher.processBlock(abyte0, k + i, abyte0, k + i);
        }

        int l1 = (i + j) - 1;
        byte byte0 = abyte0[l1];
        int j1 = byte0 & 0xff;
        byte abyte1[];
        byte abyte3[];
        int l;
        if (j1 > j - k1)
        {
            i1 = 0;
            l = 1;
        } else
        {
            l = l1 - j1;
            i1 = 0;
            for (; l < l1; l++)
            {
                i1 = (byte)(i1 | abyte0[l] ^ byte0);
            }

            byte abyte2[];
            if (i1 != 0)
            {
                i1 = 0;
                l = 1;
            } else
            {
                l = 0;
                i1 = j1;
            }
        }
        i1 = j - k1 - i1;
        abyte1 = readMac.calculateMac(word0, abyte0, i, i1);
        abyte3 = new byte[abyte1.length];
        System.arraycopy(abyte0, i + i1, abyte3, 0, abyte1.length);
        if (!Arrays.constantTimeAreEqual(abyte1, abyte3))
        {
            j = ((flag) ? 1 : 0);
        } else
        {
            j = l;
        }
        if (j != 0)
        {
            throw new TlsFatalAlert((short)20);
        } else
        {
            abyte2 = new byte[i1];
            System.arraycopy(abyte0, i, abyte2, 0, i1);
            return abyte2;
        }
    }

    public byte[] encodePlaintext(short word0, byte abyte0[], int i, int j)
    {
        boolean flag = false;
        int l = encryptCipher.getBlockSize();
        int k = l - (writeMac.getSize() + j + 1) % l;
        int i1 = (255 - k) / l;
        int j1 = chooseExtraPadBlocks(context.getSecureRandom(), i1) * l + k;
        i1 = writeMac.getSize() + j + j1 + 1;
        byte abyte1[] = new byte[i1];
        System.arraycopy(abyte0, i, abyte1, 0, j);
        abyte0 = writeMac.calculateMac(word0, abyte0, i, j);
        System.arraycopy(abyte0, 0, abyte1, j, abyte0.length);
        int k1 = abyte0.length;
        i = 0;
        do
        {
            k = ((flag) ? 1 : 0);
            if (i > j1)
            {
                break;
            }
            abyte1[i + (j + k1)] = (byte)j1;
            i++;
        } while (true);
        for (; k < i1; k += l)
        {
            encryptCipher.processBlock(abyte1, k, abyte1, k);
        }

        return abyte1;
    }

    protected void initCipher(boolean flag, BlockCipher blockcipher, byte abyte0[], int i, int j, int k)
    {
        blockcipher.init(flag, new ParametersWithIV(new KeyParameter(abyte0, j, i), abyte0, k, blockcipher.getBlockSize()));
    }

    protected int lowestBitSet(int i)
    {
        if (i != 0) goto _L2; else goto _L1
_L1:
        int k = 32;
_L4:
        return k;
_L2:
        k = 0;
        int j = i;
        i = k;
        do
        {
            k = i;
            if ((j & 1) != 0)
            {
                continue;
            }
            i++;
            j >>= 1;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }
}
