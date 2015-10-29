// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package org.jivesoftware.smack.packet:
//            PacketExtension

public class XMPPError
{
    public static class Condition
    {

        public static final Condition bad_request = new Condition("bad-request");
        public static final Condition conflict = new Condition("conflict");
        public static final Condition feature_not_implemented = new Condition("feature-not-implemented");
        public static final Condition forbidden = new Condition("forbidden");
        public static final Condition gone = new Condition("gone");
        public static final Condition interna_server_error = new Condition("internal-server-error");
        public static final Condition item_not_found = new Condition("item-not-found");
        public static final Condition jid_malformed = new Condition("jid-malformed");
        public static final Condition no_acceptable = new Condition("not-acceptable");
        public static final Condition not_allowed = new Condition("not-allowed");
        public static final Condition not_authorized = new Condition("not-authorized");
        public static final Condition payment_required = new Condition("payment-required");
        public static final Condition recipient_unavailable = new Condition("recipient-unavailable");
        public static final Condition redirect = new Condition("redirect");
        public static final Condition registration_required = new Condition("registration-required");
        public static final Condition remote_server_error = new Condition("remote-server-error");
        public static final Condition remote_server_not_found = new Condition("remote-server-not-found");
        public static final Condition remote_server_timeout = new Condition("remote-server-timeout");
        public static final Condition request_timeout = new Condition("request-timeout");
        public static final Condition resource_constraint = new Condition("resource-constraint");
        public static final Condition service_unavailable = new Condition("service-unavailable");
        public static final Condition subscription_required = new Condition("subscription-required");
        public static final Condition undefined_condition = new Condition("undefined-condition");
        public static final Condition unexpected_request = new Condition("unexpected-request");
        private String value;

        public String toString()
        {
            return value;
        }



        public Condition(String s)
        {
            value = s;
        }
    }

    private static class ErrorSpecification
    {

        private static Map instances = errorSpecifications();
        private int code;
        private Condition condition;
        private Type type;

        private static Map errorSpecifications()
        {
            HashMap hashmap = new HashMap(22);
            hashmap.put(Condition.interna_server_error, new ErrorSpecification(Condition.interna_server_error, Type.WAIT, 500));
            hashmap.put(Condition.forbidden, new ErrorSpecification(Condition.forbidden, Type.AUTH, 403));
            hashmap.put(Condition.bad_request, new ErrorSpecification(Condition.bad_request, Type.MODIFY, 400));
            hashmap.put(Condition.item_not_found, new ErrorSpecification(Condition.item_not_found, Type.CANCEL, 404));
            hashmap.put(Condition.conflict, new ErrorSpecification(Condition.conflict, Type.CANCEL, 409));
            hashmap.put(Condition.feature_not_implemented, new ErrorSpecification(Condition.feature_not_implemented, Type.CANCEL, 501));
            hashmap.put(Condition.gone, new ErrorSpecification(Condition.gone, Type.MODIFY, 302));
            hashmap.put(Condition.jid_malformed, new ErrorSpecification(Condition.jid_malformed, Type.MODIFY, 400));
            hashmap.put(Condition.no_acceptable, new ErrorSpecification(Condition.no_acceptable, Type.MODIFY, 406));
            hashmap.put(Condition.not_allowed, new ErrorSpecification(Condition.not_allowed, Type.CANCEL, 405));
            hashmap.put(Condition.not_authorized, new ErrorSpecification(Condition.not_authorized, Type.AUTH, 401));
            hashmap.put(Condition.payment_required, new ErrorSpecification(Condition.payment_required, Type.AUTH, 402));
            hashmap.put(Condition.recipient_unavailable, new ErrorSpecification(Condition.recipient_unavailable, Type.WAIT, 404));
            hashmap.put(Condition.redirect, new ErrorSpecification(Condition.redirect, Type.MODIFY, 302));
            hashmap.put(Condition.registration_required, new ErrorSpecification(Condition.registration_required, Type.AUTH, 407));
            hashmap.put(Condition.remote_server_not_found, new ErrorSpecification(Condition.remote_server_not_found, Type.CANCEL, 404));
            hashmap.put(Condition.remote_server_timeout, new ErrorSpecification(Condition.remote_server_timeout, Type.WAIT, 504));
            hashmap.put(Condition.remote_server_error, new ErrorSpecification(Condition.remote_server_error, Type.CANCEL, 502));
            hashmap.put(Condition.resource_constraint, new ErrorSpecification(Condition.resource_constraint, Type.WAIT, 500));
            hashmap.put(Condition.service_unavailable, new ErrorSpecification(Condition.service_unavailable, Type.CANCEL, 503));
            hashmap.put(Condition.subscription_required, new ErrorSpecification(Condition.subscription_required, Type.AUTH, 407));
            hashmap.put(Condition.undefined_condition, new ErrorSpecification(Condition.undefined_condition, Type.WAIT, 500));
            hashmap.put(Condition.unexpected_request, new ErrorSpecification(Condition.unexpected_request, Type.WAIT, 400));
            hashmap.put(Condition.request_timeout, new ErrorSpecification(Condition.request_timeout, Type.CANCEL, 408));
            return hashmap;
        }

        protected static ErrorSpecification specFor(Condition condition1)
        {
            return (ErrorSpecification)instances.get(condition1);
        }

