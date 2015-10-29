// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Environment;
import android.os.Process;
import java.io.File;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.baidu.location:
//            ax, n, ar, c, 
//            ab, f, e, y, 
//            az, k, Jni

public class aa
    implements Thread.UncaughtExceptionHandler, ax, n
{

    private static aa gu = null;

    private aa()
    {
    }

    public static aa bg()
    {
        if (gu == null)
        {
            gu = new aa();
        }
        return gu;
    }

    private String _mthif(Throwable throwable)
    {
        StringWriter stringwriter = new StringWriter();
        PrintWriter printwriter = new PrintWriter(stringwriter);
        throwable.printStackTrace(printwriter);
        printwriter.close();
        return stringwriter.toString();
    }

    public void bh()
    {
        Object obj2 = null;
        Object obj;
        obj = (new StringBuilder()).append(Environment.getExternalStorageDirectory().getPath()).append("/traces").toString();
        obj = new File((new StringBuilder()).append(((String) (obj))).append("/error_fs.dat").toString());
        if (!((File) (obj)).exists()) goto _L2; else goto _L1
_L1:
        RandomAccessFile randomaccessfile;
        randomaccessfile = new RandomAccessFile(((File) (obj)), "rw");
        randomaccessfile.seek(280L);
        if (1326 != randomaccessfile.readInt()) goto _L4; else goto _L3
_L3:
        int i;
        randomaccessfile.seek(308L);
        i = randomaccessfile.readInt();
        if (i <= 0 || i >= 2048)
        {
            break MISSING_BLOCK_LABEL_239;
        }
        byte abyte0[] = new byte[i];
        randomaccessfile.read(abyte0, 0, i);
        abyte0 = new String(abyte0, 0, i);
_L5:
        randomaccessfile.seek(600L);
        i = randomaccessfile.readInt();
        Object obj1;
        obj1 = obj2;
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_206;
        }
        obj1 = obj2;
        if (i >= 2048)
        {
            break MISSING_BLOCK_LABEL_206;
        }
        obj1 = new byte[i];
        randomaccessfile.read(((byte []) (obj1)), 0, i);
        obj1 = new String(((byte []) (obj1)), 0, i);
        if (_mthnew(abyte0, ((String) (obj1))))
        {
            randomaccessfile.seek(280L);
            randomaccessfile.writeInt(12346);
        }
_L4:
        randomaccessfile.close();
_L2:
        return;
        abyte0;
        return;
        abyte0 = null;
          goto _L5
    }

    public void _mthif(File file, String s, String s1)
    {
        try
        {
            file = new RandomAccessFile(file, "rw");
            file.seek(280L);
            file.writeInt(12346);
            file.seek(300L);
            file.writeLong(System.currentTimeMillis());
            byte abyte0[] = s.getBytes();
            file.writeInt(abyte0.length);
            file.write(abyte0, 0, abyte0.length);
            file.seek(600L);
            abyte0 = s1.getBytes();
            file.writeInt(abyte0.length);
            file.write(abyte0, 0, abyte0.length);
            if (!_mthnew(s, s1))
            {
                file.seek(280L);
                file.writeInt(1326);
            }
            file.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            return;
        }
    }

    boolean _mthnew(String s, String s1)
    {
        if (ar.bU())
        {
            int i;
            try
            {
                HttpPost httppost = new HttpPost(c.Y);
                ArrayList arraylist = new ArrayList();
                arraylist.add(new BasicNameValuePair("e0", s));
                arraylist.add(new BasicNameValuePair("e1", s1));
                httppost.setEntity(new UrlEncodedFormEntity(arraylist, "utf-8"));
                s = new DefaultHttpClient();
                s.getParams().setParameter("http.connection.timeout", Integer.valueOf(12000));
                s.getParams().setParameter("http.socket.timeout", Integer.valueOf(12000));
                i = s.execute(httppost).getStatusLine().getStatusCode();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return false;
            }
            if (i == 200)
            {
                return true;
            }
        }
        return false;
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        Object obj;
        obj = null;
        if (System.currentTimeMillis() - ab.bi() < 10000L && 4.2F > f.getFrameVersion())
        {
            long l = e._mthdo().a();
            if (System.currentTimeMillis() - l < 40000L)
            {
                thread = new File((new StringBuilder()).append(c._mthgoto()).append(File.separator).append(f.getJarFileName()).toString());
                if (thread.exists())
                {
                    thread.delete();
                }
            } else
            {
                e._mthdo()._mthif(System.currentTimeMillis());
            }
        }
        if (!y.f0)
        {
            Process.killProcess(Process.myPid());
            return;
        }
        thread = _mthif(throwable);
        throwable = az.cn()._mthchar(false);
        throwable = (new StringBuilder()).append(throwable).append(k.p().o()).toString();
        if (throwable == null) goto _L2; else goto _L1
_L1:
        throwable = Jni.i(throwable);
_L8:
        File file;
        Object obj1;
        obj1 = (new StringBuilder()).append(Environment.getExternalStorageDirectory().getPath()).append("/traces").toString();
        file = new File((new StringBuilder()).append(((String) (obj1))).append("/error_fs.dat").toString());
        if (file.exists()) goto _L4; else goto _L3
_L3:
        obj1 = new File(((String) (obj1)));
        if (!((File) (obj1)).exists())
        {
            ((File) (obj1)).mkdirs();
        }
        if (file.createNewFile())
        {
            obj = file;
        }
        _mthif(((File) (obj)), throwable, thread);
_L5:
        Process.killProcess(Process.myPid());
        return;
        thread;
        thread = null;
_L6:
        throwable = null;
        continue; /* Loop/switch isn't completed */
_L4:
        try
        {
            obj = new RandomAccessFile(file, "rw");
            ((RandomAccessFile) (obj)).seek(300L);
            long l1 = ((RandomAccessFile) (obj)).readLong();
            if (System.currentTimeMillis() - l1 > 0x240c8400L)
            {
                _mthif(file, throwable, thread);
            }
            ((RandomAccessFile) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Thread thread) { }
          goto _L5
        throwable;
          goto _L6
_L2:
        throwable = null;
        if (true) goto _L8; else goto _L7
_L7:
    }

}
