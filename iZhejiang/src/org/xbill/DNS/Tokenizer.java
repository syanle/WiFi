// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.net.InetAddress;
import java.net.UnknownHostException;
import org.xbill.DNS.utils.base16;
import org.xbill.DNS.utils.base32;
import org.xbill.DNS.utils.base64;

// Referenced classes of package org.xbill.DNS:
//            TextParseException, Address, Name, RelativeNameException, 
//            TTL

public class Tokenizer
{
    public static class Token
    {

        public int type;
        public String value;

        private Token set(int i, StringBuffer stringbuffer)
        {
            if (i < 0)
            {
                throw new IllegalArgumentException();
            }
            type = i;
            if (stringbuffer == null)
            {
                stringbuffer = null;
            } else
            {
                stringbuffer = stringbuffer.toString();
            }
            value = stringbuffer;
            return this;
        }

        public boolean isEOL()
        {
            boolean flag1 = true;
            boolean flag = flag1;
            if (type != 1)
            {
                flag = flag1;
                if (type != 0)
                {
                    flag = false;
                }
            }
            return flag;
        }

        public boolean isString()
        {
            return type == 3 || type == 4;
        }

        public String toString()
        {
            switch (type)
            {
            default:
                return "<unknown>";

            case 0: // '\0'
                return "<eof>";

            case 1: // '\001'
                return "<eol>";

            case 2: // '\002'
                return "<whitespace>";

            case 3: // '\003'
                return (new StringBuilder("<identifier: ")).append(value).append(">").toString();

            case 4: // '\004'
                return (new StringBuilder("<quoted_string: ")).append(value).append(">").toString();

            case 5: // '\005'
                return (new StringBuilder("<comment: ")).append(value).append(">").toString();
            }
        }


        private Token()
        {
            type = -1;
            value = null;
        }

        Token(Token token)
        {
            this();
        }
    }

    static class TokenizerException extends TextParseException
    {

        String message;

        public String getBaseMessage()
        {
            return message;
        }

        public TokenizerException(String s, int i, String s1)
        {
            super((new StringBuilder(String.valueOf(s))).append(":").append(i).append(": ").append(s1).toString());
            message = s1;
        }
    }


    public static final int COMMENT = 5;
    public static final int EOF = 0;
    public static final int EOL = 1;
    public static final int IDENTIFIER = 3;
    public static final int QUOTED_STRING = 4;
    public static final int WHITESPACE = 2;
    private static String delim = " \t\n;()\"";
    private static String quotes = "\"";
    private Token current;
    private String delimiters;
    private String filename;
    private PushbackInputStream is;
    private int line;
    private int multiline;
    private boolean quoting;
    private StringBuffer sb;
    private boolean ungottenToken;
    private boolean wantClose;

    public Tokenizer(File file)
        throws FileNotFoundException
    {
        this(((InputStream) (new FileInputStream(file))));
        wantClose = true;
        filename = file.getName();
    }

    public Tokenizer(InputStream inputstream)
    {
        Object obj = inputstream;
        if (!(inputstream instanceof BufferedInputStream))
        {
            obj = new BufferedInputStream(inputstream);
        }
        is = new PushbackInputStream(((InputStream) (obj)), 2);
        ungottenToken = false;
        multiline = 0;
        quoting = false;
        delimiters = delim;
        current = new Token(null);
        sb = new StringBuffer();
        filename = "<none>";
        line = 1;
    }

    public Tokenizer(String s)
    {
        this(((InputStream) (new ByteArrayInputStream(s.getBytes()))));
    }

    private String _getIdentifier(String s)
        throws IOException
    {
        Token token = get();
        if (token.type != 3)
        {
            throw exception((new StringBuilder("expected ")).append(s).toString());
        } else
        {
            return token.value;
        }
    }

    private void checkUnbalancedParens()
        throws TextParseException
    {
        if (multiline > 0)
        {
            throw exception("unbalanced parentheses");
        } else
        {
            return;
        }
    }

    private int getChar()
        throws IOException
    {
        int j = is.read();
        int i = j;
        if (j == 13)
        {
            i = is.read();
            if (i != 10)
            {
                is.unread(i);
            }
            i = 10;
        }
        if (i == 10)
        {
            line = line + 1;
        }
        return i;
    }

