// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


// Referenced classes of package org.jivesoftware.smack.packet:
//            XMPPError

public static class value
{

    public static final value bad_request = new <init>("bad-request");
    public static final <init> conflict = new <init>("conflict");
    public static final <init> feature_not_implemented = new <init>("feature-not-implemented");
    public static final <init> forbidden = new <init>("forbidden");
    public static final <init> gone = new <init>("gone");
    public static final <init> interna_server_error = new <init>("internal-server-error");
    public static final <init> item_not_found = new <init>("item-not-found");
    public static final <init> jid_malformed = new <init>("jid-malformed");
    public static final <init> no_acceptable = new <init>("not-acceptable");
    public static final <init> not_allowed = new <init>("not-allowed");
    public static final <init> not_authorized = new <init>("not-authorized");
    public static final <init> payment_required = new <init>("payment-required");
    public static final <init> recipient_unavailable = new <init>("recipient-unavailable");
    public static final <init> redirect = new <init>("redirect");
    public static final <init> registration_required = new <init>("registration-required");
    public static final <init> remote_server_error = new <init>("remote-server-error");
    public static final <init> remote_server_not_found = new <init>("remote-server-not-found");
    public static final <init> remote_server_timeout = new <init>("remote-server-timeout");
    public static final <init> request_timeout = new <init>("request-timeout");
    public static final <init> resource_constraint = new <init>("resource-constraint");
    public static final <init> service_unavailable = new <init>("service-unavailable");
    public static final <init> subscription_required = new <init>("subscription-required");
    public static final <init> undefined_condition = new <init>("undefined-condition");
    public static final <init> unexpected_request = new <init>("unexpected-request");
    private String value;

    public String toString()
    {
        return value;
    }



    public (String s)
    {
        value = s;
    }
}
