// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log

public final class FilesCopy
{

    private FilesCopy()
    {
    }

    public static boolean copy(String s, String s1, boolean flag)
    {
        File file;
        int i;
        i = 0;
        file = new File(s);
        if (file.exists()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        File file1 = new File(s1);
        if (file.isFile())
        {
            if (!file1.isFile() && file1.exists())
            {
                continue; /* Loop/switch isn't completed */
            }
            copyFile(s, s1);
            if (flag)
            {
                file.delete();
            }
        } else
        if (file.isDirectory())
        {
            if (!file1.exists())
            {
                file1.mkdir();
            }
            if (!file1.isDirectory())
            {
                continue; /* Loop/switch isn't completed */
            }
            String as[] = file.list();
            while (i < as.length) 
            {
                copy((new StringBuilder()).append(s).append("/").append(as[i]).toString(), (new StringBuilder()).append(s1).append("/").append(as[i]).toString(), flag);
                i++;
            }
        }
        return true;
        if (true) goto _L1; else goto _L3
_L3:
    }

    public static boolean copyAssets(Context context, String s, String s1)
    {
        FileOutputStream fileoutputstream;
        InputStream inputstream;
        inputstream = context.getAssets().open(s);
        fileoutputstream = new FileOutputStream(s1);
        Object obj = fileoutputstream;
        byte abyte0[] = new byte[16384];
_L2:
        obj = fileoutputstream;
        int i = inputstream.read(abyte0);
        if (i == -1)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = fileoutputstream;
        fileoutputstream.write(abyte0, 0, i);
        if (true) goto _L2; else goto _L1
        s;
        context = fileoutputstream;
_L11:
        obj = context;
        s.printStackTrace();
        if (context != null)
        {
            int j;
            long l;
            long l1;
            boolean flag;
            try
            {
                context.close();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.e("FilesCopy", null, new Object[] {
                    context
                });
                return false;
            }
_L6:
            return false;
        } else
        {
            return false;
        }
_L1:
        obj = fileoutputstream;
        s1 = new File(s1);
        obj = fileoutputstream;
        inputstream.close();
        obj = fileoutputstream;
        j = context.getAssets().open(s).available();
        obj = fileoutputstream;
        if (!s1.exists()) goto _L4; else goto _L3
_L3:
        l = j;
        obj = fileoutputstream;
        l1 = s1.length();
        if (l != l1) goto _L4; else goto _L5
_L5:
        flag = true;
_L7:
        try
        {
            fileoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e("FilesCopy", null, new Object[] {
                context
            });
            return false;
        }
        return flag;
_L4:
        flag = false;
        if (true) goto _L7; else goto _L6
        context;
        obj = null;
_L9:
        if (obj != null)
        {
            try
            {
                ((FileOutputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Log.e("FilesCopy", null, new Object[] {
                    s
                });
            }
        }
        throw context;
        context;
        if (true) goto _L9; else goto _L8
_L8:
        s;
        context = null;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public static boolean copyFile(String s, String s1)
    {
        Object obj;
        Object obj1 = null;
        int i;
        boolean flag;
        try
        {
            obj = new FileInputStream(s);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            s = null;
            s1 = ((String) (obj1));
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            s = null;
            obj = null;
        }
        s = new FileOutputStream(s1);
        s1 = new byte[16384];
_L3:
        i = ((FileInputStream) (obj)).read(s1);
        if (i == -1) goto _L2; else goto _L1
_L1:
        s.write(s1, 0, i);
          goto _L3
        obj1;
        s1 = ((String) (obj));
        obj = obj1;
_L7:
        ((Exception) (obj)).printStackTrace();
        if (s1 != null)
        {
            try
            {
                s1.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s1)
            {
                s1.printStackTrace();
            }
        }
        Exception exception;
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                return false;
            }
            return false;
        } else
        {
            return false;
        }
_L2:
        flag = true;
        try
        {
            ((FileInputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            s1.printStackTrace();
            flag = false;
        }
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return false;
        }
        return flag;
_L5:
        if (obj != null)
        {
            try
            {
                ((FileInputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace();
            }
        }
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
            }
        }
        throw s1;
        s1;
        s = null;
        continue; /* Loop/switch isn't completed */
        s1;
        continue; /* Loop/switch isn't completed */
        obj1;
        obj = s1;
        s1 = ((String) (obj1));
        if (true) goto _L5; else goto _L4
_L4:
        break MISSING_BLOCK_LABEL_11;
        exception;
        s = null;
        s1 = ((String) (obj));
        obj = exception;
        if (true) goto _L7; else goto _L6
_L6:
    }
}
