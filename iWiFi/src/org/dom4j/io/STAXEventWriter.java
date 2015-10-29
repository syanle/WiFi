// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Characters;
import javax.xml.stream.events.DTD;
import javax.xml.stream.events.EndDocument;
import javax.xml.stream.events.EndElement;
import javax.xml.stream.events.EntityReference;
import javax.xml.stream.events.StartDocument;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.util.XMLEventConsumer;
import org.dom4j.Attribute;
import org.dom4j.Branch;
import org.dom4j.CDATA;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.Text;

public class STAXEventWriter
{
    private class AttributeIterator
        implements Iterator
    {

        private Iterator iter;
        private final STAXEventWriter this$0;

        public boolean hasNext()
        {
            return iter.hasNext();
        }

        public Object next()
        {
            Object obj = (Attribute)iter.next();
            QName qname = createQName(((Attribute) (obj)).getQName());
            obj = ((Attribute) (obj)).getValue();
            return factory.createAttribute(qname, ((String) (obj)));
        }

        public void remove()
        {
            throw new UnsupportedOperationException();
        }

        public AttributeIterator(Iterator iterator)
        {
            this$0 = STAXEventWriter.this;
            iter = iterator;
        }
    }

    private class NamespaceIterator
        implements Iterator
    {

        private Iterator iter;
        private final STAXEventWriter this$0;

        public boolean hasNext()
        {
            return iter.hasNext();
        }

        public Object next()
        {
            Object obj = (Namespace)iter.next();
            String s = ((Namespace) (obj)).getPrefix();
            obj = ((Namespace) (obj)).getURI();
            return factory.createNamespace(s, ((String) (obj)));
        }

        public void remove()
        {
            throw new UnsupportedOperationException();
        }

        public NamespaceIterator(Iterator iterator)
        {
            this$0 = STAXEventWriter.this;
            iter = iterator;
        }
    }


    private XMLEventConsumer consumer;
    private XMLEventFactory factory;
    private XMLOutputFactory outputFactory;

    public STAXEventWriter()
    {
        factory = XMLEventFactory.newInstance();
        outputFactory = XMLOutputFactory.newInstance();
    }

    public STAXEventWriter(File file)
        throws XMLStreamException, IOException
    {
        factory = XMLEventFactory.newInstance();
        outputFactory = XMLOutputFactory.newInstance();
        consumer = outputFactory.createXMLEventWriter(new FileWriter(file));
    }

    public STAXEventWriter(OutputStream outputstream)
        throws XMLStreamException
    {
        factory = XMLEventFactory.newInstance();
        outputFactory = XMLOutputFactory.newInstance();
        consumer = outputFactory.createXMLEventWriter(outputstream);
    }

    public STAXEventWriter(Writer writer)
        throws XMLStreamException
    {
        factory = XMLEventFactory.newInstance();
        outputFactory = XMLOutputFactory.newInstance();
        consumer = outputFactory.createXMLEventWriter(writer);
    }

    public STAXEventWriter(XMLEventConsumer xmleventconsumer)
    {
        factory = XMLEventFactory.newInstance();
        outputFactory = XMLOutputFactory.newInstance();
        consumer = xmleventconsumer;
    }

    private EntityReference createEntityReference(Entity entity)
    {
        return factory.createEntityReference(entity.getName(), null);
    }

    public javax.xml.stream.events.Attribute createAttribute(Attribute attribute)
    {
        QName qname = createQName(attribute.getQName());
        attribute = attribute.getValue();
        return factory.createAttribute(qname, attribute);
    }

    public Characters createCharacters(CDATA cdata)
    {
        return factory.createCData(cdata.getText());
    }

    public Characters createCharacters(Text text)
    {
        return factory.createCharacters(text.getText());
    }

    public javax.xml.stream.events.Comment createComment(Comment comment)
    {
        return factory.createComment(comment.getText());
    }

    public DTD createDTD(DocumentType documenttype)
    {
        StringWriter stringwriter = new StringWriter();
        try
        {
            documenttype.write(stringwriter);
        }
        // Misplaced declaration of an exception variable
        catch (DocumentType documenttype)
        {
            throw new RuntimeException("Error writing DTD", documenttype);
        }
        return factory.createDTD(stringwriter.toString());
    }

    public EndDocument createEndDocument(Document document)
    {
        return factory.createEndDocument();
    }

    public EndElement createEndElement(Element element)
    {
        QName qname = createQName(element.getQName());
        element = new NamespaceIterator(element.declaredNamespaces().iterator());
        return factory.createEndElement(qname, element);
    }

