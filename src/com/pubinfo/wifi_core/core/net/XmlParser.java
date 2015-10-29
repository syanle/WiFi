// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.net;

import android.util.Xml;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

// Referenced classes of package com.pubinfo.wifi_core.core.net:
//            XMLData, XMLContentHandler

public class XmlParser
{

    public XmlParser()
    {
    }

    private static ArrayList domParseElement(NodeList nodelist, ArrayList arraylist)
    {
        int i = 0;
_L5:
        Object obj;
        if (i >= nodelist.getLength())
        {
            return arraylist;
        }
        obj = nodelist.item(i);
        if (((Node) (obj)).getNodeType() != 1) goto _L2; else goto _L1
_L1:
        XMLData xmldata;
        Object obj1;
        int k;
        obj = (Element)obj;
        xmldata = new XMLData();
        xmldata.tagName = ((Element) (obj)).getNodeName();
        obj1 = ((Element) (obj)).getAttributes();
        k = ((NamedNodeMap) (obj1)).getLength();
        if (k <= 0) goto _L4; else goto _L3
_L3:
        int j;
        xmldata.attributes = new ArrayList();
        j = 0;
_L6:
        if (j < k)
        {
            break MISSING_BLOCK_LABEL_196;
        }
_L4:
        if (((Element) (obj)).getFirstChild() != null)
        {
            obj1 = ((Element) (obj)).getFirstChild().getNodeValue();
            if (obj1 != null)
            {
                obj1 = ((String) (obj1)).trim();
                if (((String) (obj1)).length() > 0)
                {
                    xmldata.characters = ((String) (obj1));
                }
            }
        }
        arraylist.add(xmldata);
        obj = ((Element) (obj)).getChildNodes();
        if (((NodeList) (obj)).getLength() > 0)
        {
            arraylist.addAll(domParseElement(((NodeList) (obj)), new ArrayList()));
        }
_L2:
        i++;
          goto _L5
        XMLData.XMLAttributes xmlattributes = XMLData.newPullData();
        xmlattributes.name = ((NamedNodeMap) (obj1)).item(j).getNodeName();
        xmlattributes.value = ((NamedNodeMap) (obj1)).item(j).getNodeValue();
        xmldata.attributes.add(xmlattributes);
        j++;
          goto _L6
    }

    public static ArrayList parseXmlByDom(InputStream inputstream, String s)
    {
        Object obj = DocumentBuilderFactory.newInstance();
        try
        {
            inputstream = ((DocumentBuilderFactory) (obj)).newDocumentBuilder().parse(inputstream);
            obj = inputstream.getDocumentElement();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream.printStackTrace();
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream.printStackTrace();
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream.printStackTrace();
            return null;
        }
_L3:
        if (obj == null)
        {
            return null;
        }
        if (s == null) goto _L2; else goto _L1
_L1:
        inputstream = ((Element) (obj)).getElementsByTagName(s);
_L4:
        return domParseElement(inputstream, new ArrayList());
_L2:
        inputstream = inputstream.getChildNodes();
        if (true) goto _L4; else goto _L3
    }

    public static ArrayList parseXmlByPull(InputStream inputstream, String s)
    {
        String s1;
        XmlPullParser xmlpullparser;
        boolean flag;
        xmlpullparser = Xml.newPullParser();
        s1 = null;
        flag = false;
        int i;
        xmlpullparser.setInput(inputstream, "UTF-8");
        i = xmlpullparser.getEventType();
        inputstream = null;
          goto _L1
_L2:
        i = xmlpullparser.next();
          goto _L1
_L8:
        inputstream = new ArrayList();
          goto _L2
_L9:
        String s2 = xmlpullparser.getName();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_99;
        }
        if (!s.equalsIgnoreCase(s2) && !flag) goto _L2; else goto _L3
_L3:
        flag = true;
        inputstream.add(setData(xmlpullparser, s2));
          goto _L2
        XMLData xmldata = setData(xmlpullparser, s2);
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        xmldata.preTag = s1;
        s1 = s2;
        if (!inputstream.isEmpty())
        {
            ((XMLData)inputstream.get(inputstream.size() - 1)).nextTag = s2;
        }
        inputstream.add(xmldata);
          goto _L2
_L10:
        boolean flag1 = s.equals(xmlpullparser.getName());
        if (flag1)
        {
            flag = false;
        }
          goto _L2
        inputstream;
_L7:
        inputstream.printStackTrace();
_L5:
        return null;
        inputstream;
_L6:
        inputstream.printStackTrace();
        if (true) goto _L5; else goto _L4
_L4:
        inputstream;
          goto _L6
        inputstream;
        if (true) goto _L7; else goto _L1
_L1:
        if (i == 1)
        {
            return inputstream;
        }
        i;
        JVM INSTR tableswitch 0 3: default 240
    //                   0 46
    //                   1 240
    //                   2 57
    //                   3 153;
           goto _L2 _L8 _L2 _L9 _L10
    }

    public static ArrayList parseXmlBySax(InputStream inputstream, String s)
    {
        SAXParser saxparser = SAXParserFactory.newInstance().newSAXParser();
        s = new XMLContentHandler(s);
        saxparser.parse(inputstream, s);
        inputstream = s.getXmlData();
        return inputstream;
        inputstream;
        inputstream.printStackTrace();
_L2:
        return null;
        inputstream;
        inputstream.printStackTrace();
        continue; /* Loop/switch isn't completed */
        inputstream;
        inputstream.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static XMLData setData(XmlPullParser xmlpullparser, String s)
        throws XmlPullParserException, IOException
    {
        XMLData xmldata;
        int j;
        xmldata = new XMLData();
        xmldata.tagName = s;
        j = xmlpullparser.getAttributeCount();
        if (j <= 0) goto _L2; else goto _L1
_L1:
        int i;
        xmldata.attributes = new ArrayList();
        i = 0;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        xmlpullparser = xmlpullparser.nextText().trim();
        if (xmlpullparser.length() > 0)
        {
            xmldata.characters = xmlpullparser;
        }
        return xmldata;
_L3:
        s = XMLData.newPullData();
        s.name = xmlpullparser.getAttributeName(i);
        s.value = xmlpullparser.getAttributeValue(i);
        xmldata.attributes.add(s);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
