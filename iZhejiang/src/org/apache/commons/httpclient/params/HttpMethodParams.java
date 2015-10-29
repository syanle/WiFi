// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.httpclient.params;

import org.apache.commons.httpclient.HttpVersion;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

// Referenced classes of package org.apache.commons.httpclient.params:
//            DefaultHttpParams, HttpParams

public class HttpMethodParams extends DefaultHttpParams
{

    public static final String BUFFER_WARN_TRIGGER_LIMIT = "http.method.response.buffer.warnlimit";
    public static final String COOKIE_POLICY = "http.protocol.cookie-policy";
    public static final String CREDENTIAL_CHARSET = "http.protocol.credential-charset";
    public static final String DATE_PATTERNS = "http.dateparser.patterns";
    public static final String HEAD_BODY_CHECK_TIMEOUT = "http.protocol.head-body-timeout";
    public static final String HTTP_CONTENT_CHARSET = "http.protocol.content-charset";
    public static final String HTTP_ELEMENT_CHARSET = "http.protocol.element-charset";
    public static final String HTTP_URI_CHARSET = "http.protocol.uri-charset";
    private static final Log LOG;
    public static final String MULTIPART_BOUNDARY = "http.method.multipart.boundary";
    private static final String PROTOCOL_STRICTNESS_PARAMETERS[] = {
        "http.protocol.unambiguous-statusline", "http.protocol.single-cookie-header", "http.protocol.strict-transfer-encoding", "http.protocol.reject-head-body", "http.protocol.warn-extra-input"
    };
    public static final String PROTOCOL_VERSION = "http.protocol.version";
    public static final String REJECT_HEAD_BODY = "http.protocol.reject-head-body";
    public static final String RETRY_HANDLER = "http.method.retry-handler";
    public static final String SINGLE_COOKIE_HEADER = "http.protocol.single-cookie-header";
    public static final String SO_TIMEOUT = "http.socket.timeout";
    public static final String STATUS_LINE_GARBAGE_LIMIT = "http.protocol.status-line-garbage-limit";
    public static final String STRICT_TRANSFER_ENCODING = "http.protocol.strict-transfer-encoding";
    public static final String UNAMBIGUOUS_STATUS_LINE = "http.protocol.unambiguous-statusline";
    public static final String USER_AGENT = "http.useragent";
    public static final String USE_EXPECT_CONTINUE = "http.protocol.expect-continue";
    public static final String VIRTUAL_HOST = "http.virtual-host";
    public static final String WARN_EXTRA_INPUT = "http.protocol.warn-extra-input";
    static Class class$org$apache$commons$httpclient$params$HttpMethodParams;

    public HttpMethodParams()
    {
        super(getDefaultParams());
    }

    public HttpMethodParams(HttpParams httpparams)
    {
        super(httpparams);
    }

    static Class _mthclass$(String s)
    {
        try
        {
            s = Class.forName(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new NoClassDefFoundError(s.getMessage());
        }
        return s;
    }

    public String getContentCharset()
    {
        String s1 = (String)getParameter("http.protocol.content-charset");
        String s = s1;
        if (s1 == null)
        {
            LOG.warn("Default content charset not configured, using ISO-8859-1");
            s = "ISO-8859-1";
        }
        return s;
    }

    public String getCookiePolicy()
    {
        Object obj = getParameter("http.protocol.cookie-policy");
        if (obj == null)
        {
            return "default";
        } else
        {
            return (String)obj;
        }
    }

    public String getCredentialCharset()
    {
        String s1 = (String)getParameter("http.protocol.credential-charset");
        String s = s1;
        if (s1 == null)
        {
            LOG.debug("Credential charset not configured, using HTTP element charset");
            s = getHttpElementCharset();
        }
        return s;
    }

    public String getHttpElementCharset()
    {
        String s1 = (String)getParameter("http.protocol.element-charset");
        String s = s1;
        if (s1 == null)
        {
            LOG.warn("HTTP element charset not configured, using US-ASCII");
            s = "US-ASCII";
        }
        return s;
    }

    public int getSoTimeout()
    {
        return getIntParameter("http.socket.timeout", 0);
    }

    public String getUriCharset()
    {
        String s1 = (String)getParameter("http.protocol.uri-charset");
        String s = s1;
        if (s1 == null)
        {
            s = "UTF-8";
        }
        return s;
    }

    public HttpVersion getVersion()
    {
        Object obj = getParameter("http.protocol.version");
        if (obj == null)
        {
            return HttpVersion.HTTP_1_1;
        } else
        {
            return (HttpVersion)obj;
        }
    }

    public String getVirtualHost()
    {
        return (String)getParameter("http.virtual-host");
    }

    public void makeLenient()
    {
        setParameters(PROTOCOL_STRICTNESS_PARAMETERS, Boolean.FALSE);
        setIntParameter("http.protocol.status-line-garbage-limit", 0x7fffffff);
    }

    public void makeStrict()
    {
        setParameters(PROTOCOL_STRICTNESS_PARAMETERS, Boolean.TRUE);
        setIntParameter("http.protocol.status-line-garbage-limit", 0);
    }

    public void setContentCharset(String s)
    {
        setParameter("http.protocol.content-charset", s);
    }

    public void setCookiePolicy(String s)
    {
        setParameter("http.protocol.cookie-policy", s);
    }

    public void setCredentialCharset(String s)
    {
        setParameter("http.protocol.credential-charset", s);
    }

    public void setHttpElementCharset(String s)
    {
        setParameter("http.protocol.element-charset", s);
    }

    public void setSoTimeout(int i)
    {
        setIntParameter("http.socket.timeout", i);
    }

    public void setUriCharset(String s)
    {
        setParameter("http.protocol.uri-charset", s);
    }

    public void setVersion(HttpVersion httpversion)
    {
        setParameter("http.protocol.version", httpversion);
    }

    public void setVirtualHost(String s)
    {
        setParameter("http.virtual-host", s);
    }

    static 
    {
        Class class1;
        if (class$org$apache$commons$httpclient$params$HttpMethodParams == null)
        {
            class1 = _mthclass$("org.apache.commons.httpclient.params.HttpMethodParams");
            class$org$apache$commons$httpclient$params$HttpMethodParams = class1;
        } else
        {
            class1 = class$org$apache$commons$httpclient$params$HttpMethodParams;
        }
        LOG = LogFactory.getLog(class1);
    }
}
