// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.util;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

// Referenced classes of package com.pubinfo.wifi_core.core.util:
//            SdCardFileHelper, AppFileHelper

public class BaseFileHelper
{
    class FlushedInputStream extends FilterInputStream
    {

        final BaseFileHelper this$0;

        public long skip(long l)
            throws IOException
        {
            long l1 = 0L;
_L5:
            if (l1 < l) goto _L2; else goto _L1
_L1:
            return l1;
_L2:
            long l2;
            long l3 = in.skip(l - l1);
            l2 = l3;
            if (l3 != 0L)
            {
                break; /* Loop/switch isn't completed */
            }
            if (read() < 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            l2 = 1L;
            break; /* Loop/switch isn't completed */
            if (true) goto _L1; else goto _L3
_L3:
            l1 += l2;
            if (true) goto _L5; else goto _L4
_L4:
        }

        public FlushedInputStream(InputStream inputstream)
        {
            this$0 = BaseFileHelper.this;
            super(inputstream);
        }
    }


    protected static Context context;
    private static BaseFileHelper fileHelper = null;
    protected File rootDir;
    protected String rootPath;

    protected BaseFileHelper()
    {
    }

    public static BaseFileHelper getInstance(boolean flag, Context context1)
    {
        if (fileHelper == null)
        {
            if (flag)
            {
                fileHelper = SdCardFileHelper.getInstance();
                if (fileHelper == null)
                {
                    fileHelper = AppFileHelper.getInstance(context1);
                }
            } else
            {
                fileHelper = AppFileHelper.getInstance(context1);
            }
        }
        return fileHelper;
    }

    public File create(InputStream inputstream, String s, String s1, boolean flag)
        throws IOException
    {
        if (inputstream == null)
        {
            return null;
        }
        s = create(s, s1);
        if (s == null)
        {
            return null;
        }
        s1 = new byte[2048];
        FileOutputStream fileoutputstream = new FileOutputStream(s, flag);
        do
        {
            int i = inputstream.read(s1);
            if (i <= 0)
            {
                inputstream.close();
                return s;
            }
            fileoutputstream.write(s1, 0, i);
        } while (true);
    }

    public File create(String s, String s1)
        throws IOException
    {
        createDir(s);
        s1 = new File((new StringBuilder(String.valueOf(rootDir.getAbsolutePath()))).append(File.separator).append(s).toString(), s1);
        s = s1;
        if (!s1.exists())
        {
            s = s1;
            if (!s1.createNewFile())
            {
                s = null;
            }
        }
        return s;
    }

    public File createDir(String s)
    {
        File file = new File(rootPath, s);
        s = file;
        if (!file.exists())
        {
            s = file;
            if (!file.mkdirs())
            {
                s = null;
            }
        }
        return s;
    }

    public boolean deleteDirectory(File file)
    {
        this;
        JVM INSTR monitorenter ;
        File file1;
        file1 = file;
        if (file != null)
        {
            break MISSING_BLOCK_LABEL_13;
        }
        file1 = rootDir;
        file = file1.listFiles();
        if (file == null) goto _L2; else goto _L1
_L1:
        int j = file.length;
        int i = 0;
          goto _L3
_L2:
        boolean flag = file1.delete();
        this;
        JVM INSTR monitorexit ;
        return flag;
_L7:
        File file2 = file[i];
        if (!file2.isDirectory()) goto _L5; else goto _L4
_L4:
        deleteDirectory(file2);
          goto _L6
_L5:
        file2.delete();
          goto _L6
        file;
        throw file;
_L3:
        if (i < j) goto _L7; else goto _L2
_L6:
        i++;
          goto _L3
    }

    public boolean deleteFile(String s, String s1)
    {
        s = new File((new StringBuilder(String.valueOf(rootDir.getAbsolutePath()))).append(File.separator).append(s).toString(), s1);
        if (s.exists())
        {
            return s.delete();
        } else
        {
            return false;
        }
    }

    public InputStream download(String s)
        throws IOException
    {
        s = (new URL(s)).openConnection();
        s.setConnectTimeout(5000);
        return new FlushedInputStream(s.getInputStream());
    }

    public boolean exists(File file)
    {
        return file.exists();
    }

    public boolean exists(String s)
    {
        return exists(new File(rootPath, s));
    }

    public boolean exists(String s, String s1)
    {
        s = new File(rootPath, s);
        if (!s.exists())
        {
            return false;
        } else
        {
            return exists(new File(s, s1));
        }
    }

}
