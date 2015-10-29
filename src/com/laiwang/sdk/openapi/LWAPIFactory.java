// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.openapi;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.laiwang.sdk.message.IILWMessage;
import com.laiwang.sdk.message.LWMessage;
import com.laiwang.sdk.message.LWMessageMedia;
import com.laiwang.sdk.message.LWMessageText;

// Referenced classes of package com.laiwang.sdk.openapi:
//            LWAPI, ILWAPI

public class LWAPIFactory
{

    public LWAPIFactory()
    {
    }

    public static IILWMessage createComMessage(String s, String s1, String s2, String s3, Bitmap bitmap, String s4, String s5, String s6, 
            String s7)
    {
        LWMessage lwmessage = new LWMessage();
        lwmessage.isMessageComponent();
        lwmessage.setMessageTitle(s);
        lwmessage.setMessageText(s1);
        lwmessage.setMessageLinkUrl(s3);
        lwmessage.setMessageImageThumbPath(s4);
        lwmessage.setMessageImageURL(s5);
        lwmessage.setMessageChat(s2);
        lwmessage.setMessageImageThumbBMP(bitmap);
        lwmessage.setMesssageSource(s6);
        lwmessage.setShareType(s7);
        return lwmessage;
    }

    public static ILWAPI createLWAPI(Context context, String s, String s1, int i, String s2, String s3)
    {
        return LWAPI.getInstance(context, s, s1, i, s2, s3);
    }

    public static IILWMessage createMediaMessage(String s, String s1, String s2, int i, String s3, String s4, String s5, String s6, 
            String s7, String s8, String s9, double d, String s10, String s11)
    {
        s2 = new LWMessageMedia();
        s2.setMessageTitle(s);
        s2.setMessageText(s1);
        s2.setPicture(s3);
        s2.setDescription(s4);
        s2.setExtra(s6);
        s2.setPlayLink(s7);
        s2.setMessageLinkUrl(s7);
        s2.setMessageImageURL(s5);
        s2.setMesssageSource(s9);
        s2.setDuration(Double.valueOf(d));
        s2.setShareType(s11);
        s2.setMessageType(i);
        s2.setFlag(s10);
        return s2;
    }

    public static IILWMessage createTextMessage(String s, String s1)
    {
        LWMessageText lwmessagetext = new LWMessageText();
        lwmessagetext.setMessageText(s);
        lwmessagetext.setShareType(s1);
        return lwmessagetext;
    }

    public static IILWMessage fromBundle(Bundle bundle)
    {
        Object obj1;
        if (bundle == null)
        {
            obj1 = null;
        } else
        {
            int i = bundle.getInt("reqeustTYPE");
            Object obj;
            if (i == 6)
            {
                obj = new LWMessage();
            } else
            if (i == 3 || i == 4)
            {
                obj = new LWMessageMedia();
            } else
            {
                obj = new LWMessage();
            }
            obj1 = obj;
            if (obj != null)
            {
                ((IILWMessage) (obj)).fromBundle(bundle);
                return ((IILWMessage) (obj));
            }
        }
        return ((IILWMessage) (obj1));
    }
}
