// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.dom4j.Attribute;
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
import org.dom4j.tree.NamespaceStack;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.XMLFilterImpl;

// Referenced classes of package org.dom4j.io:
//            OutputFormat

public class XMLWriter extends XMLFilterImpl
    implements LexicalHandler
{

    protected static final OutputFormat DEFAULT_FORMAT = new OutputFormat();
    protected static final String LEXICAL_HANDLER_NAMES[] = {
        "http://xml.org/sax/properties/lexical-handler", "http://xml.org/sax/handlers/LexicalHandler"
    };
    private static final String PAD_TEXT = " ";
    private boolean autoFlush;
    private StringBuffer buffer;
    private boolean charsAdded;
    private boolean escapeText;
    private OutputFormat format;
    private boolean inDTD;
    private int indentLevel;
    private char lastChar;
    private boolean lastElementClosed;
    protected int lastOutputNodeType;
    private LexicalHandler lexicalHandler;
    private int maximumAllowedCharacter;
    private NamespaceStack namespaceStack;
    private Map namespacesMap;
    protected boolean preserve;
    private boolean resolveEntityRefs;
    private boolean showCommentsInDTDs;
    protected Writer writer;

    public XMLWriter()
    {
        resolveEntityRefs = true;
        lastElementClosed = false;
        preserve = false;
        namespaceStack = new NamespaceStack();
        escapeText = true;
        indentLevel = 0;
        buffer = new StringBuffer();
        charsAdded = false;
        format = DEFAULT_FORMAT;
        writer = new BufferedWriter(new OutputStreamWriter(System.out));
        autoFlush = true;
        namespaceStack.push(Namespace.NO_NAMESPACE);
    }

    public XMLWriter(OutputStream outputstream)
        throws UnsupportedEncodingException
    {
        resolveEntityRefs = true;
        lastElementClosed = false;
        preserve = false;
        namespaceStack = new NamespaceStack();
        escapeText = true;
        indentLevel = 0;
        buffer = new StringBuffer();
        charsAdded = false;
        format = DEFAULT_FORMAT;
        writer = createWriter(outputstream, format.getEncoding());
        autoFlush = true;
        namespaceStack.push(Namespace.NO_NAMESPACE);
    }

    public XMLWriter(OutputStream outputstream, OutputFormat outputformat)
        throws UnsupportedEncodingException
    {
        resolveEntityRefs = true;
        lastElementClosed = false;
        preserve = false;
        namespaceStack = new NamespaceStack();
        escapeText = true;
        indentLevel = 0;
        buffer = new StringBuffer();
        charsAdded = false;
        format = outputformat;
        writer = createWriter(outputstream, outputformat.getEncoding());
        autoFlush = true;
        namespaceStack.push(Namespace.NO_NAMESPACE);
    }

    public XMLWriter(Writer writer1)
    {
        this(writer1, DEFAULT_FORMAT);
    }

    public XMLWriter(Writer writer1, OutputFormat outputformat)
    {
        resolveEntityRefs = true;
        lastElementClosed = false;
        preserve = false;
        namespaceStack = new NamespaceStack();
        escapeText = true;
        indentLevel = 0;
        buffer = new StringBuffer();
        charsAdded = false;
        writer = writer1;
        format = outputformat;
        namespaceStack.push(Namespace.NO_NAMESPACE);
    }

    public XMLWriter(OutputFormat outputformat)
        throws UnsupportedEncodingException
    {
        resolveEntityRefs = true;
        lastElementClosed = false;
        preserve = false;
        namespaceStack = new NamespaceStack();
        escapeText = true;
        indentLevel = 0;
        buffer = new StringBuffer();
        charsAdded = false;
        format = outputformat;
        writer = createWriter(System.out, outputformat.getEncoding());
        autoFlush = true;
        namespaceStack.push(Namespace.NO_NAMESPACE);
    }

    public void characters(char ac[], int i, int j)
        throws SAXException
    {
        String s;
        if (ac == null || ac.length == 0 || j <= 0)
        {
            return;
        }
        String s1;
        StringTokenizer stringtokenizer;
        try
        {
            s1 = String.valueOf(ac, i, j);
        }
        // Misplaced declaration of an exception variable
        catch (char ac[])
        {
            handleException(ac);
            return;
        }
        s = s1;
        if (escapeText)
        {
            s = escapeElementEntities(s1);
        }
        if (!format.isTrimText()) goto _L2; else goto _L1
_L1:
        if (lastOutputNodeType != 3 || charsAdded) goto _L4; else goto _L3
_L3:
        writer.write(32);
_L9:
        s1 = "";
        stringtokenizer = new StringTokenizer(s);
        s = s1;
_L6:
        if (!stringtokenizer.hasMoreTokens())
        {
            break; /* Loop/switch isn't completed */
        }
        writer.write(s);
        writer.write(stringtokenizer.nextToken());
        s = " ";
        if (true) goto _L6; else goto _L5
_L4:
        if (!charsAdded || !Character.isWhitespace(lastChar)) goto _L8; else goto _L7
_L7:
        writer.write(32);
          goto _L9
_L8:
        if (lastOutputNodeType != 1 || !format.isPadText() || !lastElementClosed || !Character.isWhitespace(ac[0])) goto _L9; else goto _L10
_L10:
        writer.write(" ");
          goto _L9
_L2:
        writer.write(s);
_L5:
        charsAdded = true;
        lastChar = ac[(i + j) - 1];
        lastOutputNodeType = 3;
        super.characters(ac, i, j);
        return;
    }

    public void close()
        throws IOException
    {
        writer.close();
    }

    public void comment(char ac[], int i, int j)
        throws SAXException
    {
        if (showCommentsInDTDs || !inDTD)
        {
            try
            {
                charsAdded = false;
                writeComment(new String(ac, i, j));
            }
            catch (IOException ioexception)
            {
                handleException(ioexception);
            }
        }
        if (lexicalHandler != null)
        {
            lexicalHandler.comment(ac, i, j);
        }
    }

    protected Writer createWriter(OutputStream outputstream, String s)
        throws UnsupportedEncodingException
    {
        return new BufferedWriter(new OutputStreamWriter(outputstream, s));
    }

    protected int defaultMaximumAllowedCharacter()
    {
        String s = format.getEncoding();
        return s == null || !s.equals("US-ASCII") ? -1 : 127;
    }

    public void endCDATA()
        throws SAXException
    {
        try
        {
            writer.write("]]>");
        }
        catch (IOException ioexception)
        {
            handleException(ioexception);
        }
        if (lexicalHandler != null)
        {
            lexicalHandler.endCDATA();
        }
    }

    public void endDTD()
        throws SAXException
    {
        inDTD = false;
        if (lexicalHandler != null)
        {
            lexicalHandler.endDTD();
        }
    }

    public void endDocument()
        throws SAXException
    {
        super.endDocument();
        if (!autoFlush)
        {
            break MISSING_BLOCK_LABEL_15;
        }
        flush();
        return;
        IOException ioexception;
        ioexception;
    }

    public void endElement(String s, String s1, String s2)
        throws SAXException
    {
        try
        {
            charsAdded = false;
            indentLevel = indentLevel - 1;
            if (lastElementClosed)
            {
                writePrintln();
                indent();
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            handleException(s);
            return;
        }
        if (false)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        writeClose(s2);
_L2:
        lastOutputNodeType = 1;
        lastElementClosed = true;
        super.endElement(s, s1, s2);
        return;
        writeEmptyElementClose(s2);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void endEntity(String s)
        throws SAXException
    {
        if (lexicalHandler != null)
        {
            lexicalHandler.endEntity(s);
        }
    }

    public void endPrefixMapping(String s)
        throws SAXException
    {
        super.endPrefixMapping(s);
    }

    protected String escapeAttributeEntities(String s)
    {
        char ac1[];
        int i;
        int j;
        char c1;
        int l;
        c1 = format.getAttributeQuoteCharacter();
        ac1 = null;
        j = 0;
        l = s.length();
        i = 0;
_L9:
        char c;
        Object obj;
        char ac2[];
        if (i >= l)
        {
            break MISSING_BLOCK_LABEL_295;
        }
        ac2 = null;
        c = s.charAt(i);
        obj = ac2;
        c;
        JVM INSTR lookupswitch 8: default 120
    //                   9: 164
    //                   10: 164
    //                   13: 164
    //                   34: 271
    //                   38: 288
    //                   39: 254
    //                   60: 240
    //                   62: 247;
           goto _L1 _L2 _L2 _L2 _L3 _L4 _L5 _L6 _L7
_L4:
        break MISSING_BLOCK_LABEL_288;
_L6:
        break; /* Loop/switch isn't completed */
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        if (c >= ' ')
        {
            obj = ac2;
            if (!shouldEncodeChar(c))
            {
                break; /* Loop/switch isn't completed */
            }
        }
        obj = "&#" + (int)c + ";";
_L10:
        ac2 = ac1;
        int k = j;
        if (obj != null)
        {
            ac2 = ac1;
            if (ac1 == null)
            {
                ac2 = s.toCharArray();
            }
            buffer.append(ac2, j, i - j);
            buffer.append(((String) (obj)));
            k = i + 1;
        }
        i++;
        ac1 = ac2;
        j = k;
        if (true) goto _L9; else goto _L8
_L8:
        obj = "&lt;";
          goto _L10
_L7:
        obj = "&gt;";
          goto _L10
_L5:
        obj = ac2;
        if (c1 == '\'')
        {
            obj = "&apos;";
        }
          goto _L10
_L3:
        obj = ac2;
        if (c1 == '"')
        {
            obj = "&quot;";
        }
          goto _L10
        obj = "&amp;";
          goto _L10
        if (j == 0)
        {
            return s;
        }
        if (j < l)
        {
            char ac[] = ac1;
            if (ac1 == null)
            {
                ac = s.toCharArray();
            }
            buffer.append(ac, j, i - j);
        }
        s = buffer.toString();
        buffer.setLength(0);
        return s;
    }

    protected String escapeElementEntities(String s)
    {
        char ac1[];
        int i;
        int j;
        int l;
        ac1 = null;
        j = 0;
        l = s.length();
        i = 0;
_L7:
        char c;
        String s1;
        if (i >= l)
        {
            break MISSING_BLOCK_LABEL_245;
        }
        s1 = null;
        c = s.charAt(i);
        c;
        JVM INSTR lookupswitch 6: default 92
    //                   9: 230
    //                   10: 230
    //                   13: 230
    //                   38: 223
    //                   60: 209
    //                   62: 216;
           goto _L1 _L2 _L2 _L2 _L3 _L4 _L5
_L2:
        break MISSING_BLOCK_LABEL_230;
_L4:
        break; /* Loop/switch isn't completed */
_L1:
        if (c < ' ' || shouldEncodeChar(c))
        {
            s1 = "&#" + (int)c + ";";
        }
_L8:
        char ac2[] = ac1;
        int k = j;
        if (s1 != null)
        {
            ac2 = ac1;
            if (ac1 == null)
            {
                ac2 = s.toCharArray();
            }
            buffer.append(ac2, j, i - j);
            buffer.append(s1);
            k = i + 1;
        }
        i++;
        ac1 = ac2;
        j = k;
        if (true) goto _L7; else goto _L6
_L6:
        s1 = "&lt;";
          goto _L8
_L5:
        s1 = "&gt;";
          goto _L8
_L3:
        s1 = "&amp;";
          goto _L8
        if (preserve)
        {
            s1 = String.valueOf(c);
        }
          goto _L8
        if (j == 0)
        {
            return s;
        }
        if (j < l)
        {
            char ac[] = ac1;
            if (ac1 == null)
            {
                ac = s.toCharArray();
            }
            buffer.append(ac, j, i - j);
        }
        s = buffer.toString();
        buffer.setLength(0);
        return s;
    }

    public void flush()
        throws IOException
    {
        writer.flush();
    }

    public LexicalHandler getLexicalHandler()
    {
        return lexicalHandler;
    }

    public int getMaximumAllowedCharacter()
    {
        if (maximumAllowedCharacter == 0)
        {
            maximumAllowedCharacter = defaultMaximumAllowedCharacter();
        }
        return maximumAllowedCharacter;
    }

    protected OutputFormat getOutputFormat()
    {
        return format;
    }

    public Object getProperty(String s)
        throws SAXNotRecognizedException, SAXNotSupportedException
    {
        for (int i = 0; i < LEXICAL_HANDLER_NAMES.length; i++)
        {
            if (LEXICAL_HANDLER_NAMES[i].equals(s))
            {
                return getLexicalHandler();
            }
        }

        return super.getProperty(s);
    }

    protected void handleException(IOException ioexception)
        throws SAXException
    {
        throw new SAXException(ioexception);
    }

    public void ignorableWhitespace(char ac[], int i, int j)
        throws SAXException
    {
        super.ignorableWhitespace(ac, i, j);
    }

    protected void indent()
        throws IOException
    {
        String s = format.getIndent();
        if (s != null && s.length() > 0)
        {
            for (int i = 0; i < indentLevel; i++)
            {
                writer.write(s);
            }

        }
    }

    protected void installLexicalHandler()
    {
        XMLReader xmlreader;
        int i;
        xmlreader = getParent();
        if (xmlreader == null)
        {
            throw new NullPointerException("No parent for filter");
        }
        i = 0;
_L1:
        if (i >= LEXICAL_HANDLER_NAMES.length)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        xmlreader.setProperty(LEXICAL_HANDLER_NAMES[i], this);
        return;
        Object obj;
        obj;
_L2:
        i++;
          goto _L1
        obj;
          goto _L2
    }

    protected final boolean isElementSpacePreserved(Element element)
    {
label0:
        {
            element = element.attribute("space");
            boolean flag = preserve;
            if (element != null)
            {
                if (!"xml".equals(element.getNamespacePrefix()) || !"preserve".equals(element.getText()))
                {
                    break label0;
                }
                flag = true;
            }
            return flag;
        }
        return false;
    }

    public boolean isEscapeText()
    {
        return escapeText;
    }

    protected boolean isExpandEmptyElements()
    {
        return format.isExpandEmptyElements();
    }

    protected boolean isNamespaceDeclaration(Namespace namespace)
    {
        return namespace != null && namespace != Namespace.XML_NAMESPACE && namespace.getURI() != null && !namespaceStack.contains(namespace);
    }

    public void notationDecl(String s, String s1, String s2)
        throws SAXException
    {
        super.notationDecl(s, s1, s2);
    }

    public void parse(InputSource inputsource)
        throws IOException, SAXException
    {
        installLexicalHandler();
        super.parse(inputsource);
    }

    public void println()
        throws IOException
    {
        writer.write(format.getLineSeparator());
    }

    public void processingInstruction(String s, String s1)
        throws SAXException
    {
        try
        {
            indent();
            writer.write("<?");
            writer.write(s);
            writer.write(" ");
            writer.write(s1);
            writer.write("?>");
            writePrintln();
            lastOutputNodeType = 7;
            super.processingInstruction(s, s1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            handleException(s);
        }
    }

    public boolean resolveEntityRefs()
    {
        return resolveEntityRefs;
    }

    public void setDocumentLocator(Locator locator)
    {
        super.setDocumentLocator(locator);
    }

    public void setEscapeText(boolean flag)
    {
        escapeText = flag;
    }

    public void setIndentLevel(int i)
    {
        indentLevel = i;
    }

    public void setLexicalHandler(LexicalHandler lexicalhandler)
    {
        if (lexicalhandler == null)
        {
            throw new NullPointerException("Null lexical handler");
        } else
        {
            lexicalHandler = lexicalhandler;
            return;
        }
    }

    public void setMaximumAllowedCharacter(int i)
    {
        maximumAllowedCharacter = i;
    }

    public void setOutputStream(OutputStream outputstream)
        throws UnsupportedEncodingException
    {
        writer = createWriter(outputstream, format.getEncoding());
        autoFlush = true;
    }

    public void setProperty(String s, Object obj)
        throws SAXNotRecognizedException, SAXNotSupportedException
    {
        for (int i = 0; i < LEXICAL_HANDLER_NAMES.length; i++)
        {
            if (LEXICAL_HANDLER_NAMES[i].equals(s))
            {
                setLexicalHandler((LexicalHandler)obj);
                return;
            }
        }

        super.setProperty(s, obj);
    }

    public void setResolveEntityRefs(boolean flag)
    {
        resolveEntityRefs = flag;
    }

    public void setWriter(Writer writer1)
    {
        writer = writer1;
        autoFlush = false;
    }

    protected boolean shouldEncodeChar(char c)
    {
        int i = getMaximumAllowedCharacter();
        return i > 0 && c > i;
    }

    public void startCDATA()
        throws SAXException
    {
        try
        {
            writer.write("<![CDATA[");
        }
        catch (IOException ioexception)
        {
            handleException(ioexception);
        }
        if (lexicalHandler != null)
        {
            lexicalHandler.startCDATA();
        }
    }

    public void startDTD(String s, String s1, String s2)
        throws SAXException
    {
        inDTD = true;
        try
        {
            writeDocType(s, s1, s2);
        }
        catch (IOException ioexception)
        {
            handleException(ioexception);
        }
        if (lexicalHandler != null)
        {
            lexicalHandler.startDTD(s, s1, s2);
        }
    }

    public void startDocument()
        throws SAXException
    {
        try
        {
            writeDeclaration();
            super.startDocument();
            return;
        }
        catch (IOException ioexception)
        {
            handleException(ioexception);
        }
    }

    public void startElement(String s, String s1, String s2, Attributes attributes)
        throws SAXException
    {
        try
        {
            charsAdded = false;
            writePrintln();
            indent();
            writer.write("<");
            writer.write(s2);
            writeNamespaces();
            writeAttributes(attributes);
            writer.write(">");
            indentLevel = indentLevel + 1;
            lastOutputNodeType = 1;
            lastElementClosed = false;
            super.startElement(s, s1, s2, attributes);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            handleException(s);
        }
    }

    public void startEntity(String s)
        throws SAXException
    {
        try
        {
            writeEntityRef(s);
        }
        catch (IOException ioexception)
        {
            handleException(ioexception);
        }
        if (lexicalHandler != null)
        {
            lexicalHandler.startEntity(s);
        }
    }

    public void startPrefixMapping(String s, String s1)
        throws SAXException
    {
        if (namespacesMap == null)
        {
            namespacesMap = new HashMap();
        }
        namespacesMap.put(s, s1);
        super.startPrefixMapping(s, s1);
    }

    public void unparsedEntityDecl(String s, String s1, String s2, String s3)
        throws SAXException
    {
        super.unparsedEntityDecl(s, s1, s2, s3);
    }

    public void write(Object obj)
        throws IOException
    {
        if (!(obj instanceof Node)) goto _L2; else goto _L1
_L1:
        write((Node)obj);
_L4:
        return;
_L2:
        if (obj instanceof String)
        {
            write((String)obj);
            return;
        }
        if (!(obj instanceof List))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (List)obj;
        int i = 0;
        int j = ((List) (obj)).size();
        while (i < j) 
        {
            write(((List) (obj)).get(i));
            i++;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (obj == null) goto _L4; else goto _L5
_L5:
        throw new IOException("Invalid object: " + obj);
    }

    public void write(String s)
        throws IOException
    {
        writeString(s);
        if (autoFlush)
        {
            flush();
        }
    }

    public void write(Attribute attribute)
        throws IOException
    {
        writeAttribute(attribute);
        if (autoFlush)
        {
            flush();
        }
    }

    public void write(CDATA cdata)
        throws IOException
    {
        writeCDATA(cdata.getText());
        if (autoFlush)
        {
            flush();
        }
    }

    public void write(Comment comment1)
        throws IOException
    {
        writeComment(comment1.getText());
        if (autoFlush)
        {
            flush();
        }
    }

    public void write(Document document)
        throws IOException
    {
        writeDeclaration();
        if (document.getDocType() != null)
        {
            indent();
            writeDocType(document.getDocType());
        }
        int i = 0;
        for (int j = document.nodeCount(); i < j; i++)
        {
            writeNode(document.node(i));
        }

        writePrintln();
        if (autoFlush)
        {
            flush();
        }
    }

    public void write(DocumentType documenttype)
        throws IOException
    {
        writeDocType(documenttype);
        if (autoFlush)
        {
            flush();
        }
    }

    public void write(Element element)
        throws IOException
    {
        writeElement(element);
        if (autoFlush)
        {
            flush();
        }
    }

    public void write(Entity entity)
        throws IOException
    {
        writeEntity(entity);
        if (autoFlush)
        {
            flush();
        }
    }

    public void write(Namespace namespace)
        throws IOException
    {
        writeNamespace(namespace);
        if (autoFlush)
        {
            flush();
        }
    }

    public void write(Node node)
        throws IOException
    {
        writeNode(node);
        if (autoFlush)
        {
            flush();
        }
    }

    public void write(ProcessingInstruction processinginstruction)
        throws IOException
    {
        writeProcessingInstruction(processinginstruction);
        if (autoFlush)
        {
            flush();
        }
    }

    public void write(Text text)
        throws IOException
    {
        writeString(text.getText());
        if (autoFlush)
        {
            flush();
        }
    }

    protected void writeAttribute(Attribute attribute)
        throws IOException
    {
        writer.write(" ");
        writer.write(attribute.getQualifiedName());
        writer.write("=");
        char c = format.getAttributeQuoteCharacter();
        writer.write(c);
        writeEscapeAttributeEntities(attribute.getValue());
        writer.write(c);
        lastOutputNodeType = 2;
    }

    protected void writeAttribute(Attributes attributes, int i)
        throws IOException
    {
        char c = format.getAttributeQuoteCharacter();
        writer.write(" ");
        writer.write(attributes.getQName(i));
        writer.write("=");
        writer.write(c);
        writeEscapeAttributeEntities(attributes.getValue(i));
        writer.write(c);
    }

    protected void writeAttributes(Element element)
        throws IOException
    {
        int i = 0;
        int j = element.attributeCount();
        while (i < j) 
        {
            Object obj = element.attribute(i);
            Object obj1 = ((Attribute) (obj)).getNamespace();
            if (obj1 != null && obj1 != Namespace.NO_NAMESPACE && obj1 != Namespace.XML_NAMESPACE)
            {
                String s = ((Namespace) (obj1)).getPrefix();
                s = namespaceStack.getURI(s);
                if (!((Namespace) (obj1)).getURI().equals(s))
                {
                    writeNamespace(((Namespace) (obj1)));
                    namespaceStack.push(((Namespace) (obj1)));
                }
            }
            obj1 = ((Attribute) (obj)).getName();
            if (((String) (obj1)).startsWith("xmlns:"))
            {
                obj1 = ((String) (obj1)).substring(6);
                if (namespaceStack.getNamespaceForPrefix(((String) (obj1))) == null)
                {
                    obj = ((Attribute) (obj)).getValue();
                    namespaceStack.push(((String) (obj1)), ((String) (obj)));
                    writeNamespace(((String) (obj1)), ((String) (obj)));
                }
            } else
            if (((String) (obj1)).equals("xmlns"))
            {
                if (namespaceStack.getDefaultNamespace() == null)
                {
                    obj = ((Attribute) (obj)).getValue();
                    namespaceStack.push(null, ((String) (obj)));
                    writeNamespace(null, ((String) (obj)));
                }
            } else
            {
                char c = format.getAttributeQuoteCharacter();
                writer.write(" ");
                writer.write(((Attribute) (obj)).getQualifiedName());
                writer.write("=");
                writer.write(c);
                writeEscapeAttributeEntities(((Attribute) (obj)).getValue());
                writer.write(c);
            }
            i++;
        }
    }

    protected void writeAttributes(Attributes attributes)
        throws IOException
    {
        int i = 0;
        for (int j = attributes.getLength(); i < j; i++)
        {
            writeAttribute(attributes, i);
        }

    }

    protected void writeCDATA(String s)
        throws IOException
    {
        writer.write("<![CDATA[");
        if (s != null)
        {
            writer.write(s);
        }
        writer.write("]]>");
        lastOutputNodeType = 4;
    }

    protected void writeClose(String s)
        throws IOException
    {
        writer.write("</");
        writer.write(s);
        writer.write(">");
    }

    public void writeClose(Element element)
        throws IOException
    {
        writeClose(element.getQualifiedName());
    }

    protected void writeComment(String s)
        throws IOException
    {
        if (format.isNewlines())
        {
            println();
            indent();
        }
        writer.write("<!--");
        writer.write(s);
        writer.write("-->");
        lastOutputNodeType = 8;
    }

    protected void writeDeclaration()
        throws IOException
    {
        String s = format.getEncoding();
        if (!format.isSuppressDeclaration())
        {
            if (s.equals("UTF8"))
            {
                writer.write("<?xml version=\"1.0\"");
                if (!format.isOmitEncoding())
                {
                    writer.write(" encoding=\"UTF-8\"");
                }
                writer.write("?>");
            } else
            {
                writer.write("<?xml version=\"1.0\"");
                if (!format.isOmitEncoding())
                {
                    writer.write(" encoding=\"" + s + "\"");
                }
                writer.write("?>");
            }
            if (format.isNewLineAfterDeclaration())
            {
                println();
            }
        }
    }

    protected void writeDocType(String s, String s1, String s2)
        throws IOException
    {
        boolean flag1 = false;
        writer.write("<!DOCTYPE ");
        writer.write(s);
        boolean flag = flag1;
        if (s1 != null)
        {
            flag = flag1;
            if (!s1.equals(""))
            {
                writer.write(" PUBLIC \"");
                writer.write(s1);
                writer.write("\"");
                flag = true;
            }
        }
        if (s2 != null && !s2.equals(""))
        {
            if (!flag)
            {
                writer.write(" SYSTEM");
            }
            writer.write(" \"");
            writer.write(s2);
            writer.write("\"");
        }
        writer.write(">");
        writePrintln();
    }

    protected void writeDocType(DocumentType documenttype)
        throws IOException
    {
        if (documenttype != null)
        {
            documenttype.write(writer);
            writePrintln();
        }
    }

    protected void writeElement(Element element)
        throws IOException
    {
        int j = element.nodeCount();
        String s = element.getQualifiedName();
        writePrintln();
        indent();
        writer.write("<");
        writer.write(s);
        int k = namespaceStack.size();
        Namespace namespace = element.getNamespace();
        if (isNamespaceDeclaration(namespace))
        {
            namespaceStack.push(namespace);
            writeNamespace(namespace);
        }
        boolean flag1 = true;
        int i = 0;
        while (i < j) 
        {
            Object obj = element.node(i);
            boolean flag;
            if (obj instanceof Namespace)
            {
                obj = (Namespace)obj;
                flag = flag1;
                if (isNamespaceDeclaration(((Namespace) (obj))))
                {
                    namespaceStack.push(((Namespace) (obj)));
                    writeNamespace(((Namespace) (obj)));
                    flag = flag1;
                }
            } else
            if (obj instanceof Element)
            {
                flag = false;
            } else
            {
                flag = flag1;
                if (obj instanceof Comment)
                {
                    flag = false;
                }
            }
            i++;
            flag1 = flag;
        }
        writeAttributes(element);
        lastOutputNodeType = 1;
        if (j <= 0)
        {
            writeEmptyElementClose(s);
        } else
        {
            writer.write(">");
            if (flag1)
            {
                writeElementContent(element);
            } else
            {
                indentLevel = indentLevel + 1;
                writeElementContent(element);
                indentLevel = indentLevel - 1;
                writePrintln();
                indent();
            }
            writer.write("</");
            writer.write(s);
            writer.write(">");
        }
        for (; namespaceStack.size() > k; namespaceStack.pop()) { }
        lastOutputNodeType = 1;
    }

    protected void writeElementContent(Element element)
        throws IOException
    {
        StringBuffer stringbuffer;
        Object obj1;
        boolean flag;
        boolean flag3;
        boolean flag2 = format.isTrimText();
        flag3 = preserve;
        boolean flag1 = flag2;
        if (flag2)
        {
            preserve = isElementSpacePreserved(element);
            int i;
            int l;
            if (!preserve)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
        }
        if (!flag1) goto _L2; else goto _L1
_L1:
        obj1 = null;
        stringbuffer = null;
        flag = true;
        i = 0;
        l = element.nodeCount();
_L4:
        if (i >= l)
        {
            break; /* Loop/switch isn't completed */
        }
        Node node1 = element.node(i);
        if (node1 instanceof Text)
        {
            if (obj1 == null)
            {
                obj1 = (Text)node1;
            } else
            {
                StringBuffer stringbuffer1 = stringbuffer;
                if (stringbuffer == null)
                {
                    stringbuffer1 = new StringBuffer(((Text) (obj1)).getText());
                }
                stringbuffer1.append(((Text)node1).getText());
                stringbuffer = stringbuffer1;
            }
        } else
        {
            char c;
            if (!flag && format.isPadText())
            {
                c = 'a';
                Object obj2;
                StringBuffer stringbuffer2;
                if (stringbuffer != null)
                {
                    c = stringbuffer.charAt(0);
                } else
                if (obj1 != null)
                {
                    c = ((Text) (obj1)).getText().charAt(0);
                }
                if (Character.isWhitespace(c))
                {
                    writer.write(" ");
                }
            }
            stringbuffer2 = stringbuffer;
            obj2 = obj1;
            if (obj1 != null)
            {
                if (stringbuffer != null)
                {
                    writeString(stringbuffer.toString());
                    stringbuffer = null;
                } else
                {
                    writeString(((Text) (obj1)).getText());
                }
                if (format.isPadText())
                {
                    c = 'a';
                    if (stringbuffer != null)
                    {
                        c = stringbuffer.charAt(stringbuffer.length() - 1);
                    } else
                    if (obj1 != null)
                    {
                        obj1 = ((Text) (obj1)).getText();
                        c = ((String) (obj1)).charAt(((String) (obj1)).length() - 1);
                    }
                    if (Character.isWhitespace(c))
                    {
                        writer.write(" ");
                    }
                }
                obj2 = null;
                stringbuffer2 = stringbuffer;
            }
            flag = false;
            writeNode(node1);
            stringbuffer = stringbuffer2;
            obj1 = obj2;
        }
_L7:
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        if (obj1 != null)
        {
            if (!flag && format.isPadText())
            {
                char c1;
                if (stringbuffer != null)
                {
                    c1 = stringbuffer.charAt(0);
                } else
                {
                    c1 = ((Text) (obj1)).getText().charAt(0);
                }
                if (Character.isWhitespace(c1))
                {
                    writer.write(" ");
                }
            }
            if (stringbuffer != null)
            {
                writeString(stringbuffer.toString());
            } else
            {
                writeString(((Text) (obj1)).getText());
            }
        }
_L6:
        preserve = flag3;
        return;
_L2:
        Object obj = null;
        int j = 0;
        int k = element.nodeCount();
        while (j < k) 
        {
            Node node = element.node(j);
            if (node instanceof Text)
            {
                writeNode(node);
                obj = node;
            } else
            {
                if (obj != null && format.isPadText())
                {
                    obj = ((Node) (obj)).getText();
                    if (Character.isWhitespace(((String) (obj)).charAt(((String) (obj)).length() - 1)))
                    {
                        writer.write(" ");
                    }
                }
                writeNode(node);
                obj = null;
            }
            j++;
        }
        if (true) goto _L6; else goto _L5
_L5:
          goto _L7
    }

    protected void writeEmptyElementClose(String s)
        throws IOException
    {
        if (!format.isExpandEmptyElements())
        {
            writer.write("/>");
            return;
        } else
        {
            writer.write("></");
            writer.write(s);
            writer.write(">");
            return;
        }
    }

    protected void writeEntity(Entity entity)
        throws IOException
    {
        if (!resolveEntityRefs())
        {
            writeEntityRef(entity.getName());
            return;
        } else
        {
            writer.write(entity.getText());
            return;
        }
    }

    protected void writeEntityRef(String s)
        throws IOException
    {
        writer.write("&");
        writer.write(s);
        writer.write(";");
        lastOutputNodeType = 5;
    }

    protected void writeEscapeAttributeEntities(String s)
        throws IOException
    {
        if (s != null)
        {
            s = escapeAttributeEntities(s);
            writer.write(s);
        }
    }

    protected void writeNamespace(String s, String s1)
        throws IOException
    {
        if (s != null && s.length() > 0)
        {
            writer.write(" xmlns:");
            writer.write(s);
            writer.write("=\"");
        } else
        {
            writer.write(" xmlns=\"");
        }
        writer.write(s1);
        writer.write("\"");
    }

    protected void writeNamespace(Namespace namespace)
        throws IOException
    {
        if (namespace != null)
        {
            writeNamespace(namespace.getPrefix(), namespace.getURI());
        }
    }

    protected void writeNamespaces()
        throws IOException
    {
        if (namespacesMap != null)
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = namespacesMap.entrySet().iterator(); iterator.hasNext(); writeNamespace((String)entry.getKey(), (String)entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

            namespacesMap = null;
        }
    }

    protected void writeNode(Node node)
        throws IOException
    {
        switch (node.getNodeType())
        {
        case 6: // '\006'
        case 11: // '\013'
        case 12: // '\f'
        default:
            throw new IOException("Invalid node type: " + node);

        case 1: // '\001'
            writeElement((Element)node);
            // fall through

        case 13: // '\r'
            return;

        case 2: // '\002'
            writeAttribute((Attribute)node);
            return;

        case 3: // '\003'
            writeNodeText(node);
            return;

        case 4: // '\004'
            writeCDATA(node.getText());
            return;

        case 5: // '\005'
            writeEntity((Entity)node);
            return;

        case 7: // '\007'
            writeProcessingInstruction((ProcessingInstruction)node);
            return;

        case 8: // '\b'
            writeComment(node.getText());
            return;

        case 9: // '\t'
            write((Document)node);
            return;

        case 10: // '\n'
            writeDocType((DocumentType)node);
            break;
        }
    }

    protected void writeNodeText(Node node)
        throws IOException
    {
        String s = node.getText();
        if (s != null && s.length() > 0)
        {
            node = s;
            if (escapeText)
            {
                node = escapeElementEntities(s);
            }
            lastOutputNodeType = 3;
            writer.write(node);
            lastChar = node.charAt(node.length() - 1);
        }
    }

    public void writeOpen(Element element)
        throws IOException
    {
        writer.write("<");
        writer.write(element.getQualifiedName());
        writeAttributes(element);
        writer.write(">");
    }

    protected void writePrintln()
        throws IOException
    {
        if (format.isNewlines())
        {
            String s = format.getLineSeparator();
            if (lastChar != s.charAt(s.length() - 1))
            {
                writer.write(format.getLineSeparator());
            }
        }
    }

    protected void writeProcessingInstruction(ProcessingInstruction processinginstruction)
        throws IOException
    {
        writer.write("<?");
        writer.write(processinginstruction.getName());
        writer.write(" ");
        writer.write(processinginstruction.getText());
        writer.write("?>");
        writePrintln();
        lastOutputNodeType = 7;
    }

    protected void writeString(String s)
        throws IOException
    {
        if (s != null && s.length() > 0)
        {
            String s1 = s;
            if (escapeText)
            {
                s1 = escapeElementEntities(s);
            }
            if (format.isTrimText())
            {
                boolean flag = true;
                s = new StringTokenizer(s1);
                while (s.hasMoreTokens()) 
                {
                    s1 = s.nextToken();
                    if (flag)
                    {
                        boolean flag1 = false;
                        flag = flag1;
                        if (lastOutputNodeType == 3)
                        {
                            writer.write(" ");
                            flag = flag1;
                        }
                    } else
                    {
                        writer.write(" ");
                    }
                    writer.write(s1);
                    lastOutputNodeType = 3;
                    lastChar = s1.charAt(s1.length() - 1);
                }
            } else
            {
                lastOutputNodeType = 3;
                writer.write(s1);
                lastChar = s1.charAt(s1.length() - 1);
            }
        }
    }

}