    private String remainingStrings()
        throws IOException
    {
        StringBuffer stringbuffer = null;
        do
        {
            Token token = get();
            if (!token.isString())
            {
                unget();
                StringBuffer stringbuffer1;
                if (stringbuffer == null)
                {
                    return null;
                } else
                {
                    return stringbuffer.toString();
                }
            }
            stringbuffer1 = stringbuffer;
            if (stringbuffer == null)
            {
                stringbuffer1 = new StringBuffer();
            }
            stringbuffer1.append(token.value);
            stringbuffer = stringbuffer1;
        } while (true);
    }

    private int skipWhitespace()
        throws IOException
    {
        int i = 0;
        do
        {
            int j = getChar();
            if (j != 32 && j != 9 && (j != 10 || multiline <= 0))
            {
                ungetChar(j);
                return i;
            }
            i++;
        } while (true);
    }

    private void ungetChar(int i)
        throws IOException
    {
        if (i != -1)
        {
            is.unread(i);
            if (i == 10)
            {
                line = line - 1;
                return;
            }
        }
    }

    public void close()
    {
        if (!wantClose)
        {
            break MISSING_BLOCK_LABEL_14;
        }
        is.close();
        return;
        IOException ioexception;
        ioexception;
    }

    public TextParseException exception(String s)
    {
        return new TokenizerException(filename, line, s);
    }

    protected void finalize()
    {
        close();
    }

    public Token get()
        throws IOException
    {
        return get(false, false);
    }

    public Token get(boolean flag, boolean flag1)
        throws IOException
    {
        byte byte0;
        if (ungottenToken)
        {
            ungottenToken = false;
            if (current.type == 2)
            {
                if (flag)
                {
                    return current;
                }
            } else
            if (current.type == 5)
            {
                if (flag1)
                {
                    return current;
                }
            } else
            {
                if (current.type == 1)
                {
                    line = line + 1;
                }
                return current;
            }
        }
        if (skipWhitespace() > 0 && flag)
        {
            return current.set(2, null);
        }
        byte0 = 3;
        sb.setLength(0);
_L2:
        int k = getChar();
        if (k == -1 || delimiters.indexOf(k) != -1)
        {
            if (k == -1)
            {
                if (quoting)
                {
                    throw exception("EOF in quoted string");
                }
                if (sb.length() == 0)
                {
                    return current.set(0, null);
                } else
                {
                    return current.set(byte0, sb);
                }
            }
            if (sb.length() == 0 && byte0 != 4)
            {
                if (k == 40)
                {
                    multiline = multiline + 1;
                    skipWhitespace();
                } else
                if (k == 41)
                {
                    if (multiline <= 0)
                    {
                        throw exception("invalid close parenthesis");
                    }
                    multiline = multiline - 1;
                    skipWhitespace();
                } else
                if (k == 34)
                {
                    if (!quoting)
                    {
                        quoting = true;
                        delimiters = quotes;
                        byte0 = 4;
                    } else
                    {
                        quoting = false;
                        delimiters = delim;
                        skipWhitespace();
                    }
                } else
                {
                    if (k == 10)
                    {
                        return current.set(1, null);
                    }
                    if (k == 59)
                    {
                        int i;
                        do
                        {
                            i = getChar();
                            if (i == 10 || i == -1)
                            {
                                if (flag1)
                                {
                                    ungetChar(i);
                                    return current.set(5, sb);
                                }
                                break;
                            }
                            sb.append((char)i);
                        } while (true);
                        if (i == -1 && byte0 != 4)
                        {
                            checkUnbalancedParens();
                            return current.set(0, null);
                        }
                        if (multiline > 0)
                        {
                            skipWhitespace();
                            sb.setLength(0);
                        } else
                        {
                            return current.set(1, null);
                        }
                    } else
                    {
                        throw new IllegalStateException();
                    }
                }
            } else
            {
                ungetChar(k);
                int j;
                if (sb.length() == 0 && byte0 != 4)
                {
                    checkUnbalancedParens();
                    return current.set(0, null);
                } else
                {
                    return current.set(byte0, sb);
                }
            }
            continue; /* Loop/switch isn't completed */
        }
        if (k != 92)
        {
            break; /* Loop/switch isn't completed */
        }
        j = getChar();
        if (j == -1)
        {
            throw exception("unterminated escape sequence");
        }
        sb.append('\\');
_L3:
        sb.append((char)j);
        if (true) goto _L2; else goto _L1
_L1:
        j = k;
        if (quoting)
        {
            j = k;
            if (k == 10)
            {
                throw exception("newline in quoted string");
            }
        }
          goto _L3
    }

