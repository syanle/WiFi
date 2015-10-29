// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.dom4j.Branch;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.dtd.AttributeDecl;
import org.dom4j.dtd.ElementDecl;
import org.dom4j.dtd.ExternalEntityDecl;
import org.dom4j.dtd.InternalEntityDecl;
import org.dom4j.tree.AbstractElement;
import org.dom4j.tree.NamespaceStack;
import org.xml.sax.Attributes;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.DefaultHandler;

// Referenced classes of package org.dom4j.io:
//            ElementStack, DispatchHandler

public class SAXContentHandler extends DefaultHandler
    implements LexicalHandler, DeclHandler, DTDHandler
{

    private Map availableNamespaceMap;
    private StringBuffer cdataText;
    private Element currentElement;
    private int declaredNamespaceIndex;
    private List declaredNamespaceList;
    private Document document;
    private DocumentFactory documentFactory;
    private ElementHandler elementHandler;
    private ElementStack elementStack;
    private String entity;
    private int entityLevel;
    private EntityResolver entityResolver;
    private List externalDTDDeclarations;
    private boolean ignoreComments;
    private boolean includeExternalDTDDeclarations;
    private boolean includeInternalDTDDeclarations;
    private InputSource inputSource;
    private boolean insideCDATASection;
    private boolean insideDTDSection;
    private List internalDTDDeclarations;
    private boolean internalDTDsubset;
    private Locator locator;
    private boolean mergeAdjacentText;
    private NamespaceStack namespaceStack;
    private boolean stripWhitespaceText;
    private StringBuffer textBuffer;
    private boolean textInTextBuffer;

    public SAXContentHandler()
    {
        this(DocumentFactory.getInstance());
    }

    public SAXContentHandler(DocumentFactory documentfactory)
    {
        this(documentfactory, null);
    }

    public SAXContentHandler(DocumentFactory documentfactory, ElementHandler elementhandler)
    {
        this(documentfactory, elementhandler, null);
        elementStack = createElementStack();
    }

    public SAXContentHandler(DocumentFactory documentfactory, ElementHandler elementhandler, ElementStack elementstack)
    {
        availableNamespaceMap = new HashMap();
        declaredNamespaceList = new ArrayList();
        includeInternalDTDDeclarations = false;
        includeExternalDTDDeclarations = false;
        internalDTDsubset = false;
        mergeAdjacentText = false;
        textInTextBuffer = false;
        ignoreComments = false;
        stripWhitespaceText = false;
        documentFactory = documentfactory;
        elementHandler = elementhandler;
        elementStack = elementstack;
        namespaceStack = new NamespaceStack(documentfactory);
    }

    private String getEncoding()
    {
        if (locator == null)
        {
            return null;
        }
        Object obj = locator.getClass().getMethod("getEncoding", new Class[0]);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        obj = (String)((Method) (obj)).invoke(locator, null);
        return ((String) (obj));
        Exception exception;
        exception;
        return null;
    }

    protected void addAttributes(Element element, Attributes attributes)
    {
        if (element instanceof AbstractElement)
        {
            ((AbstractElement)element).setAttributes(attributes, namespaceStack, false);
        } else
        {
            int j = attributes.getLength();
            int i = 0;
            while (i < j) 
            {
                String s = attributes.getQName(i);
                if (false || !s.startsWith("xmlns"))
                {
                    String s1 = attributes.getURI(i);
                    String s2 = attributes.getLocalName(i);
                    String s3 = attributes.getValue(i);
                    element.addAttribute(namespaceStack.getAttributeQName(s1, s2, s), s3);
                }
                i++;
            }
        }
    }

    protected void addDTDDeclaration(Object obj)
    {
        if (internalDTDDeclarations == null)
        {
            internalDTDDeclarations = new ArrayList();
        }
        internalDTDDeclarations.add(obj);
    }

    protected void addDeclaredNamespaces(Element element)
    {
        element.getNamespace();
        for (int i = namespaceStack.size(); declaredNamespaceIndex < i; declaredNamespaceIndex = declaredNamespaceIndex + 1)
        {
            element.add(namespaceStack.getNamespace(declaredNamespaceIndex));
        }

    }

    protected void addExternalDTDDeclaration(Object obj)
    {
        if (externalDTDDeclarations == null)
        {
            externalDTDDeclarations = new ArrayList();
        }
        externalDTDDeclarations.add(obj);
    }

    public void attributeDecl(String s, String s1, String s2, String s3, String s4)
        throws SAXException
    {
        if (internalDTDsubset)
        {
            if (includeInternalDTDDeclarations)
            {
                addDTDDeclaration(new AttributeDecl(s, s1, s2, s3, s4));
            }
        } else
        if (includeExternalDTDDeclarations)
        {
            addExternalDTDDeclaration(new AttributeDecl(s, s1, s2, s3, s4));
            return;
        }
    }

    public void characters(char ac[], int i, int j)
        throws SAXException
    {
        while (j == 0 || currentElement == null) 
        {
            return;
        }
        if (entity != null)
        {
            if (mergeAdjacentText && textInTextBuffer)
            {
                completeCurrentTextNode();
            }
            currentElement.addEntity(entity, new String(ac, i, j));
            entity = null;
            return;
        }
        if (insideCDATASection)
        {
            if (mergeAdjacentText && textInTextBuffer)
            {
                completeCurrentTextNode();
            }
            cdataText.append(new String(ac, i, j));
            return;
        }
        if (mergeAdjacentText)
        {
            textBuffer.append(ac, i, j);
            textInTextBuffer = true;
            return;
        } else
        {
            currentElement.addText(new String(ac, i, j));
            return;
        }
    }

    public void comment(char ac[], int i, int j)
        throws SAXException
    {
label0:
        {
            if (!ignoreComments)
            {
                if (mergeAdjacentText && textInTextBuffer)
                {
                    completeCurrentTextNode();
                }
                ac = new String(ac, i, j);
                if (!insideDTDSection && ac.length() > 0)
                {
                    if (currentElement == null)
                    {
                        break label0;
                    }
                    currentElement.addComment(ac);
                }
            }
            return;
        }
        getDocument().addComment(ac);
    }

    protected void completeCurrentTextNode()
    {
        int i;
        boolean flag1;
        int j;
        if (!stripWhitespaceText)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        flag1 = true;
        i = 0;
        j = textBuffer.length();
_L5:
        boolean flag = flag1;
        if (i >= j) goto _L2; else goto _L1
_L1:
        if (Character.isWhitespace(textBuffer.charAt(i))) goto _L4; else goto _L3
_L3:
        flag = false;
_L2:
        if (!flag)
        {
            currentElement.addText(textBuffer.toString());
        }
_L6:
        textBuffer.setLength(0);
        textInTextBuffer = false;
        return;
_L4:
        i++;
          goto _L5
        currentElement.addText(textBuffer.toString());
          goto _L6
    }

    protected Document createDocument()
    {
        Object obj = getEncoding();
        obj = documentFactory.createDocument(((String) (obj)));
        ((Document) (obj)).setEntityResolver(entityResolver);
        if (inputSource != null)
        {
            ((Document) (obj)).setName(inputSource.getSystemId());
        }
        return ((Document) (obj));
    }

    protected ElementStack createElementStack()
    {
        return new ElementStack();
    }

    public void elementDecl(String s, String s1)
        throws SAXException
    {
        if (internalDTDsubset)
        {
            if (includeInternalDTDDeclarations)
            {
                addDTDDeclaration(new ElementDecl(s, s1));
            }
        } else
        if (includeExternalDTDDeclarations)
        {
            addExternalDTDDeclaration(new ElementDecl(s, s1));
            return;
        }
    }

    public void endCDATA()
        throws SAXException
    {
        insideCDATASection = false;
        currentElement.addCDATA(cdataText.toString());
    }

    public void endDTD()
        throws SAXException
    {
        insideDTDSection = false;
        DocumentType documenttype = getDocument().getDocType();
        if (documenttype != null)
        {
            if (internalDTDDeclarations != null)
            {
                documenttype.setInternalDeclarations(internalDTDDeclarations);
            }
            if (externalDTDDeclarations != null)
            {
                documenttype.setExternalDeclarations(externalDTDDeclarations);
            }
        }
        internalDTDDeclarations = null;
        externalDTDDeclarations = null;
    }

    public void endDocument()
        throws SAXException
    {
        namespaceStack.clear();
        elementStack.clear();
        currentElement = null;
        textBuffer = null;
    }

    public void endElement(String s, String s1, String s2)
        throws SAXException
    {
        if (mergeAdjacentText && textInTextBuffer)
        {
            completeCurrentTextNode();
        }
        if (elementHandler != null && currentElement != null)
        {
            elementHandler.onEnd(elementStack);
        }
        elementStack.popElement();
        currentElement = elementStack.peekElement();
    }

    public void endEntity(String s)
        throws SAXException
    {
        entityLevel = entityLevel - 1;
        entity = null;
        if (entityLevel == 0)
        {
            internalDTDsubset = true;
        }
    }

    public void endPrefixMapping(String s)
        throws SAXException
    {
        namespaceStack.pop(s);
        declaredNamespaceIndex = namespaceStack.size();
    }

    public void error(SAXParseException saxparseexception)
        throws SAXException
    {
        throw saxparseexception;
    }

    public void externalEntityDecl(String s, String s1, String s2)
        throws SAXException
    {
        s = new ExternalEntityDecl(s, s1, s2);
        if (internalDTDsubset)
        {
            if (includeInternalDTDDeclarations)
            {
                addDTDDeclaration(s);
            }
        } else
        if (includeExternalDTDDeclarations)
        {
            addExternalDTDDeclaration(s);
            return;
        }
    }

    public void fatalError(SAXParseException saxparseexception)
        throws SAXException
    {
        throw saxparseexception;
    }

    public Document getDocument()
    {
        if (document == null)
        {
            document = createDocument();
        }
        return document;
    }

    public ElementStack getElementStack()
    {
        return elementStack;
    }

    public EntityResolver getEntityResolver()
    {
        return entityResolver;
    }

    public InputSource getInputSource()
    {
        return inputSource;
    }

    public void internalEntityDecl(String s, String s1)
        throws SAXException
    {
        if (internalDTDsubset)
        {
            if (includeInternalDTDDeclarations)
            {
                addDTDDeclaration(new InternalEntityDecl(s, s1));
            }
        } else
        if (includeExternalDTDDeclarations)
        {
            addExternalDTDDeclaration(new InternalEntityDecl(s, s1));
            return;
        }
    }

    protected boolean isIgnorableEntity(String s)
    {
        return "amp".equals(s) || "apos".equals(s) || "gt".equals(s) || "lt".equals(s) || "quot".equals(s);
    }

    public boolean isIgnoreComments()
    {
        return ignoreComments;
    }

    public boolean isIncludeExternalDTDDeclarations()
    {
        return includeExternalDTDDeclarations;
    }

    public boolean isIncludeInternalDTDDeclarations()
    {
        return includeInternalDTDDeclarations;
    }

    public boolean isMergeAdjacentText()
    {
        return mergeAdjacentText;
    }

    public boolean isStripWhitespaceText()
    {
        return stripWhitespaceText;
    }

    public void notationDecl(String s, String s1, String s2)
        throws SAXException
    {
    }

    public void processingInstruction(String s, String s1)
        throws SAXException
    {
        if (mergeAdjacentText && textInTextBuffer)
        {
            completeCurrentTextNode();
        }
        if (currentElement != null)
        {
            currentElement.addProcessingInstruction(s, s1);
            return;
        } else
        {
            getDocument().addProcessingInstruction(s, s1);
            return;
        }
    }

    public void setDocumentLocator(Locator locator1)
    {
        locator = locator1;
    }

    public void setElementStack(ElementStack elementstack)
    {
        elementStack = elementstack;
    }

    public void setEntityResolver(EntityResolver entityresolver)
    {
        entityResolver = entityresolver;
    }

    public void setIgnoreComments(boolean flag)
    {
        ignoreComments = flag;
    }

    public void setIncludeExternalDTDDeclarations(boolean flag)
    {
        includeExternalDTDDeclarations = flag;
    }

    public void setIncludeInternalDTDDeclarations(boolean flag)
    {
        includeInternalDTDDeclarations = flag;
    }

    public void setInputSource(InputSource inputsource)
    {
        inputSource = inputsource;
    }

    public void setMergeAdjacentText(boolean flag)
    {
        mergeAdjacentText = flag;
    }

    public void setStripWhitespaceText(boolean flag)
    {
        stripWhitespaceText = flag;
    }

    public void startCDATA()
        throws SAXException
    {
        insideCDATASection = true;
        cdataText = new StringBuffer();
    }

    public void startDTD(String s, String s1, String s2)
        throws SAXException
    {
        getDocument().addDocType(s, s1, s2);
        insideDTDSection = true;
        internalDTDsubset = true;
    }

    public void startDocument()
        throws SAXException
    {
        document = null;
        currentElement = null;
        elementStack.clear();
        if (elementHandler != null && (elementHandler instanceof DispatchHandler))
        {
            elementStack.setDispatchHandler((DispatchHandler)elementHandler);
        }
        namespaceStack.clear();
        declaredNamespaceIndex = 0;
        if (mergeAdjacentText && textBuffer == null)
        {
            textBuffer = new StringBuffer();
        }
        textInTextBuffer = false;
    }

    public void startElement(String s, String s1, String s2, Attributes attributes)
        throws SAXException
    {
        if (mergeAdjacentText && textInTextBuffer)
        {
            completeCurrentTextNode();
        }
        s2 = namespaceStack.getQName(s, s1, s2);
        s1 = currentElement;
        s = s1;
        if (s1 == null)
        {
            s = getDocument();
        }
        s = s.addElement(s2);
        addDeclaredNamespaces(s);
        addAttributes(s, attributes);
        elementStack.pushElement(s);
        currentElement = s;
        entity = null;
        if (elementHandler != null)
        {
            elementHandler.onStart(elementStack);
        }
    }

    public void startEntity(String s)
        throws SAXException
    {
        entityLevel = entityLevel + 1;
        entity = null;
        if (!insideDTDSection && !isIgnorableEntity(s))
        {
            entity = s;
        }
        internalDTDsubset = false;
    }

    public void startPrefixMapping(String s, String s1)
        throws SAXException
    {
        namespaceStack.push(s, s1);
    }

    public void unparsedEntityDecl(String s, String s1, String s2, String s3)
        throws SAXException
    {
    }

    public void warning(SAXParseException saxparseexception)
        throws SAXException
    {
    }
}