        protected int getCode()
        {
            return code;
        }

        protected Condition getCondition()
        {
            return condition;
        }

        protected Type getType()
        {
            return type;
        }


        private ErrorSpecification(Condition condition1, Type type1, int i)
        {
            code = i;
            type = type1;
            condition = condition1;
        }
    }

    public static final class Type extends Enum
    {

        public static final Type AUTH;
        public static final Type CANCEL;
        public static final Type CONTINUE;
        private static final Type ENUM$VALUES[];
        public static final Type MODIFY;
        public static final Type WAIT;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(org/jivesoftware/smack/packet/XMPPError$Type, s);
        }

        public static Type[] values()
        {
            Type atype[] = ENUM$VALUES;
            int i = atype.length;
            Type atype1[] = new Type[i];
            System.arraycopy(atype, 0, atype1, 0, i);
            return atype1;
        }

        static 
        {
            WAIT = new Type("WAIT", 0);
            CANCEL = new Type("CANCEL", 1);
            MODIFY = new Type("MODIFY", 2);
            AUTH = new Type("AUTH", 3);
            CONTINUE = new Type("CONTINUE", 4);
            ENUM$VALUES = (new Type[] {
                WAIT, CANCEL, MODIFY, AUTH, CONTINUE
            });
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


    private List applicationExtensions;
    private int code;
    private String condition;
    private String message;
    private Type type;

    public XMPPError(int i)
    {
        applicationExtensions = null;
        code = i;
        message = null;
    }

    public XMPPError(int i, String s)
    {
        applicationExtensions = null;
        code = i;
        message = s;
    }

    public XMPPError(int i, Type type1, String s, String s1, List list)
    {
        applicationExtensions = null;
        code = i;
        type = type1;
        condition = s;
        message = s1;
        applicationExtensions = list;
    }

    public XMPPError(Condition condition1)
    {
        applicationExtensions = null;
        init(condition1);
        message = null;
    }

    public XMPPError(Condition condition1, String s)
    {
        applicationExtensions = null;
        init(condition1);
        message = s;
    }

    private void init(Condition condition1)
    {
        ErrorSpecification errorspecification = ErrorSpecification.specFor(condition1);
        condition = condition1.value;
        if (errorspecification != null)
        {
            type = errorspecification.getType();
            code = errorspecification.getCode();
        }
    }

    public void addExtension(PacketExtension packetextension)
    {
        this;
        JVM INSTR monitorenter ;
        if (applicationExtensions == null)
        {
            applicationExtensions = new ArrayList();
        }
        applicationExtensions.add(packetextension);
        this;
        JVM INSTR monitorexit ;
        return;
        packetextension;
        throw packetextension;
    }

    public int getCode()
    {
        return code;
    }

    public String getCondition()
    {
        return condition;
    }

    public PacketExtension getExtension(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = applicationExtensions;
        if (obj != null && s != null && s1 != null) goto _L2; else goto _L1
_L1:
        s = null;
_L7:
        this;
        JVM INSTR monitorexit ;
        return s;
_L2:
        Iterator iterator = applicationExtensions.iterator();
_L4:
        if (!iterator.hasNext())
        {
            s = null;
            continue; /* Loop/switch isn't completed */
        }
        obj = (PacketExtension)iterator.next();
        if (!s.equals(((PacketExtension) (obj)).getElementName())) goto _L4; else goto _L3
_L3:
        boolean flag = s1.equals(((PacketExtension) (obj)).getNamespace());
        if (!flag) goto _L4; else goto _L5
_L5:
        s = ((String) (obj));
        if (true) goto _L7; else goto _L6
_L6:
        s;
        throw s;
    }

    public List getExtensions()
    {
        this;
        JVM INSTR monitorenter ;
        if (applicationExtensions != null) goto _L2; else goto _L1
_L1:
        List list = Collections.emptyList();
_L4:
        this;
        JVM INSTR monitorexit ;
        return list;
_L2:
        list = Collections.unmodifiableList(applicationExtensions);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public String getMessage()
    {
        return message;
    }

    public Type getType()
    {
        return type;
    }

    public void setExtension(List list)
    {
        this;
        JVM INSTR monitorenter ;
        applicationExtensions = list;
        this;
        JVM INSTR monitorexit ;
        return;
        list;
        throw list;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (condition != null)
        {
            stringbuilder.append(condition);
        }
        stringbuilder.append("(").append(code).append(")");
        if (message != null)
        {
            stringbuilder.append(" ").append(message);
        }
        return stringbuilder.toString();
    }

    public String toXML()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<error code=\"").append(code).append("\"");
        if (type != null)
        {
            stringbuilder.append(" type=\"");
            stringbuilder.append(type.name());
            stringbuilder.append("\"");
        }
        stringbuilder.append(">");
        if (condition != null)
        {
            stringbuilder.append("<").append(condition);
            stringbuilder.append(" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\"/>");
        }
        if (message != null)
        {
            stringbuilder.append("<text xml:lang=\"en\" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\">");
            stringbuilder.append(message);
            stringbuilder.append("</text>");
        }
        Iterator iterator = getExtensions().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                stringbuilder.append("</error>");
                return stringbuilder.toString();
            }
            stringbuilder.append(((PacketExtension)iterator.next()).toXML());
        } while (true);
    }
}
