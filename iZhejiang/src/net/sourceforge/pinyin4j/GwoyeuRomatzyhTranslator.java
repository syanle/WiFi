// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.pinyin4j;

import com.hp.hpl.sparta.Document;
import com.hp.hpl.sparta.Element;
import com.hp.hpl.sparta.ParseException;

// Referenced classes of package net.sourceforge.pinyin4j:
//            TextHelper, PinyinRomanizationType, GwoyeuRomatzyhResource

class GwoyeuRomatzyhTranslator
{

    private static String tones[] = {
        "_I", "_II", "_III", "_IV", "_V"
    };

    GwoyeuRomatzyhTranslator()
    {
    }

    static String convertHanyuPinyinToGwoyeuRomatzyh(String s)
    {
        Object obj = TextHelper.extractPinyinString(s);
        String s1 = TextHelper.extractToneNumber(s);
        s = null;
        try
        {
            obj = "//" + PinyinRomanizationType.HANYU_PINYIN.getTagName() + "[text()='" + obj + "']";
            obj = GwoyeuRomatzyhResource.getInstance().getPinyinToGwoyeuMappingDoc().xpathSelectElement(((String) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        s = ((Element) (obj)).xpathSelectString("../" + PinyinRomanizationType.GWOYEU_ROMATZYH.getTagName() + tones[Integer.parseInt(s1) - 1] + "/text()");
        return s;
    }

}
