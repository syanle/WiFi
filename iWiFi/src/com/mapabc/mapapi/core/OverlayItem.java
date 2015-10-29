// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.mapabc.mapapi.core:
//            p, GeoPoint

public class OverlayItem
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new p();
    public static final int ITEM_STATE_FOCUSED_MASK = 4;
    public static final int ITEM_STATE_PRESSED_MASK = 1;
    public static final int ITEM_STATE_SELECTED_MASK = 2;
    protected Drawable mMarker;
    protected GeoPoint mPoint;
    protected final String mSnippet;
    protected final String mTitle;

    protected OverlayItem(Parcel parcel)
    {
        mPoint = (GeoPoint)parcel.readValue(com/mapabc/mapapi/core/GeoPoint.getClassLoader());
        mTitle = parcel.readString();
        mSnippet = parcel.readString();
    }

    public OverlayItem(GeoPoint geopoint, String s, String s1)
    {
        mPoint = geopoint.c();
        mTitle = s;
        mSnippet = s1;
        mMarker = null;
    }

    private static int[] a(int i)
    {
        boolean flag = false;
        int ai[] = new int[3];
        int ai1[];
        int j;
        int k;
        if ((i & 1) != 0)
        {
            ai[0] = 0x10100a7;
            k = 1;
        } else
        {
            k = 0;
        }
        j = k;
        if ((i & 2) != 0)
        {
            ai[k] = 0x10100a1;
            j = k + 1;
        }
        k = j;
        if ((i & 4) != 0)
        {
            ai[j] = 0x101009c;
            k = j + 1;
        }
        ai1 = new int[k];
        for (i = ((flag) ? 1 : 0); i < k; i++)
        {
            ai1[i] = ai[i];
        }

        return ai1;
    }

    public static void setState(Drawable drawable, int i)
    {
        int ai[] = a(i);
        if (ai.length != 0)
        {
            drawable.setState(ai);
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public Drawable getMarker(int i)
    {
        if (mMarker == null)
        {
            return null;
        }
        if (i == 0)
        {
            return mMarker.getCurrent();
        } else
        {
            int ai1[] = a(i);
            int ai[] = mMarker.getState();
            mMarker.setState(ai1);
            Drawable drawable = mMarker.getCurrent();
            mMarker.setState(ai);
            return drawable;
        }
    }

    public GeoPoint getPoint()
    {
        return mPoint;
    }

    public String getSnippet()
    {
        return mSnippet;
    }

    public String getTitle()
    {
        return mTitle;
    }

    public Drawable getmMarker()
    {
        return mMarker;
    }

    public String routableAddress()
    {
        return mPoint.d();
    }

    public void setMarker(Drawable drawable)
    {
        mMarker = drawable;
        if (mMarker != null)
        {
            mMarker.setState(new int[0]);
        }
    }

    public void setPoint(GeoPoint geopoint)
    {
        mPoint = geopoint.c();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeValue(mPoint);
        parcel.writeString(mTitle);
        parcel.writeString(mSnippet);
    }


    // Unreferenced inner class com/mapabc/mapapi/core/p
    static final class p
        implements android.os.Parcelable.Creator
    {

        public OverlayItem a(Parcel parcel)
        {
            return new OverlayItem(parcel);
        }

        public OverlayItem[] a(int i)
        {
            return new OverlayItem[i];
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return a(parcel);
        }

        public volatile Object[] newArray(int i)
        {
            return a(i);
        }

            p()
            {
            }
    }

}
