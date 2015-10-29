// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

// Referenced classes of package com.hp.hpl.sparta:
//            ParseException, BuildDocument, ParseByteStream, ParseCharStream, 
//            EncodingMismatchException, Document, ParseLog, ParseHandler

public class Parser
{

    public Parser()
    {
    }

    public static Document parse(String s)
        throws ParseException, IOException
    {
        return parse(s.toCharArray());
    }

    public static Document parse(String s, InputStream inputstream)
        throws ParseException, IOException
    {
        BuildDocument builddocument = new BuildDocument();
        new ParseByteStream(s, inputstream, null, null, builddocument);
        return builddocument.getDocument();
    }

    public static Document parse(String s, InputStream inputstream, ParseLog parselog)
        throws ParseException, IOException
    {
        BuildDocument builddocument = new BuildDocument();
        new ParseByteStream(s, inputstream, parselog, null, builddocument);
        return builddocument.getDocument();
    }

    public static Document parse(String s, InputStream inputstream, ParseLog parselog, String s1)
        throws ParseException, IOException
    {
        BuildDocument builddocument = new BuildDocument();
        new ParseByteStream(s, inputstream, parselog, s1, builddocument);
        return builddocument.getDocument();
    }

    public static Document parse(String s, Reader reader)
        throws ParseException, IOException
    {
        BuildDocument builddocument = new BuildDocument();
        new ParseCharStream(s, reader, null, null, builddocument);
        return builddocument.getDocument();
    }

    public static Document parse(String s, Reader reader, ParseLog parselog)
        throws ParseException, IOException
    {
        BuildDocument builddocument = new BuildDocument();
        new ParseCharStream(s, reader, parselog, null, builddocument);
        return builddocument.getDocument();
    }

    public static Document parse(String s, Reader reader, ParseLog parselog, String s1)
        throws ParseException, EncodingMismatchException, IOException
    {
        BuildDocument builddocument = new BuildDocument();
        new ParseCharStream(s, reader, parselog, s1, builddocument);
        return builddocument.getDocument();
    }

    public static Document parse(byte abyte0[])
        throws ParseException, IOException
    {
        BuildDocument builddocument = new BuildDocument();
        new ParseByteStream("file:anonymous-string", new ByteArrayInputStream(abyte0), null, null, builddocument);
        return builddocument.getDocument();
    }

    public static Document parse(char ac[])
        throws ParseException, IOException
    {
        BuildDocument builddocument = new BuildDocument();
        new ParseCharStream("file:anonymous-string", ac, null, null, builddocument);
        return builddocument.getDocument();
    }

    public static void parse(String s, ParseHandler parsehandler)
        throws ParseException, IOException
    {
        parse(s.toCharArray(), parsehandler);
    }

    public static void parse(String s, InputStream inputstream, ParseHandler parsehandler)
        throws ParseException, IOException
    {
        new ParseByteStream(s, inputstream, null, null, parsehandler);
    }

    public static void parse(String s, InputStream inputstream, ParseLog parselog, ParseHandler parsehandler)
        throws ParseException, IOException
    {
        new ParseByteStream(s, inputstream, parselog, null, parsehandler);
    }

    public static void parse(String s, InputStream inputstream, ParseLog parselog, String s1, ParseHandler parsehandler)
        throws ParseException, IOException
    {
        new ParseByteStream(s, inputstream, parselog, s1, parsehandler);
    }

    public static void parse(String s, Reader reader, ParseHandler parsehandler)
        throws ParseException, IOException
    {
        new ParseCharStream(s, reader, null, null, parsehandler);
    }

    public static void parse(String s, Reader reader, ParseLog parselog, ParseHandler parsehandler)
        throws ParseException, IOException
    {
        new ParseCharStream(s, reader, parselog, null, parsehandler);
    }

    public static void parse(String s, Reader reader, ParseLog parselog, String s1, ParseHandler parsehandler)
        throws ParseException, EncodingMismatchException, IOException
    {
        new ParseCharStream(s, reader, parselog, s1, parsehandler);
    }

    public static void parse(byte abyte0[], ParseHandler parsehandler)
        throws ParseException, IOException
    {
        new ParseByteStream("file:anonymous-string", new ByteArrayInputStream(abyte0), null, null, parsehandler);
    }

    public static void parse(char ac[], ParseHandler parsehandler)
        throws ParseException, IOException
    {
        new ParseCharStream("file:anonymous-string", ac, null, null, parsehandler);
    }
}
