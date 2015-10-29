// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.pinyin4j;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

// Referenced classes of package net.sourceforge.pinyin4j:
//            ResourceHelper

class ChineseToPinyinResource
{
    private static class ChineseToPinyinResourceHolder
    {

        static final ChineseToPinyinResource theInstance = new ChineseToPinyinResource();


        private ChineseToPinyinResourceHolder()
        {
        }
    }

    class Field
    {

        static final String COMMA = ",";
        static final String LEFT_BRACKET = "(";
        static final String RIGHT_BRACKET = ")";
        private final ChineseToPinyinResource this$0;

        Field()
        {
            this$0 = ChineseToPinyinResource.this;
        }
    }


    private Properties unicodeToHanyuPinyinTable;

    private ChineseToPinyinResource()
    {
        unicodeToHanyuPinyinTable = null;
        initializeResource();
    }


    private String getHanyuPinyinRecordFromChar(char c)
    {
        String s = Integer.toHexString(c).toUpperCase();
        s = getUnicodeToHanyuPinyinTable().getProperty(s);
        if (isValidRecord(s))
        {
            return s;
        } else
        {
            return null;
        }
    }

    static ChineseToPinyinResource getInstance()
    {
        return ChineseToPinyinResourceHolder.theInstance;
    }

    private Properties getUnicodeToHanyuPinyinTable()
    {
        return unicodeToHanyuPinyinTable;
    }

    private void initializeResource()
    {
        try
        {
            setUnicodeToHanyuPinyinTable(new Properties());
            getUnicodeToHanyuPinyinTable().load(ResourceHelper.getResourceInputStream("/pinyindb/unicode_to_hanyu_pinyin.txt"));
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
        }
    }

    private boolean isValidRecord(String s)
    {
        return s != null && !s.equals("(none0)") && s.startsWith("(") && s.endsWith(")");
    }

    private void setUnicodeToHanyuPinyinTable(Properties properties)
    {
        unicodeToHanyuPinyinTable = properties;
    }

    String[] getHanyuPinyinStringArray(char c)
    {
        String s = getHanyuPinyinRecordFromChar(c);
        if (s != null)
        {
            int i = s.indexOf("(");
            int j = s.lastIndexOf(")");
            return s.substring(i + "(".length(), j).split(",");
        } else
        {
            return null;
        }
    }
}
