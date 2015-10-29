// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util;


// Referenced classes of package org.jivesoftware.smack.util:
//            DNSUtil

public static class <init>
{

    private String host;
    private int port;

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof <init>))
            {
                return false;
            }
            obj = (<init>)obj;
            if (!host.equals(((host) (obj)).host))
            {
                return false;
            }
            if (port != ((port) (obj)).port)
            {
                return false;
            }
        }
        return true;
    }

    public String getHost()
    {
        return host;
    }

    public int getPort()
    {
        return port;
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(host))).append(":").append(port).toString();
    }

    private (String s, int i)
    {
        host = s;
        port = i;
    }

    port(String s, int i, port port1)
    {
        this(s, i);
    }
}
