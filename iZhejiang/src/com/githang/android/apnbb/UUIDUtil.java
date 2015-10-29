// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.githang.android.apnbb;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.UUID;

public class UUIDUtil
{

    private static final String INSTALLATION = (new StringBuilder("INSTALLATION-")).append(UUID.nameUUIDFromBytes("androidkit".getBytes())).toString();
    private static String sID = null;

    public UUIDUtil()
    {
    }

    public static String getID(Context context)
    {
        if (sID != null) goto _L2; else goto _L1
_L1:
        com/githang/android/apnbb/UUIDUtil;
        JVM INSTR monitorenter ;
        File file;
        if (sID != null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        file = new File(context.getFilesDir(), INSTALLATION);
        if (!file.exists())
        {
            writeInstallationFile(context, file);
        }
        sID = readInstallationFile(file);
_L3:
        com/githang/android/apnbb/UUIDUtil;
        JVM INSTR monitorexit ;
_L2:
        return sID;
        context;
        context.printStackTrace();
          goto _L3
        context;
        com/githang/android/apnbb/UUIDUtil;
        JVM INSTR monitorexit ;
        throw context;
    }

    private static String readInstallationFile(File file)
        throws IOException
    {
        file = new RandomAccessFile(file, "r");
        byte abyte0[] = new byte[(int)file.length()];
        file.readFully(abyte0);
        file.close();
        return new String(abyte0);
    }

    private static void writeInstallationFile(Context context, File file)
        throws IOException
    {
        file = new FileOutputStream(file);
        file.write(UUID.nameUUIDFromBytes(android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id").getBytes()).toString().getBytes());
        file.close();
    }

}
