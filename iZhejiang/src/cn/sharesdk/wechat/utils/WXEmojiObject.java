// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import android.text.TextUtils;
import com.mob.tools.utils.Ln;
import java.io.File;

public class WXEmojiObject
    implements WXMediaMessage.IMediaObject
{

    public byte emojiData[];
    public String emojiPath;

    public WXEmojiObject()
    {
    }

    public WXEmojiObject(String s)
    {
        emojiPath = s;
    }

    public WXEmojiObject(byte abyte0[])
    {
        emojiData = abyte0;
    }

    public boolean checkArgs()
    {
        if ((emojiData == null || emojiData.length == 0) && TextUtils.isEmpty(emojiPath))
        {
            Ln.e("MicroMsg.SDK.WXEmojiObject", new Object[] {
                "checkArgs fail, both arguments is null"
            });
            return false;
        }
        if (emojiData != null && emojiData.length > 0xa00000)
        {
            Ln.e("MicroMsg.SDK.WXEmojiObject", new Object[] {
                "checkArgs fail, emojiData is too large"
            });
            return false;
        }
        if (emojiPath != null)
        {
            File file = new File(emojiPath);
            if (!file.exists())
            {
                Ln.e("MicroMsg.SDK.WXEmojiObject", new Object[] {
                    "checkArgs fail, emojiPath not found"
                });
                return false;
            }
            if (file.length() > 0xa00000L)
            {
                Ln.e("MicroMsg.SDK.WXEmojiObject", new Object[] {
                    "checkArgs fail, emojiSize is too large"
                });
                return false;
            }
        }
        return true;
    }

    public void serialize(Bundle bundle)
    {
        bundle.putByteArray("_wxemojiobject_emojiData", emojiData);
        bundle.putString("_wxemojiobject_emojiPath", emojiPath);
    }

    public void setEmojiData(byte abyte0[])
    {
        emojiData = abyte0;
    }

    public void setEmojiPath(String s)
    {
        emojiPath = s;
    }

    public int type()
    {
        return 8;
    }

    public void unserialize(Bundle bundle)
    {
        emojiData = bundle.getByteArray("_wxemojiobject_emojiData");
        emojiPath = bundle.getString("_wxemojiobject_emojiPath");
    }
}
