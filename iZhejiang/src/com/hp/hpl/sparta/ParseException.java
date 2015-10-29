// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;


// Referenced classes of package com.hp.hpl.sparta:
//            ParseCharStream, ParseLog

public class ParseException extends Exception
{

    private Throwable cause_;
    private int lineNumber_;

    public ParseException(ParseCharStream parsecharstream, char c, char c1)
    {
        this(parsecharstream, "got '" + c + "' instead of expected '" + c1 + "'");
    }

    public ParseException(ParseCharStream parsecharstream, char c, String s)
    {
        this(parsecharstream, "got '" + c + "' instead of " + s + " as expected");
    }

    public ParseException(ParseCharStream parsecharstream, char c, char ac[])
    {
        this(parsecharstream, "got '" + c + "' instead of " + toString(ac));
    }

    public ParseException(ParseCharStream parsecharstream, String s)
    {
        this(parsecharstream.getLog(), parsecharstream.getSystemId(), parsecharstream.getLineNumber(), parsecharstream.getLastCharRead(), parsecharstream.getHistory(), s);
    }

    public ParseException(ParseCharStream parsecharstream, String s, String s1)
    {
        this(parsecharstream, "got \"" + s + "\" instead of \"" + s1 + "\" as expected");
    }

    public ParseException(ParseCharStream parsecharstream, String s, char ac[])
    {
        this(parsecharstream, s, new String(ac));
    }

    public ParseException(ParseLog parselog, String s, int i, int j, String s1, String s2)
    {
        this(s, i, j, s1, s2);
        parselog.error(s2, s, i);
    }

    public ParseException(String s)
    {
        super(s);
        lineNumber_ = -1;
        cause_ = null;
    }

    public ParseException(String s, int i, int j, String s1, String s2)
    {
        super(toMessage(s, i, j, s1, s2));
        lineNumber_ = -1;
        cause_ = null;
        lineNumber_ = i;
    }

    public ParseException(String s, Throwable throwable)
    {
        super(s + " " + throwable);
        lineNumber_ = -1;
        cause_ = null;
        cause_ = throwable;
    }

    static String charRepr(int i)
    {
        if (i == -1)
        {
            return "EOF";
        } else
        {
            return "" + (char)i;
        }
    }

    private static String toMessage(String s, int i, int j, String s1, String s2)
    {
        return s + "(" + i + "): \n" + s1 + "\nLast character read was '" + charRepr(j) + "'\n" + s2;
    }

    private static String toString(char ac[])
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(ac[0]);
        int i = 1;
        do
        {
            if (i >= ac.length)
            {
                return stringbuffer.toString();
            }
            stringbuffer.append("or " + ac[i]);
            i++;
        } while (true);
    }

    public Throwable getCause()
    {
        return cause_;
    }

    public int getLineNumber()
    {
        return lineNumber_;
    }
}
