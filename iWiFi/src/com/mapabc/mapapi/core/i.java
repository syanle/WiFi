// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;

// Referenced classes of package com.mapabc.mapapi.core:
//            MapAbcException, c

public class i
{

    public i()
    {
    }

    public static int a(byte abyte0[])
    {
        return abyte0[3] & 0xff | abyte0[2] << 8 & 0xff00 | abyte0[1] << 16 & 0xff0000 | abyte0[0] << 24 & 0xff000000;
    }

    public static HttpURLConnection a(String s, Proxy proxy)
        throws MapAbcException
    {
        if (s == null)
        {
            throw new MapAbcException("\u65E0\u6548\u7684\u53C2\u6570 - IllegalArgumentException");
        }
        s = new URL(s);
        if (proxy == null) goto _L2; else goto _L1
_L1:
        if (c.m) goto _L2; else goto _L3
_L3:
        s = (HttpURLConnection)s.openConnection(proxy);
_L5:
        s.setRequestMethod("GET");
        s.setConnectTimeout(10000);
        s.setReadTimeout(20000);
        s.connect();
        if (s.getResponseCode() != 200)
        {
            throw new MapAbcException("http\u8FDE\u63A5\u5931\u8D25 - ConnectionException");
        }
          goto _L4
        proxy;
_L14:
        a(((HttpURLConnection) (s)));
        throw new MapAbcException("\u672A\u77E5\u4E3B\u673A - UnKnowHostException");
_L2:
        s = (HttpURLConnection)s.openConnection();
          goto _L5
        s;
        s = null;
_L13:
        a(((HttpURLConnection) (s)));
        throw new MapAbcException("url\u5F02\u5E38 - MalformedURLException");
        s;
        s = null;
_L11:
        a(((HttpURLConnection) (s)));
        throw new MapAbcException("\u534F\u8BAE\u89E3\u6790\u9519\u8BEF - ProtocolException");
        s;
        s = null;
_L9:
        a(((HttpURLConnection) (s)));
        throw new MapAbcException("socket \u8FDE\u63A5\u8D85\u65F6 - SocketTimeoutException");
        s;
        s = null;
_L7:
        a(((HttpURLConnection) (s)));
        throw new MapAbcException("IO \u64CD\u4F5C\u5F02\u5E38 - IOException");
_L4:
        return s;
        proxy;
        if (true) goto _L7; else goto _L6
_L6:
        proxy;
        if (true) goto _L9; else goto _L8
_L8:
        proxy;
        if (true) goto _L11; else goto _L10
_L10:
        proxy;
        if (true) goto _L13; else goto _L12
_L12:
        s;
        s = null;
          goto _L14
    }

    public static HttpURLConnection a(String s, byte abyte0[], Proxy proxy)
        throws MapAbcException
    {
        if (s == null)
        {
            throw new MapAbcException("\u65E0\u6548\u7684\u53C2\u6570 - IllegalArgumentException");
        }
        s = new URL(s);
        if (proxy == null) goto _L2; else goto _L1
_L1:
        if (c.m) goto _L2; else goto _L3
_L3:
        s = (HttpURLConnection)s.openConnection(proxy);
_L5:
        s.setRequestMethod("POST");
        s.setInstanceFollowRedirects(true);
        s.setConnectTimeout(10000);
        s.setReadTimeout(20000);
        s.setDoInput(true);
        s.setDoOutput(true);
        s.setUseCaches(false);
        s.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        s.setRequestProperty("Content-Length", String.valueOf(abyte0.length));
        s.setRequestProperty("Connection", "Keep-Alive");
        s.connect();
        proxy = s.getOutputStream();
        proxy.write(abyte0);
        proxy.flush();
        proxy.close();
        if (s.getResponseCode() != 200)
        {
            throw new MapAbcException("http\u8FDE\u63A5\u5931\u8D25 - ConnectionException");
        }
          goto _L4
        abyte0;
_L14:
        a(((HttpURLConnection) (s)));
        throw new MapAbcException("\u672A\u77E5\u4E3B\u673A - UnKnowHostException");
_L2:
        s = (HttpURLConnection)s.openConnection();
          goto _L5
        s;
        s = null;
_L13:
        a(((HttpURLConnection) (s)));
        throw new MapAbcException("url\u5F02\u5E38 - MalformedURLException");
        s;
        s = null;
_L11:
        a(((HttpURLConnection) (s)));
        throw new MapAbcException("\u534F\u8BAE\u89E3\u6790\u9519\u8BEF - ProtocolException");
        s;
        s = null;
_L9:
        a(((HttpURLConnection) (s)));
        throw new MapAbcException("socket \u8FDE\u63A5\u8D85\u65F6 - SocketTimeoutException");
        s;
        s = null;
_L7:
        a(((HttpURLConnection) (s)));
        throw new MapAbcException("IO \u64CD\u4F5C\u5F02\u5E38 - IOException");
_L4:
        return s;
        abyte0;
        if (true) goto _L7; else goto _L6
_L6:
        abyte0;
        if (true) goto _L9; else goto _L8
_L8:
        abyte0;
        if (true) goto _L11; else goto _L10
_L10:
        abyte0;
        if (true) goto _L13; else goto _L12
_L12:
        s;
        s = null;
          goto _L14
    }

    private static void a(HttpURLConnection httpurlconnection)
    {
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
    }

    public static byte[] a(int j)
    {
        byte byte0 = (byte)(j & 0xff);
        byte byte1 = (byte)((0xff00 & j) >> 8);
        byte byte2 = (byte)((0xff0000 & j) >> 16);
        return (new byte[] {
            (byte)((0xff000000 & j) >> 24), byte2, byte1, byte0
        });
    }

    public static byte[] a(InputStream inputstream)
        throws MapAbcException
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        byte abyte0[] = new byte[1024];
_L1:
        int j = inputstream.read(abyte0);
        if (j == -1)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        bytearrayoutputstream.write(abyte0, 0, j);
        bytearrayoutputstream.flush();
          goto _L1
        Object obj;
        obj;
        throw new MapAbcException("IO \u64CD\u4F5C\u5F02\u5E38 - IOException");
        obj;
        if (bytearrayoutputstream != null)
        {
            try
            {
                bytearrayoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                throw new MapAbcException("IO \u64CD\u4F5C\u5F02\u5E38 - IOException");
            }
        }
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                throw new MapAbcException("IO \u64CD\u4F5C\u5F02\u5E38 - IOException");
            }
        }
        throw obj;
        if (bytearrayoutputstream != null)
        {
            try
            {
                bytearrayoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                throw new MapAbcException("IO \u64CD\u4F5C\u5F02\u5E38 - IOException");
            }
        }
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                throw new MapAbcException("IO \u64CD\u4F5C\u5F02\u5E38 - IOException");
            }
        }
        return bytearrayoutputstream.toByteArray();
    }
}
