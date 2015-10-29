// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.network;

import android.content.Context;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.FileNameMap;
import java.net.URLConnection;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.UUID;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
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

// Referenced classes of package com.mob.tools.network:
//            MultiPart, StringPart, KVPair, FilePart, 
//            SSLSocketFactoryEx, HttpResponseCallback, HttpPatch, RawNetworkCallback, 
//            HTTPPart, OnReadListener

public class NetworkHelper
{

    public static int connectionTimeout;
    public static int readTimout;

    public NetworkHelper()
    {
    }

    private HttpPost getFilePost(String s, ArrayList arraylist, ArrayList arraylist1)
        throws Throwable
    {
        String s1;
        HttpPost httppost;
        MultiPart multipart;
        s1 = UUID.randomUUID().toString();
        httppost = new HttpPost(s);
        httppost.setHeader("Content-Type", (new StringBuilder()).append("multipart/form-data; boundary=").append(s1).toString());
        multipart = new MultiPart();
        s = new StringPart();
        if (arraylist != null)
        {
            KVPair kvpair;
            for (arraylist = arraylist.iterator(); arraylist.hasNext(); s.append((String)kvpair.value).append("\r\n"))
            {
                kvpair = (KVPair)arraylist.next();
                s.append("--").append(s1).append("\r\n");
                s.append("Content-Disposition: form-data; name=\"").append(kvpair.name).append("\"\r\n\r\n");
            }

        }
        multipart.append(s);
        arraylist1 = arraylist1.iterator();
_L2:
        KVPair kvpair1;
        StringPart stringpart;
label0:
        {
            if (!arraylist1.hasNext())
            {
                break MISSING_BLOCK_LABEL_499;
            }
            kvpair1 = (KVPair)arraylist1.next();
            stringpart = new StringPart();
            s = new File((String)kvpair1.value);
            stringpart.append("--").append(s1).append("\r\n");
            stringpart.append("Content-Disposition: form-data; name=\"").append(kvpair1.name).append("\"; filename=\"").append(s.getName()).append("\"\r\n");
            arraylist = URLConnection.getFileNameMap().getContentTypeFor((String)kvpair1.value);
            if (arraylist != null)
            {
                s = arraylist;
                if (arraylist.length() > 0)
                {
                    break label0;
                }
            }
            if (!((String)kvpair1.value).toLowerCase().endsWith("jpg") && !((String)kvpair1.value).toLowerCase().endsWith("jpeg"))
            {
                break; /* Loop/switch isn't completed */
            }
            s = "image/jpeg";
        }
_L3:
        stringpart.append("Content-Type: ").append(s).append("\r\n\r\n");
        multipart.append(stringpart);
        s = new FilePart();
        s.setFile((String)kvpair1.value);
        multipart.append(s);
        s = new StringPart();
        s.append("\r\n");
        multipart.append(s);
        if (true) goto _L2; else goto _L1
_L1:
        if (((String)kvpair1.value).toLowerCase().endsWith("png"))
        {
            s = "image/png";
        } else
        {
label1:
            {
                if (!((String)kvpair1.value).toLowerCase().endsWith("gif"))
                {
                    break label1;
                }
                s = "image/gif";
            }
        }
          goto _L3
        s = new FileInputStream((String)kvpair1.value);
        arraylist = URLConnection.guessContentTypeFromStream(s);
        s.close();
        if (arraylist == null) goto _L5; else goto _L4
_L4:
        s = arraylist;
        if (arraylist.length() > 0) goto _L3; else goto _L5
_L5:
        s = "application/octet-stream";
          goto _L3
        s = new StringPart();
        s.append("--").append(s1).append("--\r\n");
        multipart.append(s);
        httppost.setEntity(multipart.getInputStreamEntity());
        return httppost;
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

    private HttpPost getTextPost(String s, ArrayList arraylist)
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

    private String kvPairsToUrl(ArrayList arraylist)
        throws Throwable
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = arraylist.iterator();
        while (iterator.hasNext()) 
        {
            arraylist = (KVPair)iterator.next();
            String s = Data.urlEncode(((KVPair) (arraylist)).name, "utf-8");
            if (((KVPair) (arraylist)).value != null)
            {
                arraylist = Data.urlEncode((String)((KVPair) (arraylist)).value, "utf-8");
            } else
            {
                arraylist = "";
            }
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append('&');
            }
            stringbuilder.append(s).append('=').append(arraylist);
        }
        return stringbuilder.toString();
    }

    public String downloadCache(Context context, String s, String s1, boolean flag)
        throws Throwable
    {
        Object obj2;
        Object obj3;
        HttpResponse httpresponse;
        int i;
        long l;
        l = System.currentTimeMillis();
        Ln.i((new StringBuilder()).append("downloading: ").append(s).toString(), new Object[0]);
        if (flag)
        {
            File file = new File(R.getCachePath(context, s1), Data.MD5(s));
            if (flag && file.exists())
            {
                Ln.i((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l).toString(), new Object[0]);
                return file.getAbsolutePath();
            }
        }
        Object obj = new HttpGet(s);
        String as[];
        Header aheader[];
        int j;
        if (s.startsWith("https://"))
        {
            obj3 = getSSLHttpClient();
        } else
        {
            obj3 = new DefaultHttpClient();
        }
        httpresponse = ((HttpClient) (obj3)).execute(((org.apache.http.client.methods.HttpUriRequest) (obj)));
        i = httpresponse.getStatusLine().getStatusCode();
        if (i != 200) goto _L2; else goto _L1
_L1:
        Object obj1;
        as = null;
        obj = null;
        aheader = httpresponse.getHeaders("Content-Disposition");
        obj2 = as;
        if (aheader != null)
        {
            obj2 = as;
            if (aheader.length > 0)
            {
                as = aheader[0].getValue().split(";");
                j = as.length;
                i = 0;
                do
                {
                    obj2 = obj;
                    if (i >= j)
                    {
                        break;
                    }
                    obj2 = as[i];
                    if (((String) (obj2)).trim().startsWith("filename"))
                    {
                        obj2 = ((String) (obj2)).split("=")[1];
                        obj = obj2;
                        if (((String) (obj2)).startsWith("\""))
                        {
                            obj = obj2;
                            if (((String) (obj2)).endsWith("\""))
                            {
                                obj = ((String) (obj2)).substring(1, ((String) (obj2)).length() - 1);
                            }
                        }
                    }
                    i++;
                } while (true);
            }
        }
        obj1 = obj2;
        if (obj2 != null) goto _L4; else goto _L3
_L3:
        obj2 = Data.MD5(s);
        obj1 = httpresponse.getHeaders("Content-Type");
        if (obj1 == null || obj1.length <= 0) goto _L6; else goto _L5
_L5:
        obj1 = obj1[0].getValue().trim();
        if (!((String) (obj1)).startsWith("image/")) goto _L8; else goto _L7
_L7:
        obj1 = ((String) (obj1)).substring("image/".length());
        obj2 = (new StringBuilder()).append(((String) (obj2))).append(".");
        s = ((String) (obj1));
        if ("jpeg".equals(obj1))
        {
            s = "jpg";
        }
        obj1 = ((StringBuilder) (obj2)).append(s).toString();
          goto _L4
_L8:
        i = s.lastIndexOf('/');
        obj1 = null;
        if (i > 0)
        {
            obj1 = s.substring(i + 1);
        }
        if (obj1 != null && ((String) (obj1)).length() > 0)
        {
            i = ((String) (obj1)).lastIndexOf('.');
            if (i > 0 && ((String) (obj1)).length() - i < 10)
            {
                obj1 = (new StringBuilder()).append(((String) (obj2))).append(((String) (obj1)).substring(i)).toString();
                continue; /* Loop/switch isn't completed */
            }
        }
          goto _L6
_L4:
        {
            context = new File(R.getCachePath(context, s1), ((String) (obj1)));
            if (flag && context.exists())
            {
                ((HttpClient) (obj3)).getConnectionManager().shutdown();
                Ln.i((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l).toString(), new Object[0]);
                return context.getAbsolutePath();
            }
            if (!context.getParentFile().exists())
            {
                context.getParentFile().mkdirs();
            }
            if (context.exists())
            {
                context.delete();
            }
            try
            {
                s = httpresponse.getEntity().getContent();
                s1 = new FileOutputStream(context);
                obj1 = new byte[1024];
                i = s.read(((byte []) (obj1)));
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                if (context.exists())
                {
                    context.delete();
                }
                throw s;
            }
        }
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_726;
        }
        s1.write(((byte []) (obj1)), 0, i);
        i = s.read(((byte []) (obj1)));
        break MISSING_BLOCK_LABEL_701;
        s1.flush();
        s.close();
        s1.close();
        ((HttpClient) (obj3)).getConnectionManager().shutdown();
        Ln.i((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l).toString(), new Object[0]);
        return context.getAbsolutePath();
