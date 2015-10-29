// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;

// Referenced classes of package com.mapabc.mapapi.core:
//            MapAbcException, i

public abstract class t
{

    public static final int IOError = -999;
    public static final int NoError = 0;
    public static final int SocketError = -1000;
    protected int error;
    protected String mAgent;
    protected String mKey;
    protected int maxTry;
    protected Proxy proxy;
    protected String recommandURL;
    protected Object task;
    protected int timeoutSeconds;
    protected int waitSeconds;

    public t(Object obj, Proxy proxy1, String s, String s1, String s2)
    {
        maxTry = 1;
        timeoutSeconds = 20;
        waitSeconds = 0;
        error = 0;
        mKey = "";
        recommandURL = "";
        proxy = proxy1;
        task = obj;
        maxTry = 1;
        timeoutSeconds = 5;
        waitSeconds = 2;
        mAgent = s2;
        mKey = s;
    }

    public t(Proxy proxy1, String s, String s1, String s2)
    {
        maxTry = 1;
        timeoutSeconds = 20;
        waitSeconds = 0;
        error = 0;
        mKey = "";
        recommandURL = "";
        proxy = proxy1;
        maxTry = 1;
        timeoutSeconds = 5;
        waitSeconds = 2;
        mAgent = s2;
        mKey = s;
    }

    private Object GetDataMayThrow()
        throws MapAbcException
    {
        Object obj1;
        Object obj2;
        Object obj3;
        int j;
        j = 0;
        obj2 = null;
        obj3 = null;
        obj1 = null;
_L14:
        if (j >= maxTry) goto _L2; else goto _L1
_L1:
        Object obj4;
        Object obj5;
        obj4 = obj1;
        obj5 = obj1;
        if (getRequestType()) goto _L4; else goto _L3
_L3:
        obj4 = obj1;
        obj5 = obj1;
        recommandURL = getUrl();
        obj4 = obj1;
        obj5 = obj1;
        byte abyte0[] = makePostRequestBytes();
        obj4 = obj1;
        obj5 = obj1;
        Object obj = i.a(recommandURL, abyte0, proxy);
_L6:
        obj4 = obj;
        obj5 = obj;
        obj1 = sendRequest(((HttpURLConnection) (obj)));
        obj3 = obj;
        obj4 = obj1;
        obj5 = parseResponse(((InputStream) (obj1)));
        obj3 = obj;
        obj4 = obj1;
        obj2 = obj5;
        int k = maxTry;
        if (obj1 != null)
        {
            try
            {
                ((InputStream) (obj1)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                throw new MapAbcException("IO \u64CD\u4F5C\u5F02\u5E38 - IOException");
            }
            obj2 = null;
        } else
        {
            obj2 = obj1;
        }
        if (false)
        {
            try
            {
                throw new NullPointerException();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                throw new MapAbcException("IO \u64CD\u4F5C\u5F02\u5E38 - IOException");
            }
        }
        j = k;
        obj4 = obj5;
        obj3 = obj2;
        obj1 = obj;
        if (obj != null)
        {
            ((HttpURLConnection) (obj)).disconnect();
            obj1 = null;
            obj3 = obj2;
            obj4 = obj5;
            j = k;
        }
        obj2 = obj4;
        continue; /* Loop/switch isn't completed */
_L4:
        obj4 = obj1;
        obj5 = obj1;
        recommandURL = (new StringBuilder()).append(getUrl()).append(makeXMLRequest()).toString();
        obj4 = obj1;
        obj5 = obj1;
        obj = i.a(recommandURL, proxy);
        if (true) goto _L6; else goto _L5
_L5:
        obj5;
        obj1 = obj3;
        obj = obj4;
_L12:
        k = j + 1;
        obj3 = obj;
        obj4 = obj1;
        j = maxTry;
        if (k >= j) goto _L8; else goto _L7
_L7:
        obj3 = obj;
        obj4 = obj1;
        Thread.sleep(waitSeconds * 1000);
        if (obj1 != null)
        {
            try
            {
                ((InputStream) (obj1)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                throw new MapAbcException("IO \u64CD\u4F5C\u5F02\u5E38 - IOException");
            }
            obj5 = null;
        } else
        {
            obj5 = obj1;
        }
        if (false)
        {
            try
            {
                throw new NullPointerException();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                throw new MapAbcException("IO \u64CD\u4F5C\u5F02\u5E38 - IOException");
            }
        }
        j = k;
        obj4 = obj2;
        obj3 = obj5;
        obj1 = obj;
        if (obj != null)
        {
            ((HttpURLConnection) (obj)).disconnect();
            obj1 = null;
            j = k;
            obj4 = obj2;
            obj3 = obj5;
        }
        break MISSING_BLOCK_LABEL_172;
        obj2;
        obj3 = obj;
        obj4 = obj1;
        throw new MapAbcException(((InterruptedException) (obj2)).getMessage());
        obj1;
        obj = obj4;
_L10:
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                throw new MapAbcException("IO \u64CD\u4F5C\u5F02\u5E38 - IOException");
            }
        }
        if (false)
        {
            try
            {
                throw new NullPointerException();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                throw new MapAbcException("IO \u64CD\u4F5C\u5F02\u5E38 - IOException");
            }
        }
        if (obj3 != null)
        {
            ((HttpURLConnection) (obj3)).disconnect();
        }
        throw obj1;
_L8:
        obj3 = obj;
        obj4 = obj1;
        onExceptionOccur();
        obj3 = obj;
        obj4 = obj1;
        throw new MapAbcException(((MapAbcException) (obj5)).getErrorMessage());
_L2:
        return obj2;
        obj1;
        obj = obj3;
        obj3 = obj5;
        if (true) goto _L10; else goto _L9
_L9:
        obj5;
        if (true) goto _L12; else goto _L11
_L11:
        if (true) goto _L14; else goto _L13
_L13:
    }

