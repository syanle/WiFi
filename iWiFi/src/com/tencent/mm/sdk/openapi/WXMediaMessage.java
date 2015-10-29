// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.openapi;

import android.graphics.Bitmap;
import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.Log;
import java.io.ByteArrayOutputStream;

public final class WXMediaMessage
{
    public static class Builder
    {

        public static final String KEY_IDENTIFIER = "_wxobject_identifier_";

        public static WXMediaMessage fromBundle(Bundle bundle)
        {
            WXMediaMessage wxmediamessage = new WXMediaMessage();
            wxmediamessage.sdkVer = bundle.getInt("_wxobject_sdkVer");
            wxmediamessage.title = bundle.getString("_wxobject_title");
            wxmediamessage.description = bundle.getString("_wxobject_description");
            wxmediamessage.thumbData = bundle.getByteArray("_wxobject_thumbdata");
            String s = bundle.getString("_wxobject_identifier_");
            if (s == null || s.length() <= 0)
            {
                return wxmediamessage;
            }
            try
            {
                wxmediamessage.mediaObject = (IMediaObject)Class.forName(s).newInstance();
                wxmediamessage.mediaObject.unserialize(bundle);
            }
            // Misplaced declaration of an exception variable
            catch (Bundle bundle)
            {
                bundle.printStackTrace();
                Log.e("MicroMsg.SDK.WXMediaMessage", (new StringBuilder("get media object from bundle failed: unknown ident ")).append(s).toString());
                return wxmediamessage;
            }
            return wxmediamessage;
        }

        public static Bundle toBundle(WXMediaMessage wxmediamessage)
        {
            Bundle bundle = new Bundle();
            bundle.putInt("_wxobject_sdkVer", wxmediamessage.sdkVer);
            bundle.putString("_wxobject_title", wxmediamessage.title);
            bundle.putString("_wxobject_description", wxmediamessage.description);
            bundle.putByteArray("_wxobject_thumbdata", wxmediamessage.thumbData);
            if (wxmediamessage.mediaObject != null)
            {
                bundle.putString("_wxobject_identifier_", wxmediamessage.mediaObject.getClass().getName());
                wxmediamessage.mediaObject.serialize(bundle);
            }
            return bundle;
        }

        public Builder()
        {
        }
    }

    public static interface IMediaObject
    {

        public static final int TYPE_APPDATA = 7;
        public static final int TYPE_EMOJI = 8;
        public static final int TYPE_FILE = 6;
        public static final int TYPE_IMAGE = 2;
        public static final int TYPE_MUSIC = 3;
        public static final int TYPE_TEXT = 1;
        public static final int TYPE_UNKNOWN = 0;
        public static final int TYPE_URL = 5;
        public static final int TYPE_VIDEO = 4;

        public abstract boolean checkArgs();

        public abstract void serialize(Bundle bundle);

        public abstract int type();

        public abstract void unserialize(Bundle bundle);
    }


    public static final String ACTION_WXAPPMESSAGE = "com.tencent.mm.sdk.openapi.Intent.ACTION_WXAPPMESSAGE";
    public String description;
    public IMediaObject mediaObject;
    public int sdkVer;
    public byte thumbData[];
    public String title;

    public WXMediaMessage()
    {
        this(null);
    }

    public WXMediaMessage(IMediaObject imediaobject)
    {
        mediaObject = imediaobject;
    }

    final boolean checkArgs()
    {
        if (getType() == 8 && (thumbData == null || thumbData.length == 0))
        {
            Log.e("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, thumbData should not be null when send emoji");
            return false;
        }
        if (thumbData != null && thumbData.length > 32768)
        {
            Log.e("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, thumbData is invalid");
            return false;
        }
        if (title != null && title.length() > 512)
        {
            Log.e("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, title is invalid");
            return false;
        }
        if (description != null && description.length() > 1024)
        {
            Log.e("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, description is invalid");
            return false;
        }
        if (mediaObject == null)
        {
            Log.e("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, mediaObject is null");
            return false;
        } else
        {
            return mediaObject.checkArgs();
        }
    }

    public final int getType()
    {
        if (mediaObject == null)
        {
            return 0;
        } else
        {
            return mediaObject.type();
        }
    }

    public final void setThumbImage(Bitmap bitmap)
    {
        try
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 85, bytearrayoutputstream);
            thumbData = bytearrayoutputstream.toByteArray();
            bytearrayoutputstream.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            bitmap.printStackTrace();
        }
        Log.e("MicroMsg.SDK.WXMediaMessage", "put thumb failed");
    }
}
