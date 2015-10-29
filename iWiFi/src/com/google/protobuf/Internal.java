// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.io.UnsupportedEncodingException;

// Referenced classes of package com.google.protobuf:
//            ByteString

public class Internal
{
    public static interface EnumLite
    {

        public abstract int getNumber();
    }

    public static interface EnumLiteMap
    {

        public abstract EnumLite findValueByNumber(int i);
    }


    public Internal()
    {
    }

    public static ByteString bytesDefaultValue(String s)
    {
        try
        {
            s = ByteString.copyFrom(s.getBytes("ISO-8859-1"));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalStateException("Java VM does not support a standard character set.", s);
        }
        return s;
    }

    public static boolean isValidUtf8(ByteString bytestring)
    {
        int k = bytestring.size();
        int i = 0;
        do
        {
            int j;
            if (i < k)
            {
                j = i + 1;
                int l = bytestring.byteAt(i) & 0xff;
                if (l < 128)
                {
                    i = j;
                    continue;
                }
                if (l < 194 || l > 244)
                {
                    return false;
                }
                if (j >= k)
                {
                    return false;
                }
                i = j + 1;
                int i1 = bytestring.byteAt(j) & 0xff;
                if (i1 < 128 || i1 > 191)
                {
                    return false;
                }
                if (l <= 223)
                {
                    continue;
                }
                if (i >= k)
                {
                    return false;
                }
                j = i + 1;
                i = bytestring.byteAt(i) & 0xff;
                if (i < 128 || i > 191)
                {
                    return false;
                }
                if (l <= 239)
                {
                    if (l != 224 || i1 >= 160)
                    {
                        i = j;
                        if (l != 237)
                        {
                            continue;
                        }
                        i = j;
                        if (i1 <= 159)
                        {
                            continue;
                        }
                    }
                    return false;
                }
                if (j >= k)
                {
                    return false;
                }
                i = bytestring.byteAt(j) & 0xff;
                if (i < 128 || i > 191)
                {
                    return false;
                }
                if (l == 240 && i1 < 144 || l == 244 && i1 > 143)
                {
                    return false;
                }
            } else
            {
                return true;
            }
            i = j + 1;
        } while (true);
    }

    public static String stringDefaultValue(String s)
    {
        try
        {
            s = new String(s.getBytes("ISO-8859-1"), "UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalStateException("Java VM does not support a standard character set.", s);
        }
        return s;
    }
}
