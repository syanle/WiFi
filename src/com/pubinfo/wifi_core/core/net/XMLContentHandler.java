// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.net;

import java.util.ArrayList;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

// Referenced classes of package com.pubinfo.wifi_core.core.net:
//            XMLData

public class XMLContentHandler extends DefaultHandler
{

    private static final int STATE_END = 2;
    private static final int STATE_IDLE = 0;
    private static final int STATE_START = 1;
    private String mCurrentTag;
    private ArrayList mDataList;
    private String mParseTag;
    private String mPreviousTag;
    private int mState;

    public XMLContentHandler()
    {
        this(null);
    }

    public XMLContentHandler(String s)
    {
        mDataList = new ArrayList();
        mParseTag = s;
        mCurrentTag = null;
        mPreviousTag = null;
        mState = 0;
    }

    public void characters(char ac[], int i, int j)
        throws SAXException
    {
        if (mParseTag != null)
        {
            if (mCurrentTag.equals(mParseTag) || mState == 1)
            {
                ac = (new String(ac, i, j)).trim();
                if (ac.length() > 0)
                {
                    ((XMLData)mDataList.get(mDataList.size() - 1)).characters = ac;
                }
            }
        } else
        {
            ac = (new String(ac, i, j)).trim();
            if (ac.length() > 0)
            {
                ((XMLData)mDataList.get(mDataList.size() - 1)).characters = ac;
                return;
            }
        }
    }

    public void endDocument()
        throws SAXException
    {
        super.endDocument();
    }

    public void endElement(String s, String s1, String s2)
        throws SAXException
    {
        if (s1.equals(mParseTag))
        {
            mState = 2;
        }
    }

    public ArrayList getXmlData()
    {
        return mDataList;
    }

    public void startDocument()
        throws SAXException
    {
        super.startDocument();
    }

    public void startElement(String s, String s1, String s2, Attributes attributes)
        throws SAXException
    {
        mCurrentTag = s1;
        if (mParseTag == null) goto _L2; else goto _L1
_L1:
        if (!s1.equals(mParseTag) && mState != 1) goto _L4; else goto _L3
_L3:
        int j;
        mState = 1;
        s = new XMLData();
        s.tagName = s1;
        j = attributes.getLength();
        if (j <= 0) goto _L6; else goto _L5
_L5:
        int i;
        s.attributes = new ArrayList();
        i = 0;
_L8:
        if (i < j) goto _L7; else goto _L6
_L6:
        mDataList.add(s);
_L4:
        return;
_L7:
        s1 = XMLData.newPullData();
        s1.name = attributes.getQName(i);
        s1.value = attributes.getValue(((XMLData.XMLAttributes) (s1)).name);
        ((XMLData) (s)).attributes.add(s1);
        i++;
        if (true) goto _L8; else goto _L2
_L2:
        s = new XMLData();
        s.tagName = s1;
        j = attributes.getLength();
        if (j <= 0) goto _L10; else goto _L9
_L9:
        s.attributes = new ArrayList();
        i = 0;
_L13:
        if (i < j) goto _L11; else goto _L10
_L10:
        if (mPreviousTag != null)
        {
            s.preTag = mPreviousTag;
        }
        mPreviousTag = s1;
        if (!mDataList.isEmpty())
        {
            ((XMLData)mDataList.get(mDataList.size() - 1)).nextTag = s1;
        }
        mDataList.add(s);
        return;
_L11:
        s2 = XMLData.newPullData();
        s2.name = attributes.getQName(i);
        s2.value = attributes.getValue(((XMLData.XMLAttributes) (s2)).name);
        ((XMLData) (s)).attributes.add(s2);
        i++;
        if (true) goto _L13; else goto _L12
_L12:
    }
}