    private static InputStream getStreamData(InputStream inputstream)
        throws MapAbcException
    {
        ByteArrayOutputStream bytearrayoutputstream;
        byte abyte0[];
        bytearrayoutputstream = new ByteArrayOutputStream();
        abyte0 = new byte[2048];
_L1:
        int j = inputstream.read(abyte0);
        if (j <= -1)
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
        ByteArrayInputStream bytearrayinputstream;
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
        bytearrayinputstream = new ByteArrayInputStream(bytearrayoutputstream.toByteArray());
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
        return bytearrayinputstream;
    }

    private String makeXMLRequest()
    {
        String as[] = getRequestLines();
        if (as == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        if (as != null)
        {
            int k = as.length;
            for (int j = 0; j < k; j++)
            {
                stringbuilder.append(as[j]);
            }

        }
        return stringbuilder.toString();
    }

    private Object parseResponse(InputStream inputstream)
        throws MapAbcException
    {
        return loadData(getStreamData(inputstream));
    }

    private String readString(InputStream inputstream, int j)
        throws IOException
    {
        byte abyte0[];
        int k;
        abyte0 = new byte[j];
        k = 0;
_L2:
        if (k >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        int l = inputstream.read(abyte0, k, j - k);
        k += l;
        if (true) goto _L2; else goto _L1
        inputstream;
        inputstream.printStackTrace();
_L1:
        return new String(abyte0, "utf-8");
    }

    public Object GetData()
        throws MapAbcException
    {
        Object obj = null;
        if (task != null)
        {
            obj = GetDataMayThrow();
        }
        return obj;
    }

    protected String get1BString(InputStream inputstream)
        throws IOException
    {
        return readString(inputstream, getByte(inputstream));
    }

    protected int getByte(InputStream inputstream)
        throws IOException
    {
        return inputstream.read();
    }

    protected byte[] getBytes(InputStream inputstream)
    {
        ByteArrayOutputStream bytearrayoutputstream;
        if (inputstream == null)
        {
            return null;
        }
        bytearrayoutputstream = new ByteArrayOutputStream();
_L1:
        int j = inputstream.read();
        if (j == -1)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        bytearrayoutputstream.write(j);
          goto _L1
        inputstream;
        inputstream = bytearrayoutputstream.toByteArray();
        try
        {
            bytearrayoutputstream.close();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return inputstream;
        }
        return inputstream;
    }

    public int getError()
    {
        return error;
    }

    protected int getInt(InputStream inputstream)
        throws IOException
    {
        byte abyte0[] = new byte[4];
        inputstream.read(abyte0, 0, 4);
        byte byte0 = abyte0[3];
        byte byte1 = abyte0[2];
        byte byte2 = abyte0[1];
        return (abyte0[0] & 0xff) + (((byte0 & 0xff) << 24) + ((byte1 & 0xff) << 16) + ((byte2 & 0xff) << 8));
    }

    protected String getIntString(InputStream inputstream)
        throws IOException
    {
        return readString(inputstream, getInt(inputstream));
    }

    protected abstract String[] getRequestLines();

    protected abstract boolean getRequestType();

    protected abstract int getServiceCode();

    protected int getShort(InputStream inputstream)
        throws IOException
    {
        byte abyte0[] = new byte[2];
        inputstream.read(abyte0, 0, 2);
        byte byte0 = abyte0[1];
        return (abyte0[0] & 0xff) + ((byte0 & 0xff) << 8);
    }

    protected String getString(InputStream inputstream)
        throws IOException
    {
        return readString(inputstream, getShort(inputstream));
    }

    protected abstract String getUrl();

    public String getmKey()
    {
        return mKey;
    }

    protected abstract Object loadData(InputStream inputstream)
        throws MapAbcException;

    protected String makeContentLine(String s, String s1)
    {
        String s2 = s1;
        if (s1 == null)
        {
            s2 = "";
        }
        s1 = makeTag(s, true);
        s1 = (new StringBuilder()).append(s1).append(s2).toString();
        return (new StringBuilder()).append(s1).append(makeTag(s, false)).toString();
    }

    protected byte[] makePostRequestBytes()
    {
        return null;
    }

    protected String makeTag(String s, boolean flag)
    {
        String s1;
        if (flag)
        {
            s1 = "<%s>";
        } else
        {
            s1 = "</%s>";
        }
        return String.format(s1, new Object[] {
            s
        });
    }

    protected Object onExceptionOccur()
    {
        return null;
    }

    protected void protocalAssert(boolean flag)
        throws IOException
    {
        if (!flag)
        {
            throw new IOException();
        } else
        {
            return;
        }
    }

    protected String readString(InputStream inputstream)
        throws MapAbcException
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        byte abyte0[] = new byte[1024];
_L1:
        int j = inputstream.read(abyte0);
        if (j == -1)
        {
            break MISSING_BLOCK_LABEL_72;
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
        try
        {
            inputstream = new String(bytearrayoutputstream.toByteArray(), "UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream.printStackTrace();
            return new String();
        }
        return inputstream;
    }

    protected InputStream sendRequest(HttpURLConnection httpurlconnection)
        throws MapAbcException
    {
        try
        {
            httpurlconnection = httpurlconnection.getInputStream();
        }
        // Misplaced declaration of an exception variable
        catch (HttpURLConnection httpurlconnection)
        {
            throw new MapAbcException("\u534F\u8BAE\u89E3\u6790\u9519\u8BEF - ProtocolException");
        }
        // Misplaced declaration of an exception variable
        catch (HttpURLConnection httpurlconnection)
        {
            throw new MapAbcException("\u672A\u77E5\u4E3B\u673A - UnKnowHostException");
        }
        // Misplaced declaration of an exception variable
        catch (HttpURLConnection httpurlconnection)
        {
            throw new MapAbcException("\u670D\u52A1\u5668\u8FDE\u63A5\u5931\u8D25 - UnknownServiceException");
        }
        // Misplaced declaration of an exception variable
        catch (HttpURLConnection httpurlconnection)
        {
            throw new MapAbcException("IO \u64CD\u4F5C\u5F02\u5E38 - IOException");
        }
        return httpurlconnection;
    }

    public void setTask(Object obj)
    {
        task = obj;
    }

    public void setmKey(String s)
    {
        mKey = s;
    }
}
