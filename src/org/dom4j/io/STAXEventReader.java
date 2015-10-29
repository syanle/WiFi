// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.InputStream;
import java.io.Reader;
import java.util.Iterator;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Attribute;
import javax.xml.stream.events.Characters;
import javax.xml.stream.events.Comment;
import javax.xml.stream.events.EndElement;
import javax.xml.stream.events.EntityDeclaration;
import javax.xml.stream.events.EntityReference;
import javax.xml.stream.events.Namespace;
import javax.xml.stream.events.ProcessingInstruction;
import javax.xml.stream.events.StartDocument;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.events.XMLEvent;
import org.dom4j.CharacterData;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.Node;

public class STAXEventReader
{

    private DocumentFactory factory;
    private XMLInputFactory inputFactory;

    public STAXEventReader()
    {
        inputFactory = XMLInputFactory.newInstance();
        factory = DocumentFactory.getInstance();
    }

    public STAXEventReader(DocumentFactory documentfactory)
    {
        inputFactory = XMLInputFactory.newInstance();
        if (documentfactory != null)
        {
            factory = documentfactory;
            return;
        } else
        {
            factory = DocumentFactory.getInstance();
            return;
        }
    }

    public org.dom4j.Attribute createAttribute(Element element, Attribute attribute)
    {
        return factory.createAttribute(element, createQName(attribute.getName()), attribute.getValue());
    }

    public CharacterData createCharacterData(Characters characters)
    {
        String s = characters.getData();
        if (characters.isCData())
        {
            return factory.createCDATA(s);
        } else
        {
            return factory.createText(s);
        }
    }

    public org.dom4j.Comment createComment(Comment comment)
    {
        return factory.createComment(comment.getText());
    }

    public Element createElement(StartElement startelement)
    {
        Object obj = createQName(startelement.getName());
        obj = factory.createElement(((org.dom4j.QName) (obj)));
        Attribute attribute;
        for (Iterator iterator = startelement.getAttributes(); iterator.hasNext(); ((Element) (obj)).addAttribute(createQName(attribute.getName()), attribute.getValue()))
        {
            attribute = (Attribute)iterator.next();
        }

        Namespace namespace;
        for (startelement = startelement.getNamespaces(); startelement.hasNext(); ((Element) (obj)).addNamespace(namespace.getPrefix(), namespace.getNamespaceURI()))
        {
            namespace = (Namespace)startelement.next();
        }

        return ((Element) (obj));
    }

    public Entity createEntity(EntityReference entityreference)
    {
        return factory.createEntity(entityreference.getName(), entityreference.getDeclaration().getReplacementText());
    }

    public org.dom4j.Namespace createNamespace(Namespace namespace)
    {
        return factory.createNamespace(namespace.getPrefix(), namespace.getNamespaceURI());
    }

    public org.dom4j.ProcessingInstruction createProcessingInstruction(ProcessingInstruction processinginstruction)
    {
        return factory.createProcessingInstruction(processinginstruction.getTarget(), processinginstruction.getData());
    }

    public org.dom4j.QName createQName(QName qname)
    {
        return factory.createQName(qname.getLocalPart(), qname.getPrefix(), qname.getNamespaceURI());
    }

    public org.dom4j.Attribute readAttribute(XMLEventReader xmleventreader)
        throws XMLStreamException
    {
        XMLEvent xmlevent = xmleventreader.peek();
        if (xmlevent.isAttribute())
        {
            return createAttribute(null, (Attribute)xmleventreader.nextEvent());
        } else
        {
            throw new XMLStreamException("Expected Attribute event, found: " + xmlevent);
        }
    }

    public CharacterData readCharacters(XMLEventReader xmleventreader)
        throws XMLStreamException
    {
        XMLEvent xmlevent = xmleventreader.peek();
        if (xmlevent.isCharacters())
        {
            return createCharacterData(xmleventreader.nextEvent().asCharacters());
        } else
        {
            throw new XMLStreamException("Expected Characters event, found: " + xmlevent);
        }
    }

    public org.dom4j.Comment readComment(XMLEventReader xmleventreader)
        throws XMLStreamException
    {
        XMLEvent xmlevent = xmleventreader.peek();
        if (xmlevent instanceof Comment)
        {
            return createComment((Comment)xmleventreader.nextEvent());
        } else
        {
            throw new XMLStreamException("Expected Comment event, found: " + xmlevent);
        }
    }

    public Document readDocument(InputStream inputstream)
        throws XMLStreamException
    {
        return readDocument(inputstream, null);
    }

    public Document readDocument(InputStream inputstream, String s)
        throws XMLStreamException
    {
        inputstream = inputFactory.createXMLEventReader(s, inputstream);
        s = readDocument(((XMLEventReader) (inputstream)));
        inputstream.close();
        return s;
        s;
        inputstream.close();
        throw s;
    }

    public Document readDocument(Reader reader)
        throws XMLStreamException
    {
        return readDocument(reader, null);
    }

