// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.pinyin4j.format;


// Referenced classes of package net.sourceforge.pinyin4j.format:
//            HanyuPinyinVCharType, HanyuPinyinCaseType, HanyuPinyinToneType

public final class HanyuPinyinOutputFormat
{

    private HanyuPinyinCaseType caseType;
    private HanyuPinyinToneType toneType;
    private HanyuPinyinVCharType vCharType;

    public HanyuPinyinOutputFormat()
    {
        restoreDefault();
    }

    public HanyuPinyinCaseType getCaseType()
    {
        return caseType;
    }

    public HanyuPinyinToneType getToneType()
    {
        return toneType;
    }

    public HanyuPinyinVCharType getVCharType()
    {
        return vCharType;
    }

    public void restoreDefault()
    {
        vCharType = HanyuPinyinVCharType.WITH_U_AND_COLON;
        caseType = HanyuPinyinCaseType.LOWERCASE;
        toneType = HanyuPinyinToneType.WITH_TONE_NUMBER;
    }

    public void setCaseType(HanyuPinyinCaseType hanyupinyincasetype)
    {
        caseType = hanyupinyincasetype;
    }

    public void setToneType(HanyuPinyinToneType hanyupinyintonetype)
    {
        toneType = hanyupinyintonetype;
    }

    public void setVCharType(HanyuPinyinVCharType hanyupinyinvchartype)
    {
        vCharType = hanyupinyinvchartype;
    }
}
