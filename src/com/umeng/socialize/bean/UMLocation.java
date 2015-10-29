// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.umeng.socialize.bean:
//            ak

public class UMLocation
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new ak();
    private double a;
    private double b;

    public UMLocation(double d, double d1)
    {
        a = d;
        b = d1;
    }

    private UMLocation(Parcel parcel)
    {
        a = parcel.readDouble();
        b = parcel.readDouble();
    }

    UMLocation(Parcel parcel, UMLocation umlocation)
    {
        this(parcel);
    }

    public static UMLocation build(Location location)
    {
        if (location.getLatitude() == 0.0D || location.getLongitude() == 0.0D)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        location = new UMLocation(location.getLatitude(), location.getLongitude());
        return location;
        location;
        return null;
    }

    public static UMLocation build(String s)
    {
        try
        {
            s = s.substring(1, s.length() - 1).split(",");
            s = new UMLocation(Double.parseDouble(s[1]), Double.parseDouble(s[0]));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public int describeContents()
    {
        return 0;
    }

    public double getLatitude()
    {
        return a;
    }

    public double getLongitude()
    {
        return b;
    }

    public void setLatitude(double d)
    {
        a = d;
    }

    public void setLongitude(double d)
    {
        b = d;
    }

    public String toString()
    {
        return (new StringBuilder("(")).append(b).append(",").append(a).append(")").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeDouble(a);
        parcel.writeDouble(b);
    }

}
