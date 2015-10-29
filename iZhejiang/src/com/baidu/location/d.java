// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Build;
import android.os.Handler;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

// Referenced classes of package com.baidu.location:
//            s, c, f, ar, 
//            az, Jni, e

class d extends s
{

    private static d c1 = null;
    Handler c2;
    String c3;
    String c4;
    String c5;

    private d()
    {
        c5 = null;
        c4 = null;
        c3 = null;
        c2 = null;
        c2 = new Handler();
    }

    private boolean U()
    {
        while (c3 == null || (new File((new StringBuilder()).append(c._mthgoto()).append(File.separator).append(c3).toString())).exists()) 
        {
            return true;
        }
        return _mthfor((new StringBuilder()).append("http://").append(c5).append("/").append(c3).toString(), c3);
    }

    private void V()
    {
        File file1;
        if (c4 != null)
        {
            if (!(file1 = new File((new StringBuilder()).append(c._mthgoto()).append(File.separator).append(c4).toString())).exists() && _mthfor((new StringBuilder()).append("http://").append(c5).append("/").append(c4).toString(), c4))
            {
                File file = new File((new StringBuilder()).append(c._mthgoto()).append(File.separator).append(f.replaceFileName).toString());
                if (file.exists())
                {
                    file.delete();
                }
                try
                {
                    _mthif(file1, file);
                    return;
                }
                catch (Exception exception)
                {
                    file.delete();
                }
                return;
            }
        }
    }

    private Handler W()
    {
        return c2;
    }

    public static d X()
    {
        if (c1 == null)
        {
            c1 = new d();
        }
        return c1;
    }

    private void Y()
    {
        while (c5 == null || !ar.bU()) 
        {
            return;
        }
        (new _cls3()).start();
    }

    static boolean _mthdo(d d1)
    {
        return d1.U();
    }

    static void _mthfor(d d1)
    {
        d1.V();
    }

    private static boolean _mthfor(String s1, String s2)
    {
        File file;
        file = new File((new StringBuilder()).append(c._mthgoto()).append(File.separator).append("tmp").toString());
        if (file.exists())
        {
            file.delete();
        }
        FileOutputStream fileoutputstream;
        byte abyte0[];
        BufferedInputStream bufferedinputstream;
        fileoutputstream = new FileOutputStream(file);
        abyte0 = new byte[4096];
        s1 = (HttpURLConnection)(new URL(s1)).openConnection();
        bufferedinputstream = new BufferedInputStream(s1.getInputStream());
_L1:
        int i = bufferedinputstream.read(abyte0);
label0:
        {
            if (i <= 0)
            {
                break label0;
            }
            try
            {
                fileoutputstream.write(abyte0, 0, i);
            }
            // Misplaced declaration of an exception variable
            catch (String s1)
            {
                file.delete();
                return false;
            }
        }
          goto _L1
        s1.disconnect();
        fileoutputstream.close();
        if (file.length() >= 10240L)
        {
            break MISSING_BLOCK_LABEL_151;
        }
        file.delete();
        return false;
        file.renameTo(new File((new StringBuilder()).append(c._mthgoto()).append(File.separator).append(s2).toString()));
        return true;
    }

    static void _mthif(d d1)
    {
        d1.Y();
    }

    public static void _mthif(File file, File file1)
        throws IOException
    {
        Object obj = null;
        file = new BufferedInputStream(new FileInputStream(file));
        file1 = new BufferedOutputStream(new FileOutputStream(file1));
        obj = new byte[5120];
_L3:
        int i = file.read(((byte []) (obj)));
        if (i == -1) goto _L2; else goto _L1
_L1:
        file1.write(((byte []) (obj)), 0, i);
          goto _L3
        Exception exception;
        exception;
        obj = file;
        file = exception;
_L5:
        if (obj != null)
        {
            ((BufferedInputStream) (obj)).close();
        }
        if (file1 != null)
        {
            file1.close();
        }
        throw file;
_L2:
        file1.flush();
        if (file != null)
        {
            file.close();
        }
        if (file1 != null)
        {
            file1.close();
        }
        return;
        file;
        file1 = null;
        continue; /* Loop/switch isn't completed */
        exception;
        file1 = null;
        obj = file;
        file = exception;
        if (true) goto _L5; else goto _L4
_L4:
    }

    void T()
    {
        StringBuffer stringbuffer = new StringBuffer(128);
        stringbuffer.append("&sdk=");
        stringbuffer.append(4.2F);
        stringbuffer.append("&fw=");
        stringbuffer.append(f.getFrameVersion());
        stringbuffer.append("&suit=");
        stringbuffer.append(2);
        String s1;
        String s2;
        if (az.cn().iP == null)
        {
            stringbuffer.append("&im=");
            stringbuffer.append(az.cn().iL);
        } else
        {
            stringbuffer.append("&cu=");
            stringbuffer.append(az.cn().iP);
        }
        stringbuffer.append("&mb=");
        stringbuffer.append(Build.MODEL);
        stringbuffer.append("&sv=");
        s2 = android.os.Build.VERSION.RELEASE;
        s1 = s2;
        if (s2 != null)
        {
            s1 = s2;
            if (s2.length() > 10)
            {
                s1 = s2.substring(0, 10);
            }
        }
        stringbuffer.append(s1);
        stringbuffer.append("&pack=");
        stringbuffer.append(az.iH);
        cR = (new StringBuilder()).append(c._mthint()).append("?&it=").append(Jni.l(stringbuffer.toString())).toString();
    }

    public void Z()
    {
        long l = e._mthdo()._mthif();
        if (System.currentTimeMillis() - l > 0xa4cb800L)
        {
            W().postDelayed(new _cls1(), 10000L);
        }
    }

    void _mthdo(boolean flag)
    {
        if (flag)
        {
            try
            {
                JSONObject jsonobject = new JSONObject(EntityUtils.toString(cS, "utf-8"));
                if ("up".equals(jsonobject.getString("res")))
                {
                    c5 = jsonobject.getString("upath");
                    if (jsonobject.has("u1"))
                    {
                        c4 = jsonobject.getString("u1");
                    }
                    if (jsonobject.has("u2"))
                    {
                        c3 = jsonobject.getString("u2");
                    }
                    W().post(new _cls2());
                }
            }
            catch (Exception exception) { }
        }
        e._mthdo().a(System.currentTimeMillis());
    }


    private class _cls3 extends Thread
    {

        final d a;

        public void run()
        {
            if (d._mthdo(a))
            {
                d._mthfor(a);
            }
        }

        _cls3()
        {
            a = d.this;
            super();
        }
    }


    private class _cls1
        implements Runnable
    {

        final d a;

        public void run()
        {
            if (ar.bU())
            {
                a.Q();
            }
        }

        _cls1()
        {
            a = d.this;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        final d a;

        public void run()
        {
            d._mthif(a);
        }

        _cls2()
        {
            a = d.this;
            super();
        }
    }

}
