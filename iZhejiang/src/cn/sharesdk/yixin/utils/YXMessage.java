// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.TextUtils;
import com.mob.tools.utils.Ln;

// Referenced classes of package cn.sharesdk.yixin.utils:
//            YXImageMessageData

public final class YXMessage
{
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
            return (MessageType)Enum.valueOf(cn/sharesdk/yixin/utils/YXMessage$MessageType, s);
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

    public static class a
    {

        public static Bundle a(YXMessage yxmessage)
        {
            Bundle bundle = new Bundle();
            bundle.putInt("_yixinmessage_version", yxmessage.version);
            bundle.putString("_yixinmessage_title", yxmessage.title);
            bundle.putString("_yixinmessage_description", yxmessage.description);
            bundle.putByteArray("_yixinmessage_thumbdata", yxmessage.thumbData);
            if (yxmessage.messageData != null)
            {
                bundle.putString("_yixinmessage_dataClass", (new StringBuilder()).append("im.yixin.sdk.api.").append(yxmessage.messageData.getClass().getSimpleName()).toString());
                yxmessage.messageData.write(bundle);
            }
            return bundle;
        }

        public static YXMessage a(Bundle bundle)
        {
            YXMessage yxmessage = new YXMessage();
            yxmessage.version = bundle.getInt("_yixinmessage_version");
            yxmessage.title = a(bundle.getString("_yixinmessage_title"), 40, true);
            yxmessage.description = a(bundle.getString("_yixinmessage_description"), 72, true);
            yxmessage.thumbData = bundle.getByteArray("_yixinmessage_thumbdata");
            String s = bundle.getString("_yixinmessage_dataClass");
            if (s == null || s.length() <= 0)
            {
                return yxmessage;
            }
            try
            {
                yxmessage.messageData = (YXMessageData)Class.forName(s.replace("im.yixin.sdk.api", "cn.sharesdk.yixin.utils")).newInstance();
                yxmessage.messageData.read(bundle);
            }
            // Misplaced declaration of an exception variable
            catch (Bundle bundle)
            {
                Ln.e(bundle);
                return yxmessage;
            }
            return yxmessage;
        }

        private static String a(String s, int i, boolean flag)
        {
            boolean flag1 = false;
            if (s == null)
            {
                return "";
            }
            String s1 = s.replaceAll("\\n", " ");
            s = new StringBuilder();
            char ac[] = s1.toCharArray();
            int j = 0;
            int k = 0;
            do
            {
label0:
                {
                    int l = ((flag1) ? 1 : 0);
                    if (j < ac.length)
                    {
                        if (ac[j] <= '\177')
                        {
                            l = 1;
                        } else
                        {
                            l = 0;
                        }
                        if (l != 0)
                        {
                            l = 1;
                        } else
                        {
                            l = 2;
                        }
                        k += l;
                        if (k <= i)
                        {
                            break label0;
                        }
                        l = 1;
                    }
                    if (flag && l != 0)
                    {
                        s.append("...");
                    }
                    return s.toString();
                }
                s.append(ac[j]);
                j++;
            } while (true);
        }
    }


    public static final int THUMB_SIZE = 0x10000;
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

    final boolean a()
    {
        if (messageData == null)
        {
            Ln.e("messageData is null", new Object[0]);
            return false;
        }
        Bitmap bitmap;
        if (thumbData != null)
        {
            if (thumbData.length > 0x10000)
            {
                Ln.e((new StringBuilder()).append("thumbData.length ").append(thumbData.length).append(">65536").toString(), new Object[0]);
                return false;
            }
            if (thumbData.length > 0x10000)
            {
                Ln.e((new StringBuilder()).append("thumbData.length ").append(thumbData.length).append(">65536").toString(), new Object[0]);
                return false;
            }
            bitmap = BitmapFactory.decodeByteArray(thumbData, 0, thumbData.length);
            if (bitmap == null)
            {
                Ln.e("thumbData is not an image", new Object[0]);
                return false;
            }
        } else
        {
            bitmap = null;
        }
        if (title != null && title.length() > 512)
        {
            Ln.e((new StringBuilder()).append("title.length ").append(title.length()).append(">512").toString(), new Object[0]);
            return false;
        }
        if (description != null && description.length() > 1024)
        {
            description = (new StringBuilder()).append(description.substring(0, 1021)).append("...").toString();
        }
        if (bitmap != null && (messageData instanceof YXImageMessageData) && !TextUtils.isEmpty(((YXImageMessageData)messageData).imageUrl) && bitmap.getWidth() < 200 && bitmap.getHeight() < 200)
        {
            Ln.e("YXImageMessageData thumbData width/height must greater than 200px when dataType is url", new Object[0]);
            return false;
        } else
        {
            return messageData.verifyData();
        }
    }
}
