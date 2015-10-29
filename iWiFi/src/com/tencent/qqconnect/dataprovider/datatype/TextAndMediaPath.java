// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.qqconnect.dataprovider.datatype;

import android.os.Parcel;
import android.os.Parcelable;

public class TextAndMediaPath
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String mMediaPath;
    private String mText;

    private TextAndMediaPath(Parcel parcel)
    {
        mText = parcel.readString();
        mMediaPath = parcel.readString();
    }

    TextAndMediaPath(Parcel parcel, _cls1 _pcls1)
    {
        this(parcel);
    }

    public TextAndMediaPath(String s, String s1)
    {
        mText = s;
        mMediaPath = s1;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getMediaPath()
    {
        return mMediaPath;
    }

    public String getText()
    {
        return mText;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(mText);
        parcel.writeString(mMediaPath);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public TextAndMediaPath createFromParcel(Parcel parcel)
        {
            return new TextAndMediaPath(parcel, null);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public TextAndMediaPath[] newArray(int i)
        {
            return new TextAndMediaPath[i];
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