    public Document readDocument(Reader reader, String s)
        throws XMLStreamException
    {
        reader = inputFactory.createXMLEventReader(s, reader);
        s = readDocument(((XMLEventReader) (reader)));
        reader.close();
        return s;
        s;
        reader.close();
        throw s;
    }

    public Document readDocument(XMLEventReader xmleventreader)
        throws XMLStreamException
    {
        Object obj = null;
        do
        {
            if (xmleventreader.hasNext())
            {
                switch (xmleventreader.peek().getEventType())
                {
                case 5: // '\005'
                default:
                    Object obj1 = obj;
                    if (obj == null)
                    {
                        obj1 = factory.createDocument();
                    }
                    ((Document) (obj1)).add(readNode(xmleventreader));
                    obj = obj1;
                    break;

                case 7: // '\007'
                    StartDocument startdocument = (StartDocument)xmleventreader.nextEvent();
                    if (obj == null)
                    {
                        if (startdocument.encodingSet())
                        {
                            obj = startdocument.getCharacterEncodingScheme();
                            obj = factory.createDocument(((String) (obj)));
                        } else
                        {
                            obj = factory.createDocument();
                        }
                    } else
                    {
                        throw new XMLStreamException("Unexpected StartDocument event", startdocument.getLocation());
                    }
                    break;

                case 4: // '\004'
                case 6: // '\006'
                case 8: // '\b'
                    xmleventreader.nextEvent();
                    break;
                }
            } else
            {
                return ((Document) (obj));
            }
        } while (true);
    }

    public Element readElement(XMLEventReader xmleventreader)
        throws XMLStreamException
    {
        Object obj = xmleventreader.peek();
        if (((XMLEvent) (obj)).isStartElement())
        {
            obj = xmleventreader.nextEvent().asStartElement();
            Element element = createElement(((StartElement) (obj)));
            do
            {
                if (!xmleventreader.hasNext())
                {
                    throw new XMLStreamException("Unexpected end of stream while reading element content");
                }
                if (xmleventreader.peek().isEndElement())
                {
                    xmleventreader = xmleventreader.nextEvent().asEndElement();
                    if (!xmleventreader.getName().equals(((StartElement) (obj)).getName()))
                    {
                        throw new XMLStreamException("Expected " + ((StartElement) (obj)).getName() + " end-tag, but found" + xmleventreader.getName());
                    } else
                    {
                        return element;
                    }
                }
                element.add(readNode(xmleventreader));
            } while (true);
        } else
        {
            throw new XMLStreamException("Expected Element event, found: " + obj);
        }
    }

    public Entity readEntityReference(XMLEventReader xmleventreader)
        throws XMLStreamException
    {
        XMLEvent xmlevent = xmleventreader.peek();
        if (xmlevent.isEntityReference())
        {
            return createEntity((EntityReference)xmleventreader.nextEvent());
        } else
        {
            throw new XMLStreamException("Expected EntityRef event, found: " + xmlevent);
        }
    }

    public org.dom4j.Namespace readNamespace(XMLEventReader xmleventreader)
        throws XMLStreamException
    {
        XMLEvent xmlevent = xmleventreader.peek();
        if (xmlevent.isNamespace())
        {
            return createNamespace((Namespace)xmleventreader.nextEvent());
        } else
        {
            throw new XMLStreamException("Expected Namespace event, found: " + xmlevent);
        }
    }

    public Node readNode(XMLEventReader xmleventreader)
        throws XMLStreamException
    {
        XMLEvent xmlevent = xmleventreader.peek();
        if (xmlevent.isStartElement())
        {
            return readElement(xmleventreader);
        }
        if (xmlevent.isCharacters())
        {
            return readCharacters(xmleventreader);
        }
        if (xmlevent.isStartDocument())
        {
            return readDocument(xmleventreader);
        }
        if (xmlevent.isProcessingInstruction())
        {
            return readProcessingInstruction(xmleventreader);
        }
        if (xmlevent.isEntityReference())
        {
            return readEntityReference(xmleventreader);
        }
        if (xmlevent.isAttribute())
        {
            return readAttribute(xmleventreader);
        }
        if (xmlevent.isNamespace())
        {
            return readNamespace(xmleventreader);
        } else
        {
            throw new XMLStreamException("Unsupported event: " + xmlevent);
        }
    }

    public org.dom4j.ProcessingInstruction readProcessingInstruction(XMLEventReader xmleventreader)
        throws XMLStreamException
    {
        XMLEvent xmlevent = xmleventreader.peek();
        if (xmlevent.isProcessingInstruction())
        {
            return createProcessingInstruction((ProcessingInstruction)xmleventreader.nextEvent());
        } else
        {
            throw new XMLStreamException("Expected PI event, found: " + xmlevent);
        }
    }

    public void setDocumentFactory(DocumentFactory documentfactory)
    {
        if (documentfactory != null)
        {
            factory = documentfactory;
            return;
        } else
        {
            factory = DocumentFactory.getInstance();
            return;
        }
    }
}
