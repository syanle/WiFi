// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.geocoder;

import android.location.Address;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mapabc.mapapi.core.MapAbcException;
import com.mapabc.mapapi.core.e;
import com.mapabc.mapapi.core.i;
import com.mapabc.mapapi.core.r;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Proxy;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.geocoder:
//            b

public class GeocodingProtoBufHandler extends r
{
    static class a
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
        public List t;

        a()
        {
            t = new ArrayList();
        }
    }

    static class b
    {

        public int a;
        public List b;
        public List c;

        b()
        {
            b = new ArrayList();
            c = new ArrayList();
        }
    }

    static class c
    {

        public String a;
        public String b;
        public String c;
        public String d;

        c()
        {
        }
    }


    private static final int GEOCODING_SERVER_CODE = 1848;
    private b geocodingResponse;

    public GeocodingProtoBufHandler(com.mapabc.mapapi.geocoder.b b1, Proxy proxy, String s, String s1, String s2)
    {
        super(b1, proxy, s, s1, s2);
    }

    private ArrayList makeAddresses()
        throws MapAbcException
    {
        List list;
        ArrayList arraylist;
        int j;
        int k;
        list = geocodingResponse.b;
        arraylist = new ArrayList();
        if (list.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_215;
        }
        k = list.size();
        j = 0;
_L3:
        if (j >= k) goto _L2; else goto _L1
_L1:
        a a1 = (a)list.get(j);
        Address address = e.d();
        address.setAddressLine(0, a1.a);
        address.setAdminArea(a1.f);
        address.setLocality(a1.g);
        Method method;
        try
        {
            method = address.getClass().getMethod("setSubLocality", new Class[] {
                java/lang/String
            });
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            throw new MapAbcException("\u6CA1\u6709\u627E\u5230\u8C03\u7528\u65B9\u6CD5 - NoSuchMethodException");
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new MapAbcException("\u53CD\u5C04\u9519\u8BEF - InvocationTargetException");
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new MapAbcException("\u53CD\u5C04\u9519\u8BEF - InvocationTargetException");
        }
        if (method == null)
        {
            break MISSING_BLOCK_LABEL_133;
        }
        method.invoke(address, new Object[] {
            a1.i
        });
        address.setFeatureName(a1.e);
        address.setLongitude(Double.parseDouble(a1.c));
        address.setLatitude(Double.parseDouble(a1.d));
        arraylist.add(address);
        j++;
          goto _L3
_L2:
        return arraylist;
    }

    public b getGeocodingResponse()
    {
        return geocodingResponse;
    }

    protected String[] getRequestLines()
    {
        return null;
    }

    protected int getServiceCode()
    {
        return 0;
    }

    protected void initParams(com.mapabc.mapapi.geocoder.b b1)
    {
        b1.a = "GOC";
        b1.d = mKey;
        b1.b = "buf";
        b1.c = "UTF-8";
        b1.g = "2";
    }

    protected volatile void initParams(Object obj)
    {
        initParams((com.mapabc.mapapi.geocoder.b)obj);
    }

    protected volatile Object loadData(InputStream inputstream)
        throws MapAbcException
    {
        return loadData(inputstream);
    }

    protected ArrayList loadData(InputStream inputstream)
        throws MapAbcException
    {
        boolean flag = parseProtoBufResponse(i.a(inputstream));
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
        if (flag)
        {
            return makeAddresses();
        } else
        {
            return new ArrayList();
        }
    }

    protected byte[] makePostRequestBytes()
    {
        byte abyte0[] = i.a(1848);
        GeocodingProtoBuf.GeocodingRequest.Builder builder = GeocodingProtoBuf.GeocodingRequest.newBuilder();
        Object obj = com.mapabc.mapapi.core.CommonProtoBuf.Common.newBuilder();
        ((com.mapabc.mapapi.core.CommonProtoBuf.Common.Builder) (obj)).setConfig(((com.mapabc.mapapi.geocoder.b)task).a);
        ((com.mapabc.mapapi.core.CommonProtoBuf.Common.Builder) (obj)).setAK(((com.mapabc.mapapi.geocoder.b)task).d);
        ((com.mapabc.mapapi.core.CommonProtoBuf.Common.Builder) (obj)).setResType(((com.mapabc.mapapi.geocoder.b)task).b);
        ((com.mapabc.mapapi.core.CommonProtoBuf.Common.Builder) (obj)).setEnc(((com.mapabc.mapapi.geocoder.b)task).c);
        builder.setCommon(((com.mapabc.mapapi.core.CommonProtoBuf.Common.Builder) (obj)));
        byte abyte1[];
        try
        {
            obj = URLEncoder.encode(((com.mapabc.mapapi.geocoder.b)task).e, "GBK");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            unsupportedencodingexception.printStackTrace();
            unsupportedencodingexception = null;
        }
        builder.setAddress(((String) (obj)));
        builder.setPoiNumber(String.valueOf(((com.mapabc.mapapi.geocoder.b)task).f));
        builder.setVer(((com.mapabc.mapapi.geocoder.b)task).g);
        obj = builder.build().toByteArray();
        abyte1 = new byte[abyte0.length + obj.length];
        System.arraycopy(abyte0, 0, abyte1, 0, abyte0.length);
        System.arraycopy(obj, 0, abyte1, abyte0.length, obj.length);
        return abyte1;
    }

    protected boolean parseProtoBufResponse(byte abyte0[])
        throws MapAbcException
    {
        geocodingResponse = new b();
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
                abyte0 = GeocodingProtoBuf.GeocodingResponse.parseFrom(abyte2);
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new MapAbcException("protobuf\u89E3\u6790\u9519\u8BEF - InvalidProtocolBufferException");
            }
            if (abyte0.hasCount())
            {
                geocodingResponse.a = abyte0.getCount();
            }
            if (abyte0.hasSpellcorrect())
            {
                geocodingResponse.c = abyte0.getSpellcorrect().getDataList();
            }
            if (abyte0.hasGeocoding())
            {
                abyte0 = abyte0.getGeocoding().getPoiList();
                int i1 = abyte0.size();
                for (int k = 0; k < i1; k++)
                {
                    a a1 = new a();
                    Object obj = (GeocodingProtoBuf.GeoPOI)abyte0.get(k);
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasName())
                    {
                        a1.a = ((GeocodingProtoBuf.GeoPOI) (obj)).getName();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasLevel())
                    {
                        a1.b = ((GeocodingProtoBuf.GeoPOI) (obj)).getLevel();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasX())
                    {
                        a1.c = ((GeocodingProtoBuf.GeoPOI) (obj)).getX();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasY())
                    {
                        a1.d = ((GeocodingProtoBuf.GeoPOI) (obj)).getY();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasAddress())
                    {
                        a1.e = ((GeocodingProtoBuf.GeoPOI) (obj)).getAddress();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasProvince())
                    {
                        a1.f = ((GeocodingProtoBuf.GeoPOI) (obj)).getProvince();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasCity())
                    {
                        a1.g = ((GeocodingProtoBuf.GeoPOI) (obj)).getCity();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasEname())
                    {
                        a1.h = ((GeocodingProtoBuf.GeoPOI) (obj)).getEname();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasDistrict())
                    {
                        a1.i = ((GeocodingProtoBuf.GeoPOI) (obj)).getDistrict();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasRange())
                    {
                        a1.j = ((GeocodingProtoBuf.GeoPOI) (obj)).getRange();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasNum())
                    {
                        a1.k = ((GeocodingProtoBuf.GeoPOI) (obj)).getNum();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasInum())
                    {
                        a1.l = ((GeocodingProtoBuf.GeoPOI) (obj)).getInum();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasProx())
                    {
                        a1.m = ((GeocodingProtoBuf.GeoPOI) (obj)).getProx();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasScore())
                    {
                        a1.n = ((GeocodingProtoBuf.GeoPOI) (obj)).getScore();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasEprovince())
                    {
                        a1.o = ((GeocodingProtoBuf.GeoPOI) (obj)).getEprovince();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasEcity())
                    {
                        a1.p = ((GeocodingProtoBuf.GeoPOI) (obj)).getEcity();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasEdistrict())
                    {
                        a1.q = ((GeocodingProtoBuf.GeoPOI) (obj)).getEdistrict();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasEaddress())
                    {
                        a1.r = ((GeocodingProtoBuf.GeoPOI) (obj)).getEaddress();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasRoadpts())
                    {
                        a1.s = ((GeocodingProtoBuf.GeoPOI) (obj)).getRoadpts();
                    }
                    if (((GeocodingProtoBuf.GeoPOI) (obj)).hasSubpois())
                    {
                        obj = ((GeocodingProtoBuf.GeoPOI) (obj)).getSubpois().getSubpoiList();
                        int j1 = ((List) (obj)).size();
                        for (int l = 0; l < j1; l++)
                        {
                            c c1 = new c();
                            GeocodingProtoBuf.SubPOI subpoi = (GeocodingProtoBuf.SubPOI)((List) (obj)).get(l);
                            if (subpoi.hasName())
                            {
                                c1.a = subpoi.getName();
                            }
                            if (subpoi.hasEname())
                            {
                                c1.b = subpoi.getEname();
                            }
                            if (subpoi.hasX())
                            {
                                c1.c = subpoi.getX();
                            }
                            if (subpoi.hasY())
                            {
                                c1.d = subpoi.getY();
                            }
                            a1.t.add(c1);
                        }

                    }
                    geocodingResponse.b.add(a1);
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
