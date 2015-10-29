// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.pinyin4j;


class PinyinRomanizationType
{

    static final PinyinRomanizationType GWOYEU_ROMATZYH = new PinyinRomanizationType("Gwoyeu");
    static final PinyinRomanizationType HANYU_PINYIN = new PinyinRomanizationType("Hanyu");
    static final PinyinRomanizationType MPS2_PINYIN = new PinyinRomanizationType("MPSII");
    static final PinyinRomanizationType TONGYONG_PINYIN = new PinyinRomanizationType("Tongyong");
    static final PinyinRomanizationType WADEGILES_PINYIN = new PinyinRomanizationType("Wade");
    static final PinyinRomanizationType YALE_PINYIN = new PinyinRomanizationType("Yale");
    protected String tagName;

    protected PinyinRomanizationType(String s)
    {
        setTagName(s);
    }

    String getTagName()
    {
        return tagName;
    }

    protected void setTagName(String s)
    {
        tagName = s;
    }

}
