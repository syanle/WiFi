// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.util;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class InitResources
{

    private Context _context;

    public InitResources(Context context)
    {
        _context = context;
    }

    private void copyFile(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        byte abyte0[] = new byte[1024];
        do
        {
            int i = inputstream.read(abyte0);
            if (i == -1)
            {
                return;
            }
            outputstream.write(abyte0, 0, i);
        } while (true);
    }

    public void CopyAssets(String s, String s1)
    {
        s = _context.getAssets();
        s = s.open(s1);
        s1 = new FileOutputStream((new StringBuilder(String.valueOf(_context.getFilesDir().getAbsolutePath()))).append("/").append(s1).toString());
        try
        {
            copyFile(s, s1);
            s.close();
            s1.flush();
            s1.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        break MISSING_BLOCK_LABEL_74;
        s;
        Log.e("tag", s.toString());
        return;
    }
}
