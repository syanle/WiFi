// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.message;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

// Referenced classes of package com.laiwang.sdk.message:
//            IILWMessage

public class LWMessage
    implements IILWMessage, Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public LWMessage createFromParcel(Parcel parcel)
        {
            return new LWMessage(parcel, null);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public LWMessage[] newArray(int i)
        {
            return new LWMessage[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    protected String appUrl;
    protected String msgActivity;
    protected String msgAppKey;
    protected String msgChat;
    protected String msgContent;
    protected Bitmap msgImageThumbBMP;
    protected String msgImageThumbPATH;
    protected String msgImageURL;
    protected String msgLinkUrl;
    protected String msgSecret;
    protected String msgShareType;
    protected String msgSource;
    protected String msgTitle;
    protected int msgType;

    public LWMessage()
    {
    }

    private LWMessage(Parcel parcel)
    {
        readFromParcel(parcel);
    }

    LWMessage(Parcel parcel, LWMessage lwmessage)
    {
        this(parcel);
    }

    public int describeContents()
    {
        return 0;
    }

    public IILWMessage fromBundle(Bundle bundle)
    {
        setMessageTitle(bundle.getString("title"));
        setMessageText(bundle.getString("content"));
        setMessageChat(bundle.getString("chat"));
        setMessageText(bundle.getString("content"));
        setMessageImageURL(bundle.getString("picUrl"));
        setMesssageSource(bundle.getString("source"));
        setMessageLinkUrl(bundle.getString("link"));
        setAppkey(bundle.getString("clientId"));
        setSecret(bundle.getString("clientSecret"));
        setMessageLinkUrl(bundle.getString("contentUrl"));
        setShareType(bundle.getString("shareType"));
        msgType = bundle.getInt("reqeustTYPE");
        if (msgType == 0)
        {
            msgType = 6;
        }
        return this;
    }

    public String getAppUrl()
    {
        return appUrl;
    }

    public String getAppkey()
    {
        return msgAppKey;
    }

    public String getMessageActivity()
    {
        return msgActivity;
    }

    public String getMessageChat()
    {
        return msgChat;
    }

    public Bitmap getMessageImageThumbBMP()
    {
        return msgImageThumbBMP;
    }

    public String getMessageImageThumbPath()
    {
        return msgImageThumbPATH;
    }

    public String getMessageImageURL()
    {
        return msgImageURL;
    }

    public String getMessageLinkUrl()
    {
        return msgLinkUrl;
    }

    public String getMessageSource()
    {
        return msgSource;
    }

    public String getMessageText()
    {
        return msgContent;
    }

    public String getMessageThumb()
    {
        if (!TextUtils.isEmpty(getMessageImageURL()))
        {
            return getMessageImageURL();
        } else
        {
            return getMessageImageThumbPath();
        }
    }

    public String getMessageTitle()
    {
        return msgTitle;
    }

    public int getMessageType()
    {
        return msgType;
    }

    public String getSecret()
    {
        return msgSecret;
    }

    public String getShareType()
    {
        return msgShareType;
    }

    public void isIMessageMusic()
    {
        msgType = 3;
    }

    public void isMessageComponent()
    {
        msgType = 6;
    }

    public void isMessageImage()
    {
        msgType = 2;
    }

    public void isMessageLink()
    {
        msgType = 5;
    }

    public void isMessageText()
    {
        msgType = 1;
    }

    public final void readFromParcel(Parcel parcel)
    {
        msgType = parcel.readInt();
        msgShareType = parcel.readString();
        msgAppKey = parcel.readString();
        msgSecret = parcel.readString();
        msgContent = parcel.readString();
        msgSource = parcel.readString();
        msgImageURL = parcel.readString();
        msgImageThumbPATH = parcel.readString();
        msgTitle = parcel.readString();
        msgLinkUrl = parcel.readString();
        msgChat = parcel.readString();
        msgActivity = parcel.readString();
    }

    public void setAppUrl(String s)
    {
        appUrl = s;
    }

    public void setAppkey(String s)
    {
        msgAppKey = s;
    }

    public void setMessageActiviy(String s)
    {
        msgActivity = s;
    }

    public void setMessageChat(String s)
    {
        msgChat = s;
    }

    public void setMessageImageThumbBMP(Bitmap bitmap)
    {
        msgImageThumbBMP = bitmap;
    }

    public void setMessageImageThumbPath(String s)
    {
        msgImageThumbPATH = s;
    }

    public void setMessageImageURL(String s)
    {
        msgImageURL = s;
    }

    public void setMessageLinkUrl(String s)
    {
        msgLinkUrl = s;
    }

    public void setMessageText(String s)
    {
        msgContent = s;
    }

    public void setMessageTitle(String s)
    {
        msgTitle = s;
    }

    public void setMessageType(int i)
    {
        msgType = i;
    }

    public void setMesssageSource(String s)
    {
        msgSource = s;
    }

    public void setSecret(String s)
    {
        msgSecret = s;
    }

    public void setShareType(String s)
    {
        msgShareType = s;
    }

    public Bundle toBundle()
    {
        Bundle bundle = new Bundle();
        bundle.putInt("reqeustTYPE", msgType);
        bundle.putString("title", getMessageTitle());
        bundle.putString("content", getMessageText());
        bundle.putString("chat", getMessageChat());
        if (!TextUtils.isEmpty(getMessageImageURL()))
        {
            bundle.putString("picUrl", getMessageImageURL());
        } else
        {
            bundle.putString("picUrl", getMessageImageThumbPath());
        }
        bundle.putString("source", getMessageSource());
        bundle.putString("link", getMessageLinkUrl());
        bundle.putString("clientId", getAppkey());
        bundle.putString("clientSecret", getSecret());
        bundle.putString("contentUrl", getMessageLinkUrl());
        if ("DYNAMIC".equals(getShareType()) || "DYNAMIC2".equals(getShareType()))
        {
            bundle.putString("shareType", "DYNAMIC");
            return bundle;
        } else
        {
            bundle.putString("shareType", getShareType());
            return bundle;
        }
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(msgType);
        parcel.writeString(msgShareType);
        parcel.writeString(msgAppKey);
        parcel.writeString(msgSecret);
        parcel.writeString(msgContent);
        parcel.writeString(msgSource);
        parcel.writeString(msgImageURL);
        parcel.writeString(msgImageThumbPATH);
        parcel.writeString(msgTitle);
        parcel.writeString(msgLinkUrl);
        parcel.writeString(msgChat);
        parcel.writeString(msgActivity);
    }

}
