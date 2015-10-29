// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.PrintStream;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

// Referenced classes of package org.dom4j.io:
//            JAXPHelper

class SAXHelper
{

    private static boolean loggedWarning = true;

    protected SAXHelper()
    {
    }

    public static XMLReader createXMLReader(boolean flag)
        throws SAXException
    {
        XMLReader xmlreader = null;
        if (true)
        {
            xmlreader = createXMLReaderViaJAXP(flag, true);
        }
        XMLReader xmlreader1 = xmlreader;
        if (xmlreader == null)
        {
            try
            {
                xmlreader1 = XMLReaderFactory.createXMLReader();
            }
            catch (Exception exception)
            {
                if (isVerboseErrorReporting())
                {
                    System.out.println("Warning: Caught exception attempting to use SAX to load a SAX XMLReader ");
                    System.out.println("Warning: Exception was: " + exception);
                    System.out.println("Warning: I will print the stack trace then carry on using the default SAX parser");
                    exception.printStackTrace();
                }
                throw new SAXException(exception);
            }
        }
        if (xmlreader1 == null)
        {
            throw new SAXException("Couldn't create SAX reader");
        } else
        {
            return xmlreader1;
        }
    }

    protected static XMLReader createXMLReaderViaJAXP(boolean flag, boolean flag1)
    {
        XMLReader xmlreader;
        try
        {
            xmlreader = JAXPHelper.createXMLReader(flag, flag1);
        }
        catch (Throwable throwable)
        {
            if (!loggedWarning)
            {
                loggedWarning = true;
                if (isVerboseErrorReporting())
                {
                    System.out.println("Warning: Caught exception attempting to use JAXP to load a SAX XMLReader");
                    System.out.println("Warning: Exception was: " + throwable);
                    throwable.printStackTrace();
                }
            }
            return null;
        }
        return xmlreader;
    }

    protected static boolean isVerboseErrorReporting()
    {
        String s;
        boolean flag;
        try
        {
            s = System.getProperty("org.dom4j.verbose");
        }
        catch (Exception exception)
        {
            return true;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        flag = s.equalsIgnoreCase("true");
        if (!flag);
        return true;
    }

    public static boolean setParserFeature(XMLReader xmlreader, String s, boolean flag)
    {
        xmlreader.setFeature(s, flag);
        return true;
        xmlreader;
_L2:
        return false;
        xmlreader;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static boolean setParserProperty(XMLReader xmlreader, String s, Object obj)
    {
        xmlreader.setProperty(s, obj);
        return true;
        xmlreader;
_L2:
        return false;
        xmlreader;
        if (true) goto _L2; else goto _L1
_L1:
    }

}
