// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.pinyin4j;


class TextHelper
{

    TextHelper()
    {
    }

    static String extractPinyinString(String s)
    {
        return s.substring(0, s.length() - 1);
    }

    static String extractToneNumber(String s)
    {
        return s.substring(s.length() - 1);
    }
}
