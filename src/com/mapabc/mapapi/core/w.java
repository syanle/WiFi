// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class w
{

    public w()
    {
    }

    public static byte[] a(Context context, String s)
    {
        context = context.getAssets();
        byte abyte0[];
        context = context.open(s);
        s = new ByteArrayOutputStream();
        abyte0 = new byte[1024];
_L1:
        int i = context.read(abyte0);
label0:
        {
            if (i <= -1)
            {
                break label0;
            }
            try
            {
                s.write(abyte0, 0, i);
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                return null;
            }
        }
          goto _L1
        abyte0 = s.toByteArray();
        s.close();
        context.close();
        return abyte0;
    }
}
