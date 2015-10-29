// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.chinanet.wispr;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

// Referenced classes of package com.iwifi.sdk.chinanet.wispr:
//            Redirect, AuthenticationReply, LogoffReply

public class XMLParseDefaultHandler extends DefaultHandler
{

    private final int ITEM_AUTHENTI_KEEP_ALIVE = 15;
    private final int ITEM_AUTHENTI_LOGIN_RES_URL = 11;
    private final int ITEM_AUTHENTI_LOGOFF_URL = 12;
    private final int ITEM_AUTHENTI_MSG_TYPE = 13;
    private final int ITEM_AUTHENTI_REPLY_MSG = 10;
    private final int ITEM_AUTHENTI_RSP_CODE = 14;
    private final int ITEM_LOGOFF_MESSAGE_TYPE = 8;
    private final int ITEM_LOGOFF_RESPONSE_CODE = 9;
    private final int ITEM_REDIRECT_ABORT_LOGIN_URL = 4;
    private final int ITEM_REDIRECT_ACESS_PROCEDURE = 6;
    private final int ITEM_REDIRECT_LOCAL_INDENTY = 1;
    private final int ITEM_REDIRECT_LOCAL_NAME = 2;
    private final int ITEM_REDIRECT_LOGIN_URL = 3;
    private final int ITEM_REDIRECT_MESSAGE_TYPE = 5;
    private final int ITEM_REDIRECT_RESPONSE = 7;
    public boolean b_isAuthenticationReply;
    public boolean b_isLogoffReply;
    public boolean b_isRedirect;
    private int cur_parse_item;
    public int http_response_type;
    public AuthenticationReply mAuthenticationReply;
    public LogoffReply mLogoffReply;
    public Redirect mRedirect;

    public XMLParseDefaultHandler()
    {
        http_response_type = 0;
        b_isRedirect = false;
        b_isAuthenticationReply = false;
        b_isLogoffReply = false;
        mRedirect = null;
        mLogoffReply = null;
        mAuthenticationReply = null;
        cur_parse_item = 0;
    }

    public void characters(char ac[], int i, int j)
        throws SAXException
    {
        super.characters(ac, i, j);
        ac = new String(ac, i, j);
        if (!b_isRedirect || mRedirect == null) goto _L2; else goto _L1
_L1:
        cur_parse_item;
        JVM INSTR tableswitch 1 7: default 80
    //                   1 81
    //                   2 90
    //                   3 99
    //                   4 152
    //                   5 161
    //                   6 173
    //                   7 185;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L3:
        return;
_L4:
        mRedirect.location_indentifier = ac;
        return;
_L5:
        mRedirect.location_name = ac;
        return;
_L6:
        if (mRedirect.login_url == null)
        {
            mRedirect.login_url = ac;
            return;
        } else
        {
            Redirect redirect = mRedirect;
            redirect.login_url = (new StringBuilder(String.valueOf(redirect.login_url))).append(ac).toString();
            return;
        }
_L7:
        mRedirect.abort_login_url = ac;
        return;
_L8:
        mRedirect.messageType = Integer.parseInt(ac);
        return;
_L9:
        mRedirect.accessProcedure = Float.parseFloat(ac);
        return;
_L10:
        mRedirect.response = Integer.parseInt(ac);
        return;
_L2:
        if (b_isAuthenticationReply && mAuthenticationReply != null)
        {
            switch (cur_parse_item)
            {
            default:
                return;

            case 10: // '\n'
                mAuthenticationReply.reply_message = ac;
                return;

            case 11: // '\013'
                mAuthenticationReply.loginResult_url = ac;
                return;

            case 12: // '\f'
                mAuthenticationReply.logoff_url = ac;
                return;

            case 13: // '\r'
                mAuthenticationReply.messageType = Integer.parseInt(ac);
                return;

            case 14: // '\016'
                mAuthenticationReply.responseCode = Integer.parseInt(ac);
                return;

            case 15: // '\017'
                mAuthenticationReply.keepAlive = Integer.parseInt(ac);
                break;
            }
            return;
        }
        if (b_isLogoffReply && mLogoffReply != null)
        {
            switch (cur_parse_item)
            {
            default:
                return;

            case 8: // '\b'
                mLogoffReply.messageType = Integer.parseInt(ac);
                return;

            case 9: // '\t'
                mLogoffReply.responseCode = Integer.parseInt(ac);
                break;
            }
            return;
        }
        if (true) goto _L3; else goto _L11
_L11:
    }

    public void endDocument()
        throws SAXException
    {
        super.endDocument();
    }

