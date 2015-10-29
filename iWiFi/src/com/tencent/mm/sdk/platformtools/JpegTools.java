// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import java.nio.ByteBuffer;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            MBuf, Log

public class JpegTools
{

    public static final int ORIENTATION_FLIP_HORIZONTAL = 2;
    public static final int ORIENTATION_FLIP_VERTICAL = 4;
    public static final int ORIENTATION_NORMAL = 1;
    public static final int ORIENTATION_ROTATE_180 = 3;
    public static final int ORIENTATION_ROTATE_270 = 8;
    public static final int ORIENTATION_ROTATE_90 = 6;
    public static final int ORIENTATION_TRANSPOSE = 5;
    public static final int ORIENTATION_TRANSVERSE = 7;
    public static final int ORIENTATION_UNDEFINED = 0;
    public static final String TAG = "MicroMsg.JpegTools";
    private MBuf B;
    private int C;
    private boolean D;

    public JpegTools(byte abyte0[])
    {
        B = null;
        C = -1;
        D = true;
        B = new MBuf();
        B.setBuffer(abyte0);
    }

    private void a(int i)
    {
        int j = B.getBuffer().position();
        B.getBuffer().position(j + i);
    }

    public static String byte2HexString(byte byte0)
    {
        String s1 = Integer.toHexString(byte0 & 0xff);
        String s = s1;
        if (s1.length() == 1)
        {
            s = (new StringBuilder("0")).append(s1).toString();
        }
        return (new StringBuilder()).append("").append(s.toUpperCase()).toString();
    }

    public int getOreiValue()
    {
        if (C == -1) goto _L2; else goto _L1
_L1:
        C;
        JVM INSTR tableswitch 1 8: default 60
    //                   1 73
    //                   2 60
    //                   3 65
    //                   4 60
    //                   5 60
    //                   6 62
    //                   7 60
    //                   8 69;
           goto _L2 _L3 _L2 _L4 _L2 _L2 _L5 _L2 _L6
_L2:
        return -1;
_L5:
        return 90;
_L4:
        return 180;
_L6:
        return 270;
_L3:
        return 0;
    }

