// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.media:
//            SimpleShareContent, UMImage

public class SmsShareContent extends SimpleShareContent
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();

    public SmsShareContent()
    {
    }

    protected SmsShareContent(Parcel parcel)
    {
        super(parcel);
    }

    public SmsShareContent(UMImage umimage)
    {
        super(umimage);
    }

    public SmsShareContent(String s)
    {
        super(s);
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.SMS;
    }

    public String toString()
    {
        return super.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public SmsShareContent createFromParcel(Parcel parcel)
        {
            return new SmsShareContent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public SmsShareContent[] newArray(int i)
        {
            return new SmsShareContent[i];
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
