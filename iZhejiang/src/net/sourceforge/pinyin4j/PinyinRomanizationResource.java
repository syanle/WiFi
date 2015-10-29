// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.pinyin4j;

import com.hp.hpl.sparta.Document;
import com.hp.hpl.sparta.ParseException;
import com.hp.hpl.sparta.Parser;
import java.io.FileNotFoundException;
import java.io.IOException;

// Referenced classes of package net.sourceforge.pinyin4j:
//            ResourceHelper

class PinyinRomanizationResource
{
    private static class PinyinRomanizationSystemResourceHolder
    {

        static final PinyinRomanizationResource theInstance = new PinyinRomanizationResource();


        private PinyinRomanizationSystemResourceHolder()
        {
        }
    }


    private Document pinyinMappingDoc;

    private PinyinRomanizationResource()
    {
        initializeResource();
    }


    static PinyinRomanizationResource getInstance()
    {
        return PinyinRomanizationSystemResourceHolder.theInstance;
    }

    private void initializeResource()
    {
        try
        {
            setPinyinMappingDoc(Parser.parse("", ResourceHelper.getResourceInputStream("/pinyindb/pinyin_mapping.xml")));
            return;
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            filenotfoundexception.printStackTrace();
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return;
        }
        catch (ParseException parseexception)
        {
            parseexception.printStackTrace();
        }
    }

    private void setPinyinMappingDoc(Document document)
    {
        pinyinMappingDoc = document;
    }

    Document getPinyinMappingDoc()
    {
        return pinyinMappingDoc;
    }
}
