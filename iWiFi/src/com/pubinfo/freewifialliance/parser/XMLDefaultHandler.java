// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.parser;

import com.iwifi.sdk.tools.HttpConf;
import com.iwifi.sdk.tools.Logger;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

// Referenced classes of package com.pubinfo.freewifialliance.parser:
//            GeneralConfigParser

class XMLDefaultHandler extends DefaultHandler
{

    private String CLIENT_BUILD_VERSION;
    private String GENERAl_CONFIG;

    public XMLDefaultHandler()
    {
        GENERAl_CONFIG = "general_config";
        CLIENT_BUILD_VERSION = "ClientBuildVersion";
    }

    public void endDocument()
        throws SAXException
    {
        super.endDocument();
    }

    public void endElement(String s, String s1, String s2)
        throws SAXException
    {
        super.endElement(s, s1, s2);
    }

    public void startDocument()
        throws SAXException
    {
        super.startDocument();
    }

    public void startElement(String s, String s1, String s2, Attributes attributes)
        throws SAXException
    {
        super.startElement(s, s1, s2, attributes);
        if (s1.equals(GENERAl_CONFIG))
        {
            s = attributes.getValue("default_iwifi_user_agent");
            if (s != null)
            {
                HttpConf.iWiFi_USER_AGENT = s;
            }
            s = attributes.getValue("iwifi20_wifi_host");
            if (s != null)
            {
                HttpConf.iWiFi20_WIFI_HOST = s;
            }
            s = attributes.getValue("iwfi20_authen_str");
            if (s != null)
            {
                HttpConf.iWiFi20_AUTHEN_STR = s;
            }
            s = attributes.getValue("iwifi_thirdparty_jar");
            if (s != null)
            {
                HttpConf.b_iWiFiSDK_ThirdPartyJar = s.equals("true");
            }
            s = attributes.getValue("iwifi_logger_status");
            if (s != null)
            {
                Logger.setLogStatus(s.equals("true"), 3, 0);
            }
        } else
        if (s1.equals("ClientBuildVersion"))
        {
            s = attributes.getValue("ver");
            if (s != null)
            {
                GeneralConfigParser.iWiFi_Client_Build_Version = Integer.valueOf(s).intValue();
                return;
            }
        }
    }
}
