// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat.common;


// Referenced classes of package com.tencent.stat.common:
//            StatBase64

static class count extends count
{

    static final boolean $assertionsDisabled;
    private static final byte ENCODE[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 43, 47
    };
    private static final byte ENCODE_WEBSAFE[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 45, 95
    };
    private final byte alphabet[];
    private int count;
    public final boolean do_cr;
    public final boolean do_newline;
    public final boolean do_padding;
    private final byte tail[] = new byte[2];
    int tailLen;

    public boolean process(byte abyte0[], int i, int j, boolean flag)
    {
        byte abyte1[];
        byte abyte2[];
        int k;
        int i1;
        int j1;
        int i2;
        abyte1 = alphabet;
        abyte2 = output;
        k = 0;
        j1 = count;
        i2 = j + i;
        i1 = -1;
        tailLen;
        JVM INSTR tableswitch 0 2: default 60
    //                   0 352
    //                   1 357
    //                   2 419;
           goto _L1 _L2 _L3 _L4
_L1:
        j = i;
_L10:
        int l;
        i = j1;
        l = j;
        if (i1 == -1) goto _L6; else goto _L5
_L5:
        abyte2[0] = abyte1[i1 >> 18 & 0x3f];
        abyte2[1] = abyte1[i1 >> 12 & 0x3f];
        abyte2[2] = abyte1[i1 >> 6 & 0x3f];
        k = 4;
        abyte2[3] = abyte1[i1 & 0x3f];
        i1 = j1 - 1;
        i = i1;
        l = j;
        if (i1 != 0) goto _L6; else goto _L7
_L7:
        byte abyte3[];
        int k1;
        int l1;
        if (do_cr)
        {
            i = 5;
            abyte2[4] = 13;
        } else
        {
            i = 4;
        }
        abyte2[i] = 10;
        l = 19;
        i++;
        if (j + 3 > i2) goto _L9; else goto _L8
_L8:
        k = (abyte0[j] & 0xff) << 16 | (abyte0[j + 1] & 0xff) << 8 | abyte0[j + 2] & 0xff;
        abyte2[i] = abyte1[k >> 18 & 0x3f];
        abyte2[i + 1] = abyte1[k >> 12 & 0x3f];
        abyte2[i + 2] = abyte1[k >> 6 & 0x3f];
        abyte2[i + 3] = abyte1[k & 0x3f];
        j += 3;
        i1 = i + 4;
        k1 = l - 1;
        i = k1;
        k = i1;
        l = j;
        if (k1 == 0)
        {
            if (do_cr)
            {
                i = i1 + 1;
                abyte2[i1] = 13;
            } else
            {
                i = i1;
            }
            abyte2[i] = 10;
            l = 19;
            i++;
            break MISSING_BLOCK_LABEL_180;
        }
          goto _L6
_L2:
        j = i;
          goto _L10
_L3:
        if (i + 2 > i2) goto _L1; else goto _L11
_L11:
        l = tail[0];
        j = i + 1;
        i1 = (l & 0xff) << 16 | (abyte0[i] & 0xff) << 8 | abyte0[j] & 0xff;
        tailLen = 0;
        j++;
          goto _L10
_L4:
        if (i + 1 > i2) goto _L1; else goto _L12
_L12:
        l = tail[0];
        i1 = tail[1];
        j = i + 1;
        i1 = (l & 0xff) << 16 | (i1 & 0xff) << 8 | abyte0[i] & 0xff;
        tailLen = 0;
          goto _L10
_L9:
        if (!flag) goto _L14; else goto _L13
_L13:
        if (j - tailLen != i2 - 1) goto _L16; else goto _L15
_L15:
        if (tailLen > 0)
        {
            abyte0 = tail;
            k = 1;
            i1 = abyte0[0];
        } else
        {
            i1 = abyte0[j];
            j++;
            k = 0;
        }
        i1 = (i1 & 0xff) << 4;
        tailLen = tailLen - k;
        k1 = i + 1;
        abyte2[i] = abyte1[i1 >> 6 & 0x3f];
        k = k1 + 1;
        abyte2[k1] = abyte1[i1 & 0x3f];
        i = k;
        if (do_padding)
        {
            i1 = k + 1;
            abyte2[k] = 61;
            i = i1 + 1;
            abyte2[i1] = 61;
        }
        k = i;
        if (do_newline)
        {
            k = i;
            if (do_cr)
            {
                abyte2[i] = 13;
                k = i + 1;
            }
            abyte2[k] = 10;
            k++;
        }
        i1 = j;
_L18:
        if (!$assertionsDisabled && tailLen != 0)
        {
            throw new AssertionError();
        }
        break; /* Loop/switch isn't completed */
_L16:
        if (j - tailLen == i2 - 2)
        {
            if (tailLen > 1)
            {
                abyte3 = tail;
                k1 = 1;
                i1 = abyte3[0];
                k = j;
                j = k1;
            } else
            {
                i1 = abyte0[j];
                k = j + 1;
                j = 0;
            }
            if (tailLen > 0)
            {
                k1 = tail[j];
                l1 = j + 1;
                j = k;
                k = l1;
            } else
            {
                k1 = abyte0[k];
                l1 = k + 1;
                k = j;
                j = l1;
            }
            i1 = (k1 & 0xff) << 2 | (i1 & 0xff) << 10;
            tailLen = tailLen - k;
            k = i + 1;
            abyte2[i] = abyte1[i1 >> 12 & 0x3f];
            k1 = k + 1;
            abyte2[k] = abyte1[i1 >> 6 & 0x3f];
            i = k1 + 1;
            abyte2[k1] = abyte1[i1 & 0x3f];
            if (do_padding)
            {
                k = i + 1;
                abyte2[i] = 61;
                i = k;
            }
            k = i;
            if (do_newline)
            {
                k = i;
                if (do_cr)
                {
                    abyte2[i] = 13;
                    k = i + 1;
                }
                abyte2[k] = 10;
                k++;
            }
            i1 = j;
        } else
        {
            i1 = j;
            k = i;
            if (do_newline)
            {
                i1 = j;
                k = i;
                if (i > 0)
                {
                    i1 = j;
                    k = i;
                    if (l != 19)
                    {
                        if (do_cr)
                        {
                            k = i + 1;
                            abyte2[i] = 13;
                            i = k;
                        }
                        k = i + 1;
                        abyte2[i] = 10;
                        i1 = j;
                    }
                }
            }
        }
        if (true) goto _L18; else goto _L17
_L17:
        k1 = k;
        if (!$assertionsDisabled)
        {
            k1 = k;
            if (i1 != i2)
            {
                throw new AssertionError();
            }
        }
          goto _L19
_L14:
        if (j != i2 - 1) goto _L21; else goto _L20
_L20:
        abyte1 = tail;
        k = tailLen;
        tailLen = k + 1;
        abyte1[k] = abyte0[j];
        k1 = i;
_L19:
        op = k1;
        count = l;
        return true;
_L21:
        k1 = i;
        if (j == i2 - 2)
        {
            abyte1 = tail;
            k = tailLen;
            tailLen = k + 1;
            abyte1[k] = abyte0[j];
            abyte1 = tail;
            k = tailLen;
            tailLen = k + 1;
            abyte1[k] = abyte0[j + 1];
            k1 = i;
        }
        if (true) goto _L19; else goto _L6
_L6:
        i1 = i;
        i = k;
        j = l;
        l = i1;
        break MISSING_BLOCK_LABEL_180;
    }

    static 
    {
        boolean flag;
        if (!com/tencent/stat/common/StatBase64.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }

    public (int i, byte abyte0[])
    {
        boolean flag1 = true;
        super();
        output = abyte0;
        boolean flag;
        if ((i & 1) == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        do_padding = flag;
        if ((i & 2) == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        do_newline = flag;
        if ((i & 4) != 0)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        do_cr = flag;
        if ((i & 8) == 0)
        {
            abyte0 = ENCODE;
        } else
        {
            abyte0 = ENCODE_WEBSAFE;
        }
        alphabet = abyte0;
        tailLen = 0;
        if (do_newline)
        {
            i = 19;
        } else
        {
            i = -1;
        }
        count = i;
    }
}
