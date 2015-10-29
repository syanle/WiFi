// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.qqconnect.dataprovider.datatype;

import android.os.Parcel;
import android.os.Parcelable;

public class TextOnly
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String mText;

    private TextOnly(Parcel parcel)
    {
        mText = parcel.readString();
    }

    TextOnly(Parcel parcel, _cls1 _pcls1)
    {
        this(parcel);
    }

    public TextOnly(String s)
    {
        mText = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getText()
    {
        return mText;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(mText);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public TextOnly createFromParcel(Parcel parcel)
        {
            return new TextOnly(parcel, null);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public TextOnly[] newArray(int i)
        {
            return new TextOnly[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

        _cls1()
        {
        }
    }

}
