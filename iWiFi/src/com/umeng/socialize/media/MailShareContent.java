// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.media:
//            SimpleShareContent, UMImage

public class MailShareContent extends SimpleShareContent
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String a;

    public MailShareContent()
    {
        a = "";
    }

    protected MailShareContent(Parcel parcel)
    {
        super(parcel);
        a = "";
        if (parcel != null)
        {
            a = parcel.readString();
        }
    }

    public MailShareContent(UMImage umimage)
    {
        super(umimage);
        a = "";
    }

    public MailShareContent(String s)
    {
        super(s);
        a = "";
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.EMAIL;
    }

    public String getTitle()
    {
        return a;
    }

    public void setTitle(String s)
    {
        a = s;
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(super.toString()))).append("MailShareContent [mTitle=").append(a).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeString(a);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public MailShareContent createFromParcel(Parcel parcel)
        {
            return new MailShareContent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public MailShareContent[] newArray(int i)
        {
            return new MailShareContent[i];
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
