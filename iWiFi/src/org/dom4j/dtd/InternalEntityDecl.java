// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.dtd;


public class InternalEntityDecl
{

    private String name;
    private String value;

    public InternalEntityDecl()
    {
    }

    public InternalEntityDecl(String s, String s1)
    {
        name = s;
        value = s1;
    }

    private String escapeEntityValue(String s)
    {
        StringBuffer stringbuffer;
label0:
        {
label1:
            {
label2:
                {
label3:
                    {
label4:
                        {
                            stringbuffer = new StringBuffer();
                            int i = 0;
label5:
                            do
                            {
                                {
                                    if (i >= s.length())
                                    {
                                        break label0;
                                    }
                                    char c = s.charAt(i);
                                    switch (c)
                                    {
                                    default:
                                        if (c < ' ')
                                        {
                                            stringbuffer.append("&#" + (int)c + ";");
                                        } else
                                        {
                                            stringbuffer.append(c);
                                        }
                                        break;

                                    case 34: // '"'
                                        break label1;

                                    case 38: // '&'
                                        break label3;

                                    case 39: // '\''
                                        break label2;

                                    case 60: // '<'
                                        break label5;

                                    case 62: // '>'
                                        break label4;
                                    }
                                }
                                i++;
                            } while (true);
                            stringbuffer.append("&#38;#60;");
                            break MISSING_BLOCK_LABEL_115;
                        }
                        stringbuffer.append("&#62;");
                        break MISSING_BLOCK_LABEL_115;
                    }
                    stringbuffer.append("&#38;#38;");
                    break MISSING_BLOCK_LABEL_115;
                }
                stringbuffer.append("&#39;");
                break MISSING_BLOCK_LABEL_115;
            }
            stringbuffer.append("&#34;");
            break MISSING_BLOCK_LABEL_115;
        }
        return stringbuffer.toString();
    }

    public String getName()
    {
        return name;
    }

    public String getValue()
    {
        return value;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setValue(String s)
    {
        value = s;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer("<!ENTITY ");
        if (name.startsWith("%"))
        {
            stringbuffer.append("% ");
            stringbuffer.append(name.substring(1));
        } else
        {
            stringbuffer.append(name);
        }
        stringbuffer.append(" \"");
        stringbuffer.append(escapeEntityValue(value));
        stringbuffer.append("\">");
        return stringbuffer.toString();
    }
}
