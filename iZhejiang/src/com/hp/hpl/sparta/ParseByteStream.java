// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

// Referenced classes of package com.hp.hpl.sparta:
//            ParseSource, ParseException, EncodingMismatchException, ParseCharStream, 
//            ParseLog, ParseHandler

class ParseByteStream
    implements ParseSource
{

    private ParseCharStream parseSource_;

    public ParseByteStream(String s, InputStream inputstream, ParseLog parselog, String s1, ParseHandler parsehandler)
        throws ParseException, IOException
    {
        if (parselog == null)
        {
            parselog = ParseSource.DEFAULT_LOG;
        }
        if (!inputstream.markSupported())
        {
            throw new Error("Precondition violation: the InputStream passed to ParseByteStream must support mark");
        }
        inputstream.mark(ParseSource.MAXLOOKAHEAD);
        byte abyte0[] = new byte[4];
        int i = inputstream.read(abyte0);
        if (s1 == null)
        {
            s1 = guessEncoding(s, abyte0, i, parselog);
        }
        Object obj;
        inputstream.reset();
        obj = new InputStreamReader(inputstream, fixEncoding(s1));
        try
        {
            parseSource_ = new ParseCharStream(s, ((java.io.Reader) (obj)), parselog, s1, parsehandler);
            return;
        }
        catch (IOException ioexception) { }
        parselog.note("Problem reading with assumed encoding of " + s1 + " so restarting with " + "euc-jp", s, 1);
        inputstream.reset();
        EncodingMismatchException encodingmismatchexception;
        try
        {
            ioexception = new InputStreamReader(inputstream, fixEncoding("euc-jp"));
        }
        // Misplaced declaration of an exception variable
        catch (EncodingMismatchException encodingmismatchexception)
        {
            try
            {
                throw new ParseException(parselog, s, 1, 0, "euc-jp", "\"" + "euc-jp" + "\" is not a supported encoding");
            }
            // Misplaced declaration of an exception variable
            catch (EncodingMismatchException encodingmismatchexception)
            {
                encodingmismatchexception = encodingmismatchexception.getDeclaredEncoding();
                parselog.note("Encoding declaration of " + encodingmismatchexception + " is different that assumed " + s1 + " so restarting the parsing with the new encoding", s, 1);
                inputstream.reset();
                try
                {
                    inputstream = new InputStreamReader(inputstream, fixEncoding(encodingmismatchexception));
                }
                // Misplaced declaration of an exception variable
                catch (InputStream inputstream)
                {
                    throw new ParseException(parselog, s, 1, 0, encodingmismatchexception, "\"" + encodingmismatchexception + "\" is not a supported encoding");
                }
                parseSource_ = new ParseCharStream(s, inputstream, parselog, null, parsehandler);
                return;
            }
        }
        parseSource_ = new ParseCharStream(s, ioexception, parselog, null, parsehandler);
        return;
    }

    private static boolean equals(byte abyte0[], int i)
    {
        return abyte0[0] == (byte)(i >>> 24) && abyte0[1] == (byte)(i >>> 16 & 0xff) && abyte0[2] == (byte)(i >>> 8 & 0xff) && abyte0[3] == (byte)(i & 0xff);
    }

    private static boolean equals(byte abyte0[], short word0)
    {
        return abyte0[0] == (byte)(word0 >>> 8) && abyte0[1] == (byte)(word0 & 0xff);
    }

    private static String fixEncoding(String s)
    {
        String s1 = s;
        if (s.toLowerCase().equals("utf8"))
        {
            s1 = "UTF-8";
        }
        return s1;
    }

    private static String guessEncoding(String s, byte abyte0[], int i, ParseLog parselog)
        throws IOException
    {
        String s1;
        if (i != 4)
        {
            if (i <= 0)
            {
                s1 = "no characters in input";
            } else
            {
                s1 = "less than 4 characters in input: \"" + new String(abyte0, 0, i) + "\"";
            }
            parselog.error(s1, s, 1);
            s1 = "UTF-8";
        } else
        if (equals(abyte0, 65279) || equals(abyte0, 0xfffe0000) || equals(abyte0, 65534) || equals(abyte0, 0xfeff0000) || equals(abyte0, 60) || equals(abyte0, 0x3c000000) || equals(abyte0, 15360) || equals(abyte0, 0x3c0000))
        {
            s1 = "UCS-4";
        } else
        if (equals(abyte0, 0x3c003f))
        {
            s1 = "UTF-16BE";
        } else
        if (equals(abyte0, 0x3c003f00))
        {
            s1 = "UTF-16LE";
        } else
        if (equals(abyte0, 0x3c3f786d))
        {
            s1 = "UTF-8";
        } else
        if (equals(abyte0, 0x4c6fa794))
        {
            s1 = "EBCDIC";
        } else
        if (equals(abyte0, (short)-2) || equals(abyte0, (short)-257))
        {
            s1 = "UTF-16";
        } else
        {
            s1 = "UTF-8";
        }
        if (!s1.equals("UTF-8"))
        {
            parselog.note("From start " + hex(abyte0[0]) + " " + hex(abyte0[1]) + " " + hex(abyte0[2]) + " " + hex(abyte0[3]) + " deduced encoding = " + s1, s, 1);
        }
        return s1;
    }

    private static String hex(byte byte0)
    {
        String s1 = Integer.toHexString(byte0);
        String s = s1;
        switch (s1.length())
        {
        default:
            s = s1.substring(s1.length() - 2);
            // fall through

        case 2: // '\002'
            return s;

        case 1: // '\001'
            return "0" + s1;
        }
    }

    public int getLineNumber()
    {
        return parseSource_.getLineNumber();
    }

    public String getSystemId()
    {
        return parseSource_.getSystemId();
    }

    public String toString()
    {
        return parseSource_.toString();
    }
}
