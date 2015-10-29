// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.connect.a;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class a
{

    public a()
    {
    }

    public static String a(InputStream inputstream)
    {
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(inputstream));
        inputstream = "";
_L1:
        String s = bufferedreader.readLine();
        InputStream inputstream1;
        inputstream1 = inputstream;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        inputstream = (new StringBuilder()).append(inputstream).append(s).toString();
          goto _L1
        inputstream;
        inputstream.printStackTrace();
        inputstream1 = null;
        return inputstream1;
    }

    public static boolean a(File file, File file1)
    {
        boolean flag;
        try
        {
            flag = b(new FileInputStream(file), file1);
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            file.printStackTrace();
            return false;
        }
        return flag;
    }

    public static boolean a(InputStream inputstream, File file)
    {
        byte abyte0[];
        if (!file.exists())
        {
            file.createNewFile();
        }
        file = new FileOutputStream(file);
        abyte0 = new byte[1024];
_L1:
        int i = inputstream.read(abyte0);
label0:
        {
            if (i == -1)
            {
                break label0;
            }
            try
            {
                file.write(abyte0, 0, i);
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                inputstream.printStackTrace();
                return false;
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                inputstream.printStackTrace();
                return false;
            }
        }
          goto _L1
        file.flush();
        inputstream.close();
        file.close();
        return true;
    }

    public static boolean a(InputStream inputstream, String s, String s1)
    {
        File file = new File(s);
        if (!file.exists())
        {
            file.mkdirs();
        }
        s = new File((new StringBuilder()).append(s).append(File.separator).append(s1).toString());
        if (s.exists())
        {
            s.delete();
        }
        s = new FileOutputStream(s);
        s1 = new byte[1024];
_L1:
        int i = inputstream.read(s1);
label0:
        {
            if (i <= 0)
            {
                break label0;
            }
            try
            {
                s.write(s1, 0, i);
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                inputstream.printStackTrace();
                return false;
            }
        }
          goto _L1
        s.close();
        inputstream.close();
        return true;
    }

    public static boolean a(String s)
    {
        s = new File(s);
        if (s.isDirectory())
        {
            s = s.listFiles();
            int j = s.length;
            for (int i = 0; i < j; i++)
            {
                if (!s[i].delete())
                {
                    return false;
                }
            }

        }
        return true;
    }

    public static boolean a(String s, String s1, String s2)
    {
        boolean flag;
        try
        {
            s = (HttpURLConnection)(new URL(s)).openConnection();
            s.setConnectTimeout(5000);
            s.setRequestMethod("GET");
            s.setRequestProperty("Chaset", "UTF-8");
            flag = a(s.getInputStream(), s1, s2);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return false;
        }
        return flag;
    }

    public static boolean b(InputStream inputstream, File file)
    {
        inputstream = new ZipInputStream(inputstream);
_L2:
        Object obj = inputstream.getNextEntry();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        if (((ZipEntry) (obj)).isDirectory()) goto _L2; else goto _L1
_L1:
        byte abyte0[];
        Object obj1;
        int i;
        obj = ((ZipEntry) (obj)).getName();
        obj1 = new File((new StringBuilder()).append(file.getPath()).append(File.separator).append(((String) (obj))).toString());
        if (((File) (obj1)).exists())
        {
            ((File) (obj1)).delete();
        }
        if (!((File) (obj1)).getParentFile().exists())
        {
            ((File) (obj1)).getParentFile().mkdirs();
        }
        abyte0 = new byte[1024];
        obj1 = new FileOutputStream(((File) (obj1)));
        i = inputstream.read(abyte0);
        while (i > 0) 
        {
            try
            {
                ((FileOutputStream) (obj1)).write(abyte0, 0, i);
                i = inputstream.read(abyte0);
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                inputstream.printStackTrace();
                return false;
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                inputstream.printStackTrace();
                return false;
            }
        }
        inputstream.closeEntry();
        ((FileOutputStream) (obj1)).close();
          goto _L2
        inputstream.close();
        return true;
    }
}