    public InetAddress getAddress(int i)
        throws IOException
    {
        Object obj = _getIdentifier("an address");
        try
        {
            obj = Address.getByAddress(((String) (obj)), i);
        }
        catch (UnknownHostException unknownhostexception)
        {
            throw exception(unknownhostexception.getMessage());
        }
        return ((InetAddress) (obj));
    }

    public byte[] getBase32String(base32 base32_1)
        throws IOException
    {
        base32_1 = base32_1.fromString(_getIdentifier("a base32 string"));
        if (base32_1 == null)
        {
            throw exception("invalid base32 encoding");
        } else
        {
            return base32_1;
        }
    }

    public byte[] getBase64()
        throws IOException
    {
        return getBase64(false);
    }

    public byte[] getBase64(boolean flag)
        throws IOException
    {
        Object obj = remainingStrings();
        if (obj == null)
        {
            if (flag)
            {
                throw exception("expected base64 encoded string");
            }
            obj = null;
        } else
        {
            byte abyte0[] = base64.fromString(((String) (obj)));
            obj = abyte0;
            if (abyte0 == null)
            {
                throw exception("invalid base64 encoding");
            }
        }
        return ((byte []) (obj));
    }

    public void getEOL()
        throws IOException
    {
        Token token = get();
        if (token.type != 1 && token.type != 0)
        {
            throw exception("expected EOL or EOF");
        } else
        {
            return;
        }
    }

    public byte[] getHex()
        throws IOException
    {
        return getHex(false);
    }

    public byte[] getHex(boolean flag)
        throws IOException
    {
        Object obj = remainingStrings();
        if (obj == null)
        {
            if (flag)
            {
                throw exception("expected hex encoded string");
            }
            obj = null;
        } else
        {
            byte abyte0[] = base16.fromString(((String) (obj)));
            obj = abyte0;
            if (abyte0 == null)
            {
                throw exception("invalid hex encoding");
            }
        }
        return ((byte []) (obj));
    }

    public byte[] getHexString()
        throws IOException
    {
        byte abyte0[] = base16.fromString(_getIdentifier("a hex string"));
        if (abyte0 == null)
        {
            throw exception("invalid hex encoding");
        } else
        {
            return abyte0;
        }
    }

    public String getIdentifier()
        throws IOException
    {
        return _getIdentifier("an identifier");
    }

    public long getLong()
        throws IOException
    {
        String s = _getIdentifier("an integer");
        if (!Character.isDigit(s.charAt(0)))
        {
            throw exception("expected an integer");
        }
        long l;
        try
        {
            l = Long.parseLong(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw exception("expected an integer");
        }
        return l;
    }

    public Name getName(Name name)
        throws IOException
    {
        String s = _getIdentifier("a name");
        try
        {
            name = Name.fromString(s, name);
            if (!name.isAbsolute())
            {
                throw new RelativeNameException(name);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Name name)
        {
            throw exception(name.getMessage());
        }
        return name;
    }

    public String getString()
        throws IOException
    {
        Token token = get();
        if (!token.isString())
        {
            throw exception("expected a string");
        } else
        {
            return token.value;
        }
    }

    public long getTTL()
        throws IOException
    {
        String s = _getIdentifier("a TTL value");
        long l;
        try
        {
            l = TTL.parseTTL(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw exception("expected a TTL value");
        }
        return l;
    }

    public long getTTLLike()
        throws IOException
    {
        String s = _getIdentifier("a TTL-like value");
        long l;
        try
        {
            l = TTL.parse(s, false);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw exception("expected a TTL-like value");
        }
        return l;
    }

    public int getUInt16()
        throws IOException
    {
        long l = getLong();
        if (l < 0L || l > 65535L)
        {
            throw exception("expected an 16 bit unsigned integer");
        } else
        {
            return (int)l;
        }
    }

    public long getUInt32()
        throws IOException
    {
        long l = getLong();
        if (l < 0L || l > 0xffffffffL)
        {
            throw exception("expected an 32 bit unsigned integer");
        } else
        {
            return l;
        }
    }

    public int getUInt8()
        throws IOException
    {
        long l = getLong();
        if (l < 0L || l > 255L)
        {
            throw exception("expected an 8 bit unsigned integer");
        } else
        {
            return (int)l;
        }
    }

    public void unget()
    {
        if (ungottenToken)
        {
            throw new IllegalStateException("Cannot unget multiple tokens");
        }
        if (current.type == 1)
        {
            line = line - 1;
        }
        ungottenToken = true;
    }

}
