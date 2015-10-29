// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.tools;

import android.util.Log;

// Referenced classes of package com.iwifi.sdk.tools:
//            Logger

static class 
{

    static long LogContentLen;
    static long LogtotalLen;
    static int appID;
    static long externalLogLen;
    static int platformId;
    static int standardLogLen;

    public static byte[] getLogHeaderBytes()
    {
        byte abyte0[];
        byte abyte1[];
        int i;
        abyte0 = new byte[36];
        abyte1 = intToBytes_littleEndian(appID);
        i = 0;
_L11:
        if (i < 4) goto _L2; else goto _L1
_L1:
        abyte1 = intToBytes_littleEndian(platformId);
        i = 0;
_L12:
        if (i < 4) goto _L4; else goto _L3
_L3:
        abyte1 = intToBytes_littleEndian(standardLogLen);
        i = 0;
_L13:
        if (i < 4) goto _L6; else goto _L5
_L5:
        abyte1 = longToBytes_littleEndian(externalLogLen);
        i = 0;
_L14:
        if (i < 8) goto _L8; else goto _L7
_L7:
        abyte1 = longToBytes_littleEndian(LogContentLen);
        i = 0;
_L15:
        if (i < 8) goto _L10; else goto _L9
_L9:
        abyte1 = longToBytes_littleEndian(LogtotalLen);
        i = 0;
_L16:
        if (i >= 8)
        {
            Log.v("test", (new StringBuilder(" b : ")).append(abyte0.toString()).toString());
            return abyte0;
        }
        break MISSING_BLOCK_LABEL_195;
_L2:
        abyte0[i] = abyte1[i];
        i++;
          goto _L11
_L4:
        abyte0[i + 4] = abyte1[i];
        i++;
          goto _L12
_L6:
        abyte0[i + 8] = abyte1[i];
        i++;
          goto _L13
_L8:
        abyte0[i + 12] = abyte1[i];
        i++;
          goto _L14
_L10:
        abyte0[i + 20] = abyte1[i];
        i++;
          goto _L15
        abyte0[i + 28] = abyte1[i];
        i++;
          goto _L16
    }

    public static byte[] intToBytes_bigEndian(int i)
    {
        return (new byte[] {
            (byte)(i >>> 24), (byte)(i >>> 16), (byte)(i >>> 8), (byte)i
        });
    }

    public static byte[] intToBytes_littleEndian(int i)
    {
        byte byte0 = (byte)(i >>> 24);
        byte byte1 = (byte)(i >>> 16);
        byte byte2 = (byte)(i >>> 8);
        return (new byte[] {
            (byte)i, byte2, byte1, byte0
        });
    }

    public static byte[] longToBytes_bigEndian(long l)
    {
        return (new byte[] {
            (byte)(int)(l >>> 56), (byte)(int)(l >>> 48), (byte)(int)(l >>> 40), (byte)(int)(l >>> 32), (byte)(int)(l >>> 24), (byte)(int)(l >>> 16), (byte)(int)(l >>> 8), (byte)(int)l
        });
    }

    public static byte[] longToBytes_littleEndian(long l)
    {
        byte byte0 = (byte)(int)(l >>> 56);
        byte byte1 = (byte)(int)(l >>> 48);
        byte byte2 = (byte)(int)(l >>> 40);
        byte byte3 = (byte)(int)(l >>> 32);
        byte byte4 = (byte)(int)(l >>> 24);
        byte byte5 = (byte)(int)(l >>> 16);
        byte byte6 = (byte)(int)(l >>> 8);
        return (new byte[] {
            (byte)(int)l, byte6, byte5, byte4, byte3, byte2, byte1, byte0
        });
    }

    ()
    {
    }
}
