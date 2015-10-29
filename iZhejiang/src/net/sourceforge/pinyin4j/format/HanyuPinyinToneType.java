// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.pinyin4j.format;


public class HanyuPinyinToneType
{

    public static final HanyuPinyinToneType WITHOUT_TONE = new HanyuPinyinToneType("WITHOUT_TONE");
    public static final HanyuPinyinToneType WITH_TONE_MARK = new HanyuPinyinToneType("WITH_TONE_MARK");
    public static final HanyuPinyinToneType WITH_TONE_NUMBER = new HanyuPinyinToneType("WITH_TONE_NUMBER");
    protected String name;

    protected HanyuPinyinToneType(String s)
    {
        setName(s);
    }

    public String getName()
    {
        return name;
    }

    protected void setName(String s)
    {
        name = s;
    }

}
