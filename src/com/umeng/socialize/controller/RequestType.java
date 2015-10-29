// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;


// Referenced classes of package com.umeng.socialize.controller:
//            f, g, h

public class RequestType extends Enum
{

    public static final RequestType ANALYTICS;
    public static final RequestType API;
    public static final RequestType SOCIAL;
    private static final RequestType a[];

    private RequestType(String s, int i)
    {
        super(s, i);
    }

    RequestType(String s, int i, RequestType requesttype)
    {
        this(s, i);
    }

    public static RequestType valueOf(String s)
    {
        return (RequestType)Enum.valueOf(com/umeng/socialize/controller/RequestType, s);
    }

    public static RequestType[] values()
    {
        RequestType arequesttype[] = a;
        int i = arequesttype.length;
        RequestType arequesttype1[] = new RequestType[i];
        System.arraycopy(arequesttype, 0, arequesttype1, 0, i);
        return arequesttype1;
    }

    static 
    {
        SOCIAL = new f("SOCIAL", 0);
        ANALYTICS = new g("ANALYTICS", 1);
        API = new h("API", 2);
        a = (new RequestType[] {
            SOCIAL, ANALYTICS, API
        });
    }
}
