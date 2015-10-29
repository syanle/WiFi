// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.util;


public class JniPictureProcess
{

    private static final int BITMAPFILEHEADER_SIZE = 14;
    private static final int BITMAPINFOHEADER_SIZE = 40;
    private int bfOffBits;
    private int bfReserved1;
    private int bfReserved2;
    private int bfSize;
    private byte bfType[] = {
        66, 77
    };
    private int biBitCount;
    private int biClrImportant;
    private int biClrUsed;
    private int biCompression;
    private int biHeight;
    private int biPlanes;
    private int biSize;
    private int biSizeImage;
    private int biWidth;
    private int biXPelsPerMeter;
    private int biYPelsPerMeter;
    private int rp_Height;
    private int rp_Width;

    public JniPictureProcess(int i, int j)
    {
        rp_Width = 0;
        rp_Height = 0;
        bfSize = 0;
        bfReserved1 = 0;
        bfReserved2 = 0;
        bfOffBits = 54;
        biSize = 40;
        biWidth = 0;
        biHeight = 0;
        biPlanes = 1;
        biBitCount = 24;
        biCompression = 0;
        biSizeImage = 0;
        biXPelsPerMeter = 0;
        biYPelsPerMeter = 0;
        biClrUsed = 0;
        biClrImportant = 0;
        rp_Width = i;
        rp_Height = -j;
        bfSize = i * j * 3;
        biWidth = i;
        biHeight = -j;
    }

    private byte[] GetBitmapFileHeader()
    {
        byte abyte0[] = new byte[14];
        abyte0[0] = 66;
        abyte0[1] = 77;
        System.arraycopy(intToDWord(bfSize), 0, abyte0, 2, intToDWord(bfSize).length);
        System.arraycopy(intToWord(bfReserved1), 0, abyte0, 6, intToWord(bfReserved1).length);
        System.arraycopy(intToWord(bfReserved2), 0, abyte0, 8, intToWord(bfReserved2).length);
        System.arraycopy(intToDWord(bfOffBits), 0, abyte0, 10, intToDWord(bfOffBits).length);
        return abyte0;
    }

    private byte[] GetBitmapInfoHeader()
    {
        byte abyte0[] = new byte[40];
        System.arraycopy(intToDWord(biSize), 0, abyte0, 0, intToDWord(biSize).length);
        System.arraycopy(intToDWord(biWidth), 0, abyte0, 4, intToDWord(biWidth).length);
        System.arraycopy(intToDWord(biHeight), 0, abyte0, 8, intToDWord(biHeight).length);
        System.arraycopy(intToWord(biPlanes), 0, abyte0, 12, intToWord(biPlanes).length);
        System.arraycopy(intToWord(biBitCount), 0, abyte0, 14, intToWord(biBitCount).length);
        System.arraycopy(intToDWord(biCompression), 0, abyte0, 16, intToDWord(biCompression).length);
        System.arraycopy(intToDWord(biSizeImage), 0, abyte0, 20, intToDWord(biSizeImage).length);
        System.arraycopy(intToDWord(biXPelsPerMeter), 0, abyte0, 24, intToDWord(biXPelsPerMeter).length);
        System.arraycopy(intToDWord(biYPelsPerMeter), 0, abyte0, 28, intToDWord(biYPelsPerMeter).length);
        System.arraycopy(intToDWord(biClrUsed), 0, abyte0, 32, intToDWord(biClrUsed).length);
        System.arraycopy(intToDWord(biClrImportant), 0, abyte0, 36, intToDWord(biClrImportant).length);
        return abyte0;
    }

    private byte[] intToDWord(int i)
    {
        return (new byte[] {
            (byte)(i & 0xff), (byte)(i >> 8 & 0xff), (byte)(i >> 16 & 0xff), (byte)(i >> 24 & 0xff)
        });
    }

    private byte[] intToWord(int i)
    {
        return (new byte[] {
            (byte)(i & 0xff), (byte)(i >> 8 & 0xff)
        });
    }

    public byte[] AddBitmapHeader()
    {
        byte abyte0[] = new byte[54];
        int i = GetBitmapFileHeader().length;
        System.arraycopy(GetBitmapFileHeader(), 0, abyte0, 0, i);
        System.arraycopy(GetBitmapInfoHeader(), 0, abyte0, i, GetBitmapInfoHeader().length);
        return abyte0;
    }
}
