// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;


public class OutputFormat
    implements Cloneable
{

    protected static final String STANDARD_INDENT = "  ";
    private char attributeQuoteChar;
    private boolean doXHTML;
    private String encoding;
    private boolean expandEmptyElements;
    private String indent;
    private String lineSeparator;
    private boolean newLineAfterDeclaration;
    private int newLineAfterNTags;
    private boolean newlines;
    private boolean omitEncoding;
    private boolean padText;
    private boolean suppressDeclaration;
    private boolean trimText;

    public OutputFormat()
    {
        suppressDeclaration = false;
        newLineAfterDeclaration = true;
        encoding = "UTF-8";
        omitEncoding = false;
        indent = null;
        expandEmptyElements = false;
        newlines = false;
        lineSeparator = "\n";
        trimText = false;
        padText = false;
        doXHTML = false;
        newLineAfterNTags = 0;
        attributeQuoteChar = '"';
    }

    public OutputFormat(String s)
    {
        suppressDeclaration = false;
        newLineAfterDeclaration = true;
        encoding = "UTF-8";
        omitEncoding = false;
        indent = null;
        expandEmptyElements = false;
        newlines = false;
        lineSeparator = "\n";
        trimText = false;
        padText = false;
        doXHTML = false;
        newLineAfterNTags = 0;
        attributeQuoteChar = '"';
        indent = s;
    }

    public OutputFormat(String s, boolean flag)
    {
        suppressDeclaration = false;
        newLineAfterDeclaration = true;
        encoding = "UTF-8";
        omitEncoding = false;
        indent = null;
        expandEmptyElements = false;
        newlines = false;
        lineSeparator = "\n";
        trimText = false;
        padText = false;
        doXHTML = false;
        newLineAfterNTags = 0;
        attributeQuoteChar = '"';
        indent = s;
        newlines = flag;
    }

    public OutputFormat(String s, boolean flag, String s1)
    {
        suppressDeclaration = false;
        newLineAfterDeclaration = true;
        encoding = "UTF-8";
        omitEncoding = false;
        indent = null;
        expandEmptyElements = false;
        newlines = false;
        lineSeparator = "\n";
        trimText = false;
        padText = false;
        doXHTML = false;
        newLineAfterNTags = 0;
        attributeQuoteChar = '"';
        indent = s;
        newlines = flag;
        encoding = s1;
    }

    public static OutputFormat createCompactFormat()
    {
        OutputFormat outputformat = new OutputFormat();
        outputformat.setIndent(false);
        outputformat.setNewlines(false);
        outputformat.setTrimText(true);
        return outputformat;
    }

    public static OutputFormat createPrettyPrint()
    {
        OutputFormat outputformat = new OutputFormat();
        outputformat.setIndentSize(2);
        outputformat.setNewlines(true);
        outputformat.setTrimText(true);
        outputformat.setPadText(true);
        return outputformat;
    }

    public char getAttributeQuoteCharacter()
    {
        return attributeQuoteChar;
    }

    public String getEncoding()
    {
        return encoding;
    }

    public String getIndent()
    {
        return indent;
    }

    public String getLineSeparator()
    {
        return lineSeparator;
    }

    public int getNewLineAfterNTags()
    {
        return newLineAfterNTags;
    }

    public boolean isExpandEmptyElements()
    {
        return expandEmptyElements;
    }

    public boolean isNewLineAfterDeclaration()
    {
        return newLineAfterDeclaration;
    }

    public boolean isNewlines()
    {
        return newlines;
    }

    public boolean isOmitEncoding()
    {
        return omitEncoding;
    }

    public boolean isPadText()
    {
        return padText;
    }

    public boolean isSuppressDeclaration()
    {
        return suppressDeclaration;
    }

    public boolean isTrimText()
    {
        return trimText;
    }

    public boolean isXHTML()
    {
        return doXHTML;
    }

    public int parseOptions(String as[], int i)
    {
        int j = as.length;
_L2:
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_248;
        }
        if (!as[i].equals("-suppressDeclaration"))
        {
            break; /* Loop/switch isn't completed */
        }
        setSuppressDeclaration(true);
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (as[i].equals("-omitEncoding"))
        {
            setOmitEncoding(true);
        } else
        if (as[i].equals("-indent"))
        {
            i++;
            setIndent(as[i]);
        } else
        if (as[i].equals("-indentSize"))
        {
            i++;
            setIndentSize(Integer.parseInt(as[i]));
        } else
        if (as[i].startsWith("-expandEmpty"))
        {
            setExpandEmptyElements(true);
        } else
        if (as[i].equals("-encoding"))
        {
            i++;
            setEncoding(as[i]);
        } else
        if (as[i].equals("-newlines"))
        {
            setNewlines(true);
        } else
        if (as[i].equals("-lineSeparator"))
        {
            i++;
            setLineSeparator(as[i]);
        } else
        if (as[i].equals("-trimText"))
        {
            setTrimText(true);
        } else
        if (as[i].equals("-padText"))
        {
            setPadText(true);
        } else
        {
            if (!as[i].startsWith("-xhtml"))
            {
                break MISSING_BLOCK_LABEL_248;
            }
            setXHTML(true);
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
        return i;
    }

    public void setAttributeQuoteCharacter(char c)
    {
        if (c == '\'' || c == '"')
        {
            attributeQuoteChar = c;
            return;
        } else
        {
            throw new IllegalArgumentException("Invalid attribute quote character (" + c + ")");
        }
    }

    public void setEncoding(String s)
    {
        if (s != null)
        {
            encoding = s;
        }
    }

    public void setExpandEmptyElements(boolean flag)
    {
        expandEmptyElements = flag;
    }

    public void setIndent(String s)
    {
        String s1 = s;
        if (s != null)
        {
            s1 = s;
            if (s.length() <= 0)
            {
                s1 = null;
            }
        }
        indent = s1;
    }

    public void setIndent(boolean flag)
    {
        if (flag)
        {
            indent = "  ";
            return;
        } else
        {
            indent = null;
            return;
        }
    }

    public void setIndentSize(int i)
    {
        StringBuffer stringbuffer = new StringBuffer();
        for (int j = 0; j < i; j++)
        {
            stringbuffer.append(" ");
        }

        indent = stringbuffer.toString();
    }

    public void setLineSeparator(String s)
    {
        lineSeparator = s;
    }

    public void setNewLineAfterDeclaration(boolean flag)
    {
        newLineAfterDeclaration = flag;
    }

    public void setNewLineAfterNTags(int i)
    {
        newLineAfterNTags = i;
    }

    public void setNewlines(boolean flag)
    {
        newlines = flag;
    }

    public void setOmitEncoding(boolean flag)
    {
        omitEncoding = flag;
    }

    public void setPadText(boolean flag)
    {
        padText = flag;
    }

    public void setSuppressDeclaration(boolean flag)
    {
        suppressDeclaration = flag;
    }

    public void setTrimText(boolean flag)
    {
        trimText = flag;
    }

    public void setXHTML(boolean flag)
    {
        doXHTML = flag;
    }
}
