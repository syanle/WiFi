// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.pinyin4j;

import com.hp.hpl.sparta.Document;
import com.hp.hpl.sparta.Element;
import com.hp.hpl.sparta.ParseException;

// Referenced classes of package net.sourceforge.pinyin4j:
//            TextHelper, PinyinRomanizationType, PinyinRomanizationResource

class PinyinRomanizationTranslator
{

    PinyinRomanizationTranslator()
    {
    }

    static String convertRomanizationSystem(String s, PinyinRomanizationType pinyinromanizationtype, PinyinRomanizationType pinyinromanizationtype1)
    {
        String s2 = TextHelper.extractPinyinString(s);
        String s1 = TextHelper.extractToneNumber(s);
        s = null;
        try
        {
            pinyinromanizationtype = "//" + pinyinromanizationtype.getTagName() + "[text()='" + s2 + "']";
            pinyinromanizationtype = PinyinRomanizationResource.getInstance().getPinyinMappingDoc().xpathSelectElement(pinyinromanizationtype);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        if (pinyinromanizationtype == null)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        s = pinyinromanizationtype.xpathSelectString("../" + pinyinromanizationtype1.getTagName() + "/text()");
        s = s + s1;
        return s;
    }
}
