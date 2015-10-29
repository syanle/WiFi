// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare;


public final class OnekeyShareTheme extends Enum
{

    public static final OnekeyShareTheme CLASSIC;
    private static final OnekeyShareTheme ENUM$VALUES[];
    public static final OnekeyShareTheme SKYBLUE;

    private OnekeyShareTheme(String s, int i)
    {
        super(s, i);
    }

    public static OnekeyShareTheme valueOf(String s)
    {
        return (OnekeyShareTheme)Enum.valueOf(cn/sharesdk/onekeyshare/OnekeyShareTheme, s);
    }

    public static OnekeyShareTheme[] values()
    {
        OnekeyShareTheme aonekeysharetheme[] = ENUM$VALUES;
        int i = aonekeysharetheme.length;
        OnekeyShareTheme aonekeysharetheme1[] = new OnekeyShareTheme[i];
        System.arraycopy(aonekeysharetheme, 0, aonekeysharetheme1, 0, i);
        return aonekeysharetheme1;
    }

    static 
    {
        CLASSIC = new OnekeyShareTheme("CLASSIC", 0);
        SKYBLUE = new OnekeyShareTheme("SKYBLUE", 1);
        ENUM$VALUES = (new OnekeyShareTheme[] {
            CLASSIC, SKYBLUE
        });
    }
}