    public int parserJpeg()
    {
        int k = 0;
        byte byte0;
        byte byte3;
        int i;
        byte0 = B.getBuffer().get();
        byte3 = B.getBuffer().get();
        break MISSING_BLOCK_LABEL_25;
_L5:
        int j;
        byte1 = B.getBuffer().get();
        byte4 = B.getBuffer().get();
        B.getBuffer().get();
        j = B.getBuffer().get();
        if (byte2HexString(byte1).equals("FF")) goto _L2; else goto _L1
_L1:
        i = -1;
_L3:
        if (i >= 0)
        {
            break MISSING_BLOCK_LABEL_264;
        }
        Log.w("MicroMsg.JpegTools", "datalen is error ");
        return -1;
_L2:
        if (!byte2HexString(byte1).equals("FF") || !byte2HexString(byte4).equals("E1"))
        {
            break MISSING_BLOCK_LABEL_177;
        }
        i = (j & 0xff) - 2;
          goto _L3
        if (!byte2HexString(byte1).equals("FF") || !byte2HexString(byte4).equals("D9"))
        {
            break MISSING_BLOCK_LABEL_207;
        }
        i = -1;
          goto _L3
        int l = B.getOffset();
        B.getBuffer().position((l + j) - 2);
        j = i + 1;
        i = j;
        if (j <= 100) goto _L5; else goto _L4
_L4:
        Log.e("MicroMsg.JpegTools", "error while!");
        i = -1;
          goto _L3
        int i1;
        i = B.getBuffer().get();
        j = B.getBuffer().get();
        i1 = B.getBuffer().get();
        byte6 = B.getBuffer().get();
        Object obj;
        byte byte2;
        byte byte5;
        boolean flag;
        if ((new StringBuilder()).append((char)i).append((char)j).append((char)i1).append((char)byte6).toString().equals("Exif"))
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_371;
        }
        Log.w("MicroMsg.JpegTools", "checkExifTag is error");
        return -1;
        a(2);
        i = B.getBuffer().get();
        j = B.getBuffer().get();
        if ((char)i == 'M' && (char)j == 'M')
        {
            obj = "MM";
        } else
        if ((char)i == 'I' && (char)j == 'I')
        {
            obj = "II";
        } else
        {
            obj = "";
        }
        if (((String) (obj)).equals("MM") || ((String) (obj)).equals("II"))
        {
            break MISSING_BLOCK_LABEL_460;
        }
        Log.w("MicroMsg.JpegTools", (new StringBuilder("byteOrder  is error ")).append(((String) (obj))).toString());
        return -1;
        D = ((String) (obj)).equals("MM");
        flag = D;
        byte2 = B.getBuffer().get();
        byte5 = B.getBuffer().get();
        if (!flag) goto _L7; else goto _L6
_L6:
        if (!byte2HexString(byte2).equals("00") || !byte2HexString(byte5).equals("2A")) goto _L7; else goto _L8
_L8:
        i = 1;
_L10:
        if (i != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        Log.w("MicroMsg.JpegTools", "checkTiffTag  is error ");
        return -1;
_L7:
        if (byte2HexString(byte2).equals("2A") && byte2HexString(byte5).equals("00"))
        {
            i = 1;
            continue; /* Loop/switch isn't completed */
        }
        Log.w("MicroMsg.JpegTools", (new StringBuilder("checkTiffTag: ")).append(byte2HexString(byte2)).append(" ").append(byte2HexString(byte5)).toString());
        i = 0;
        if (true) goto _L10; else goto _L9
_L9:
        a(4);
        j = B.getBuffer().get();
        i = B.getBuffer().get();
        j &= 0xff;
        if (D)
        {
            j = i & 0xff;
        }
        break MISSING_BLOCK_LABEL_963;
_L17:
        if (i1 >= j || i1 >= 255) goto _L12; else goto _L11
_L11:
        byte2 = B.getBuffer().get();
        byte5 = B.getBuffer().get();
        if (!D || !byte2HexString(byte2).equals("01") || !byte2HexString(byte5).equals("12")) goto _L14; else goto _L13
_L13:
        i = 1;
_L16:
        a(2);
        a(4);
        if (i == 0)
        {
            break; /* Loop/switch isn't completed */
        }
        flag = D;
        i = B.getBuffer().get();
        j = B.getBuffer().get();
        a(2);
        if (flag)
        {
            i = j & 0xff;
        } else
        {
            i &= 0xff;
        }
        C = i;
_L12:
        Log.d("MicroMsg.JpegTools", (new StringBuilder("orei ")).append(C).toString());
        return getOreiValue();
_L14:
        i = k;
        if (D)
        {
            continue; /* Loop/switch isn't completed */
        }
        i = k;
        if (!byte2HexString(byte2).equals("12"))
        {
            continue; /* Loop/switch isn't completed */
        }
        i = k;
        if (byte2HexString(byte5).equals("01"))
        {
            i = 1;
        }
        if (true) goto _L16; else goto _L15
_L15:
        a(4);
        i1++;
        k = i;
          goto _L17
        {
            if (byte2HexString(byte0).equals("FF") && byte2HexString(byte3).equals("D8"))
            {
                i = 1;
            } else
            {
                i = 0;
            }
            if (i == 0)
            {
                byte byte1;
                byte byte4;
                byte byte6;
                try
                {
                    Log.w("MicroMsg.JpegTools", "this is not jpeg or no exif data!!!");
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    Log.e("MicroMsg.JpegTools", "parser jpeg error");
                    return -1;
                }
                return -1;
            }
            i = 0;
        }
          goto _L5
        i1 = 0;
          goto _L17
    }
}