    public void endElement(String s, String s1, String s2)
        throws SAXException
    {
        if (!s1.equals("Redirect")) goto _L2; else goto _L1
_L1:
        http_response_type = 0;
        b_isRedirect = false;
_L4:
        super.endElement(s, s1, s2);
        return;
_L2:
        if (s1.equals("AuthenticationReply"))
        {
            http_response_type = 0;
            b_isAuthenticationReply = false;
        } else
        if (s1.equals("LogoffReply"))
        {
            http_response_type = 0;
            b_isLogoffReply = false;
        } else
        if (s1.equals("AccessProcedure"))
        {
            cur_parse_item = 0;
        } else
        if (s1.equals("AccessLocation"))
        {
            cur_parse_item = 0;
        } else
        if (s1.equals("LocationName"))
        {
            cur_parse_item = 0;
        } else
        if (s1.equals("LoginURL"))
        {
            cur_parse_item = 0;
        } else
        if (s1.equals("AbortLoginURL"))
        {
            cur_parse_item = 0;
        } else
        if (s1.equals("MessageType"))
        {
            cur_parse_item = 0;
        } else
        if (s1.equals("ResponseCode"))
        {
            cur_parse_item = 0;
        } else
        if (s1.equals("MessageType"))
        {
            cur_parse_item = 0;
        } else
        if (s1.equals("ResponseCode"))
        {
            cur_parse_item = 0;
        } else
        if (s1.equals("MessageType"))
        {
            cur_parse_item = 0;
        } else
        if (s1.equals("ResponseCode"))
        {
            cur_parse_item = 0;
        } else
        if (s1.equals("ReplyMessage"))
        {
            cur_parse_item = 0;
        } else
        if (s1.equals("LoginResultsURL"))
        {
            cur_parse_item = 0;
        } else
        if (s1.equals("LogoffURL"))
        {
            cur_parse_item = 0;
        } else
        if (s1.equals("KeepAlive"))
        {
            cur_parse_item = 0;
        }
        if (true) goto _L4; else goto _L3
_L3:
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
        if (!s1.equals("Redirect")) goto _L2; else goto _L1
_L1:
        http_response_type = 1;
        b_isRedirect = true;
        mRedirect = new Redirect();
_L4:
        return;
_L2:
        if (s1.equals("AuthenticationReply"))
        {
            mAuthenticationReply = new AuthenticationReply();
            b_isAuthenticationReply = true;
            http_response_type = 2;
            return;
        }
        if (s1.equals("LogoffReply"))
        {
            http_response_type = 3;
            b_isLogoffReply = true;
            mLogoffReply = new LogoffReply();
            return;
        }
        if (!s1.equals("AccessProcedure"))
        {
            break; /* Loop/switch isn't completed */
        }
        if (http_response_type == 1 && mRedirect != null)
        {
            cur_parse_item = 6;
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!s1.equals("AccessLocation"))
        {
            break; /* Loop/switch isn't completed */
        }
        if (http_response_type == 1 && mRedirect != null)
        {
            cur_parse_item = 1;
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
        if (!s1.equals("LocationName"))
        {
            break; /* Loop/switch isn't completed */
        }
        if (http_response_type == 1 && mRedirect != null)
        {
            cur_parse_item = 2;
            return;
        }
        if (true) goto _L4; else goto _L6
_L6:
        if (!s1.equals("LoginURL"))
        {
            break; /* Loop/switch isn't completed */
        }
        if (http_response_type == 1 && mRedirect != null)
        {
            cur_parse_item = 3;
            return;
        }
        if (true) goto _L4; else goto _L7
_L7:
        if (!s1.equals("AbortLoginURL"))
        {
            break; /* Loop/switch isn't completed */
        }
        if (http_response_type == 1 && mRedirect != null)
        {
            cur_parse_item = 4;
            return;
        }
        if (true) goto _L4; else goto _L8
_L8:
        if (!s1.equals("MessageType"))
        {
            break; /* Loop/switch isn't completed */
        }
        if (http_response_type == 1 && mRedirect != null)
        {
            cur_parse_item = 5;
        }
        if (http_response_type == 2 && mAuthenticationReply != null)
        {
            cur_parse_item = 13;
        }
        if (http_response_type == 3 && mLogoffReply != null)
        {
            cur_parse_item = 8;
            return;
        }
        if (true) goto _L4; else goto _L9
_L9:
        if (!s1.equals("ResponseCode"))
        {
            break; /* Loop/switch isn't completed */
        }
        if (http_response_type == 1 && mRedirect != null)
        {
            cur_parse_item = 7;
        }
        if (http_response_type == 2 && mAuthenticationReply != null)
        {
            cur_parse_item = 14;
        }
        if (http_response_type == 3 && mLogoffReply != null)
        {
            cur_parse_item = 9;
            return;
        }
        if (true) goto _L4; else goto _L10
_L10:
        if (!s1.equals("ReplyMessage"))
        {
            break; /* Loop/switch isn't completed */
        }
        if (http_response_type == 2 && mAuthenticationReply != null)
        {
            cur_parse_item = 10;
            return;
        }
        if (true) goto _L4; else goto _L11
_L11:
        if (!s1.equals("LoginResultsURL"))
        {
            break; /* Loop/switch isn't completed */
        }
        if (http_response_type == 2 && mAuthenticationReply != null)
        {
            cur_parse_item = 11;
            return;
        }
        if (true) goto _L4; else goto _L12
_L12:
        if (!s1.equals("LogoffURL"))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (http_response_type != 2 || mAuthenticationReply == null) goto _L4; else goto _L13
_L13:
        cur_parse_item = 12;
        return;
        if (!s1.equals("KeepAlive") || http_response_type != 2 || mAuthenticationReply == null) goto _L4; else goto _L14
_L14:
        cur_parse_item = 15;
        return;
    }
}
