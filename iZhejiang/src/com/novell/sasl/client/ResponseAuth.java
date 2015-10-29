// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.novell.sasl.client;

import java.util.Iterator;
import org.apache.harmony.javax.security.sasl.SaslException;

// Referenced classes of package com.novell.sasl.client:
//            DirectiveList, ParsedDirective

class ResponseAuth
{

    private String m_responseValue;

    ResponseAuth(byte abyte0[])
        throws SaslException
    {
        m_responseValue = null;
        abyte0 = new DirectiveList(abyte0);
        try
        {
            abyte0.parseDirectives();
            checkSemantics(abyte0);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return;
        }
    }

    void checkSemantics(DirectiveList directivelist)
        throws SaslException
    {
        directivelist = directivelist.getIterator();
        do
        {
            do
            {
                ParsedDirective parseddirective;
                if (!directivelist.hasNext())
                {
                    if (m_responseValue == null)
                    {
                        throw new SaslException("Missing response-auth directive.");
                    } else
                    {
                        return;
                    }
                }
                parseddirective = (ParsedDirective)directivelist.next();
            } while (!parseddirective.getName().equals("rspauth"));
            m_responseValue = parseddirective.getValue();
        } while (true);
    }

    public String getResponseValue()
    {
        return m_responseValue;
    }
}
