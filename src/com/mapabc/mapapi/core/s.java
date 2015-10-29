// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import java.net.Proxy;

// Referenced classes of package com.mapabc.mapapi.core:
//            t, o, MapAbcException

public abstract class s extends t
{
    protected static class a
    {

        public String a;
        public String b;
        public String c;
        public String d;
        public String e;
        public String f;
        public String g;
        public String h;
        public String i;
        public String j;
        public String k;
        public String l;
        public String m;
        public String n;
        public String o;
        public String p;
        public String q;
        public String r;
        public String s;
        public String t;
        public String u;
        public String v;

        public a()
        {
        }
    }


    protected static final String SERVER_RETURN_OK = "000000";
    protected String serverReturnCode;

    public s(Object obj, Proxy proxy, String s1, String s2, String s3)
    {
        super(obj, proxy, s1, s2, s3);
        initParams(obj);
    }

    protected boolean getRequestType()
    {
        return false;
    }

    protected String getUrl()
    {
        return o.a().e().trim();
    }

    protected a initPOIEntity(CommonProtoBuf.POI poi)
    {
        a a1 = new a();
        if (poi.hasPguid())
        {
            a1.a = poi.getPguid();
        }
        if (poi.hasName())
        {
            a1.b = poi.getName();
        }
        if (poi.hasType())
        {
            a1.c = poi.getType();
        }
        if (poi.hasX())
        {
            a1.d = poi.getX();
        }
        if (poi.hasY())
        {
            a1.e = poi.getY();
        }
        if (poi.hasSrctype())
        {
            a1.f = poi.getSrctype();
        }
        if (poi.hasAddress())
        {
            a1.g = poi.getAddress();
        }
        if (poi.hasTimestamp())
        {
            a1.h = poi.getTimestamp();
        }
        if (poi.hasMatch())
        {
            a1.i = poi.getMatch();
        }
        if (poi.hasCode())
        {
            a1.j = poi.getCode();
        }
        if (poi.hasNewtype())
        {
            a1.k = poi.getNewtype();
        }
        if (poi.hasCitycode())
        {
            a1.l = poi.getCitycode();
        }
        if (poi.hasTypecode())
        {
            a1.m = poi.getTypecode();
        }
        if (poi.hasGridcode())
        {
            a1.n = poi.getGridcode();
        }
        if (poi.hasBuscode())
        {
            a1.o = poi.getBuscode();
        }
        if (poi.hasUrl())
        {
            a1.p = poi.getUrl();
        }
        if (poi.hasXml())
        {
            a1.q = poi.getXml();
        }
        if (poi.hasImageid())
        {
            a1.r = poi.getImageid();
        }
        if (poi.hasTel())
        {
            a1.s = poi.getTel();
        }
        if (poi.hasLinkid())
        {
            a1.t = poi.getLinkid();
        }
        if (poi.hasDistance())
        {
            a1.u = poi.getDistance();
        }
        if (poi.hasDrivedistance())
        {
            a1.v = poi.getDrivedistance();
        }
        return a1;
    }

    protected abstract void initParams(Object obj);

    protected abstract boolean parseProtoBufResponse(byte abyte0[])
        throws MapAbcException;

    protected void throwsProtoBufferMapAbcException()
        throws MapAbcException
    {
        if ("000001".equals(serverReturnCode))
        {
            throw new MapAbcException("\u65E0\u67E5\u8BE2\u7ED3\u679C-000001");
        }
        if ("000002".equals(serverReturnCode))
        {
            throw new MapAbcException("\u8C03\u7528\u670D\u52A1\u53D1\u751F\u5F02\u5E38-000002");
        }
        if ("010001".equals(serverReturnCode))
        {
            throw new MapAbcException("\u975E\u6CD5\u5750\u6807\u683C\u5F0F-010001");
        }
        if ("010002".equals(serverReturnCode))
        {
            throw new MapAbcException("\u5B57\u7B26\u96C6\u7F16\u7801\u9519\u8BEF-010002");
        }
        if ("010003".equals(serverReturnCode))
        {
            throw new MapAbcException("Apikey\u4E3A\u7A7A-010003");
        }
        if ("020000".equals(serverReturnCode))
        {
            throw new MapAbcException("\u4EA7\u54C1\u672A\u6388\u6743-020000");
        }
        if ("020001".equals(serverReturnCode))
        {
            throw new MapAbcException("Apikey\u4E0D\u6B63\u786E-020001");
        }
        if ("020002".equals(serverReturnCode))
        {
            throw new MapAbcException("Api\u8D26\u53F7\u4E0D\u5B58\u5728-020002");
        }
        if ("020003".equals(serverReturnCode))
        {
            throw new MapAbcException("\u6CA1\u6709\u670D\u52A1\u8BBF\u95EE\u6743\u9650-020003");
        }
        if ("020004".equals(serverReturnCode))
        {
            throw new MapAbcException("IP\u9A8C\u8BC1\u5931\u8D25-020004");
        }
        if ("020005".equals(serverReturnCode))
        {
            throw new MapAbcException("\u57CE\u5E02\u9A8C\u8BC1\u5931\u8D25-020005");
        }
        if ("020006".equals(serverReturnCode))
        {
            throw new MapAbcException("\u57FA\u7840\u6A21\u578B\u9A8C\u8BC1\u5931\u8D25-020006");
        }
        if ("020007".equals(serverReturnCode))
        {
            throw new MapAbcException("\u7F51\u5361\u5730\u5740\u4E0D\u5339\u914D-020007");
        }
        if ("020008".equals(serverReturnCode))
        {
            throw new MapAbcException("license\u914D\u7F6E\u9519\u8BEF-020008");
        }
        if ("020009".equals(serverReturnCode))
        {
            throw new MapAbcException("\u57CE\u5E02\u53F7\u4E0D\u5339\u914D-020009");
        }
        if ("020010".equals(serverReturnCode))
        {
            throw new MapAbcException("\u5934\u6587\u4EF6\u4E0D\u5339\u914D-020010");
        }
        if ("020011".equals(serverReturnCode))
        {
            throw new MapAbcException("\u8BF7\u6C42\u6570\u8D85\u51FA\u6700\u5927\u8303\u56F4-020011");
        }
        if ("030001".equals(serverReturnCode))
        {
            throw new MapAbcException("\u7F13\u5B58\u670D\u52A1\u5668\u5F02\u5E38-030001");
        }
        if ("040001".equals(serverReturnCode))
        {
            throw new MapAbcException("\u67E5\u8BE2\u670D\u52A1\u8FDE\u63A5\u5F02\u5E38-040001");
        }
        if ("040002".equals(serverReturnCode))
        {
            throw new MapAbcException("\u67E5\u8BE2\u670D\u52A1\u8FD4\u56DE\u683C\u5F0F\u89E3\u6790\u5F02\u5E38-040002");
        }
        if ("050001".equals(serverReturnCode))
        {
            throw new MapAbcException("\u5F53\u524D\u683C\u5F0F\u4E0D\u652F\u6301-050001");
        } else
        {
            throw new MapAbcException("\u672A\u77E5\u7684\u9519\u8BEF");
        }
    }
}
