// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.httpclient;

import org.apache.commons.httpclient.util.URIUtil;

// Referenced classes of package org.apache.commons.httpclient:
//            HttpURL, URIException, URI

public class HttpsURL extends HttpURL
{

    public static final int DEFAULT_PORT = 443;
    public static final char DEFAULT_SCHEME[] = {
        'h', 't', 't', 'p', 's'
    };
    public static final int _default_port = 443;
    public static final char _default_scheme[] = DEFAULT_SCHEME;
    static final long serialVersionUID = 0xc5241aa7c286428L;

    protected HttpsURL()
    {
    }

    public HttpsURL(String s)
        throws URIException
    {
        parseUriReference(s, false);
        checkValid();
    }

    public HttpsURL(String s, int i, String s1)
        throws URIException
    {
        this(null, s, i, s1, null, null);
    }

    public HttpsURL(String s, int i, String s1, String s2)
        throws URIException
    {
        this(null, s, i, s1, s2, null);
    }

    public HttpsURL(String s, String s1)
        throws URIException
    {
        protocolCharset = s1;
        parseUriReference(s, false);
        checkValid();
    }

    public HttpsURL(String s, String s1, int i, String s2)
        throws URIException
    {
        this(s, s1, i, s2, null, null);
    }

    public HttpsURL(String s, String s1, int i, String s2, String s3)
        throws URIException
    {
        this(s, s1, i, s2, s3, null);
    }

    public HttpsURL(String s, String s1, int i, String s2, String s3, String s4)
        throws URIException
    {
        StringBuffer stringbuffer = new StringBuffer();
        if (s != null || s1 != null || i != -1)
        {
            _scheme = DEFAULT_SCHEME;
            stringbuffer.append(_default_scheme);
            stringbuffer.append("://");
            if (s != null)
            {
                stringbuffer.append(s);
                stringbuffer.append('@');
            }
            if (s1 != null)
            {
                stringbuffer.append(URIUtil.encode(s1, URI.allowed_host));
                if (i != -1 || i != 443)
                {
                    stringbuffer.append(':');
                    stringbuffer.append(i);
                }
            }
        }
        if (s2 != null)
        {
            if (scheme != null && !s2.startsWith("/"))
            {
                throw new URIException(1, "abs_path requested");
            }
            stringbuffer.append(URIUtil.encode(s2, URI.allowed_abs_path));
        }
        if (s3 != null)
        {
            stringbuffer.append('?');
            stringbuffer.append(URIUtil.encode(s3, URI.allowed_query));
        }
        if (s4 != null)
        {
            stringbuffer.append('#');
            stringbuffer.append(URIUtil.encode(s4, URI.allowed_fragment));
        }
        parseUriReference(stringbuffer.toString(), true);
        checkValid();
    }

    public HttpsURL(String s, String s1, String s2)
        throws URIException
    {
        this(s, s1, s2, -1, null, null, null);
    }

    public HttpsURL(String s, String s1, String s2, int i)
        throws URIException
    {
        this(s, s1, s2, i, null, null, null);
    }

    public HttpsURL(String s, String s1, String s2, int i, String s3)
        throws URIException
    {
        this(s, s1, s2, i, s3, null, null);
    }

    public HttpsURL(String s, String s1, String s2, int i, String s3, String s4)
        throws URIException
    {
        this(s, s1, s2, i, s3, s4, null);
    }

    public HttpsURL(String s, String s1, String s2, int i, String s3, String s4, String s5)
        throws URIException
    {
        this(HttpURL.toUserinfo(s, s1), s2, i, s3, s4, s5);
    }

    public HttpsURL(String s, String s1, String s2, String s3)
        throws URIException
    {
        this(null, s, -1, s1, s2, s3);
    }

    public HttpsURL(String s, String s1, String s2, String s3, String s4)
        throws URIException
    {
        this(s, s1, -1, s2, s3, s4);
    }

    public HttpsURL(HttpsURL httpsurl, String s)
        throws URIException
    {
        this(httpsurl, new HttpsURL(s));
    }

    public HttpsURL(HttpsURL httpsurl, HttpsURL httpsurl1)
        throws URIException
    {
        super(httpsurl, httpsurl1);
        checkValid();
    }

    public HttpsURL(char ac[])
        throws URIException, NullPointerException
    {
        parseUriReference(new String(ac), true);
        checkValid();
    }

    public HttpsURL(char ac[], String s)
        throws URIException, NullPointerException
    {
        protocolCharset = s;
        parseUriReference(new String(ac), true);
        checkValid();
    }

    protected void checkValid()
        throws URIException
    {
        if (!equals(_scheme, DEFAULT_SCHEME) && _scheme != null)
        {
            throw new URIException(1, "wrong class use");
        } else
        {
            return;
        }
    }

    public int getPort()
    {
        if (_port == -1)
        {
            return 443;
        } else
        {
            return _port;
        }
    }

    public char[] getRawScheme()
    {
        if (_scheme == null)
        {
            return null;
        } else
        {
            return DEFAULT_SCHEME;
        }
    }

    public String getScheme()
    {
        if (_scheme == null)
        {
            return null;
        } else
        {
            return new String(DEFAULT_SCHEME);
        }
    }

}
