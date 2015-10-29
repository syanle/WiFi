// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;

import java.io.Serializable;
import org.jivesoftware.smack.util.StringUtils;

// Referenced classes of package org.jivesoftware.smack.packet:
//            Packet, XMPPError

public abstract class IQ extends Packet
    implements Serializable
{
    public static class Type
        implements Serializable
    {

        public static final Type ERROR = new Type("error");
        public static final Type GET = new Type("get");
        public static final Type RESULT = new Type("result");
        public static final Type SET = new Type("set");
        private String value;

        public static Type fromString(String s)
        {
            if (s != null)
            {
                s = s.toLowerCase();
                if (GET.toString().equals(s))
                {
                    return GET;
                }
                if (SET.toString().equals(s))
                {
                    return SET;
                }
                if (ERROR.toString().equals(s))
                {
                    return ERROR;
                }
                if (RESULT.toString().equals(s))
                {
                    return RESULT;
                }
            }
            return null;
        }

        public String toString()
        {
            return value;
        }


        private Type(String s)
        {
            value = s;
        }
    }


    private static final long serialVersionUID = 2L;
    private Type type;

    public IQ()
    {
        type = Type.GET;
    }

    public static IQ createErrorResponse(final IQ request, XMPPError xmpperror)
    {
        if (request.getType() != Type.GET && request.getType() != Type.SET)
        {
            throw new IllegalArgumentException((new StringBuilder("IQ must be of type 'set' or 'get'. Original IQ: ")).append(request.toXML()).toString());
        } else
        {
            IQ iq = new IQ() {

                private final IQ val$request;

                public String getChildElementXML()
                {
                    return request.getChildElementXML();
                }

            
            {
                request = iq;
                super();
            }
            };
            iq.setType(Type.ERROR);
            iq.setPacketID(request.getPacketID());
            iq.setFrom(request.getTo());
            iq.setTo(request.getFrom());
            iq.setError(xmpperror);
            return iq;
        }
    }

    public static IQ createResultIQ(IQ iq)
    {
        if (iq.getType() != Type.GET && iq.getType() != Type.SET)
        {
            throw new IllegalArgumentException((new StringBuilder("IQ must be of type 'set' or 'get'. Original IQ: ")).append(iq.toXML()).toString());
        } else
        {
            IQ iq1 = new IQ() {

                public String getChildElementXML()
                {
                    return null;
                }

            };
            iq1.setType(Type.RESULT);
            iq1.setPacketID(iq.getPacketID());
            iq1.setFrom(iq.getTo());
            iq1.setTo(iq.getFrom());
            return iq1;
        }
    }

    public abstract String getChildElementXML();

    public Type getType()
    {
        return type;
    }

    public void setType(Type type1)
    {
        if (type1 == null)
        {
            type = Type.GET;
            return;
        } else
        {
            type = type1;
            return;
        }
    }

    public String toXML()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<iq ");
        if (getPacketID() != null)
        {
            stringbuilder.append((new StringBuilder("id=\"")).append(getPacketID()).append("\" ").toString());
        }
        if (getTo() != null)
        {
            stringbuilder.append("to=\"").append(StringUtils.escapeForXML(getTo())).append("\" ");
        }
        if (getFrom() != null)
        {
            stringbuilder.append("from=\"").append(StringUtils.escapeForXML(getFrom())).append("\" ");
        }
        Object obj;
        if (type == null)
        {
            stringbuilder.append("type=\"get\">");
        } else
        {
            stringbuilder.append("type=\"").append(getType()).append("\">");
        }
        obj = getChildElementXML();
        if (obj != null)
        {
            stringbuilder.append(((String) (obj)));
        }
        obj = getError();
        if (obj != null)
        {
            stringbuilder.append(((XMPPError) (obj)).toXML());
        }
        stringbuilder.append("</iq>");
        return stringbuilder.toString();
    }
}
