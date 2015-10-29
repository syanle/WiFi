// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.media.UMediaObject;

// Referenced classes of package com.umeng.socialize.bean:
//            i, UMLocation

public class BaseMsg
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new i();
    protected UMediaObject a;
    public UMLocation mLocation;
    public String mText;

    public BaseMsg()
    {
        mText = "";
        a = null;
    }

    protected BaseMsg(Parcel parcel)
    {
        mText = "";
        a = null;
        mText = parcel.readString();
        mLocation = (UMLocation)parcel.readParcelable(com/umeng/socialize/bean/UMLocation.getClassLoader());
        String s = parcel.readString();
        if (!TextUtils.isEmpty(s))
        {
            try
            {
                a = (UMediaObject)parcel.readParcelable(Class.forName(s).getClassLoader());
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Parcel parcel)
            {
                Log.d("", parcel.toString());
            }
            return;
        } else
        {
            parcel.readString();
            return;
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public UMediaObject getMedia()
    {
        return a;
    }

    public void setMediaData(UMediaObject umediaobject)
    {
        a = umediaobject;
    }

    public void writeToParcel(Parcel parcel, int j)
    {
        parcel.writeString(mText);
        parcel.writeParcelable(mLocation, 1);
        String s;
        if (a == null)
        {
            s = "";
        } else
        {
            s = a.getClass().getName();
        }
        parcel.writeString(s);
        parcel.writeParcelable(a, 1);
    }

}
