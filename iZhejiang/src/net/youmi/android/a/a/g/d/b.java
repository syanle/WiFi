// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.d;

import java.io.ByteArrayOutputStream;

public class b
{

    public static final void a(String s, ByteArrayOutputStream bytearrayoutputstream)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        String s1;
        return;
_L2:
        if ((s1 = s.trim()).length() == 0) goto _L1; else goto _L3
_L3:
        s = s1;
        try
        {
            if (s1.indexOf('&') > -1)
            {
                s = s1.replace('&', '_');
            }
            bytearrayoutputstream.write(s.getBytes("UTF-8"));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }
}
