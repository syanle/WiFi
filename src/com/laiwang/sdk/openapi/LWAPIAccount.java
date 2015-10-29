// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.openapi;

import android.os.Parcel;
import android.os.Parcelable;

public class LWAPIAccount
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public LWAPIAccount createFromParcel(Parcel parcel)
        {
            return new LWAPIAccount(parcel, null);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public LWAPIAccount[] newArray(int i)
        {
            return new LWAPIAccount[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    private String lwapiClassname;
    private int lwapiRandomKey;
    private String lwapiSecret;
    private String lwapiToken;

    public LWAPIAccount()
    {
    }

    private LWAPIAccount(Parcel parcel)
    {
        readFromParcel(parcel);
    }

    LWAPIAccount(Parcel parcel, LWAPIAccount lwapiaccount)
    {
        this(parcel);
    }

    public int describeContents()
    {
        return 0;
    }

    public String getLwapiClassname()
    {
        return lwapiClassname;
    }

    public int getLwapiRandomKey()
    {
        return lwapiRandomKey;
    }

    public String getLwapiSecret()
    {
        return lwapiSecret;
    }

    public String getLwapiToken()
    {
        return lwapiToken;
    }

    public final void readFromParcel(Parcel parcel)
    {
        lwapiRandomKey = parcel.readInt();
        lwapiSecret = parcel.readString();
        lwapiToken = parcel.readString();
        lwapiClassname = parcel.readString();
    }

    public void setLwapiClassname(String s)
    {
        lwapiClassname = s;
    }

    public void setLwapiRandomKey(int i)
    {
        lwapiRandomKey = i;
    }

    public void setLwapiSecret(String s)
    {
        lwapiSecret = s;
    }

    public void setLwapiToken(String s)
    {
        lwapiToken = s;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(lwapiRandomKey);
        parcel.writeString(lwapiSecret);
        parcel.writeString(lwapiToken);
        parcel.writeString(lwapiClassname);
    }

}
