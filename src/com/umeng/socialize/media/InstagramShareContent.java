// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.os.Parcel;
import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.media:
//            SimpleShareContent, UMImage

public class InstagramShareContent extends SimpleShareContent
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();

    public InstagramShareContent()
    {
        super("");
    }

    protected InstagramShareContent(Parcel parcel)
    {
        super(parcel);
    }

    public InstagramShareContent(UMImage umimage)
    {
        super(umimage);
    }

    public SHARE_MEDIA getTargetPlatform()
    {
        return SHARE_MEDIA.INSTAGRAM;
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public InstagramShareContent createFromParcel(Parcel parcel)
        {
            return new InstagramShareContent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public InstagramShareContent[] newArray(int i)
        {
            return new InstagramShareContent[i];
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
