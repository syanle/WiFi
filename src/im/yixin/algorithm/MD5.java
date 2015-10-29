// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.algorithm;

import java.security.MessageDigest;

public final class MD5
{

    public static final char hexDigitalArray[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f'
    };

    public MD5()
    {
    }

    public static final String getMessageDigest(byte abyte0[])
    {
        int j = 0;
        char ac[];
        int i;
        int k;
        byte byte0;
        int l;
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(abyte0);
            abyte0 = messagedigest.digest();
            k = abyte0.length;
            ac = new char[k * 2];
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            abyte0.printStackTrace();
            return null;
        }
        i = 0;
        if (i >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        byte0 = abyte0[i];
        l = j + 1;
        ac[j] = hexDigitalArray[byte0 >>> 4 & 0xf];
        j = l + 1;
        ac[l] = hexDigitalArray[byte0 & 0xf];
        i++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_31;
_L1:
        abyte0 = new String(ac);
        return abyte0;
    }

    public static final byte[] getRawDigest(byte abyte0[])
    {
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(abyte0);
            abyte0 = messagedigest.digest();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            abyte0.printStackTrace();
            return null;
        }
        return abyte0;
    }

}
