// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.proxy;


// Referenced classes of package org.jivesoftware.smack.proxy:
//            ProxyInfo

public static final class  extends Enum
{

    private static final SOCKS5 ENUM$VALUES[];
    public static final SOCKS5 HTTP;
    public static final SOCKS5 NONE;
    public static final SOCKS5 SOCKS4;
    public static final SOCKS5 SOCKS5;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/jivesoftware/smack/proxy/ProxyInfo$ProxyType, s);
    }

    public static [] values()
    {
         a[] = ENUM$VALUES;
        int i = a.length;
         a1[] = new ENUM.VALUES[i];
        System.arraycopy(a, 0, a1, 0, i);
        return a1;
    }

    static 
    {
        NONE = new <init>("NONE", 0);
        HTTP = new <init>("HTTP", 1);
        SOCKS4 = new <init>("SOCKS4", 2);
        SOCKS5 = new <init>("SOCKS5", 3);
        ENUM$VALUES = (new ENUM.VALUES[] {
            NONE, HTTP, SOCKS4, SOCKS5
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
