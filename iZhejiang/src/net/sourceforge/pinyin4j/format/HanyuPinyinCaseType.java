// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.pinyin4j.format;


public class HanyuPinyinCaseType
{

    public static final HanyuPinyinCaseType LOWERCASE = new HanyuPinyinCaseType("LOWERCASE");
    public static final HanyuPinyinCaseType UPPERCASE = new HanyuPinyinCaseType("UPPERCASE");
    protected String name;

    protected HanyuPinyinCaseType(String s)
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
