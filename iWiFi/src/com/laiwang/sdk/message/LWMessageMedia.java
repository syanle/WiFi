// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.message;

import android.os.Bundle;

// Referenced classes of package com.laiwang.sdk.message:
//            LWMessage, IILWMessage

public class LWMessageMedia extends LWMessage
{

    private String description;
    private double duration;
    private String extra;
    private String flag;
    private String picture;
    private String playLink;
    private String type;

    public LWMessageMedia()
    {
    }

    public IILWMessage fromBundle(Bundle bundle)
    {
        super.fromBundle(bundle);
        picture = bundle.getString("picture");
        description = bundle.getString("description");
        description = bundle.getString("thumbnail");
        extra = bundle.getString("extra");
        playLink = bundle.getString("playLink");
        duration = bundle.getDouble("duration");
        type = bundle.getString("type");
        return this;
    }

    public String getDescription()
    {
        return description;
    }

    public Double getDuration()
    {
        return Double.valueOf(duration);
    }

    public String getExtra()
    {
        return extra;
    }

    public String getFlag()
    {
        return flag;
    }

    public String getPicture()
    {
        return picture;
    }

    public String getPlayLink()
    {
        return playLink;
    }

    public void setDescription(String s)
    {
        description = s;
    }

    public void setDuration(Double double1)
    {
        duration = double1.doubleValue();
    }

    public void setExtra(String s)
    {
        extra = s;
    }

    public void setFlag(String s)
    {
        flag = s;
    }

    public void setPicture(String s)
    {
        picture = s;
    }

    public void setPlayLink(String s)
    {
        playLink = s;
    }

    public Bundle toBundle()
    {
        Bundle bundle = super.toBundle();
        bundle.putString("picture", picture);
        bundle.putString("description", description);
        bundle.putString("thumbnail", getMessageImageURL());
        bundle.putString("extra", extra);
        bundle.putString("playLink", playLink);
        bundle.putDouble("duration", duration);
        bundle.putString("type", type);
        return bundle;
    }
}
