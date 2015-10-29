// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.k;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public class g
{

    public static final void a(File file)
    {
        if (!file.exists())
        {
            break MISSING_BLOCK_LABEL_72;
        }
        if (file.isFile())
        {
            file.getPath();
            file.delete();
            return;
        }
        File afile[];
        int j;
        if (!file.isDirectory())
        {
            break MISSING_BLOCK_LABEL_72;
        }
        afile = file.listFiles();
        j = afile.length;
        int i = 0;
_L2:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        a(afile[i]);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        try
        {
            file.getPath();
            file.delete();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (File file) { }
    }

    public static boolean a(File file, File file1)
    {
        Object obj;
        Object obj1;
        boolean flag;
        obj = null;
        obj1 = null;
        flag = false;
        System.currentTimeMillis();
        if (file != null) goto _L2; else goto _L1
_L1:
        FileInputStream fileinputstream;
        int i;
        boolean flag1;
        if (false)
        {
            try
            {
                throw new NullPointerException();
            }
            // Misplaced declaration of an exception variable
            catch (File file) { }
        }
        if (false)
        {
            try
            {
                throw new NullPointerException();
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                return false;
            }
        }
_L5:
        return flag;
_L2:
        Exception exception;
        try
        {
            flag1 = file.exists();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            fileinputstream = null;
            file = obj1;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            fileinputstream = null;
            file1 = obj;
        }
        if (flag1) goto _L4; else goto _L3
_L3:
        if (false)
        {
            try
            {
                throw new NullPointerException();
            }
            // Misplaced declaration of an exception variable
            catch (File file) { }
        }
        if (false)
        {
            try
            {
                throw new NullPointerException();
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                return false;
            }
        }
        if (true) goto _L5; else goto _L4
_L4:
        if (file1 == null)
        {
            if (false)
            {
                try
                {
                    throw new NullPointerException();
                }
                // Misplaced declaration of an exception variable
                catch (File file) { }
            }
            if (false)
            {
                try
                {
                    throw new NullPointerException();
                }
                // Misplaced declaration of an exception variable
                catch (File file)
                {
                    return false;
                }
            }
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            file.length();
            file.getAbsolutePath();
            file1.getAbsolutePath();
        }
        catch (Throwable throwable) { }
        fileinputstream = new FileInputStream(file);
        file = new FileOutputStream(file1);
        file1 = new byte[1024];
_L8:
        i = fileinputstream.read(file1);
        if (i <= 0) goto _L7; else goto _L6
_L6:
        file.write(file1, 0, i);
          goto _L8
        file1;
_L12:
        if (file != null)
        {
            try
            {
                file.close();
            }
            // Misplaced declaration of an exception variable
            catch (File file) { }
        }
        if (fileinputstream != null)
        {
            try
            {
                fileinputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                return false;
            }
            return false;
        }
        continue; /* Loop/switch isn't completed */
_L7:
        file.flush();
        file.close();
        flag = true;
        if (false)
        {
            try
            {
                throw new NullPointerException();
            }
            // Misplaced declaration of an exception variable
            catch (File file) { }
        }
        if (fileinputstream != null)
        {
            try
            {
                fileinputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                return true;
            }
            return true;
        }
        continue; /* Loop/switch isn't completed */
_L10:
        if (file1 != null)
        {
            try
            {
                file1.close();
            }
            // Misplaced declaration of an exception variable
            catch (File file1) { }
        }
        if (fileinputstream != null)
        {
            try
            {
                fileinputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (File file1) { }
        }
        throw file;
        file;
        file1 = obj;
        continue; /* Loop/switch isn't completed */
        exception;
        file1 = file;
        file = exception;
        if (true) goto _L10; else goto _L9
_L9:
        break MISSING_BLOCK_LABEL_49;
        file;
        file = obj1;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public static boolean a(File file, String s)
    {
        if (file != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if (!file.exists() || s == null) goto _L1; else goto _L3
_L3:
        try
        {
            StringBuilder stringbuilder = new StringBuilder(100);
            stringbuilder.append("chmod ").append(s).append(" ").append(file.getAbsolutePath());
            file = stringbuilder.toString();
            Runtime.getRuntime().exec(file);
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            return false;
        }
        return true;
    }

    public static final File b(File file)
    {
        if (file.exists() && file.isDirectory())
        {
            return null;
        }
        String as[];
        StringBuilder stringbuilder;
        if (file.getParentFile().exists())
        {
            break MISSING_BLOCK_LABEL_91;
        }
        as = file.getPath().split(File.separator);
        stringbuilder = new StringBuilder();
        int i = 0;
        do
        {
            try
            {
                if (i >= as.length - 1)
                {
                    break;
                }
                stringbuilder.append(File.separator).append(as[i]);
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                return null;
            }
            i++;
        } while (true);
        (new File(stringbuilder.toString())).mkdirs();
        file.createNewFile();
        return file;
    }
}
