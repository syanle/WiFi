// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import org.jivesoftware.smack.packet.IQ;

public class NotificationIQ extends IQ
{

    private String apiKey;
    private String id;
    private String message;
    private String push_type;
    private String title;
    private String uri;

    public NotificationIQ()
    {
    }

    public String getApiKey()
    {
        return apiKey;
    }

    public String getChildElementXML()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<").append("notification").append(" xmlns=\"").append("androidpn:iq:notification").append("\">");
        if (id != null)
        {
            stringbuilder.append("<id>").append(id).append("</id>");
        }
        stringbuilder.append("</").append("notification").append("> ");
        return stringbuilder.toString();
    }

    public String getId()
    {
        return id;
    }

    public String getMessage()
    {
        return message;
    }

    public String getPushType()
    {
        return push_type;
    }

    public String getTitle()
    {
        return title;
    }

    public String getUri()
    {
        return uri;
    }

    public void setApiKey(String s)
    {
        apiKey = s;
    }

    public void setId(String s)
    {
        id = s;
    }

    public void setMessage(String s)
    {
        message = s;
    }

    public void setPushType(String s)
    {
        push_type = s;
    }

    public void setTitle(String s)
    {
        title = s;
    }

    public void setUri(String s)
    {
        uri = s;
    }
}
