// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import android.os.Parcel;

// Referenced classes of package com.mapabc.mapapi.core:
//            OverlayItem, q, GeoPoint

public class PoiItem extends OverlayItem
{

    public static final android.os.Parcelable.Creator CREATOR = new q();
    public static final String DesSplit = " - ";
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private int g;

    private PoiItem(Parcel parcel)
    {
        super(parcel);
        e = "";
        a = parcel.readString();
        d = parcel.readString();
        c = parcel.readString();
        b = parcel.readString();
        e = parcel.readString();
    }

    PoiItem(Parcel parcel, q q1)
    {
        this(parcel);
    }

    public PoiItem(String s, GeoPoint geopoint, String s1, String s2)
    {
        super(geopoint, s1, s2);
        e = "";
        a = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (obj != null && obj.getClass() == getClass())
        {
            obj = (PoiItem)obj;
            if (a == ((PoiItem) (obj)).a)
            {
                return true;
            }
        }
        return false;
    }

    public String getAdCode()
    {
        return d;
    }

    public int getDistance()
    {
        return g;
    }

    public String getPoiId()
    {
        return a;
    }

    public String getTel()
    {
        return c;
    }

    public String getTypeCode()
    {
        return b;
    }

    public String getTypeDes()
    {
        return e;
    }

    public String getXmlNode()
    {
        return f;
    }

    public int hashCode()
    {
        return a.hashCode();
    }

    public void setAdCode(String s)
    {
        d = s;
    }

    public void setDistance(int i)
    {
        g = i;
    }

    public void setTel(String s)
    {
        c = s;
    }

    public void setTypeCode(String s)
    {
        b = s;
    }

    public void setTypeDes(String s)
    {
        e = s;
    }

    public void setXmlNode(String s)
    {
        f = s;
    }

    public String toString()
    {
        return mTitle;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeString(a);
        parcel.writeString(d);
        parcel.writeString(c);
        parcel.writeString(b);
        parcel.writeString(e);
    }


    // Unreferenced inner class com/mapabc/mapapi/core/q
    static final class q
        implements android.os.Parcelable.Creator
    {

        public PoiItem a(Parcel parcel)
        {
            return new PoiItem(parcel, null);
        }

        public PoiItem[] a(int i)
        {
            return new PoiItem[i];
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return a(parcel);
        }

        public volatile Object[] newArray(int i)
        {
            return a(i);
        }

            q()
            {
            }
    }

}
