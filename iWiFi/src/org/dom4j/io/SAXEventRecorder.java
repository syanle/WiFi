// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.SAXException;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.AttributesImpl;
import org.xml.sax.helpers.DefaultHandler;

public class SAXEventRecorder extends DefaultHandler
    implements LexicalHandler, DeclHandler, DTDHandler, Externalizable
{
    static class SAXEvent
        implements Externalizable
    {

        static final byte ATTRIBUTE_DECL = 17;
        static final byte CHARACTERS = 8;
        static final byte COMMENT = 15;
        static final byte ELEMENT_DECL = 16;
        static final byte END_CDATA = 14;
        static final byte END_DOCUMENT = 5;
        static final byte END_DTD = 10;
        static final byte END_ELEMENT = 7;
        static final byte END_ENTITY = 12;
        static final byte END_PREFIX_MAPPING = 3;
        static final byte EXTERNAL_ENTITY_DECL = 19;
        static final byte INTERNAL_ENTITY_DECL = 18;
        static final byte PROCESSING_INSTRUCTION = 1;
        static final byte START_CDATA = 13;
        static final byte START_DOCUMENT = 4;
        static final byte START_DTD = 9;
        static final byte START_ELEMENT = 6;
        static final byte START_ENTITY = 11;
        static final byte START_PREFIX_MAPPING = 2;
        public static final long serialVersionUID = 1L;
        protected byte event;
        protected List parms;

        void addParm(Object obj)
        {
            if (parms == null)
            {
                parms = new ArrayList(3);
            }
            parms.add(obj);
        }

        Object getParm(int i)
        {
            if (parms != null && i < parms.size())
            {
                return parms.get(i);
            } else
            {
                return null;
            }
        }

        public void readExternal(ObjectInput objectinput)
            throws ClassNotFoundException, IOException
        {
            event = objectinput.readByte();
            if (objectinput.readByte() != 2)
            {
                parms = (List)objectinput.readObject();
            }
        }

        public void writeExternal(ObjectOutput objectoutput)
            throws IOException
        {
            objectoutput.writeByte(event);
            if (parms == null)
            {
                objectoutput.writeByte(2);
                return;
            } else
            {
                objectoutput.writeByte(1);
                objectoutput.writeObject(parms);
                return;
            }
        }

        public SAXEvent()
        {
        }

        SAXEvent(byte byte0)
        {
            event = byte0;
        }
    }


    private static final String EMPTY_STRING = "";
    private static final byte NULL = 2;
    private static final byte OBJECT = 1;
    private static final byte STRING = 0;
    private static final String XMLNS = "xmlns";
    public static final long serialVersionUID = 1L;
    private List events;
    private Map prefixMappings;

    public SAXEventRecorder()
    {
        events = new ArrayList();
        prefixMappings = new HashMap();
    }

    public void attributeDecl(String s, String s1, String s2, String s3, String s4)
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)17);
        saxevent.addParm(s);
        saxevent.addParm(s1);
        saxevent.addParm(s2);
        saxevent.addParm(s3);
        saxevent.addParm(s4);
        events.add(saxevent);
    }

    public void characters(char ac[], int i, int j)
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)8);
        saxevent.addParm(ac);
        saxevent.addParm(new Integer(i));
        saxevent.addParm(new Integer(j));
        events.add(saxevent);
    }

    public void comment(char ac[], int i, int j)
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)15);
        saxevent.addParm(ac);
        saxevent.addParm(new Integer(i));
        saxevent.addParm(new Integer(j));
        events.add(saxevent);
    }

    public void elementDecl(String s, String s1)
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)16);
        saxevent.addParm(s);
        saxevent.addParm(s1);
        events.add(saxevent);
    }

    public void endCDATA()
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)14);
        events.add(saxevent);
    }

    public void endDTD()
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)10);
        events.add(saxevent);
    }

    public void endDocument()
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)5);
        events.add(saxevent);
    }

    public void endElement(String s, String s1, String s2)
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)7);
        saxevent.addParm(s);
        saxevent.addParm(s1);
        saxevent.addParm(s2);
        events.add(saxevent);
        if (s != null)
        {
            s = new QName(s1, Namespace.get(s));
        } else
        {
            s = new QName(s1);
        }
        s = (List)prefixMappings.get(s);
        if (s != null)
        {
            for (s = s.iterator(); s.hasNext(); events.add(s1))
            {
                s1 = new SAXEvent((byte)3);
                s1.addParm(s.next());
            }

        }
    }

    public void endEntity(String s)
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)12);
        saxevent.addParm(s);
        events.add(saxevent);
    }

    public void endPrefixMapping(String s)
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)3);
        saxevent.addParm(s);
        events.add(saxevent);
    }

    public void externalEntityDecl(String s, String s1, String s2)
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)19);
        saxevent.addParm(s);
        saxevent.addParm(s1);
        saxevent.addParm(s2);
        events.add(saxevent);
    }

    public void internalEntityDecl(String s, String s1)
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)18);
        saxevent.addParm(s);
        saxevent.addParm(s1);
        events.add(saxevent);
    }

    public void processingInstruction(String s, String s1)
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)1);
        saxevent.addParm(s);
        saxevent.addParm(s1);
        events.add(saxevent);
    }

    public void readExternal(ObjectInput objectinput)
        throws ClassNotFoundException, IOException
    {
        if (objectinput.readByte() != 2)
        {
            events = (List)objectinput.readObject();
        }
    }

    public void replay(ContentHandler contenthandler)
        throws SAXException
    {
        Iterator iterator = events.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            SAXEvent saxevent = (SAXEvent)iterator.next();
            switch (saxevent.event)
            {
            default:
                throw new SAXException("Unrecognized event: " + saxevent.event);

            case 1: // '\001'
                contenthandler.processingInstruction((String)saxevent.getParm(0), (String)saxevent.getParm(1));
                break;

            case 2: // '\002'
                contenthandler.startPrefixMapping((String)saxevent.getParm(0), (String)saxevent.getParm(1));
                break;

            case 3: // '\003'
                contenthandler.endPrefixMapping((String)saxevent.getParm(0));
                break;

            case 4: // '\004'
                contenthandler.startDocument();
                break;

            case 5: // '\005'
                contenthandler.endDocument();
                break;

            case 6: // '\006'
                AttributesImpl attributesimpl = new AttributesImpl();
                Object obj = (List)saxevent.getParm(3);
                if (obj != null)
                {
                    String as[];
                    for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); attributesimpl.addAttribute(as[0], as[1], as[2], as[3], as[4]))
                    {
                        as = (String[])((Iterator) (obj)).next();
                    }

                }
                contenthandler.startElement((String)saxevent.getParm(0), (String)saxevent.getParm(1), (String)saxevent.getParm(2), attributesimpl);
                break;

            case 7: // '\007'
                contenthandler.endElement((String)saxevent.getParm(0), (String)saxevent.getParm(1), (String)saxevent.getParm(2));
                break;

            case 8: // '\b'
                contenthandler.characters((char[])saxevent.getParm(0), ((Integer)saxevent.getParm(1)).intValue(), ((Integer)saxevent.getParm(2)).intValue());
                break;

            case 9: // '\t'
                ((LexicalHandler)contenthandler).startDTD((String)saxevent.getParm(0), (String)saxevent.getParm(1), (String)saxevent.getParm(2));
                break;

            case 10: // '\n'
                ((LexicalHandler)contenthandler).endDTD();
                break;

            case 11: // '\013'
                ((LexicalHandler)contenthandler).startEntity((String)saxevent.getParm(0));
                break;

            case 12: // '\f'
                ((LexicalHandler)contenthandler).endEntity((String)saxevent.getParm(0));
                break;

            case 13: // '\r'
                ((LexicalHandler)contenthandler).startCDATA();
                break;

            case 14: // '\016'
                ((LexicalHandler)contenthandler).endCDATA();
                break;

            case 15: // '\017'
                char ac[] = (char[])saxevent.getParm(0);
                int i = ((Integer)saxevent.getParm(1)).intValue();
                int j = ((Integer)saxevent.getParm(2)).intValue();
                ((LexicalHandler)contenthandler).comment(ac, i, j);
                break;

            case 16: // '\020'
                ((DeclHandler)contenthandler).elementDecl((String)saxevent.getParm(0), (String)saxevent.getParm(1));
                break;

            case 17: // '\021'
                ((DeclHandler)contenthandler).attributeDecl((String)saxevent.getParm(0), (String)saxevent.getParm(1), (String)saxevent.getParm(2), (String)saxevent.getParm(3), (String)saxevent.getParm(4));
                break;

            case 18: // '\022'
                ((DeclHandler)contenthandler).internalEntityDecl((String)saxevent.getParm(0), (String)saxevent.getParm(1));
                break;

            case 19: // '\023'
                ((DeclHandler)contenthandler).externalEntityDecl((String)saxevent.getParm(0), (String)saxevent.getParm(1), (String)saxevent.getParm(2));
                break;
            }
        } while (true);
    }

    public void startCDATA()
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)13);
        events.add(saxevent);
    }

    public void startDTD(String s, String s1, String s2)
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)9);
        saxevent.addParm(s);
        saxevent.addParm(s1);
        saxevent.addParm(s2);
        events.add(saxevent);
    }

    public void startDocument()
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)4);
        events.add(saxevent);
    }

    public void startElement(String s, String s1, String s2, Attributes attributes)
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)6);
        saxevent.addParm(s);
        saxevent.addParm(s1);
        saxevent.addParm(s2);
        if (s != null)
        {
            s = new QName(s1, Namespace.get(s));
        } else
        {
            s = new QName(s1);
        }
        if (attributes != null && attributes.getLength() > 0)
        {
            ArrayList arraylist = new ArrayList(attributes.getLength());
            int i = 0;
            while (i < attributes.getLength()) 
            {
                s1 = attributes.getLocalName(i);
                if (s1.startsWith("xmlns"))
                {
                    List list;
                    if (s1.length() > 5)
                    {
                        s1 = s1.substring(6);
                    } else
                    {
                        s1 = "";
                    }
                    s2 = new SAXEvent((byte)2);
                    s2.addParm(s1);
                    s2.addParm(attributes.getValue(i));
                    events.add(s2);
                    list = (List)prefixMappings.get(s);
                    s2 = list;
                    if (list == null)
                    {
                        s2 = new ArrayList();
                        prefixMappings.put(s, s2);
                    }
                    s2.add(s1);
                } else
                {
                    arraylist.add(new String[] {
                        attributes.getURI(i), s1, attributes.getQName(i), attributes.getType(i), attributes.getValue(i)
                    });
                }
                i++;
            }
            saxevent.addParm(arraylist);
        }
        events.add(saxevent);
    }

    public void startEntity(String s)
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)11);
        saxevent.addParm(s);
        events.add(saxevent);
    }

    public void startPrefixMapping(String s, String s1)
        throws SAXException
    {
        SAXEvent saxevent = new SAXEvent((byte)2);
        saxevent.addParm(s);
        saxevent.addParm(s1);
        events.add(saxevent);
    }

    public void writeExternal(ObjectOutput objectoutput)
        throws IOException
    {
        if (events == null)
        {
            objectoutput.writeByte(2);
            return;
        } else
        {
            objectoutput.writeByte(1);
            objectoutput.writeObject(events);
            return;
        }
    }
}
