// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.common;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

public class a
{

    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    public static final int f = 5;
    public static final int g = 6;
    public static final int h = 7;
    public static final int i = 8;
    public static final int j = 9;
    public static final int k = 10;
    public static final int l = 11;
    public static final String m[] = {
        "jpeg", "gif", "png", "bmp", "pcx", "iff", "ras", "pbm", "pgm", "ppm", 
        "psd", "swf"
    };

    public a()
    {
    }

    public static String a(byte abyte0[])
    {
        String s = null;
        Object obj = new ByteArrayInputStream(abyte0);
        int i1;
        int j1;
        i1 = ((InputStream) (obj)).read();
        j1 = ((InputStream) (obj)).read();
        if (i1 != 71 || j1 != 73) goto _L2; else goto _L1
_L1:
        s = m[1];
        abyte0 = s;
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                abyte0.printStackTrace();
                return s;
            }
            abyte0 = s;
        }
_L4:
        return abyte0;
_L2:
        if (i1 != 137 || j1 != 80)
        {
            break; /* Loop/switch isn't completed */
        }
        s = m[2];
        abyte0 = s;
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                abyte0.printStackTrace();
                return s;
            }
            return s;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (i1 != 255 || j1 != 216)
        {
            break; /* Loop/switch isn't completed */
        }
        s = m[0];
        abyte0 = s;
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                abyte0.printStackTrace();
                return s;
            }
            return s;
        }
        if (true) goto _L4; else goto _L5
_L5:
        if (i1 != 66 || j1 != 77)
        {
            break; /* Loop/switch isn't completed */
        }
        s = m[3];
        abyte0 = s;
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                abyte0.printStackTrace();
                return s;
            }
            return s;
        }
        if (true) goto _L4; else goto _L6
_L6:
        if (i1 != 10 || j1 >= 6)
        {
            break; /* Loop/switch isn't completed */
        }
        s = m[4];
        abyte0 = s;
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                abyte0.printStackTrace();
                return s;
            }
            return s;
        }
        if (true) goto _L4; else goto _L7
_L7:
        if (i1 != 70 || j1 != 79)
        {
            break; /* Loop/switch isn't completed */
        }
        s = m[5];
        abyte0 = s;
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                abyte0.printStackTrace();
                return s;
            }
            return s;
        }
        if (true) goto _L4; else goto _L8
_L8:
        if (i1 != 89 || j1 != 166)
        {
            break; /* Loop/switch isn't completed */
        }
        s = m[6];
        abyte0 = s;
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                abyte0.printStackTrace();
                return s;
            }
            return s;
        }
        if (true) goto _L4; else goto _L9
_L9:
        if (i1 != 80 || j1 < 49 || j1 > 54)
        {
            break; /* Loop/switch isn't completed */
        }
        i1 = j1 - 48;
        if (i1 < 1 || i1 > 6)
        {
            if (obj != null)
            {
                try
                {
                    ((InputStream) (obj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (byte abyte0[])
                {
                    abyte0.printStackTrace();
                }
            }
            return "";
        }
        i1 = (new int[] {
            7, 8, 9
        })[(i1 - 1) % 3];
        s = m[i1];
        abyte0 = s;
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                abyte0.printStackTrace();
                return s;
            }
            return s;
        }
        if (true) goto _L4; else goto _L10
_L10:
        if (i1 != 56 || j1 != 66)
        {
            break; /* Loop/switch isn't completed */
        }
        s = m[10];
        abyte0 = s;
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                abyte0.printStackTrace();
                return s;
            }
            return s;
        }
        if (true) goto _L4; else goto _L11
_L11:
        if (i1 != 70 || j1 != 87)
        {
            break; /* Loop/switch isn't completed */
        }
        s = m[11];
        abyte0 = s;
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                abyte0.printStackTrace();
                return s;
            }
            return s;
        }
        if (true) goto _L4; else goto _L12
_L12:
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                abyte0.printStackTrace();
            }
        }
        return "";
        abyte0;
        abyte0 = s;
_L16:
        if (abyte0 != null)
        {
            try
            {
                abyte0.close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                abyte0.printStackTrace();
            }
        }
        return "";
        abyte0;
        obj = null;
_L14:
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace();
            }
        }
        throw abyte0;
        abyte0;
        if (true) goto _L14; else goto _L13
_L13:
        abyte0;
        abyte0 = ((byte []) (obj));
        if (true) goto _L16; else goto _L15
_L15:
    }

}
