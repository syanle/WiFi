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

class GwoyeuRomatzyhResource
{
    private static class GwoyeuRomatzyhSystemResourceHolder
    {

        static final GwoyeuRomatzyhResource theInstance = new GwoyeuRomatzyhResource();


        private GwoyeuRomatzyhSystemResourceHolder()
        {
        }
    }


    private Document pinyinToGwoyeuMappingDoc;

    private GwoyeuRomatzyhResource()
    {
        initializeResource();
    }


    static GwoyeuRomatzyhResource getInstance()
    {
        return GwoyeuRomatzyhSystemResourceHolder.theInstance;
    }

    private void initializeResource()
    {
        try
        {
            setPinyinToGwoyeuMappingDoc(Parser.parse("", ResourceHelper.getResourceInputStream("/pinyindb/pinyin_gwoyeu_mapping.xml")));
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

    private void setPinyinToGwoyeuMappingDoc(Document document)
    {
        pinyinToGwoyeuMappingDoc = document;
    }

    Document getPinyinToGwoyeuMappingDoc()
    {
        return pinyinToGwoyeuMappingDoc;
    }
}
