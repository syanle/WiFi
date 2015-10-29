// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.helper;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.parser.Parser;
import org.jsoup.select.Elements;

// Referenced classes of package org.jsoup.helper:
//            Validate

public class DataUtil
{

    private static final int bufferSize = 0x20000;
    private static final Pattern charsetPattern = Pattern.compile("(?i)\\bcharset=\\s*(?:\"|')?([^\\s,;\"']*)");
    static final String defaultCharset = "UTF-8";

    private DataUtil()
    {
    }

    static String getCharsetFromContentType(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        s = null;
_L4:
        return s;
_L2:
        String s1;
        s = charsetPattern.matcher(s);
        if (!s.find())
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = s.group(1).trim().replace("charset=", "");
        if (s1.length() == 0)
        {
            return null;
        }
        s = s1;
        if (Charset.isSupported(s1)) goto _L4; else goto _L3
_L3:
        boolean flag;
        s = s1.toUpperCase(Locale.ENGLISH);
        flag = Charset.isSupported(s);
        if (flag) goto _L4; else goto _L5
_L5:
        return null;
        s;
        return null;
    }

    public static Document load(File file, String s, String s1)
        throws IOException
    {
        return parseByteData(readFileToByteBuffer(file), s, s1, Parser.htmlParser());
    }

    public static Document load(InputStream inputstream, String s, String s1)
        throws IOException
    {
        return parseByteData(readToByteBuffer(inputstream), s, s1, Parser.htmlParser());
    }

    public static Document load(InputStream inputstream, String s, String s1, Parser parser)
        throws IOException
    {
        return parseByteData(readToByteBuffer(inputstream), s, s1, parser);
    }

    static Document parseByteData(ByteBuffer bytebuffer, String s, String s1, Parser parser)
    {
        Object obj = null;
        String s2;
        String s3;
        if (s == null)
        {
            String s4 = Charset.forName("UTF-8").decode(bytebuffer).toString();
            Document document = parser.parseInput(s4, s1);
            Element element = document.select("meta[http-equiv=content-type], meta[charset]").first();
            obj = document;
            s2 = s4;
            s3 = s;
            if (element != null)
            {
                Object obj1;
                if (element.hasAttr("http-equiv"))
                {
                    obj = getCharsetFromContentType(element.attr("content"));
                    obj1 = obj;
                    if (obj == null)
                    {
                        obj1 = obj;
                        if (element.hasAttr("charset"))
                        {
                            obj1 = obj;
                            try
                            {
                                if (Charset.isSupported(element.attr("charset")))
                                {
                                    obj1 = element.attr("charset");
                                }
                            }
                            catch (IllegalCharsetNameException illegalcharsetnameexception)
                            {
                                obj1 = null;
                            }
                        }
                    }
                } else
                {
                    obj1 = element.attr("charset");
                }
                obj = document;
                s2 = s4;
                s3 = s;
                if (obj1 != null)
                {
                    obj = document;
                    s2 = s4;
                    s3 = s;
                    if (((String) (obj1)).length() != 0)
                    {
                        obj = document;
                        s2 = s4;
                        s3 = s;
                        if (!((String) (obj1)).equals("UTF-8"))
                        {
                            s = ((String) (obj1)).trim().replaceAll("[\"']", "");
                            s3 = s;
                            bytebuffer.rewind();
                            s2 = Charset.forName(s).decode(bytebuffer).toString();
                            obj = null;
                        }
                    }
                }
            }
        } else
        {
            Validate.notEmpty(s, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML");
            s2 = Charset.forName(s).decode(bytebuffer).toString();
            s3 = s;
        }
        s = ((String) (obj));
        s4 = s2;
        obj1 = s3;
        if (s2.length() > 0)
        {
            s = ((String) (obj));
            s4 = s2;
            obj1 = s3;
            if (s2.charAt(0) == '\uFEFF')
            {
                bytebuffer.rewind();
                s4 = Charset.forName("UTF-8").decode(bytebuffer).toString().substring(1);
                obj1 = "UTF-8";
                s = null;
            }
        }
        bytebuffer = s;
        if (s == null)
        {
            bytebuffer = parser.parseInput(s4, s1);
            bytebuffer.outputSettings().charset(((String) (obj1)));
        }
        return bytebuffer;
    }

    static ByteBuffer readFileToByteBuffer(File file)
        throws IOException
    {
        Object obj = null;
        file = new RandomAccessFile(file, "r");
        ByteBuffer bytebuffer;
        byte abyte0[] = new byte[(int)file.length()];
        file.readFully(abyte0);
        bytebuffer = ByteBuffer.wrap(abyte0);
        if (file != null)
        {
            file.close();
        }
        return bytebuffer;
        Exception exception;
        exception;
        file = obj;
_L2:
        if (file != null)
        {
            file.close();
        }
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static ByteBuffer readToByteBuffer(InputStream inputstream)
        throws IOException
    {
        return readToByteBuffer(inputstream, 0);
    }

    static ByteBuffer readToByteBuffer(InputStream inputstream, int i)
        throws IOException
    {
        byte abyte0[];
        ByteArrayOutputStream bytearrayoutputstream;
        boolean flag;
        int k;
        boolean flag1;
        if (i >= 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "maxSize must be 0 (unlimited) or larger");
        if (i > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        abyte0 = new byte[0x20000];
        bytearrayoutputstream = new ByteArrayOutputStream(0x20000);
_L5:
        k = inputstream.read(abyte0);
        if (k != -1) goto _L2; else goto _L1
_L1:
        return ByteBuffer.wrap(bytearrayoutputstream.toByteArray());
_L2:
        int j;
        j = i;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_99;
        }
        if (k <= i)
        {
            break; /* Loop/switch isn't completed */
        }
        bytearrayoutputstream.write(abyte0, 0, i);
        if (true) goto _L1; else goto _L3
_L3:
        j = i - k;
        bytearrayoutputstream.write(abyte0, 0, k);
        i = j;
        if (true) goto _L5; else goto _L4
_L4:
    }

}