_L2:
        context = EntityUtils.toString(httpresponse.getEntity(), "utf-8");
        s = new HashMap();
        s.put("error", context);
        s.put("status", Integer.valueOf(i));
        ((HttpClient) (obj3)).getConnectionManager().shutdown();
        throw new Throwable((new Hashon()).fromHashMap(s));
_L6:
        obj1 = obj2;
        if (true) goto _L4; else goto _L9
_L9:
    }

    public void getHttpPostResponse(String s, ArrayList arraylist, KVPair kvpair, ArrayList arraylist1, ArrayList arraylist2, HttpResponseCallback httpresponsecallback)
        throws Throwable
    {
        long l;
        l = System.currentTimeMillis();
        Ln.i((new StringBuilder()).append("httpPost: ").append(s).toString(), new Object[0]);
        if (kvpair != null && kvpair.value != null && (new File((String)kvpair.value)).exists())
        {
            ArrayList arraylist3 = new ArrayList();
            arraylist3.add(kvpair);
            arraylist = getFilePost(s, arraylist, arraylist3);
        } else
        {
            arraylist = getTextPost(s, arraylist);
        }
        if (arraylist1 != null)
        {
            for (kvpair = arraylist1.iterator(); kvpair.hasNext(); arraylist.setHeader(((KVPair) (arraylist1)).name, (String)((KVPair) (arraylist1)).value))
            {
                arraylist1 = (KVPair)kvpair.next();
            }

        }
        kvpair = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(kvpair, connectionTimeout);
        HttpConnectionParams.setSoTimeout(kvpair, readTimout);
        if (arraylist2 == null) goto _L2; else goto _L1
_L1:
        arraylist1 = arraylist2.iterator();
_L5:
        if (!arraylist1.hasNext()) goto _L2; else goto _L3
_L3:
        arraylist2 = (KVPair)arraylist1.next();
        int i = R.parseInt(String.valueOf(((KVPair) (arraylist2)).value));
        kvpair.setIntParameter(((KVPair) (arraylist2)).name, i);
        continue; /* Loop/switch isn't completed */
_L2:
        arraylist.setParams(kvpair);
        if (s.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(arraylist);
        if (httpresponsecallback != null)
        {
            httpresponsecallback.onResponse(arraylist);
        }
        s.getConnectionManager().shutdown();
        Ln.i((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l).toString(), new Object[0]);
        return;
        arraylist2;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public String httpGet(String s, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2)
        throws Throwable
    {
        String s1;
        long l;
        l = System.currentTimeMillis();
        Ln.i((new StringBuilder()).append("httpGet: ").append(s).toString(), new Object[0]);
        s1 = s;
        if (arraylist != null)
        {
            arraylist = kvPairsToUrl(arraylist);
            s1 = s;
            if (arraylist.length() > 0)
            {
                s1 = (new StringBuilder()).append(s).append("?").append(arraylist).toString();
            }
        }
        arraylist = new HttpGet(s1);
        if (arraylist1 != null)
        {
            for (s = arraylist1.iterator(); s.hasNext(); arraylist.setHeader(((KVPair) (arraylist1)).name, (String)((KVPair) (arraylist1)).value))
            {
                arraylist1 = (KVPair)s.next();
            }

        }
        s = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(s, connectionTimeout);
        HttpConnectionParams.setSoTimeout(s, readTimout);
        if (arraylist2 == null) goto _L2; else goto _L1
_L1:
        arraylist1 = arraylist2.iterator();
_L5:
        if (!arraylist1.hasNext()) goto _L2; else goto _L3
_L3:
        arraylist2 = (KVPair)arraylist1.next();
        int i = R.parseInt(String.valueOf(((KVPair) (arraylist2)).value));
        s.setIntParameter(((KVPair) (arraylist2)).name, i);
        continue; /* Loop/switch isn't completed */
_L2:
        arraylist.setParams(s);
        int j;
        if (s1.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(arraylist);
        j = arraylist.getStatusLine().getStatusCode();
        if (j == 200)
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            s.getConnectionManager().shutdown();
            Ln.i((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l).toString(), new Object[0]);
            return arraylist;
        } else
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            arraylist1 = new HashMap();
            arraylist1.put("error", arraylist);
            arraylist1.put("status", Integer.valueOf(j));
            s.getConnectionManager().shutdown();
            throw new Throwable((new Hashon()).fromHashMap(arraylist1));
        }
        arraylist2;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public ArrayList httpHead(String s, ArrayList arraylist, KVPair kvpair, ArrayList arraylist1, ArrayList arraylist2)
        throws Throwable
    {
        long l;
        l = System.currentTimeMillis();
        Ln.i((new StringBuilder()).append("httpHead: ").append(s).toString(), new Object[0]);
        kvpair = s;
        if (arraylist != null)
        {
            arraylist = kvPairsToUrl(arraylist);
            kvpair = s;
            if (arraylist.length() > 0)
            {
                kvpair = (new StringBuilder()).append(s).append("?").append(arraylist).toString();
            }
        }
        arraylist = new HttpHead(kvpair);
        if (arraylist1 != null)
        {
            for (s = arraylist1.iterator(); s.hasNext(); arraylist.setHeader(((KVPair) (arraylist1)).name, (String)((KVPair) (arraylist1)).value))
            {
                arraylist1 = (KVPair)s.next();
            }

        }
        s = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(s, connectionTimeout);
        HttpConnectionParams.setSoTimeout(s, readTimout);
        if (arraylist2 == null) goto _L2; else goto _L1
_L1:
        arraylist1 = arraylist2.iterator();
_L5:
        if (!arraylist1.hasNext()) goto _L2; else goto _L3
_L3:
        arraylist2 = (KVPair)arraylist1.next();
        int i = R.parseInt(String.valueOf(((KVPair) (arraylist2)).value));
        s.setIntParameter(((KVPair) (arraylist2)).name, i);
        continue; /* Loop/switch isn't completed */
_L2:
        arraylist.setParams(s);
        if (kvpair.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(arraylist).getAllHeaders();
        kvpair = new ArrayList();
        if (arraylist != null)
        {
            int k = arraylist.length;
            for (int j = 0; j < k; j++)
            {
                arraylist1 = arraylist[j];
                kvpair.add(new KVPair(arraylist1.getName(), arraylist1.getValue()));
            }

        }
        s.getConnectionManager().shutdown();
        Ln.i((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l).toString(), new Object[0]);
        return kvpair;
        arraylist2;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public String httpPatch(String s, ArrayList arraylist, KVPair kvpair, long l, ArrayList arraylist1, ArrayList arraylist2, 
            OnReadListener onreadlistener)
        throws Throwable
    {
        final HashMap tmpMap = new HashMap();
        httpPatch(s, arraylist, kvpair, l, arraylist1, arraylist2, onreadlistener, new HttpResponseCallback() {

            final NetworkHelper this$0;
            final HashMap val$tmpMap;

            public void onResponse(HttpResponse httpresponse)
                throws Throwable
            {
                int j = httpresponse.getStatusLine().getStatusCode();
                tmpMap.put("status", Integer.valueOf(j));
                if (j == 200 || j == 201)
                {
                    tmpMap.put("resp", EntityUtils.toString(httpresponse.getEntity(), "utf-8"));
                    return;
                } else
                {
                    httpresponse = EntityUtils.toString(httpresponse.getEntity(), "utf-8");
                    HashMap hashmap = new HashMap();
                    hashmap.put("error", httpresponse);
                    hashmap.put("status", Integer.valueOf(j));
                    tmpMap.put("resp", (new Hashon()).fromHashMap(hashmap));
                    return;
                }
            }

            
            {
                this$0 = NetworkHelper.this;
                tmpMap = hashmap;
                super();
            }
        });
        int i = ((Integer)tmpMap.get("status")).intValue();
        s = (String)tmpMap.get("resp");
        if (i == 200)
        {
            return s;
        } else
        {
            throw new Throwable(s);
        }
    }

    public void httpPatch(String s, ArrayList arraylist, KVPair kvpair, long l, ArrayList arraylist1, ArrayList arraylist2, 
            OnReadListener onreadlistener, HttpResponseCallback httpresponsecallback)
        throws Throwable
    {
        String s1;
        long l1;
        l1 = System.currentTimeMillis();
        Ln.i((new StringBuilder()).append("httpPatch: ").append(s).toString(), new Object[0]);
        s1 = s;
        if (arraylist != null)
        {
            arraylist = kvPairsToUrl(arraylist);
            s1 = s;
            if (arraylist.length() > 0)
            {
                s1 = (new StringBuilder()).append(s).append("?").append(arraylist).toString();
            }
        }
        arraylist = new HttpPatch(s1);
        if (arraylist1 != null)
        {
            for (s = arraylist1.iterator(); s.hasNext(); arraylist.setHeader(((KVPair) (arraylist1)).name, (String)((KVPair) (arraylist1)).value))
            {
                arraylist1 = (KVPair)s.next();
            }

        }
        s = new FilePart();
        s.setOnReadListener(onreadlistener);
        s.setFile((String)kvpair.value);
        s.setOffset(l);
        s = s.getInputStreamEntity();
        s.setContentEncoding("application/offset+octet-stream");
        arraylist.setEntity(s);
        s = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(s, connectionTimeout);
        HttpConnectionParams.setSoTimeout(s, readTimout);
        if (arraylist2 == null) goto _L2; else goto _L1
_L1:
        kvpair = arraylist2.iterator();
_L5:
        if (!kvpair.hasNext()) goto _L2; else goto _L3
_L3:
        arraylist1 = (KVPair)kvpair.next();
        int i = R.parseInt(String.valueOf(((KVPair) (arraylist1)).value));
        s.setIntParameter(((KVPair) (arraylist1)).name, i);
        continue; /* Loop/switch isn't completed */
_L2:
        arraylist.setParams(s);
        if (s1.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(arraylist);
        if (httpresponsecallback != null)
        {
            httpresponsecallback.onResponse(arraylist);
        }
        s.getConnectionManager().shutdown();
        Ln.i((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l1).toString(), new Object[0]);
        return;
        arraylist1;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public String httpPost(String s, ArrayList arraylist, KVPair kvpair, ArrayList arraylist1, ArrayList arraylist2)
        throws Throwable
    {
        ArrayList arraylist3 = new ArrayList();
        if (kvpair != null && kvpair.value != null && (new File((String)kvpair.value)).exists())
        {
            arraylist3.add(kvpair);
        }
        return httpPostFiles(s, arraylist, arraylist3, arraylist1, arraylist2);
    }

    public void httpPost(String s, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2, ArrayList arraylist3, HttpResponseCallback httpresponsecallback)
        throws Throwable
    {
        long l;
        l = System.currentTimeMillis();
        Ln.i((new StringBuilder()).append("httpPost: ").append(s).toString(), new Object[0]);
        if (arraylist1 != null && arraylist1.size() > 0)
        {
            arraylist = getFilePost(s, arraylist, arraylist1);
        } else
        {
            arraylist = getTextPost(s, arraylist);
        }
        if (arraylist2 != null)
        {
            for (arraylist1 = arraylist2.iterator(); arraylist1.hasNext(); arraylist.setHeader(((KVPair) (arraylist2)).name, (String)((KVPair) (arraylist2)).value))
            {
                arraylist2 = (KVPair)arraylist1.next();
            }

        }
        arraylist1 = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(arraylist1, connectionTimeout);
        HttpConnectionParams.setSoTimeout(arraylist1, readTimout);
        Ln.i((new StringBuilder()).append("before set SO_TIMEOUT :").append(arraylist1.getIntParameter("http.socket.timeout", readTimout)).toString(), new Object[0]);
        Ln.i((new StringBuilder()).append("before set CONNECTION_TIMEOUT :").append(arraylist1.getIntParameter("http.connection.timeout", connectionTimeout)).toString(), new Object[0]);
        if (arraylist3 == null) goto _L2; else goto _L1
_L1:
        arraylist2 = arraylist3.iterator();
_L5:
        if (!arraylist2.hasNext()) goto _L2; else goto _L3
_L3:
        arraylist3 = (KVPair)arraylist2.next();
        int i = R.parseInt(String.valueOf(((KVPair) (arraylist3)).value));
        arraylist1.setIntParameter(((KVPair) (arraylist3)).name, i);
        continue; /* Loop/switch isn't completed */
_L2:
        Ln.i((new StringBuilder()).append("before set SO_TIMEOUT :").append(arraylist1.getIntParameter("http.socket.timeout", readTimout)).toString(), new Object[0]);
        Ln.i((new StringBuilder()).append("before set CONNECTION_TIMEOUT :").append(arraylist1.getIntParameter("http.connection.timeout", connectionTimeout)).toString(), new Object[0]);
        arraylist.setParams(arraylist1);
        if (s.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(arraylist);
        if (httpresponsecallback != null)
        {
            try
            {
                httpresponsecallback.onResponse(arraylist);
            }
            // Misplaced declaration of an exception variable
            catch (ArrayList arraylist)
            {
                s.getConnectionManager().shutdown();
                throw arraylist;
            }
        }
        s.getConnectionManager().shutdown();
        Ln.i((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l).toString(), new Object[0]);
        return;
        arraylist3;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public String httpPostFiles(String s, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2, ArrayList arraylist3)
        throws Throwable
    {
        final HashMap tmpMap = new HashMap();
        httpPost(s, arraylist, arraylist1, arraylist2, arraylist3, new HttpResponseCallback() {

            final NetworkHelper this$0;
            final HashMap val$tmpMap;

            public void onResponse(HttpResponse httpresponse)
                throws Throwable
            {
                int i = httpresponse.getStatusLine().getStatusCode();
                if (i == 200 || i == 201)
                {
                    tmpMap.put("resp", EntityUtils.toString(httpresponse.getEntity(), "utf-8"));
                    return;
                } else
                {
                    httpresponse = EntityUtils.toString(httpresponse.getEntity(), "utf-8");
                    HashMap hashmap = new HashMap();
                    hashmap.put("error", httpresponse);
                    hashmap.put("status", Integer.valueOf(i));
                    throw new Throwable((new Hashon()).fromHashMap(hashmap));
                }
            }

            
            {
                this$0 = NetworkHelper.this;
                tmpMap = hashmap;
                super();
            }
        });
        return (String)tmpMap.get("resp");
    }

    public String httpPut(String s, ArrayList arraylist, KVPair kvpair, ArrayList arraylist1, ArrayList arraylist2)
        throws Throwable
    {
        String s1;
        long l;
        l = System.currentTimeMillis();
        Ln.i((new StringBuilder()).append("httpPut: ").append(s).toString(), new Object[0]);
        s1 = s;
        if (arraylist != null)
        {
            arraylist = kvPairsToUrl(arraylist);
            s1 = s;
            if (arraylist.length() > 0)
            {
                s1 = (new StringBuilder()).append(s).append("?").append(arraylist).toString();
            }
        }
        arraylist = new HttpPut(s1);
        if (arraylist1 != null)
        {
            for (s = arraylist1.iterator(); s.hasNext(); arraylist.setHeader(((KVPair) (arraylist1)).name, (String)((KVPair) (arraylist1)).value))
            {
                arraylist1 = (KVPair)s.next();
            }

        }
        s = new FilePart();
        s.setFile((String)kvpair.value);
        s = s.getInputStreamEntity();
        s.setContentEncoding("application/octet-stream");
        arraylist.setEntity(s);
        s = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(s, connectionTimeout);
        HttpConnectionParams.setSoTimeout(s, readTimout);
        if (arraylist2 == null) goto _L2; else goto _L1
_L1:
        kvpair = arraylist2.iterator();
_L5:
        if (!kvpair.hasNext()) goto _L2; else goto _L3
_L3:
        arraylist1 = (KVPair)kvpair.next();
        int i = R.parseInt(String.valueOf(((KVPair) (arraylist1)).value));
        s.setIntParameter(((KVPair) (arraylist1)).name, i);
        continue; /* Loop/switch isn't completed */
_L2:
        arraylist.setParams(s);
        int j;
        if (s1.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(arraylist);
        j = arraylist.getStatusLine().getStatusCode();
        if (j == 200 || j == 201)
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            s.getConnectionManager().shutdown();
            Ln.i((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l).toString(), new Object[0]);
            return arraylist;
        } else
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            kvpair = new HashMap();
            kvpair.put("error", arraylist);
            kvpair.put("status", Integer.valueOf(j));
            s.getConnectionManager().shutdown();
            throw new Throwable((new Hashon()).fromHashMap(kvpair));
        }
        arraylist1;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public String jsonPost(String s, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2)
        throws Throwable
    {
        HttpPost httppost;
        long l;
        l = System.currentTimeMillis();
        Ln.i((new StringBuilder()).append("jsonPost: ").append(s).toString(), new Object[0]);
        httppost = new HttpPost(s);
        StringPart stringpart = new StringPart();
        if (arraylist != null)
        {
            HashMap hashmap = new HashMap();
            KVPair kvpair;
            for (arraylist = arraylist.iterator(); arraylist.hasNext(); hashmap.put(kvpair.name, kvpair.value))
            {
                kvpair = (KVPair)arraylist.next();
            }

            stringpart.append((new Hashon()).fromHashMap(hashmap));
        }
        arraylist = stringpart.getInputStreamEntity();
        arraylist.setContentType("application/json");
        httppost.setEntity(arraylist);
        if (arraylist1 != null)
        {
            for (arraylist = arraylist1.iterator(); arraylist.hasNext(); httppost.setHeader(((KVPair) (arraylist1)).name, (String)((KVPair) (arraylist1)).value))
            {
                arraylist1 = (KVPair)arraylist.next();
            }

        }
        arraylist = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(arraylist, connectionTimeout);
        HttpConnectionParams.setSoTimeout(arraylist, readTimout);
        if (arraylist2 == null) goto _L2; else goto _L1
_L1:
        arraylist1 = arraylist2.iterator();
_L5:
        if (!arraylist1.hasNext()) goto _L2; else goto _L3
_L3:
        arraylist2 = (KVPair)arraylist1.next();
        int i = R.parseInt(String.valueOf(((KVPair) (arraylist2)).value));
        arraylist.setIntParameter(((KVPair) (arraylist2)).name, i);
        continue; /* Loop/switch isn't completed */
_L2:
        httppost.setParams(arraylist);
        int j;
        if (s.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(httppost);
        j = arraylist.getStatusLine().getStatusCode();
        if (j == 200 || j == 201)
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            s.getConnectionManager().shutdown();
            Ln.i((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l).toString(), new Object[0]);
            return arraylist;
        } else
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            arraylist1 = new HashMap();
            arraylist1.put("error", arraylist);
            arraylist1.put("status", Integer.valueOf(j));
            s.getConnectionManager().shutdown();
            throw new Throwable((new Hashon()).fromHashMap(arraylist1));
        }
        arraylist2;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void rawGet(String s, RawNetworkCallback rawnetworkcallback)
        throws Throwable
    {
        Object obj = new HttpGet(s);
        int i;
        if (s.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        obj = s.execute(((org.apache.http.client.methods.HttpUriRequest) (obj)));
        i = ((HttpResponse) (obj)).getStatusLine().getStatusCode();
        if (i == 200)
        {
            if (rawnetworkcallback != null)
            {
                rawnetworkcallback.onResponse(((HttpResponse) (obj)).getEntity().getContent());
            }
            s.getConnectionManager().shutdown();
            return;
        } else
        {
            rawnetworkcallback = EntityUtils.toString(((HttpResponse) (obj)).getEntity(), "utf-8");
            obj = new HashMap();
            ((HashMap) (obj)).put("error", rawnetworkcallback);
            ((HashMap) (obj)).put("status", Integer.valueOf(i));
            s.getConnectionManager().shutdown();
            throw new Throwable((new Hashon()).fromHashMap(((HashMap) (obj))));
        }
    }

    public void rawPost(String s, ArrayList arraylist, HTTPPart httppart, HttpResponseCallback httpresponsecallback)
        throws Throwable
    {
        long l = System.currentTimeMillis();
        Ln.i((new StringBuilder()).append("raw post: ").append(s).toString(), new Object[0]);
        HttpPost httppost = new HttpPost(s);
        if (arraylist != null)
        {
            KVPair kvpair;
            for (arraylist = arraylist.iterator(); arraylist.hasNext(); httppost.setHeader(kvpair.name, (String)kvpair.value))
            {
                kvpair = (KVPair)arraylist.next();
            }

        }
        httppost.setEntity(httppart.getInputStreamEntity());
        if (s.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(httppost);
        if (httpresponsecallback != null)
        {
            httpresponsecallback.onResponse(arraylist);
        }
        s.getConnectionManager().shutdown();
        Ln.i((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l).toString(), new Object[0]);
    }

    public void rawPost(String s, ArrayList arraylist, HTTPPart httppart, RawNetworkCallback rawnetworkcallback)
        throws Throwable
    {
        long l = System.currentTimeMillis();
        Ln.i((new StringBuilder()).append("raw post: ").append(s).toString(), new Object[0]);
        HttpPost httppost = new HttpPost(s);
        if (arraylist != null)
        {
            KVPair kvpair;
            for (arraylist = arraylist.iterator(); arraylist.hasNext(); httppost.setHeader(kvpair.name, (String)kvpair.value))
            {
                kvpair = (KVPair)arraylist.next();
            }

        }
        httppost.setEntity(httppart.getInputStreamEntity());
        int i;
        if (s.startsWith("https://"))
        {
            s = getSSLHttpClient();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(httppost);
        i = arraylist.getStatusLine().getStatusCode();
        if (i == 200)
        {
            Ln.i((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l).toString(), new Object[0]);
            if (rawnetworkcallback != null)
            {
                rawnetworkcallback.onResponse(arraylist.getEntity().getContent());
            }
            s.getConnectionManager().shutdown();
            return;
        } else
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            httppart = new HashMap();
            httppart.put("error", arraylist);
            httppart.put("status", Integer.valueOf(i));
            s.getConnectionManager().shutdown();
            throw new Throwable((new Hashon()).fromHashMap(httppart));
        }
    }
}