    public javax.xml.stream.events.Namespace createNamespace(Namespace namespace)
    {
        String s = namespace.getPrefix();
        namespace = namespace.getURI();
        return factory.createNamespace(s, namespace);
    }

    public javax.xml.stream.events.ProcessingInstruction createProcessingInstruction(ProcessingInstruction processinginstruction)
    {
        String s = processinginstruction.getTarget();
        processinginstruction = processinginstruction.getText();
        return factory.createProcessingInstruction(s, processinginstruction);
    }

    public QName createQName(org.dom4j.QName qname)
    {
        return new QName(qname.getNamespaceURI(), qname.getName(), qname.getNamespacePrefix());
    }

    public StartDocument createStartDocument(Document document)
    {
        document = document.getXMLEncoding();
        if (document != null)
        {
            return factory.createStartDocument(document);
        } else
        {
            return factory.createStartDocument();
        }
    }

    public StartElement createStartElement(Element element)
    {
        QName qname = createQName(element.getQName());
        AttributeIterator attributeiterator = new AttributeIterator(element.attributeIterator());
        element = new NamespaceIterator(element.declaredNamespaces().iterator());
        return factory.createStartElement(qname, attributeiterator, element);
    }

    public XMLEventConsumer getConsumer()
    {
        return consumer;
    }

    public XMLEventFactory getEventFactory()
    {
        return factory;
    }

    public void setConsumer(XMLEventConsumer xmleventconsumer)
    {
        consumer = xmleventconsumer;
    }

    public void setEventFactory(XMLEventFactory xmleventfactory)
    {
        factory = xmleventfactory;
    }

    public void writeAttribute(Attribute attribute)
        throws XMLStreamException
    {
        consumer.add(createAttribute(attribute));
    }

    public void writeCDATA(CDATA cdata)
        throws XMLStreamException
    {
        consumer.add(createCharacters(cdata));
    }

    public void writeChildNodes(Branch branch)
        throws XMLStreamException
    {
        int i = 0;
        for (int j = branch.nodeCount(); i < j; i++)
        {
            writeNode(branch.node(i));
        }

    }

    public void writeComment(Comment comment)
        throws XMLStreamException
    {
        consumer.add(createComment(comment));
    }

    public void writeDocument(Document document)
        throws XMLStreamException
    {
        consumer.add(createStartDocument(document));
        writeChildNodes(document);
        consumer.add(createEndDocument(document));
    }

    public void writeDocumentType(DocumentType documenttype)
        throws XMLStreamException
    {
        consumer.add(createDTD(documenttype));
    }

    public void writeElement(Element element)
        throws XMLStreamException
    {
        consumer.add(createStartElement(element));
        writeChildNodes(element);
        consumer.add(createEndElement(element));
    }

    public void writeEntity(Entity entity)
        throws XMLStreamException
    {
        consumer.add(createEntityReference(entity));
    }

    public void writeNamespace(Namespace namespace)
        throws XMLStreamException
    {
        consumer.add(createNamespace(namespace));
    }

    public void writeNode(Node node)
        throws XMLStreamException
    {
        switch (node.getNodeType())
        {
        case 6: // '\006'
        case 11: // '\013'
        case 12: // '\f'
        default:
            throw new XMLStreamException("Unsupported DOM4J Node: " + node);

        case 1: // '\001'
            writeElement((Element)node);
            return;

        case 3: // '\003'
            writeText((Text)node);
            return;

        case 2: // '\002'
            writeAttribute((Attribute)node);
            return;

        case 13: // '\r'
            writeNamespace((Namespace)node);
            return;

        case 8: // '\b'
            writeComment((Comment)node);
            return;

        case 4: // '\004'
            writeCDATA((CDATA)node);
            return;

        case 7: // '\007'
            writeProcessingInstruction((ProcessingInstruction)node);
            return;

        case 5: // '\005'
            writeEntity((Entity)node);
            return;

        case 9: // '\t'
            writeDocument((Document)node);
            return;

        case 10: // '\n'
            writeDocumentType((DocumentType)node);
            return;
        }
    }

    public void writeProcessingInstruction(ProcessingInstruction processinginstruction)
        throws XMLStreamException
    {
        consumer.add(createProcessingInstruction(processinginstruction));
    }

    public void writeText(Text text)
        throws XMLStreamException
    {
        consumer.add(createCharacters(text));
    }

}
