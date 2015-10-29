// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.IOException;
import java.io.OutputStream;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.Stack;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.xml.sax.SAXException;

// Referenced classes of package org.dom4j.io:
//            XMLWriter, OutputFormat

public class HTMLWriter extends XMLWriter
{
    private class FormatState
    {

        private String indent;
        private boolean newlines;
        private final HTMLWriter this$0;
        private boolean trimText;

        public String getIndent()
        {
            return indent;
        }

        public boolean isNewlines()
        {
            return newlines;
        }

        public boolean isTrimText()
        {
            return trimText;
        }

        public FormatState(boolean flag, boolean flag1, String s)
        {
            this$0 = HTMLWriter.this;
            newlines = false;
            trimText = false;
            indent = "";
            newlines = flag;
            trimText = flag1;
            indent = s;
        }
    }


    protected static final OutputFormat DEFAULT_HTML_FORMAT;
    protected static final HashSet DEFAULT_PREFORMATTED_TAGS;
    private static String lineSeparator = System.getProperty("line.separator");
    private Stack formatStack;
    private String lastText;
    private int newLineAfterNTags;
    private HashSet omitElementCloseSet;
    private HashSet preformattedTags;
    private int tagsOuput;

    public HTMLWriter()
        throws UnsupportedEncodingException
    {
        super(DEFAULT_HTML_FORMAT);
        formatStack = new Stack();
        lastText = "";
        tagsOuput = 0;
        newLineAfterNTags = -1;
        preformattedTags = DEFAULT_PREFORMATTED_TAGS;
    }

    public HTMLWriter(OutputStream outputstream)
        throws UnsupportedEncodingException
    {
        super(outputstream, DEFAULT_HTML_FORMAT);
        formatStack = new Stack();
        lastText = "";
        tagsOuput = 0;
        newLineAfterNTags = -1;
        preformattedTags = DEFAULT_PREFORMATTED_TAGS;
    }

    public HTMLWriter(OutputStream outputstream, OutputFormat outputformat)
        throws UnsupportedEncodingException
    {
        super(outputstream, outputformat);
        formatStack = new Stack();
        lastText = "";
        tagsOuput = 0;
        newLineAfterNTags = -1;
        preformattedTags = DEFAULT_PREFORMATTED_TAGS;
    }

    public HTMLWriter(Writer writer)
    {
        super(writer, DEFAULT_HTML_FORMAT);
        formatStack = new Stack();
        lastText = "";
        tagsOuput = 0;
        newLineAfterNTags = -1;
        preformattedTags = DEFAULT_PREFORMATTED_TAGS;
    }

    public HTMLWriter(Writer writer, OutputFormat outputformat)
    {
        super(writer, outputformat);
        formatStack = new Stack();
        lastText = "";
        tagsOuput = 0;
        newLineAfterNTags = -1;
        preformattedTags = DEFAULT_PREFORMATTED_TAGS;
    }

    public HTMLWriter(OutputFormat outputformat)
        throws UnsupportedEncodingException
    {
        super(outputformat);
        formatStack = new Stack();
        lastText = "";
        tagsOuput = 0;
        newLineAfterNTags = -1;
        preformattedTags = DEFAULT_PREFORMATTED_TAGS;
    }

    private HashSet internalGetOmitElementCloseSet()
    {
        if (omitElementCloseSet == null)
        {
            omitElementCloseSet = new HashSet();
            loadOmitElementCloseSet(omitElementCloseSet);
        }
        return omitElementCloseSet;
    }

    private String justSpaces(String s)
    {
        int j = s.length();
        StringBuffer stringbuffer = new StringBuffer(j);
        int i = 0;
        do
        {
            if (i < j)
            {
                char c = s.charAt(i);
                switch (c)
                {
                case 11: // '\013'
                case 12: // '\f'
                default:
                    stringbuffer.append(c);
                    // fall through

                case 10: // '\n'
                case 13: // '\r'
                    i++;
                    break;
                }
            } else
            {
                return stringbuffer.toString();
            }
        } while (true);
    }

    private void lazyInitNewLinesAfterNTags()
    {
        if (getOutputFormat().isNewlines())
        {
            newLineAfterNTags = 0;
            return;
        } else
        {
            newLineAfterNTags = getOutputFormat().getNewLineAfterNTags();
            return;
        }
    }

    public static String prettyPrintHTML(String s)
        throws IOException, UnsupportedEncodingException, DocumentException
    {
        return prettyPrintHTML(s, true, true, false, true);
    }

    public static String prettyPrintHTML(String s, boolean flag, boolean flag1, boolean flag2, boolean flag3)
        throws IOException, UnsupportedEncodingException, DocumentException
    {
        StringWriter stringwriter = new StringWriter();
        Object obj = OutputFormat.createPrettyPrint();
        ((OutputFormat) (obj)).setNewlines(flag);
        ((OutputFormat) (obj)).setTrimText(flag1);
        ((OutputFormat) (obj)).setXHTML(flag2);
        ((OutputFormat) (obj)).setExpandEmptyElements(flag3);
        obj = new HTMLWriter(stringwriter, ((OutputFormat) (obj)));
        ((HTMLWriter) (obj)).write(DocumentHelper.parseText(s));
        ((HTMLWriter) (obj)).flush();
        return stringwriter.toString();
    }

    public static String prettyPrintXHTML(String s)
        throws IOException, UnsupportedEncodingException, DocumentException
    {
        return prettyPrintHTML(s, true, true, true, false);
    }

    public void endCDATA()
        throws SAXException
    {
    }

    public Set getOmitElementCloseSet()
    {
        return (Set)internalGetOmitElementCloseSet().clone();
    }

