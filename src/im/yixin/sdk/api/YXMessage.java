// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.graphics.Bitmap;
import android.os.Bundle;
import im.yixin.sdk.util.BitmapUtil;
import im.yixin.sdk.util.SDKHttpUtils;
import im.yixin.sdk.util.StringUtil;

// Referenced classes of package im.yixin.sdk.api:
//            YXImageMessageData

public final class YXMessage
{
    public static class Converter
    {

        private static final String DATA_CLASS_KEY = "_yixinmessage_dataClass";
        private static final String VERSION_KEY = "_yixinmessage_version";

        public static YXMessage read(Bundle bundle)
        {
            YXMessage yxmessage = new YXMessage();
            yxmessage.version = bundle.getInt("_yixinmessage_version");
            yxmessage.title = StringUtil.substringByByteCount(bundle.getString("_yixinmessage_title"), 40, true);
            yxmessage.description = StringUtil.substringByByteCount(bundle.getString("_yixinmessage_description"), 72, true);
            yxmessage.thumbData = bundle.getByteArray("_yixinmessage_thumbdata");
            String s = bundle.getString("_yixinmessage_dataClass");
            if (s == null || s.length() <= 0)
            {
                return yxmessage;
            }
            try
            {
                yxmessage.messageData = (YXMessageData)Class.forName(s).newInstance();
                yxmessage.messageData.read(bundle);
            }
            // Misplaced declaration of an exception variable
            catch (Bundle bundle)
            {
                bundle.printStackTrace();
                return yxmessage;
            }
            return yxmessage;
        }

        public static Bundle write(YXMessage yxmessage)
        {
            Bundle bundle = new Bundle();
            bundle.putInt("_yixinmessage_version", yxmessage.version);
            bundle.putString("_yixinmessage_title", yxmessage.title);
            bundle.putString("_yixinmessage_description", yxmessage.description);
            bundle.putByteArray("_yixinmessage_thumbdata", yxmessage.thumbData);
            if (yxmessage.messageData != null)
            {
                bundle.putString("_yixinmessage_dataClass", yxmessage.messageData.getClass().getName());
                yxmessage.messageData.write(bundle);
            }
            return bundle;
        }

        public Converter()
        {
        }
    }

    public static final class MessageType extends Enum
    {

        private static final MessageType $VALUES[];
        public static final MessageType CARD;
        public static final MessageType FILE;
        public static final MessageType IMAGE;
        public static final MessageType MAP;
        public static final MessageType MUSIC;
        public static final MessageType TEXT;
        public static final MessageType UNKNOWN;
        public static final MessageType VIDEO;
        public static final MessageType WEB_PAGE;

        public static MessageType valueOf(String s)
        {
            return (MessageType)Enum.valueOf(im/yixin/sdk/api/YXMessage$MessageType, s);
        }

        public static MessageType[] values()
        {
            return (MessageType[])$VALUES.clone();
        }

        static 
        {
            UNKNOWN = new MessageType("UNKNOWN", 0);
            TEXT = new MessageType("TEXT", 1);
            IMAGE = new MessageType("IMAGE", 2);
            MUSIC = new MessageType("MUSIC", 3);
            VIDEO = new MessageType("VIDEO", 4);
            FILE = new MessageType("FILE", 5);
            MAP = new MessageType("MAP", 6);
            CARD = new MessageType("CARD", 7);
            WEB_PAGE = new MessageType("WEB_PAGE", 8);
            $VALUES = (new MessageType[] {
                UNKNOWN, TEXT, IMAGE, MUSIC, VIDEO, FILE, MAP, CARD, WEB_PAGE
            });
        }

        private MessageType(String s, int i)
        {
            super(s, i);
        }
    }

    public static interface YXMessageData
    {

        public abstract MessageType dataType();

        public abstract void read(Bundle bundle);

        public abstract boolean verifyData();

        public abstract void write(Bundle bundle);
    }


    public String description;
    public YXMessageData messageData;
    public byte thumbData[];
    public String title;
    public int version;

    public YXMessage()
    {
    }

    public YXMessage(YXMessageData yxmessagedata)
    {
        messageData = yxmessagedata;
    }

    final boolean verifyData()
    {
        if (messageData == null)
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXMessage, "messageData is null");
            return false;
        }
        if (thumbData != null && thumbData.length > 0x10000)
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXMessage, messageData.getClass(), (new StringBuilder()).append("thumbData.length ").append(thumbData.length).append(">65536").toString());
            return false;
        }
        if (thumbData != null && BitmapUtil.byteArrayToBmp(thumbData) == null)
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXMessage, messageData.getClass(), "thumbData is not an image");
            return false;
        }
        if (title != null && title.length() > 512)
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXMessage, messageData.getClass(), (new StringBuilder()).append("title.length ").append(title.length()).append(">512").toString());
            return false;
        }
        if (description != null && description.length() > 1024)
        {
            SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXMessage, messageData.getClass(), (new StringBuilder()).append("description.length ").append(description.length()).append(">1024").toString());
            return false;
        }
        if ((messageData instanceof YXImageMessageData) && StringUtil.isNotBlank(((YXImageMessageData)messageData).imageUrl))
        {
            Bitmap bitmap = BitmapUtil.byteArrayToBmp(thumbData);
            if (bitmap == null || bitmap.getWidth() < 200 || bitmap.getHeight() < 200)
            {
                SDKHttpUtils.getInstance().get4ErrorLog(im/yixin/sdk/api/YXMessage, messageData.getClass(), "YXImageMessageData thumbData width/height must greater than 200px when dataType is url");
                return false;
            }
        }
        return messageData.verifyData();
    }
}
