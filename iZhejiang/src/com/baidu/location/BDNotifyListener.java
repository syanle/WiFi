// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;


// Referenced classes of package com.baidu.location:
//            z, c, BDLocation

public abstract class BDNotifyListener
{

    public int Notified;
    public float differDistance;
    public boolean isAdded;
    public String mCoorType;
    public double mLatitude;
    public double mLatitudeC;
    public double mLongitude;
    public double mLongitudeC;
    public z mNotifyCache;
    public float mRadius;

    public BDNotifyListener()
    {
        mLatitude = 4.9406564584124654E-324D;
        mLongitude = 4.9406564584124654E-324D;
        mRadius = 0.0F;
        differDistance = 0.0F;
        mCoorType = null;
        mLatitudeC = 4.9406564584124654E-324D;
        mLongitudeC = 4.9406564584124654E-324D;
        Notified = 0;
        isAdded = false;
        mNotifyCache = null;
    }

    public void SetNotifyLocation(double d, double d1, float f, String s)
    {
        mLatitude = d;
        mLongitude = d1;
        if (f < 0.0F)
        {
            mRadius = 200F;
        } else
        {
            mRadius = f;
        }
        if (s.equals("gcj02") || s.equals("bd09") || s.equals("bd09ll") || s.equals("gps"))
        {
            mCoorType = s;
        } else
        {
            mCoorType = "gcj02";
        }
        if (mCoorType.equals("gcj02"))
        {
            mLatitudeC = mLatitude;
            mLongitudeC = mLongitude;
        }
        if (isAdded)
        {
            Notified = 0;
            mNotifyCache._mthif(this);
        }
    }

    public void onNotify(BDLocation bdlocation, float f)
    {
        c._mthdo("baidu_location_service", (new StringBuilder()).append("new location, not far from the destination...").append(f).toString());
    }
}
