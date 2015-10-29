// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.network;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.FileNameMap;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;

// Referenced classes of package m.framework.network:
//            MultiPart, StringPart, KVPair, FilePart, 
//            SSLSocketFactoryEx, ResponseCallback, HTTPPart

public class NetworkHelper
{

    public static int connectionTimeout;
    public static int readTimout;

    public NetworkHelper()
    {
    }

    private HttpPost filePost(String s, ArrayList arraylist, KVPair kvpair)
        throws Throwable
    {
        HttpPost httppost;
        String s1;
        MultiPart multipart;
        StringPart stringpart;
        httppost = new HttpPost(s);
        s1 = UUID.randomUUID().toString();
        multipart = new MultiPart();
        stringpart = new StringPart();
        if (arraylist == null) goto _L2; else goto _L1
_L1:
        s = arraylist.iterator();
_L4:
        if (s.hasNext()) goto _L3; else goto _L2
_L2:
        httppost.setHeader("Content-Type", (new StringBuilder("multipart/form-data; boundary=")).append(s1).toString());
        stringpart.append("--").append(s1).append("\r\n");
        s = new File((String)kvpair.value);
        stringpart.append("Content-Disposition: form-data; name=\"").append(kvpair.name).append("\"; filename=\"").append(s.getName()).append("\"\r\n");
        arraylist = URLConnection.getFileNameMap().getContentTypeFor((String)kvpair.value);
        if (arraylist != null)
        {
            s = arraylist;
            if (arraylist.length() > 0)
            {
                break MISSING_BLOCK_LABEL_211;
            }
        }
        if (((String)kvpair.value).toLowerCase().endsWith("jpg") || ((String)kvpair.value).toLowerCase().endsWith("jepg"))
        {
            s = "image/jpeg";
        } else
        if (((String)kvpair.value).toLowerCase().endsWith("png"))
        {
            s = "image/png";
        } else
        {
label0:
            {
                if (!((String)kvpair.value).toLowerCase().endsWith("gif"))
                {
                    break label0;
                }
                s = "image/gif";
            }
        }
_L7:
        stringpart.append("Content-Type: ").append(s).append("\r\n\r\n");
        multipart.append(stringpart);
        s = new FilePart();
        s.setFile((String)kvpair.value);
        multipart.append(s);
        s = new StringPart();
        s.append("\r\n--").append(s1).append("--\r\n");
        multipart.append(s);
        httppost.setEntity(multipart.getInputStreamEntity());
        return httppost;
_L3:
        arraylist = (KVPair)s.next();
        stringpart.append("--").append(s1).append("\r\n");
        stringpart.append("content-disposition: form-data; name=\"").append(((KVPair) (arraylist)).name).append("\"\r\n\r\n");
        stringpart.append((String)((KVPair) (arraylist)).value).append("\r\n");
          goto _L4
        s = new FileInputStream((String)kvpair.value);
        arraylist = URLConnection.guessContentTypeFromStream(s);
        s.close();
        if (arraylist == null) goto _L6; else goto _L5
_L5:
        s = arraylist;
        if (arraylist.length() > 0) goto _L7; else goto _L6
_L6:
        s = "application/octet-stream";
          goto _L7
    }

    private HttpClient getSSLHttpClient()
        throws Throwable
    {
        Object obj = KeyStore.getInstance(KeyStore.getDefaultType());
        ((KeyStore) (obj)).load(null, null);
        obj = new SSLSocketFactoryEx(((KeyStore) (obj)));
        ((SSLSocketFactory) (obj)).setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpProtocolParams.setVersion(basichttpparams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basichttpparams, "UTF-8");
        SchemeRegistry schemeregistry = new SchemeRegistry();
        schemeregistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schemeregistry.register(new Scheme("https", ((org.apache.http.conn.scheme.SocketFactory) (obj)), 443));
        return new DefaultHttpClient(new ThreadSafeClientConnManager(basichttpparams, schemeregistry), basichttpparams);
    }

