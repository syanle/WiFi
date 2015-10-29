// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import android.location.Address;
import com.google.protobuf.InvalidProtocolBufferException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.core:
//            r, y, MapAbcException, i, 
//            e

public class ReverseGeocodingProtoBufHandler extends r
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

        public String a;
        public String b;
        public String c;

        b()
        {
        }
    }

    static class c
    {

        public String a;
        public String b;
        public String c;
        public String d;
        public String e;

        c()
        {
        }
    }

    static class d
    {

        public String a;
        public String b;

        d()
        {
        }
    }

    static class e
    {

        public List a;

        e()
        {
            a = new ArrayList();
        }
    }

    static class f
    {

        public String a;
        public String b;
        public String c;
        public String d;
        public String e;
        public String f;
        public String g;

        f()
        {
        }
    }

    static class g
    {

        public d a;
        public a b;
        public c c;
        public List d;
        public List e;
        public List f;

        g()
        {
            a = new d();
            b = new a();
            c = new c();
            d = new ArrayList();
            e = new ArrayList();
            f = new ArrayList();
        }
    }


    private static final int RANGE = 500;
    private static final int REVERSEGEOCODING_SERVER_CODE = 1818;
    private ArrayList crosslist;
    boolean isCross;
    boolean isPoi;
    boolean isRoad;
    private int mMaxResult;
    private String mReXML;
    private ArrayList poilist;
    private e reverseGeocodingResponse;
    private ArrayList roadlist;

    public ReverseGeocodingProtoBufHandler(y y1, Proxy proxy, String s, String s1, String s2)
    {
        super(y1, proxy, s, s1, s2);
        mMaxResult = 0;
        isRoad = false;
        isPoi = false;
        isCross = false;
        mReXML = "<?xml version='1.0' encoding='utf-8' ?><spatial_request method='searchPoint'><x>%f</x><y>%f</y><poiNumber>%d</poiNumber><range>%d</range><pattern>0</pattern><roadLevel>0</roadLevel></spatial_request>";
        mMaxResult = y1.h;
        roadlist = new ArrayList();
        poilist = new ArrayList();
        crosslist = new ArrayList();
    }

    private void addAddressItem(ArrayList arraylist, ArrayList arraylist1)
    {
        int k = arraylist1.size();
        int l = mMaxResult;
        int i1 = arraylist.size();
        for (int j = 0; j < l - i1; j++)
        {
            if (k > j)
            {
                arraylist.add(arraylist1.get(j));
            }
        }

    }

    protected String[] getRequestLines()
    {
        return null;
    }

    protected int getServiceCode()
    {
        return 0;
    }

    protected void initParams(y y1)
    {
        y1.a = "SPAS";
        y1.d = mKey;
        y1.b = "buf";
        y1.c = "UTF-8";
        y1.e = "2";
    }

    protected volatile void initParams(Object obj)
    {
        initParams((y)obj);
    }

    protected volatile Object loadData(InputStream inputstream)
        throws MapAbcException
    {
        return loadData(inputstream);
    }

    protected ArrayList loadData(InputStream inputstream)
        throws MapAbcException
    {
        ArrayList arraylist;
        arraylist = new ArrayList();
        if (mMaxResult <= 0)
        {
            return arraylist;
        }
        if (!parseProtoBufResponse(i.a(inputstream))) goto _L2; else goto _L1
_L1:
        int j;
        int l;
        l = reverseGeocodingResponse.a.size();
        j = 0;
_L12:
        g g1;
        int k;
        int i1;
        int j1;
        int k1;
        if (j >= l)
        {
            break; /* Loop/switch isn't completed */
        }
        g1 = (g)reverseGeocodingResponse.a.get(j);
        k1 = Math.min(g1.d.size(), mMaxResult);
        j1 = Math.min(g1.e.size(), mMaxResult);
        i1 = Math.min(g1.f.size(), mMaxResult);
        k = 0;
_L5:
        if (k >= k1) goto _L4; else goto _L3
_L3:
        Address address;
        address = com.mapabc.mapapi.core.e.d();
        address.setAdminArea(g1.a.a);
        address.setLocality(g1.b.a);
        Object obj = address.getClass().getMethod("setSubLocality", new Class[] {
            java/lang/String
        });
        Exception exception;
        if (obj != null)
        {
            try
            {
                ((Method) (obj)).invoke(address, new Object[] {
                    g1.c.a
                });
            }
            catch (Exception exception1) { }
        }
        address.setFeatureName(((f)g1.d.get(k)).b);
        obj = address.getClass().getMethod("setPremises", new Class[] {
            java/lang/String
        });
        if (obj != null)
        {
            try
            {
                ((Method) (obj)).invoke(address, new Object[] {
                    "StreetAndRoad"
                });
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception) { }
        }
        roadlist.add(address);
        isRoad = true;
        k++;
          goto _L5
_L4:
        k = 0;
_L8:
        if (k >= j1) goto _L7; else goto _L6
_L6:
        address = com.mapabc.mapapi.core.e.d();
        address.setAdminArea(g1.a.a);
        address.setLocality(g1.b.a);
        obj = address.getClass().getMethod("setSubLocality", new Class[] {
            java/lang/String
        });
        if (obj != null)
        {
            try
            {
                ((Method) (obj)).invoke(address, new Object[] {
                    g1.c.a
                });
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception) { }
        }
        obj = (s.a)g1.e.get(k);
        address.setAddressLine(0, ((s.a) (obj)).g);
        address.setPhone(((s.a) (obj)).s);
        address.setFeatureName(((s.a) (obj)).b);
        address.setLongitude(Double.parseDouble(((s.a) (obj)).d));
        address.setLatitude(Double.parseDouble(((s.a) (obj)).e));
        obj = address.getClass().getMethod("setPremises", new Class[] {
            java/lang/String
        });
        if (obj != null)
        {
            try
            {
                ((Method) (obj)).invoke(address, new Object[] {
                    "POI"
                });
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception) { }
        }
        poilist.add(address);
        isPoi = true;
        k++;
          goto _L8
_L7:
        k = 0;
_L11:
        if (k >= i1) goto _L10; else goto _L9
_L9:
        address = com.mapabc.mapapi.core.e.d();
        address.setAdminArea(g1.a.a);
        address.setLocality(g1.b.a);
        obj = address.getClass().getMethod("setSubLocality", new Class[] {
            java/lang/String
        });
        if (obj != null)
        {
            try
            {
                ((Method) (obj)).invoke(address, new Object[] {
                    g1.c.a
                });
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception) { }
        }
        obj = (b)g1.f.get(k);
        address.setFeatureName(((b) (obj)).a);
        address.setLongitude(Double.parseDouble(((b) (obj)).b));
        address.setLatitude(Double.parseDouble(((b) (obj)).c));
        obj = address.getClass().getMethod("setPremises", new Class[] {
            java/lang/String
        });
        if (obj != null)
        {
            try
            {
                ((Method) (obj)).invoke(address, new Object[] {
                    "Cross"
                });
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception) { }
        }
        crosslist.add(address);
        isCross = true;
        k++;
          goto _L11
_L10:
        if (isCross)
        {
            arraylist.add(crosslist.get(0));
        }
        addAddressItem(arraylist, poilist);
        if (mMaxResult - arraylist.size() == 0)
        {
            if (isRoad)
            {
                arraylist.set(arraylist.size() - 1, roadlist.get(0));
            }
        } else
        {
            addAddressItem(arraylist, roadlist);
        }
        j++;
        if (true) goto _L12; else goto _L2
_L2:
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
        return arraylist;
    }

    protected byte[] makePostRequestBytes()
    {
        byte abyte0[] = i.a(1818);
        ReverseGeocodingProtoBuf.ReverseGeocodingRequest.Builder builder = ReverseGeocodingProtoBuf.ReverseGeocodingRequest.newBuilder();
        CommonProtoBuf.Common.Builder builder1 = CommonProtoBuf.Common.newBuilder();
        builder1.setConfig(((y)task).a);
        builder1.setAK(((y)task).d);
        builder1.setResType(((y)task).b);
        builder1.setEnc(((y)task).c);
        builder.setCommon(builder1);
        builder.setSpatialXml(String.format(mReXML, new Object[] {
            Double.valueOf(((y)task).f), Double.valueOf(((y)task).g), Integer.valueOf(((y)task).h), Integer.valueOf(500)
        }));
        byte abyte1[] = builder.build().toByteArray();
        byte abyte2[] = new byte[abyte0.length + abyte1.length];
        System.arraycopy(abyte0, 0, abyte2, 0, abyte0.length);
        System.arraycopy(abyte1, 0, abyte2, abyte0.length, abyte1.length);
        return abyte2;
    }

    protected boolean parseProtoBufResponse(byte abyte0[])
        throws MapAbcException
    {
        reverseGeocodingResponse = new e();
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
                abyte0 = ReverseGeocodingProtoBuf.ReverseGeocodingResponse.parseFrom(abyte2);
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new MapAbcException("protobuf\u89E3\u6790\u9519\u8BEF - InvalidProtocolBufferException");
            }
            if (abyte0.getSpatialCount() > 0)
            {
                abyte0 = abyte0.getSpatialList();
                int k1 = abyte0.size();
                for (int k = 0; k < k1; k++)
                {
                    Object obj = (ReverseGeocodingProtoBuf.Spatial)abyte0.get(k);
                    g g1 = new g();
                    if (((ReverseGeocodingProtoBuf.Spatial) (obj)).hasProvince())
                    {
                        d d1 = new d();
                        if (((ReverseGeocodingProtoBuf.Spatial) (obj)).getProvince().hasName())
                        {
                            d1.a = ((ReverseGeocodingProtoBuf.Spatial) (obj)).getProvince().getName();
                        }
                        if (((ReverseGeocodingProtoBuf.Spatial) (obj)).getProvince().hasCode())
                        {
                            d1.b = ((ReverseGeocodingProtoBuf.Spatial) (obj)).getProvince().getCode();
                        }
                        g1.a = d1;
                    }
                    if (((ReverseGeocodingProtoBuf.Spatial) (obj)).hasCity())
                    {
                        a a1 = new a();
                        if (((ReverseGeocodingProtoBuf.Spatial) (obj)).getCity().hasName())
                        {
                            a1.a = ((ReverseGeocodingProtoBuf.Spatial) (obj)).getCity().getName();
                        }
                        if (((ReverseGeocodingProtoBuf.Spatial) (obj)).getCity().hasCode())
                        {
                            a1.b = ((ReverseGeocodingProtoBuf.Spatial) (obj)).getCity().getCode();
                        }
                        if (((ReverseGeocodingProtoBuf.Spatial) (obj)).getCity().hasTel())
                        {
                            a1.c = ((ReverseGeocodingProtoBuf.Spatial) (obj)).getCity().getTel();
                        }
                        g1.b = a1;
                    }
                    if (((ReverseGeocodingProtoBuf.Spatial) (obj)).hasDistrict())
                    {
                        c c1 = new c();
                        if (((ReverseGeocodingProtoBuf.Spatial) (obj)).getDistrict().hasName())
                        {
                            c1.a = ((ReverseGeocodingProtoBuf.Spatial) (obj)).getDistrict().getName();
                        }
                        if (((ReverseGeocodingProtoBuf.Spatial) (obj)).getDistrict().hasCode())
                        {
                            c1.b = ((ReverseGeocodingProtoBuf.Spatial) (obj)).getDistrict().getCode();
                        }
                        if (((ReverseGeocodingProtoBuf.Spatial) (obj)).getDistrict().hasX())
                        {
                            c1.c = ((ReverseGeocodingProtoBuf.Spatial) (obj)).getDistrict().getX();
                        }
                        if (((ReverseGeocodingProtoBuf.Spatial) (obj)).getDistrict().hasY())
                        {
                            c1.d = ((ReverseGeocodingProtoBuf.Spatial) (obj)).getDistrict().getY();
                        }
                        if (((ReverseGeocodingProtoBuf.Spatial) (obj)).getDistrict().hasBounds())
                        {
                            c1.e = ((ReverseGeocodingProtoBuf.Spatial) (obj)).getDistrict().getBounds();
                        }
                        g1.c = c1;
                    }
                    if (((ReverseGeocodingProtoBuf.Spatial) (obj)).hasRoads())
                    {
                        List list = ((ReverseGeocodingProtoBuf.Spatial) (obj)).getRoads().getRoadList();
                        int l1 = list.size();
                        for (int l = 0; l < l1; l++)
                        {
                            ReverseGeocodingProtoBuf.Road road = (ReverseGeocodingProtoBuf.Road)list.get(l);
                            f f1 = new f();
                            if (road.hasId())
                            {
                                f1.a = road.getId();
                            }
                            if (road.hasName())
                            {
                                f1.b = road.getName();
                            }
                            if (road.hasEname())
                            {
                                f1.c = road.getEname();
                            }
                            if (road.hasWidth())
                            {
                                f1.d = road.getWidth();
                            }
                            if (road.hasLevel())
                            {
                                f1.e = road.getLevel();
                            }
                            if (road.hasDistance())
                            {
                                f1.f = road.getDistance();
                            }
                            if (road.hasDirection())
                            {
                                f1.g = road.getDirection();
                            }
                            g1.d.add(f1);
                        }

                    }
                    if (((ReverseGeocodingProtoBuf.Spatial) (obj)).hasPois())
                    {
                        List list1 = ((ReverseGeocodingProtoBuf.Spatial) (obj)).getPois().getPoiList();
                        int i2 = list1.size();
                        for (int i1 = 0; i1 < i2; i1++)
                        {
                            s.a a2 = initPOIEntity((CommonProtoBuf.POI)list1.get(i1));
                            g1.e.add(a2);
                        }

                    }
                    if (((ReverseGeocodingProtoBuf.Spatial) (obj)).hasCrosses())
                    {
                        obj = ((ReverseGeocodingProtoBuf.Spatial) (obj)).getCrosses().getCrossList();
                        int j2 = ((List) (obj)).size();
                        for (int j1 = 0; j1 < j2; j1++)
                        {
                            ReverseGeocodingProtoBuf.Cross cross = (ReverseGeocodingProtoBuf.Cross)((List) (obj)).get(j1);
                            b b1 = new b();
                            if (cross.hasName())
                            {
                                b1.a = cross.getName();
                            }
                            if (cross.hasX())
                            {
                                b1.b = cross.getX();
                            }
                            if (cross.hasY())
                            {
                                b1.c = cross.getY();
                            }
                            g1.f.add(b1);
                        }

                    }
                    reverseGeocodingResponse.a.add(g1);
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
