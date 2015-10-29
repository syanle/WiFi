// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import org.json.JSONObject;

// Referenced classes of package com.baidu.location:
//            n, CommonEncrypt

public final class BDLocation
    implements n, Parcelable
{
    public class a
    {

        final BDLocation a;
        public String _fldbyte;
        public String _flddo;
        public String _fldfor;
        public String _fldif;
        public String _fldint;
        public String _fldnew;
        public String _fldtry;

        public a()
        {
            a = BDLocation.this;
            super();
            _fldif = null;
            _fldnew = null;
            _fldint = null;
            _fldbyte = null;
            _flddo = null;
            _fldfor = null;
            _fldtry = null;
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    public static final int OPERATORS_TYPE_MOBILE = 1;
    public static final int OPERATORS_TYPE_TELECOMU = 3;
    public static final int OPERATORS_TYPE_UNICOM = 2;
    public static final int OPERATORS_TYPE_UNKONW = 0;
    public static final int TypeCacheLocation = 65;
    public static final int TypeCriteriaException = 62;
    public static final int TypeGpsLocation = 61;
    public static final int TypeNetWorkException = 63;
    public static final int TypeNetWorkLocation = 161;
    public static final int TypeNone = 0;
    public static final int TypeOffLineLocation = 66;
    public static final int TypeOffLineLocationFail = 67;
    public static final int TypeOffLineLocationNetworkFail = 68;
    public static final int TypeServerError = 167;
    private int g0;
    private String gF;
    private int gG;
    private double gH;
    private String gI;
    private boolean gJ;
    private boolean gK;
    private String gL;
    private float gM;
    private double gN;
    private boolean gO;
    private a gP;
    private boolean gQ;
    private String gR;
    private float gS;
    private boolean gT;
    private int gU;
    private double gV;
    private boolean gW;
    private float gX;
    private String gY;
    private String gZ;

    public BDLocation()
    {
        gU = 0;
        gY = null;
        gH = 4.9406564584124654E-324D;
        gV = 4.9406564584124654E-324D;
        gJ = false;
        gN = 4.9406564584124654E-324D;
        gK = false;
        gX = 0.0F;
        gQ = false;
        gS = 0.0F;
        gW = false;
        gG = -1;
        gM = -1F;
        gZ = null;
        gT = false;
        gF = null;
        gO = false;
        gP = new a();
        gI = null;
        gR = null;
        gL = "";
    }

    private BDLocation(Parcel parcel)
    {
        gU = 0;
        gY = null;
        gH = 4.9406564584124654E-324D;
        gV = 4.9406564584124654E-324D;
        gJ = false;
        gN = 4.9406564584124654E-324D;
        gK = false;
        gX = 0.0F;
        gQ = false;
        gS = 0.0F;
        gW = false;
        gG = -1;
        gM = -1F;
        gZ = null;
        gT = false;
        gF = null;
        gO = false;
        gP = new a();
        gI = null;
        gR = null;
        gL = "";
        gU = parcel.readInt();
        gY = parcel.readString();
        gH = parcel.readDouble();
        gV = parcel.readDouble();
        gN = parcel.readDouble();
        gX = parcel.readFloat();
        gS = parcel.readFloat();
        gG = parcel.readInt();
        gM = parcel.readFloat();
        gI = parcel.readString();
        gR = parcel.readString();
        gP._fldif = parcel.readString();
        gP._fldnew = parcel.readString();
        gP._fldint = parcel.readString();
        gP._fldbyte = parcel.readString();
        gP._flddo = parcel.readString();
        gP._fldfor = parcel.readString();
        gP._fldtry = parcel.readString();
        boolean aflag[] = new boolean[6];
        parcel.readBooleanArray(aflag);
        gJ = aflag[0];
        gK = aflag[1];
        gQ = aflag[2];
        gW = aflag[3];
        gT = aflag[4];
        gO = aflag[5];
        g0 = parcel.readInt();
        gL = parcel.readString();
    }

    BDLocation(Parcel parcel, _cls1 _pcls1)
    {
        this(parcel);
    }

    public BDLocation(BDLocation bdlocation)
    {
        gU = 0;
        gY = null;
        gH = 4.9406564584124654E-324D;
        gV = 4.9406564584124654E-324D;
        gJ = false;
        gN = 4.9406564584124654E-324D;
        gK = false;
        gX = 0.0F;
        gQ = false;
        gS = 0.0F;
        gW = false;
        gG = -1;
        gM = -1F;
        gZ = null;
        gT = false;
        gF = null;
        gO = false;
        gP = new a();
        gI = null;
        gR = null;
        gL = "";
        gU = bdlocation.gU;
        gY = bdlocation.gY;
        gH = bdlocation.gH;
        gV = bdlocation.gV;
        gJ = bdlocation.gJ;
        bdlocation.gN = bdlocation.gN;
        gK = bdlocation.gK;
        gX = bdlocation.gX;
        gQ = bdlocation.gQ;
        gS = bdlocation.gS;
        gW = bdlocation.gW;
        gG = bdlocation.gG;
        gM = bdlocation.gM;
        gZ = bdlocation.gZ;
        gT = bdlocation.gT;
        gF = bdlocation.gF;
        gO = bdlocation.gO;
        gP = new a();
        gP._fldif = bdlocation.gP._fldif;
        gP._fldnew = bdlocation.gP._fldnew;
        gP._fldint = bdlocation.gP._fldint;
        gP._fldbyte = bdlocation.gP._fldbyte;
        gP._flddo = bdlocation.gP._flddo;
        gP._fldfor = bdlocation.gP._fldfor;
        gP._fldtry = bdlocation.gP._fldtry;
        gI = bdlocation.gI;
        gR = bdlocation.gR;
        g0 = bdlocation.g0;
        gL = bdlocation.gL;
    }

    protected BDLocation(String s)
    {
        gU = 0;
        gY = null;
        gH = 4.9406564584124654E-324D;
        gV = 4.9406564584124654E-324D;
        gJ = false;
        gN = 4.9406564584124654E-324D;
        gK = false;
        gX = 0.0F;
        gQ = false;
        gS = 0.0F;
        gW = false;
        gG = -1;
        gM = -1F;
        gZ = null;
        gT = false;
        gF = null;
        gO = false;
        gP = new a();
        gI = null;
        gR = null;
        gL = "";
        if (s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i;
        s = new JSONObject(s);
        JSONObject jsonobject = s.getJSONObject("result");
        i = Integer.parseInt(jsonobject.getString("error"));
        setLocType(i);
        setTime(jsonobject.getString("time"));
        if (i == 61)
        {
            try
            {
                s = s.getJSONObject("content");
                JSONObject jsonobject1 = s.getJSONObject("point");
                setLatitude(Double.parseDouble(jsonobject1.getString("y")));
                setLongitude(Double.parseDouble(jsonobject1.getString("x")));
                setRadius(Float.parseFloat(s.getString("radius")));
                setSpeed(Float.parseFloat(s.getString("s")));
                setDirection(Float.parseFloat(s.getString("d")));
                setSatelliteNumber(Integer.parseInt(s.getString("n")));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
            }
            gU = 0;
            gT = false;
            return;
        }
        if (i != 161) goto _L4; else goto _L3
_L3:
        JSONObject jsonobject2;
        jsonobject2 = s.getJSONObject("content");
        s = jsonobject2.getJSONObject("point");
        setLatitude(Double.parseDouble(s.getString("y")));
        setLongitude(Double.parseDouble(s.getString("x")));
        setRadius(Float.parseFloat(jsonobject2.getString("radius")));
        if (!jsonobject2.has("addr"))
        {
            break MISSING_BLOCK_LABEL_751;
        }
        s = jsonobject2.getString("addr");
        gP._fldtry = s;
        s = s.split(",");
        gP._fldif = s[0];
        gP._fldnew = s[1];
        gP._fldint = s[2];
        gP._fldbyte = s[3];
        gP._flddo = s[4];
        gP._fldfor = s[5];
        if ((!gP._fldif.contains("\u5317\u4EAC") || !gP._fldnew.contains("\u5317\u4EAC")) && (!gP._fldif.contains("\u4E0A\u6D77") || !gP._fldnew.contains("\u4E0A\u6D77")) && (!gP._fldif.contains("\u5929\u6D25") || !gP._fldnew.contains("\u5929\u6D25")) && (!gP._fldif.contains("\u91CD\u5E86") || !gP._fldnew.contains("\u91CD\u5E86"))) goto _L6; else goto _L5
_L5:
        s = gP._fldif;
_L9:
        s = (new StringBuilder()).append(s).append(gP._fldint).append(gP._fldbyte).append(gP._flddo).toString();
        gP._fldtry = s;
        gT = true;
_L10:
        if (jsonobject2.has("floor"))
        {
            gI = jsonobject2.getString("floor");
            if (TextUtils.isEmpty(gI))
            {
                gI = null;
            }
        }
        if (!jsonobject2.has("loctp")) goto _L1; else goto _L7
_L7:
        gR = jsonobject2.getString("loctp");
        if (!TextUtils.isEmpty(gR)) goto _L1; else goto _L8
_L8:
        gR = null;
        return;
_L6:
        s = (new StringBuilder()).append(gP._fldif).append(gP._fldnew).toString();
          goto _L9
        gT = false;
        setAddrStr(null);
          goto _L10
_L11:
        s = s.getJSONObject("content");
        JSONObject jsonobject3 = s.getJSONObject("point");
        setLatitude(Double.parseDouble(jsonobject3.getString("y")));
        setLongitude(Double.parseDouble(jsonobject3.getString("x")));
        setRadius(Float.parseFloat(s.getString("radius")));
        _mthif(Boolean.valueOf(Boolean.parseBoolean(s.getString("isCellChanged"))));
        return;
_L4:
        if (i != 66 && i != 68) goto _L1; else goto _L11
    }

    private String bn()
    {
        return gL;
    }

    private static String bo()
    {
        return Build.MODEL;
    }

    private void _mthif(Boolean boolean1)
    {
        gO = boolean1.booleanValue();
    }

    protected String bm()
    {
        return null;
    }

    protected void _mthbyte(int i)
    {
        g0 = i;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getAdUrl(String s)
    {
        double d = gH;
        double d1 = gV;
        String s1 = bn();
        String s2 = bo();
        s = CommonEncrypt.a((new StringBuilder()).append("ak=").append(s).append("&").append("lat=").append(String.valueOf(d)).append("&").append("lng=").append(String.valueOf(d1)).append("&").append("cu=").append(s1).append("&").append("mb=").append(s2).toString());
        return (new StringBuilder()).append("http://lba.baidu.com/").append("?a=").append(s).toString();
    }

    public String getAddrStr()
    {
        return gP._fldtry;
    }

    public double getAltitude()
    {
        return gN;
    }

    public String getCity()
    {
        return gP._fldnew;
    }

    public String getCityCode()
    {
        return gP._fldfor;
    }

    public String getCoorType()
    {
        return gZ;
    }

    public float getDirection()
    {
        return gM;
    }

    public String getDistrict()
    {
        return gP._fldint;
    }

    public String getFloor()
    {
        return gI;
    }

    public double getLatitude()
    {
        return gH;
    }

    public int getLocType()
    {
        return gU;
    }

    public double getLongitude()
    {
        return gV;
    }

    public String getNetworkLocationType()
    {
        return gR;
    }

    public int getOperators()
    {
        return g0;
    }

    public String getProvince()
    {
        return gP._fldif;
    }

    public float getRadius()
    {
        return gS;
    }

    public int getSatelliteNumber()
    {
        gW = true;
        return gG;
    }

    public float getSpeed()
    {
        return gX;
    }

    public String getStreet()
    {
        return gP._fldbyte;
    }

    public String getStreetNumber()
    {
        return gP._flddo;
    }

    public String getTime()
    {
        return gY;
    }

    public boolean hasAddr()
    {
        return gT;
    }

    public boolean hasAltitude()
    {
        return gJ;
    }

    public boolean hasRadius()
    {
        return gQ;
    }

    public boolean hasSateNumber()
    {
        return gW;
    }

    public boolean hasSpeed()
    {
        return gK;
    }

    public void internalSet(int i, String s)
    {
        while (s == null || i != 0) 
        {
            return;
        }
        gL = s;
    }

    public boolean isCellChangeFlag()
    {
        return gO;
    }

    protected BDLocation p(String s)
    {
        return null;
    }

    public void setAddrStr(String s)
    {
        gF = s;
        if (s == null)
        {
            gT = false;
            return;
        } else
        {
            gT = true;
            return;
        }
    }

    public void setAltitude(double d)
    {
        gN = d;
        gJ = true;
    }

    public void setCoorType(String s)
    {
        gZ = s;
    }

    public void setDirection(float f)
    {
        gM = f;
    }

    public void setLatitude(double d)
    {
        gH = d;
    }

    public void setLocType(int i)
    {
        gU = i;
    }

    public void setLongitude(double d)
    {
        gV = d;
    }

    public void setRadius(float f)
    {
        gS = f;
        gQ = true;
    }

    public void setSatelliteNumber(int i)
    {
        gG = i;
    }

    public void setSpeed(float f)
    {
        gX = f;
        gK = true;
    }

    public void setTime(String s)
    {
        gY = s;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(gU);
        parcel.writeString(gY);
        parcel.writeDouble(gH);
        parcel.writeDouble(gV);
        parcel.writeDouble(gN);
        parcel.writeFloat(gX);
        parcel.writeFloat(gS);
        parcel.writeInt(gG);
        parcel.writeFloat(gM);
        parcel.writeString(gI);
        parcel.writeString(gR);
        parcel.writeString(gP._fldif);
        parcel.writeString(gP._fldnew);
        parcel.writeString(gP._fldint);
        parcel.writeString(gP._fldbyte);
        parcel.writeString(gP._flddo);
        parcel.writeString(gP._fldfor);
        parcel.writeString(gP._fldtry);
        parcel.writeBooleanArray(new boolean[] {
            gJ, gK, gQ, gW, gT, gO
        });
        parcel.writeInt(g0);
        parcel.writeString(gL);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public BDLocation a(Parcel parcel)
        {
            return new BDLocation(parcel, null);
        }

        public BDLocation[] a(int i)
        {
            return new BDLocation[i];
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return a(parcel);
        }

        public volatile Object[] newArray(int i)
        {
            return a(i);
        }

        _cls1()
        {
        }
    }

}
