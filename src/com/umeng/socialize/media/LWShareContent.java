// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.media:
//            BaseShareContent, UMImage

public class LWShareContent extends BaseShareContent
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String f;
    private String g;

    public LWShareContent()
    {
    }

    protected LWShareContent(Parcel parcel)
    {
        super(parcel);
        f = parcel.readString();
        g = parcel.readString();
    }

    public LWShareContent(UMImage umimage)
    {
        super(umimage);
    }

    public LWShareContent(String s)
    {
        super(s);
    }

    public String getMessageFrom()
    {
        return g;
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.LAIWANG;
    }

    public String getTitle()
    {
        return f;
    }

    public void setMessageFrom(String s)
    {
        g = s;
    }

    public void setTitle(String s)
    {
        f = s;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeString(f);
        parcel.writeString(g);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public LWShareContent createFromParcel(Parcel parcel)
        {
            return new LWShareContent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public LWShareContent[] newArray(int i)
        {
            return new LWShareContent[i];
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
