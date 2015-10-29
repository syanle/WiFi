// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import com.google.protobuf.InvalidProtocolBufferException;
import java.io.IOException;
import java.io.InputStream;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.core:
//            s, MapAbcException, i

public class k extends s
{
    static class a
    {

        public String a;
        public String b;
        public String c;

        a()
        {
        }
    }

    static class b
    {

        public List a;

        b()
        {
            a = new ArrayList();
        }
    }


    private b a;
    private GeoPoint.b b;

    public k(GeoPoint.b b1, Proxy proxy, String s1, String s2, String s3)
    {
        super(b1, proxy, s1, s2, s3);
        b = b1;
    }

    protected GeoPoint.b a(InputStream inputstream)
        throws MapAbcException
    {
        if (parseProtoBufResponse(i.a(inputstream)))
        {
            int l = a.a.size();
            for (int j = 0; j < l; j++)
            {
                a a1 = (a)a.a.get(j);
                b.a = Double.parseDouble(a1.a);
                b.b = Double.parseDouble(a1.b);
            }

        }
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                throw new MapAbcException("IO \u64CD\u4F5C\u5F02\u5E38 - IOException");
            }
        }
        return b;
    }

    protected void a(GeoPoint.b b1)
    {
    }

    protected String[] getRequestLines()
    {
        return null;
    }

    protected int getServiceCode()
    {
        return 0;
    }

    protected volatile void initParams(Object obj)
    {
        a((GeoPoint.b)obj);
    }

    protected volatile Object loadData(InputStream inputstream)
        throws MapAbcException
    {
        return a(inputstream);
    }

    protected byte[] makePostRequestBytes()
    {
        byte abyte0[] = i.a(1837);
        RGCProtoBuf.RGCRequest.Builder builder = RGCProtoBuf.RGCRequest.newBuilder();
        Object obj = CommonProtoBuf.Common.newBuilder();
        ((CommonProtoBuf.Common.Builder) (obj)).setConfig("RGC");
        ((CommonProtoBuf.Common.Builder) (obj)).setAK(mKey);
        ((CommonProtoBuf.Common.Builder) (obj)).setResType("buf");
        ((CommonProtoBuf.Common.Builder) (obj)).setEnc("UTF-8");
        builder.setCommon(((CommonProtoBuf.Common.Builder) (obj)));
        obj = new StringBuilder();
        ((StringBuilder) (obj)).append(String.format("%f", new Object[] {
            Double.valueOf(((GeoPoint.b)task).a)
        })).append(",").append(String.format("%f", new Object[] {
            Double.valueOf(((GeoPoint.b)task).b)
        }));
        builder.setCoors(((StringBuilder) (obj)).toString());
        builder.setFlag(String.valueOf(true));
        byte abyte1[] = builder.build().toByteArray();
        byte abyte2[] = new byte[abyte0.length + abyte1.length];
        System.arraycopy(abyte0, 0, abyte2, 0, abyte0.length);
        System.arraycopy(abyte1, 0, abyte2, abyte0.length, abyte1.length);
        return abyte2;
    }

    protected boolean parseProtoBufResponse(byte abyte0[])
        throws MapAbcException
    {
        a = new b();
        byte abyte1[] = new byte[4];
        System.arraycopy(abyte0, 0, abyte1, 0, 4);
        int j = i.a(abyte1);
        abyte1 = new byte[j];
        System.arraycopy(abyte0, 4, abyte1, 0, j);
        serverReturnCode = new String(abyte1);
        if ("000000".equals(serverReturnCode))
        {
            byte abyte2[] = new byte[abyte0.length - 4 - j];
            System.arraycopy(abyte0, j + 4, abyte2, 0, abyte2.length);
            try
            {
                abyte0 = RGCProtoBuf.RGCResponse.parseFrom(abyte2);
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new MapAbcException("protobuf\u89E3\u6790\u9519\u8BEF - InvalidProtocolBufferException");
            }
            if (abyte0.getRgcItemCount() > 0)
            {
                abyte0 = abyte0.getRgcItemList();
                int i1 = abyte0.size();
                for (int l = 0; l < i1; l++)
                {
                    RGCProtoBuf.RGCItem rgcitem = (RGCProtoBuf.RGCItem)abyte0.get(l);
                    a a1 = new a();
                    if (rgcitem.hasX())
                    {
                        a1.a = rgcitem.getX();
                    }
                    if (rgcitem.hasY())
                    {
                        a1.b = rgcitem.getY();
                    }
                    if (rgcitem.hasGridcode())
                    {
                        a1.c = rgcitem.getGridcode();
                    }
                    a.a.add(a1);
                }

            }
            return true;
        } else
        {
            throwsProtoBufferMapAbcException();
            return false;
        }
    }
}