    public Set getPreformattedTags()
    {
        return (Set)preformattedTags.clone();
    }

    public boolean isPreformattedTag(String s)
    {
        return preformattedTags != null && preformattedTags.contains(s.toUpperCase());
    }

    protected void loadOmitElementCloseSet(Set set)
    {
        set.add("AREA");
        set.add("BASE");
        set.add("BR");
        set.add("COL");
        set.add("HR");
        set.add("IMG");
        set.add("INPUT");
        set.add("LINK");
        set.add("META");
        set.add("P");
        set.add("PARAM");
    }

    protected boolean omitElementClose(String s)
    {
        return internalGetOmitElementCloseSet().contains(s.toUpperCase());
    }

    public void setOmitElementCloseSet(Set set)
    {
        omitElementCloseSet = new HashSet();
        if (set != null)
        {
            omitElementCloseSet = new HashSet();
            set = set.iterator();
            do
            {
                if (!set.hasNext())
                {
                    break;
                }
                Object obj = set.next();
                if (obj != null)
                {
                    omitElementCloseSet.add(obj.toString().toUpperCase());
                }
            } while (true);
        }
    }

    public void setPreformattedTags(Set set)
    {
        preformattedTags = new HashSet();
        if (set != null)
        {
            set = set.iterator();
            do
            {
                if (!set.hasNext())
                {
                    break;
                }
                Object obj = set.next();
                if (obj != null)
                {
                    preformattedTags.add(obj.toString().toUpperCase());
                }
            } while (true);
        }
    }

    public void startCDATA()
        throws SAXException
    {
    }

    protected void writeCDATA(String s)
        throws IOException
    {
        if (getOutputFormat().isXHTML())
        {
            super.writeCDATA(s);
        } else
        {
            writer.write(s);
        }
        lastOutputNodeType = 4;
    }

    protected void writeClose(String s)
        throws IOException
    {
        if (!omitElementClose(s))
        {
            super.writeClose(s);
        }
    }

    protected void writeDeclaration()
        throws IOException
    {
    }

    protected void writeElement(Element element)
        throws IOException
    {
        Object obj;
        String s;
        String s1;
        if (newLineAfterNTags == -1)
        {
            lazyInitNewLinesAfterNTags();
        }
        if (newLineAfterNTags > 0 && tagsOuput > 0 && tagsOuput % newLineAfterNTags == 0)
        {
            super.writer.write(lineSeparator);
        }
        tagsOuput = tagsOuput + 1;
        obj = element.getQualifiedName();
        s = lastText;
        element.nodeCount();
        if (!isPreformattedTag(((String) (obj))))
        {
            break MISSING_BLOCK_LABEL_264;
        }
        obj = getOutputFormat();
        boolean flag = ((OutputFormat) (obj)).isNewlines();
        boolean flag1 = ((OutputFormat) (obj)).isTrimText();
        s1 = ((OutputFormat) (obj)).getIndent();
        formatStack.push(new FormatState(flag, flag1, s1));
        super.writePrintln();
        if (s.trim().length() != 0 || s1 == null)
        {
            break MISSING_BLOCK_LABEL_169;
        }
        if (s1.length() > 0)
        {
            super.writer.write(justSpaces(s));
        }
        ((OutputFormat) (obj)).setNewlines(false);
        ((OutputFormat) (obj)).setTrimText(false);
        ((OutputFormat) (obj)).setIndent("");
        super.writeElement(element);
        element = (FormatState)formatStack.pop();
        ((OutputFormat) (obj)).setNewlines(element.isNewlines());
        ((OutputFormat) (obj)).setTrimText(element.isTrimText());
        ((OutputFormat) (obj)).setIndent(element.getIndent());
        return;
        element;
        FormatState formatstate = (FormatState)formatStack.pop();
        ((OutputFormat) (obj)).setNewlines(formatstate.isNewlines());
        ((OutputFormat) (obj)).setTrimText(formatstate.isTrimText());
        ((OutputFormat) (obj)).setIndent(formatstate.getIndent());
        throw element;
        super.writeElement(element);
        return;
    }

    protected void writeEmptyElementClose(String s)
        throws IOException
    {
        if (getOutputFormat().isXHTML())
        {
            if (omitElementClose(s))
            {
                writer.write(" />");
                return;
            } else
            {
                super.writeEmptyElementClose(s);
                return;
            }
        }
        if (omitElementClose(s))
        {
            writer.write(">");
            return;
        } else
        {
            super.writeEmptyElementClose(s);
            return;
        }
    }

    protected void writeEntity(Entity entity)
        throws IOException
    {
        writer.write(entity.getText());
        lastOutputNodeType = 5;
    }

    protected void writeString(String s)
        throws IOException
    {
        if (s.equals("\n"))
        {
            if (!formatStack.empty())
            {
                super.writeString(lineSeparator);
            }
            return;
        }
        lastText = s;
        if (formatStack.empty())
        {
            super.writeString(s.trim());
            return;
        } else
        {
            super.writeString(s);
            return;
        }
    }

    static 
    {
        DEFAULT_PREFORMATTED_TAGS = new HashSet();
        DEFAULT_PREFORMATTED_TAGS.add("PRE");
        DEFAULT_PREFORMATTED_TAGS.add("SCRIPT");
        DEFAULT_PREFORMATTED_TAGS.add("STYLE");
        DEFAULT_PREFORMATTED_TAGS.add("TEXTAREA");
        DEFAULT_HTML_FORMAT = new OutputFormat("  ", true);
        DEFAULT_HTML_FORMAT.setTrimText(true);
        DEFAULT_HTML_FORMAT.setSuppressDeclaration(true);
    }
}
