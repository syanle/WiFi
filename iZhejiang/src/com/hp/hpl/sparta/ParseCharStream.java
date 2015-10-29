// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;

import java.io.IOException;
import java.io.Reader;
import java.util.Hashtable;

// Referenced classes of package com.hp.hpl.sparta:
//            ParseSource, ParseException, EncodingMismatchException, ParseHandler, 
//            Element, ParseLog, Sparta, CharCircBuffer

class ParseCharStream
    implements ParseSource
{

    private static final char BEGIN_CDATA[];
    private static final char BEGIN_ETAG[];
    private static final char CHARREF_BEGIN[];
    private static final char COMMENT_BEGIN[];
    private static final char COMMENT_END[];
    private static final boolean DEBUG = true;
    private static final char DOCTYPE_BEGIN[];
    private static final char ENCODING[];
    private static final char END_CDATA[];
    private static final char END_EMPTYTAG[];
    private static final char ENTITY_BEGIN[];
    public static final int HISTORY_LENGTH = 100;
    private static final boolean H_DEBUG = false;
    private static final boolean IS_NAME_CHAR[];
    private static final char MARKUPDECL_BEGIN[];
    private static final int MAX_COMMON_CHAR = 128;
    private static final char NAME_PUNCT_CHARS[] = {
        '.', '-', '_', ':'
    };
    private static final char NDATA[];
    private static final char PI_BEGIN[];
    private static final char PUBLIC[];
    private static final char QU_END[];
    private static final char SYSTEM[];
    private static final int TMP_BUF_SIZE = 255;
    private static final char VERSION[];
    private static final char VERSIONNUM_PUNC_CHARS[];
    private static final char XML_BEGIN[];
    private final int CBUF_SIZE;
    private final char cbuf_[];
    private int ch_;
    private int curPos_;
    private String docTypeName_;
    private final String encoding_;
    private int endPos_;
    private final Hashtable entities_;
    private boolean eos_;
    private final ParseHandler handler_;
    private final CharCircBuffer history_;
    private boolean isExternalDtd_;
    private int lineNumber_;
    private final ParseLog log_;
    private final Hashtable pes_;
    private final Reader reader_;
    private String systemId_;
    private final char tmpBuf_[];

    public ParseCharStream(String s, Reader reader, ParseLog parselog, String s1, ParseHandler parsehandler)
        throws ParseException, EncodingMismatchException, IOException
    {
        this(s, reader, null, parselog, s1, parsehandler);
    }

    public ParseCharStream(String s, Reader reader, char ac[], ParseLog parselog, String s1, ParseHandler parsehandler)
        throws ParseException, EncodingMismatchException, IOException
    {
        docTypeName_ = null;
        entities_ = new Hashtable();
        pes_ = new Hashtable();
        ch_ = -2;
        isExternalDtd_ = false;
        CBUF_SIZE = 1024;
        curPos_ = 0;
        endPos_ = 0;
        eos_ = false;
        tmpBuf_ = new char[255];
        lineNumber_ = -1;
        lineNumber_ = 1;
        history_ = null;
        ParseLog parselog1 = parselog;
        if (parselog == null)
        {
            parselog1 = ParseSource.DEFAULT_LOG;
        }
        log_ = parselog1;
        if (s1 == null)
        {
            parselog = null;
        } else
        {
            parselog = s1.toLowerCase();
        }
        encoding_ = parselog;
        entities_.put("lt", "<");
        entities_.put("gt", ">");
        entities_.put("amp", "&");
        entities_.put("apos", "'");
        entities_.put("quot", "\"");
        if (ac != null)
        {
            cbuf_ = ac;
            curPos_ = 0;
            endPos_ = cbuf_.length;
            eos_ = true;
            reader_ = null;
        } else
        {
            reader_ = reader;
            cbuf_ = new char[1024];
            fillBuf();
        }
        systemId_ = s;
        handler_ = parsehandler;
        handler_.setParseSource(this);
        readProlog();
        handler_.startDocument();
        s = readElement();
        if (docTypeName_ != null && !docTypeName_.equals(s.getTagName()))
        {
            log_.warning("DOCTYPE name \"" + docTypeName_ + "\" not same as tag name, \"" + s.getTagName() + "\" of root element", systemId_, getLineNumber());
        }
        do
        {
            if (!isMisc())
            {
                if (reader_ != null)
                {
                    reader_.close();
                }
                handler_.endDocument();
                return;
            }
            readMisc();
        } while (true);
    }

    public ParseCharStream(String s, char ac[], ParseLog parselog, String s1, ParseHandler parsehandler)
        throws ParseException, EncodingMismatchException, IOException
    {
        this(s, null, ac, parselog, s1, parsehandler);
    }

    private int fillBuf()
        throws IOException
    {
        if (eos_)
        {
            return -1;
        }
        if (endPos_ == cbuf_.length)
        {
            endPos_ = 0;
            curPos_ = 0;
        }
        int i = reader_.read(cbuf_, endPos_, cbuf_.length - endPos_);
        if (i <= 0)
        {
            eos_ = true;
            return -1;
        } else
        {
            endPos_ = endPos_ + i;
            return i;
        }
    }

    private int fillBuf(int i)
        throws IOException
    {
        int j = 0;
        if (!eos_) goto _L2; else goto _L1
_L1:
        i = -1;
_L5:
        return i;
_L2:
        if (cbuf_.length - curPos_ >= i) goto _L4; else goto _L3
_L3:
        i = 0;
_L6:
        if (curPos_ + i < endPos_)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        j = endPos_ - curPos_;
        endPos_ = j;
        curPos_ = 0;
_L4:
        i = fillBuf();
        if (i == -1)
        {
            i = j;
            if (j == 0)
            {
                return -1;
            }
        } else
        {
            return j + i;
        }
          goto _L5
        cbuf_[i] = cbuf_[curPos_ + i];
        i++;
          goto _L6
    }

    private boolean isCdSect()
        throws ParseException, IOException
    {
        return isSymbol(BEGIN_CDATA);
    }

    private final boolean isChar(char c)
        throws ParseException, IOException
    {
        if (curPos_ >= endPos_ && fillBuf() == -1)
        {
            throw new ParseException(this, "unexpected end of expression.");
        }
        return cbuf_[curPos_] == c;
    }

    private final boolean isChar(char c, char c1)
        throws ParseException, IOException
    {
        char c2;
        if (curPos_ < endPos_ || fillBuf() != -1)
        {
            if ((c2 = cbuf_[curPos_]) == c || c2 == c1)
            {
                return true;
            }
        }
        return false;
    }

    private final boolean isChar(char c, char c1, char c2, char c3)
        throws ParseException, IOException
    {
        char c4;
        if (curPos_ < endPos_ || fillBuf() != -1)
        {
            if ((c4 = cbuf_[curPos_]) == c || c4 == c1 || c4 == c2 || c4 == c3)
            {
                return true;
            }
        }
        return false;
    }

    private final boolean isComment()
        throws ParseException, IOException
    {
        return isSymbol(COMMENT_BEGIN);
    }

    private boolean isDeclSep()
        throws ParseException, IOException
    {
        return isPeReference() || isS();
    }

    private boolean isDocTypeDecl()
        throws ParseException, IOException
    {
        return isSymbol(DOCTYPE_BEGIN);
    }

    private boolean isETag()
        throws ParseException, IOException
    {
        return isSymbol(BEGIN_ETAG);
    }

    private boolean isEncodingDecl()
        throws ParseException, IOException
    {
        return isSymbol(ENCODING);
    }

    private boolean isEntityDecl()
        throws ParseException, IOException
    {
        return isSymbol(ENTITY_BEGIN);
    }

    private final boolean isEntityValue()
        throws ParseException, IOException
    {
        return isChar('\'', '"');
    }

    private static boolean isExtender(char c)
    {
        switch (c)
        {
        default:
            return false;

        case 183: 
        case 720: 
        case 721: 
        case 903: 
        case 1600: 
        case 3654: 
        case 3782: 
        case 12293: 
        case 12337: 
        case 12338: 
        case 12339: 
        case 12340: 
        case 12341: 
        case 12445: 
        case 12446: 
        case 12540: 
        case 12541: 
        case 12542: 
            return true;
        }
    }

    private boolean isExternalId()
        throws ParseException, IOException
    {
        return isSymbol(SYSTEM) || isSymbol(PUBLIC);
    }

    private static final boolean isIn(char c, char ac[])
    {
        int i = 0;
        do
        {
            if (i >= ac.length)
            {
                return false;
            }
            if (c == ac[i])
            {
                return true;
            }
            i++;
        } while (true);
    }

    private static boolean isLetter(char c)
    {
        return "abcdefghijklmnopqrstuvwxyz".indexOf(Character.toLowerCase(c)) != -1;
    }

    private boolean isMisc()
        throws ParseException, IOException
    {
        return isComment() || isPi() || isS();
    }

    private boolean isNameChar()
        throws ParseException, IOException
    {
        char c = peekChar();
        if (c < '\200')
        {
            return IS_NAME_CHAR[c];
        } else
        {
            return isNameChar(c);
        }
    }

    private static boolean isNameChar(char c)
    {
        return Character.isDigit(c) || isLetter(c) || isIn(c, NAME_PUNCT_CHARS) || isExtender(c);
    }

    private boolean isPeReference()
        throws ParseException, IOException
    {
        return isChar('%');
    }

    private final boolean isPi()
        throws ParseException, IOException
    {
        return isSymbol(PI_BEGIN);
    }

    private final boolean isReference()
        throws ParseException, IOException
    {
        return isChar('&');
    }

    private final boolean isS()
        throws ParseException, IOException
    {
        return isChar(' ', '\t', '\r', '\n');
    }

    private final boolean isSymbol(char ac[])
        throws ParseException, IOException
    {
        int j = ac.length;
        if (endPos_ - curPos_ >= j || fillBuf(j) > 0) goto _L2; else goto _L1
_L1:
        ch_ = -1;
_L4:
        return false;
_L2:
        ch_ = cbuf_[endPos_ - 1];
        if (endPos_ - curPos_ < j)
        {
            continue;
        }
        int i = 0;
        do
        {
            if (i >= j)
            {
                return true;
            }
            if (cbuf_[curPos_ + i] != ac[i])
            {
                continue;
            }
            i++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private boolean isVersionNumChar()
        throws ParseException, IOException
    {
        char c = peekChar();
        return Character.isDigit(c) || 'a' <= c && c <= 'z' || 'Z' <= c && c <= 'Z' || isIn(c, VERSIONNUM_PUNC_CHARS);
    }

    private boolean isXmlDecl()
        throws ParseException, IOException
    {
        return isSymbol(XML_BEGIN);
    }

    private final char peekChar()
        throws ParseException, IOException
    {
        if (curPos_ >= endPos_ && fillBuf() == -1)
        {
            throw new ParseException(this, "unexpected end of expression.");
        } else
        {
            return cbuf_[curPos_];
        }
    }

    private String readAttValue()
        throws ParseException, IOException
    {
        char c = readChar('\'', '"');
        StringBuffer stringbuffer = new StringBuffer();
        do
        {
            if (isChar(c))
            {
                readChar(c);
                return stringbuffer.toString();
            }
            if (isReference())
            {
                stringbuffer.append(readReference());
            } else
            {
                stringbuffer.append(readChar());
            }
        } while (true);
    }

    private void readAttribute(Element element)
        throws ParseException, IOException
    {
        String s = readName();
        readEq();
        String s1 = readAttValue();
        if (element.getAttribute(s) != null)
        {
            log_.warning("Element " + this + " contains attribute " + s + "more than once", systemId_, getLineNumber());
        }
        element.setAttribute(s, s1);
    }

    private void readCdSect()
        throws ParseException, IOException
    {
        Object obj = null;
        readSymbol(BEGIN_CDATA);
        int i = 0;
        do
        {
            if (isSymbol(END_CDATA))
            {
                readSymbol(END_CDATA);
                if (obj != null)
                {
                    ((StringBuffer) (obj)).append(tmpBuf_, 0, i);
                    obj = ((StringBuffer) (obj)).toString().toCharArray();
                    handler_.characters(((char []) (obj)), 0, obj.length);
                    return;
                } else
                {
                    handler_.characters(tmpBuf_, 0, i);
                    return;
                }
            }
            if (i >= 255)
            {
                if (obj == null)
                {
                    obj = new StringBuffer(i);
                    ((StringBuffer) (obj)).append(tmpBuf_, 0, i);
                } else
                {
                    ((StringBuffer) (obj)).append(tmpBuf_, 0, i);
                }
                i = 0;
            }
            tmpBuf_[i] = readChar();
            i++;
        } while (true);
    }

    private final char readChar()
        throws ParseException, IOException
    {
        if (curPos_ >= endPos_ && fillBuf() == -1)
        {
            throw new ParseException(this, "unexpected end of expression.");
        }
        if (cbuf_[curPos_] == '\n')
        {
            lineNumber_ = lineNumber_ + 1;
        }
        char ac[] = cbuf_;
        int i = curPos_;
        curPos_ = i + 1;
        return ac[i];
    }

    private final char readChar(char c, char c1)
        throws ParseException, IOException
    {
        char c2 = readChar();
        if (c2 != c && c2 != c1)
        {
            throw new ParseException(this, c2, new char[] {
                c, c1
            });
        } else
        {
            return c2;
        }
    }

    private final char readChar(char c, char c1, char c2, char c3)
        throws ParseException, IOException
    {
        char c4 = readChar();
        if (c4 != c && c4 != c1 && c4 != c2 && c4 != c3)
        {
            throw new ParseException(this, c4, new char[] {
                c, c1, c2, c3
            });
        } else
        {
            return c4;
        }
    }

    private final void readChar(char c)
        throws ParseException, IOException
    {
        char c1 = readChar();
        if (c1 != c)
        {
            throw new ParseException(this, c1, c);
        } else
        {
            return;
        }
    }

    private char readCharRef()
        throws ParseException, IOException
    {
        readSymbol(CHARREF_BEGIN);
        byte byte0 = 10;
        if (isChar('x'))
        {
            readChar();
            byte0 = 16;
        }
        int i = 0;
        do
        {
            int j;
            if (isChar(';'))
            {
                readChar(';');
                Object obj = new String(tmpBuf_, 0, i);
                try
                {
                    i = Integer.parseInt(((String) (obj)), byte0);
                }
                catch (NumberFormatException numberformatexception)
                {
                    ParseLog parselog = log_;
                    StringBuffer stringbuffer = (new StringBuffer()).append("\"").append(((String) (obj))).append("\" is not a valid ");
                    if (byte0 == 16)
                    {
                        obj = "hexadecimal";
                    } else
                    {
                        obj = "decimal";
                    }
                    parselog.warning(stringbuffer.append(((String) (obj))).append(" number").toString(), systemId_, getLineNumber());
                    return ' ';
                }
                return (char)i;
            }
            obj = tmpBuf_;
            j = i + 1;
            obj[i] = readChar();
            if (j >= 255)
            {
                log_.warning("Tmp buffer overflow on readCharRef", systemId_, getLineNumber());
                return ' ';
            }
            i = j;
        } while (true);
    }

    private final void readComment()
        throws ParseException, IOException
    {
        readSymbol(COMMENT_BEGIN);
        do
        {
            if (isSymbol(COMMENT_END))
            {
                readSymbol(COMMENT_END);
                return;
            }
            readChar();
        } while (true);
    }

    private void readContent()
        throws ParseException, IOException
    {
        boolean flag;
        readPossibleCharData();
        flag = true;
_L2:
        if (!flag)
        {
            return;
        }
        if (!isETag())
        {
            break; /* Loop/switch isn't completed */
        }
        flag = false;
_L3:
        readPossibleCharData();
        if (true) goto _L2; else goto _L1
_L1:
        if (isReference())
        {
            char ac[] = readReference();
            handler_.characters(ac, 0, ac.length);
        } else
        if (isCdSect())
        {
            readCdSect();
        } else
        if (isPi())
        {
            readPi();
        } else
        if (isComment())
        {
            readComment();
        } else
        if (isChar('<'))
        {
            readElement();
        } else
        {
            flag = false;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    private void readDeclSep()
        throws ParseException, IOException
    {
        if (isPeReference())
        {
            readPeReference();
            return;
        } else
        {
            readS();
            return;
        }
    }

    private void readDocTypeDecl()
        throws ParseException, IOException
    {
        readSymbol(DOCTYPE_BEGIN);
        readS();
        docTypeName_ = readName();
        if (isS())
        {
            readS();
            if (!isChar('>') && !isChar('['))
            {
                isExternalDtd_ = true;
                readExternalId();
                if (isS())
                {
                    readS();
                }
            }
        }
        if (!isChar('[')) goto _L2; else goto _L1
_L1:
        readChar();
_L6:
        if (!isChar(']')) goto _L4; else goto _L3
_L3:
        readChar(']');
        if (isS())
        {
            readS();
        }
_L2:
        readChar('>');
        return;
_L4:
        if (isDeclSep())
        {
            readDeclSep();
        } else
        {
            readMarkupDecl();
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void readETag(Element element)
        throws ParseException, IOException
    {
        readSymbol(BEGIN_ETAG);
        String s = readName();
        if (!s.equals(element.getTagName()))
        {
            log_.warning("end tag (" + s + ") does not match begin tag (" + element.getTagName() + ")", systemId_, getLineNumber());
        }
        if (isS())
        {
            readS();
        }
        readChar('>');
    }

    private final Element readElement()
        throws ParseException, IOException
    {
        Element element = new Element();
        boolean flag = readEmptyElementTagOrSTag(element);
        handler_.startElement(element);
        if (flag)
        {
            readContent();
            readETag(element);
        }
        handler_.endElement(element);
        return element;
    }

    private boolean readEmptyElementTagOrSTag(Element element)
        throws ParseException, IOException
    {
        readChar('<');
        element.setTagName(readName());
        do
        {
            do
            {
                if (!isS())
                {
                    if (isS())
                    {
                        readS();
                    }
                    boolean flag = isChar('>');
                    if (flag)
                    {
                        readChar('>');
                        return flag;
                    } else
                    {
                        readSymbol(END_EMPTYTAG);
                        return flag;
                    }
                }
                readS();
            } while (isChar('/', '>'));
            readAttribute(element);
        } while (true);
    }

    private String readEncodingDecl()
        throws ParseException, IOException
    {
        readSymbol(ENCODING);
        readEq();
        char c = readChar('\'', '"');
        StringBuffer stringbuffer = new StringBuffer();
        do
        {
            if (isChar(c))
            {
                readChar(c);
                return stringbuffer.toString();
            }
            stringbuffer.append(readChar());
        } while (true);
    }

    private void readEntityDecl()
        throws ParseException, IOException
    {
        readSymbol(ENTITY_BEGIN);
        readS();
        if (!isChar('%')) goto _L2; else goto _L1
_L1:
        readChar('%');
        readS();
        String s2 = readName();
        readS();
        String s;
        if (isEntityValue())
        {
            s = readEntityValue();
        } else
        {
            s = readExternalId();
        }
        pes_.put(s2, s);
_L4:
        if (isS())
        {
            readS();
        }
        readChar('>');
        return;
_L2:
        String s1;
        String s4;
        s4 = readName();
        readS();
        if (!isEntityValue())
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = readEntityValue();
_L5:
        entities_.put(s4, s1);
        if (true) goto _L4; else goto _L3
_L3:
        if (isExternalId())
        {
            String s3 = readExternalId();
            if (isS())
            {
                readS();
            }
            s1 = s3;
            if (isSymbol(NDATA))
            {
                readSymbol(NDATA);
                readS();
                readName();
                s1 = s3;
            }
        } else
        {
            throw new ParseException(this, "expecting double-quote, \"PUBLIC\" or \"SYSTEM\" while reading entity declaration");
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    private String readEntityRef()
        throws ParseException, IOException
    {
        readChar('&');
        String s2 = readName();
        String s1 = (String)entities_.get(s2);
        String s = s1;
        if (s1 == null)
        {
            s = "";
            if (isExternalDtd_)
            {
                log_.warning("&" + s2 + "; not found -- possibly defined in external DTD)", systemId_, getLineNumber());
            } else
            {
                log_.warning("No declaration of &" + s2 + ";", systemId_, getLineNumber());
            }
        }
        readChar(';');
        return s;
    }

    private final String readEntityValue()
        throws ParseException, IOException
    {
        char c = readChar('\'', '"');
        StringBuffer stringbuffer = new StringBuffer();
        do
        {
            if (isChar(c))
            {
                readChar(c);
                return stringbuffer.toString();
            }
            if (isPeReference())
            {
                stringbuffer.append(readPeReference());
            } else
            if (isReference())
            {
                stringbuffer.append(readReference());
            } else
            {
                stringbuffer.append(readChar());
            }
        } while (true);
    }

    private final void readEq()
        throws ParseException, IOException
    {
        if (isS())
        {
            readS();
        }
        readChar('=');
        if (isS())
        {
            readS();
        }
    }

    private String readExternalId()
        throws ParseException, IOException
    {
        if (isSymbol(SYSTEM))
        {
            readSymbol(SYSTEM);
        } else
        if (isSymbol(PUBLIC))
        {
            readSymbol(PUBLIC);
            readS();
            readPubidLiteral();
        } else
        {
            throw new ParseException(this, "expecting \"SYSTEM\" or \"PUBLIC\" while reading external ID");
        }
        readS();
        readSystemLiteral();
        return "(WARNING: external ID not read)";
    }

    private void readMarkupDecl()
        throws ParseException, IOException
    {
        if (isPi())
        {
            readPi();
            return;
        }
        if (isComment())
        {
            readComment();
            return;
        }
        if (isEntityDecl())
        {
            readEntityDecl();
            return;
        }
        if (isSymbol(MARKUPDECL_BEGIN))
        {
label0:
            do
            {
                if (isChar('>'))
                {
                    readChar('>');
                    return;
                }
                if (isChar('\'', '"'))
                {
                    char c = readChar();
                    do
                    {
                        if (isChar(c))
                        {
                            readChar(c);
                            continue label0;
                        }
                        readChar();
                    } while (true);
                }
                readChar();
            } while (true);
        } else
        {
            throw new ParseException(this, "expecting processing instruction, comment, or \"<!\"");
        }
    }

    private void readMisc()
        throws ParseException, IOException
    {
        if (isComment())
        {
            readComment();
            return;
        }
        if (isPi())
        {
            readPi();
            return;
        }
        if (isS())
        {
            readS();
            return;
        } else
        {
            throw new ParseException(this, "expecting comment or processing instruction or space");
        }
    }

    private final String readName()
        throws ParseException, IOException
    {
        StringBuffer stringbuffer = null;
        char ac[] = tmpBuf_;
        int i = 1;
        ac[0] = readNameStartChar();
        do
        {
            if (!isNameChar())
            {
                if (stringbuffer == null)
                {
                    return Sparta.intern(new String(tmpBuf_, 0, i));
                } else
                {
                    stringbuffer.append(tmpBuf_, 0, i);
                    return stringbuffer.toString();
                }
            }
            if (i >= 255)
            {
                if (stringbuffer == null)
                {
                    stringbuffer = new StringBuffer(i);
                    stringbuffer.append(tmpBuf_, 0, i);
                } else
                {
                    stringbuffer.append(tmpBuf_, 0, i);
                }
                i = 0;
            }
            tmpBuf_[i] = readChar();
            i++;
        } while (true);
    }

    private char readNameStartChar()
        throws ParseException, IOException
    {
        char c = readChar();
        if (!isLetter(c) && c != '_' && c != ':')
        {
            throw new ParseException(this, c, "letter, underscore, colon");
        } else
        {
            return c;
        }
    }

    private String readPeReference()
        throws ParseException, IOException
    {
        readChar('%');
        String s2 = readName();
        String s1 = (String)pes_.get(s2);
        String s = s1;
        if (s1 == null)
        {
            s = "";
            log_.warning("No declaration of %" + s2 + ";", systemId_, getLineNumber());
        }
        readChar(';');
        return s;
    }

    private final void readPi()
        throws ParseException, IOException
    {
        readSymbol(PI_BEGIN);
        do
        {
            if (isSymbol(QU_END))
            {
                readSymbol(QU_END);
                return;
            }
            readChar();
        } while (true);
    }

    private void readPossibleCharData()
        throws ParseException, IOException
    {
        int i = 0;
        do
        {
            int j;
            do
            {
                if (isChar('<') || isChar('&') || isSymbol(END_CDATA))
                {
                    if (i > 0)
                    {
                        handler_.characters(tmpBuf_, 0, i);
                    }
                    return;
                }
                tmpBuf_[i] = readChar();
                if (tmpBuf_[i] == '\r' && peekChar() == '\n')
                {
                    tmpBuf_[i] = readChar();
                }
                j = i + 1;
                i = j;
            } while (j != 255);
            handler_.characters(tmpBuf_, 0, 255);
            i = 0;
        } while (true);
    }

    private void readProlog()
        throws ParseException, EncodingMismatchException, IOException
    {
        if (isXmlDecl())
        {
            readXmlDecl();
        }
        do
        {
label0:
            {
                if (!isMisc())
                {
                    if (isDocTypeDecl())
                    {
                        readDocTypeDecl();
                        for (; isMisc(); readMisc())
                        {
                            break label0;
                        }

                    }
                    return;
                }
                readMisc();
            }
        } while (true);
    }

    private final void readPubidLiteral()
        throws ParseException, IOException
    {
        readSystemLiteral();
    }

    private final char[] readReference()
        throws ParseException, IOException
    {
        if (isSymbol(CHARREF_BEGIN))
        {
            return (new char[] {
                readCharRef()
            });
        } else
        {
            return readEntityRef().toCharArray();
        }
    }

    private final void readS()
        throws ParseException, IOException
    {
        readChar(' ', '\t', '\r', '\n');
        do
        {
            if (!isChar(' ', '\t', '\r', '\n'))
            {
                return;
            }
            readChar();
        } while (true);
    }

    private final void readSymbol(char ac[])
        throws ParseException, IOException
    {
        int j = ac.length;
        if (endPos_ - curPos_ < j && fillBuf(j) <= 0)
        {
            ch_ = -1;
            throw new ParseException(this, "end of XML file", ac);
        }
        ch_ = cbuf_[endPos_ - 1];
        if (endPos_ - curPos_ < j)
        {
            throw new ParseException(this, "end of XML file", ac);
        }
        int i = 0;
        do
        {
            if (i >= j)
            {
                curPos_ = curPos_ + j;
                return;
            }
            if (cbuf_[curPos_ + i] != ac[i])
            {
                throw new ParseException(this, new String(cbuf_, curPos_, j), ac);
            }
            i++;
        } while (true);
    }

    private final void readSystemLiteral()
        throws ParseException, IOException
    {
        char c = readChar();
        do
        {
            if (peekChar() == c)
            {
                readChar(c);
                return;
            }
            readChar();
        } while (true);
    }

    private void readVersionInfo()
        throws ParseException, IOException
    {
        readS();
        readSymbol(VERSION);
        readEq();
        char c = readChar('\'', '"');
        readVersionNum();
        readChar(c);
    }

    private void readVersionNum()
        throws ParseException, IOException
    {
        readChar();
        do
        {
            if (!isVersionNumChar())
            {
                return;
            }
            readChar();
        } while (true);
    }

    private void readXmlDecl()
        throws ParseException, EncodingMismatchException, IOException
    {
        readSymbol(XML_BEGIN);
        readVersionInfo();
        if (isS())
        {
            readS();
        }
        if (isEncodingDecl())
        {
            String s = readEncodingDecl();
            if (encoding_ != null && !s.toLowerCase().equals(encoding_))
            {
                throw new EncodingMismatchException(systemId_, s, encoding_);
            }
        }
        for (; !isSymbol(QU_END); readChar()) { }
        readSymbol(QU_END);
    }

    final String getHistory()
    {
        return "";
    }

    int getLastCharRead()
    {
        return ch_;
    }

    public int getLineNumber()
    {
        return lineNumber_;
    }

    ParseLog getLog()
    {
        return log_;
    }

    public String getSystemId()
    {
        return systemId_;
    }

    public String toString()
    {
        return systemId_;
    }

    static 
    {
        IS_NAME_CHAR = new boolean[128];
        char c = '\0';
        do
        {
            if (c >= 128)
            {
                COMMENT_BEGIN = "<!--".toCharArray();
                COMMENT_END = "-->".toCharArray();
                PI_BEGIN = "<?".toCharArray();
                QU_END = "?>".toCharArray();
                DOCTYPE_BEGIN = "<!DOCTYPE".toCharArray();
                XML_BEGIN = "<?xml".toCharArray();
                ENCODING = "encoding".toCharArray();
                VERSION = "version".toCharArray();
                VERSIONNUM_PUNC_CHARS = (new char[] {
                    '_', '.', ':', '-'
                });
                MARKUPDECL_BEGIN = "<!".toCharArray();
                CHARREF_BEGIN = "&#".toCharArray();
                ENTITY_BEGIN = "<!ENTITY".toCharArray();
                NDATA = "NDATA".toCharArray();
                SYSTEM = "SYSTEM".toCharArray();
                PUBLIC = "PUBLIC".toCharArray();
                BEGIN_CDATA = "<![CDATA[".toCharArray();
                END_CDATA = "]]>".toCharArray();
                END_EMPTYTAG = "/>".toCharArray();
                BEGIN_ETAG = "</".toCharArray();
                return;
            }
            IS_NAME_CHAR[c] = isNameChar(c);
            c++;
        } while (true);
    }
}
