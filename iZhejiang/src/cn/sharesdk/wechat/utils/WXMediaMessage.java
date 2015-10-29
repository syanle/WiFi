// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.graphics.Bitmap;
import android.os.Bundle;
import com.mob.tools.utils.Ln;
import java.io.ByteArrayOutputStream;

public final class WXMediaMessage
{
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

    public static class a
    {

        public static Bundle a(WXMediaMessage wxmediamessage)
        {
            Bundle bundle = new Bundle();
            bundle.putInt("_wxobject_sdkVer", wxmediamessage.sdkVer);
            bundle.putString("_wxobject_title", wxmediamessage.title);
            bundle.putString("_wxobject_description", wxmediamessage.description);
            bundle.putByteArray("_wxobject_thumbdata", wxmediamessage.thumbData);
            if (wxmediamessage.mediaObject != null)
            {
                bundle.putString("_wxobject_identifier_", (new StringBuilder()).append("com.tencent.mm.sdk.openapi.").append(wxmediamessage.mediaObject.getClass().getSimpleName()).toString());
                wxmediamessage.mediaObject.serialize(bundle);
            }
            return bundle;
        }

        public static WXMediaMessage a(Bundle bundle)
        {
            WXMediaMessage wxmediamessage = new WXMediaMessage();
            wxmediamessage.sdkVer = bundle.getInt("_wxobject_sdkVer");
            wxmediamessage.title = bundle.getString("_wxobject_title");
            wxmediamessage.description = bundle.getString("_wxobject_description");
            wxmediamessage.thumbData = bundle.getByteArray("_wxobject_thumbdata");
            String s1 = bundle.getString("_wxobject_identifier_");
            if (s1 == null || s1.length() <= 0)
            {
                return wxmediamessage;
            }
            String s = s1;
            try
            {
                s1 = s1.replace("com.tencent.mm.sdk.openapi", "cn.sharesdk.wechat.utils");
            }
            // Misplaced declaration of an exception variable
            catch (Bundle bundle)
            {
                Ln.e(bundle);
                Ln.e((new StringBuilder()).append("get media object from bundle failed: unknown ident ").append(s).toString(), new Object[0]);
                return wxmediamessage;
            }
            s = s1;
            wxmediamessage.mediaObject = (IMediaObject)Class.forName(s1).newInstance();
            s = s1;
            wxmediamessage.mediaObject.unserialize(bundle);
            return wxmediamessage;
        }
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
            Ln.e(bitmap);
        }
        Ln.e("put thumb failed", new Object[0]);
    }
}