    private String kvPairsToUrl(ArrayList arraylist)
        throws Throwable
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return stringbuilder.toString();
            }
            arraylist = (KVPair)iterator.next();
            String s = URLEncoder.encode(((KVPair) (arraylist)).name, "utf-8");
            if (((KVPair) (arraylist)).value != null)
            {
                arraylist = URLEncoder.encode((String)((KVPair) (arraylist)).value, "utf-8");
            } else
            {
                arraylist = "";
            }
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append('&');
            }
            stringbuilder.append(s).append('=').append(arraylist);
        } while (true);
    }

    private HttpPost textPost(String s, ArrayList arraylist)
        throws Throwable
    {
        s = new HttpPost(s);
        if (arraylist != null)
        {
            StringPart stringpart = new StringPart();
            stringpart.append(kvPairsToUrl(arraylist));
            arraylist = stringpart.getInputStreamEntity();
            arraylist.setContentType("application/x-www-form-urlencoded");
            s.setEntity(arraylist);
        }
        return s;
    }

    public void download(String s, File file)
        throws Throwable
    {
        Object obj = new HttpGet(s);
        if (s.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        obj = s.execute(((org.apache.http.client.methods.HttpUriRequest) (obj)));
        if (((HttpResponse) (obj)).getStatusLine().getStatusCode() == 200)
        {
            obj = ((HttpResponse) (obj)).getEntity().getContent();
            file = new FileOutputStream(file);
            byte abyte0[] = new byte[1024];
            int i = ((InputStream) (obj)).read(abyte0);
            do
            {
                if (i <= 0)
                {
                    file.flush();
                    ((InputStream) (obj)).close();
                    file.close();
                    s.getConnectionManager().shutdown();
                    return;
                }
                file.write(abyte0, 0, i);
                i = ((InputStream) (obj)).read(abyte0);
            } while (true);
        } else
        {
            file = EntityUtils.toString(((HttpResponse) (obj)).getEntity(), "utf-8");
            s.getConnectionManager().shutdown();
            throw new Throwable(file);
        }
    }

    public void download(String s, ResponseCallback responsecallback)
        throws Throwable
    {
        Object obj = new HttpGet(s);
        if (s.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        obj = s.execute(((org.apache.http.client.methods.HttpUriRequest) (obj)));
        if (((HttpResponse) (obj)).getStatusLine().getStatusCode() == 200)
        {
            obj = ((HttpResponse) (obj)).getEntity().getContent();
            if (responsecallback != null)
            {
                responsecallback.onResponse(((InputStream) (obj)));
            }
            ((InputStream) (obj)).close();
            s.getConnectionManager().shutdown();
            return;
        } else
        {
            responsecallback = EntityUtils.toString(((HttpResponse) (obj)).getEntity(), "utf-8");
            s.getConnectionManager().shutdown();
            throw new Throwable(responsecallback);
        }
    }

    public String httpGet(String s, ArrayList arraylist, ArrayList arraylist1)
        throws Throwable
    {
        String s1;
        s1 = s;
        if (arraylist != null)
        {
            arraylist = kvPairsToUrl(arraylist);
            s1 = s;
            if (arraylist.length() > 0)
            {
                s1 = (new StringBuilder(String.valueOf(s))).append("?").append(arraylist).toString();
            }
        }
        arraylist = new HttpGet(s1);
        if (arraylist1 == null) goto _L2; else goto _L1
_L1:
        s = arraylist1.iterator();
_L5:
        if (s.hasNext()) goto _L3; else goto _L2
_L2:
        s = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(s, connectionTimeout);
        HttpConnectionParams.setSoTimeout(s, readTimout);
        arraylist.setParams(s);
        if (s1.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(arraylist);
        if (arraylist.getStatusLine().getStatusCode() == 200)
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            s.getConnectionManager().shutdown();
            return arraylist;
        } else
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            s.getConnectionManager().shutdown();
            throw new Throwable(arraylist);
        }
_L3:
        arraylist1 = (KVPair)s.next();
        arraylist.setHeader(((KVPair) (arraylist1)).name, (String)((KVPair) (arraylist1)).value);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void httpGet(String s, ArrayList arraylist, ArrayList arraylist1, ResponseCallback responsecallback)
        throws Throwable
    {
        String s1;
        s1 = s;
        if (arraylist != null)
        {
            arraylist = kvPairsToUrl(arraylist);
            s1 = s;
            if (arraylist.length() > 0)
            {
                s1 = (new StringBuilder(String.valueOf(s))).append("?").append(arraylist).toString();
            }
        }
        arraylist = new HttpGet(s1);
        if (arraylist1 == null) goto _L2; else goto _L1
_L1:
        s = arraylist1.iterator();
_L5:
        if (s.hasNext()) goto _L3; else goto _L2
_L2:
        s = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(s, connectionTimeout);
        HttpConnectionParams.setSoTimeout(s, readTimout);
        arraylist.setParams(s);
        if (s1.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(arraylist);
        if (arraylist.getStatusLine().getStatusCode() == 200)
        {
            arraylist = arraylist.getEntity().getContent();
            if (responsecallback != null)
            {
                responsecallback.onResponse(arraylist);
            }
            arraylist.close();
            s.getConnectionManager().shutdown();
            return;
        } else
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            s.getConnectionManager().shutdown();
            throw new Throwable(arraylist);
        }
_L3:
        arraylist1 = (KVPair)s.next();
        arraylist.setHeader(((KVPair) (arraylist1)).name, (String)((KVPair) (arraylist1)).value);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public String httpPost(String s, ArrayList arraylist, KVPair kvpair, ArrayList arraylist1)
        throws Throwable
    {
        if (kvpair != null && kvpair.value != null && (new File((String)kvpair.value)).exists())
        {
            arraylist = filePost(s, arraylist, kvpair);
        } else
        {
            arraylist = textPost(s, arraylist);
        }
        if (arraylist1 == null) goto _L2; else goto _L1
_L1:
        kvpair = arraylist1.iterator();
_L5:
        if (kvpair.hasNext()) goto _L3; else goto _L2
_L2:
        kvpair = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(kvpair, connectionTimeout);
        HttpConnectionParams.setSoTimeout(kvpair, readTimout);
        arraylist.setParams(kvpair);
        int i;
        if (s.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(arraylist);
        i = arraylist.getStatusLine().getStatusCode();
        if (i == 200 || i == 201)
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            s.getConnectionManager().shutdown();
            return arraylist;
        } else
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            s.getConnectionManager().shutdown();
            throw new Throwable(arraylist);
        }
_L3:
        arraylist1 = (KVPair)kvpair.next();
        arraylist.setHeader(((KVPair) (arraylist1)).name, (String)((KVPair) (arraylist1)).value);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void httpPost(String s, ArrayList arraylist, KVPair kvpair, ArrayList arraylist1, ResponseCallback responsecallback)
        throws Throwable
    {
        if (kvpair != null && kvpair.value != null && (new File((String)kvpair.value)).exists())
        {
            arraylist = filePost(s, arraylist, kvpair);
        } else
        {
            arraylist = textPost(s, arraylist);
        }
        if (arraylist1 == null) goto _L2; else goto _L1
_L1:
        kvpair = arraylist1.iterator();
_L5:
        if (kvpair.hasNext()) goto _L3; else goto _L2
_L2:
        kvpair = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(kvpair, connectionTimeout);
        HttpConnectionParams.setSoTimeout(kvpair, readTimout);
        arraylist.setParams(kvpair);
        int i;
        if (s.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(arraylist);
        i = arraylist.getStatusLine().getStatusCode();
        if (i == 200 || i == 201)
        {
            arraylist = arraylist.getEntity().getContent();
            if (responsecallback != null)
            {
                responsecallback.onResponse(arraylist);
            }
            arraylist.close();
            s.getConnectionManager().shutdown();
            return;
        } else
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            s.getConnectionManager().shutdown();
            throw new Throwable(arraylist);
        }
_L3:
        arraylist1 = (KVPair)kvpair.next();
        arraylist.setHeader(((KVPair) (arraylist1)).name, (String)((KVPair) (arraylist1)).value);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public String httpPut(String s, ArrayList arraylist, KVPair kvpair, ArrayList arraylist1)
        throws Throwable
    {
        String s1;
        s1 = s;
        if (arraylist != null)
        {
            arraylist = kvPairsToUrl(arraylist);
            s1 = s;
            if (arraylist.length() > 0)
            {
                s1 = (new StringBuilder(String.valueOf(s))).append("?").append(arraylist).toString();
            }
        }
        arraylist = new HttpPut(s1);
        if (arraylist1 == null) goto _L2; else goto _L1
_L1:
        s = arraylist1.iterator();
_L5:
        if (s.hasNext()) goto _L3; else goto _L2
_L2:
        s = new FilePart();
        s.setFile((String)kvpair.value);
        s = s.getInputStreamEntity();
        s.setContentEncoding("application/octet-stream");
        arraylist.setEntity(s);
        s = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(s, connectionTimeout);
        HttpConnectionParams.setSoTimeout(s, readTimout);
        arraylist.setParams(s);
        int i;
        if (s1.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(arraylist);
        i = arraylist.getStatusLine().getStatusCode();
        if (i == 200 || i == 201)
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            s.getConnectionManager().shutdown();
            return arraylist;
        } else
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            s.getConnectionManager().shutdown();
            throw new Throwable(arraylist);
        }
_L3:
        arraylist1 = (KVPair)s.next();
        arraylist.setHeader(((KVPair) (arraylist1)).name, (String)((KVPair) (arraylist1)).value);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void rawPost(String s, ArrayList arraylist, HTTPPart httppart, ResponseCallback responsecallback)
        throws Throwable
    {
        HttpPost httppost = new HttpPost(s);
        if (arraylist == null) goto _L2; else goto _L1
_L1:
        arraylist = arraylist.iterator();
_L5:
        if (arraylist.hasNext()) goto _L3; else goto _L2
_L2:
        httppost.setEntity(httppart.getInputStreamEntity());
        KVPair kvpair;
        if (s.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(httppost);
        if (arraylist.getStatusLine().getStatusCode() == 200)
        {
            httppart = arraylist.getEntity().getContent();
            if (responsecallback != null)
            {
                responsecallback.onResponse(httppart);
            }
            httppart.close();
            s.getConnectionManager().shutdown();
        }
        arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
        s.getConnectionManager().shutdown();
        throw new Throwable(arraylist);
_L3:
        kvpair = (KVPair)arraylist.next();
        httppost.setHeader(kvpair.name, (String)kvpair.value);
        if (true) goto _L5; else goto _L4
_L4:
    }
}
