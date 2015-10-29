// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.utils;


// Referenced classes of package cn.sharesdk.yixin.utils:
//            YXMessage

public static final class  extends Enum
{

    private static final WEB_PAGE $VALUES[];
    public static final WEB_PAGE CARD;
    public static final WEB_PAGE FILE;
    public static final WEB_PAGE IMAGE;
    public static final WEB_PAGE MAP;
    public static final WEB_PAGE MUSIC;
    public static final WEB_PAGE TEXT;
    public static final WEB_PAGE UNKNOWN;
    public static final WEB_PAGE VIDEO;
    public static final WEB_PAGE WEB_PAGE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(cn/sharesdk/yixin/utils/YXMessage$MessageType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UNKNOWN = new <init>("UNKNOWN", 0);
        TEXT = new <init>("TEXT", 1);
        IMAGE = new <init>("IMAGE", 2);
        MUSIC = new <init>("MUSIC", 3);
        VIDEO = new <init>("VIDEO", 4);
        FILE = new <init>("FILE", 5);
        MAP = new <init>("MAP", 6);
        CARD = new <init>("CARD", 7);
        WEB_PAGE = new <init>("WEB_PAGE", 8);
        $VALUES = (new .VALUES[] {
            UNKNOWN, TEXT, IMAGE, MUSIC, VIDEO, FILE, MAP, CARD, WEB_PAGE
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
