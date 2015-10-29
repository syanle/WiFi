// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.google.protobuf:
//            TextFormat, ByteString

private static final class <init>
{

    private static final Pattern i = Pattern.compile("(\\s|(#.*$))++", 8);
    private static final Pattern j = Pattern.compile("[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|'([^'\n\\\\]|\\\\.)*+('|\\\\?$)", 8);
    private static final Pattern k = Pattern.compile("-?inf(inity)?", 2);
    private static final Pattern l = Pattern.compile("-?inf(inity)?f?", 2);
    private static final Pattern m = Pattern.compile("nanf?", 2);
    private final CharSequence a;
    private final Matcher b;
    private String c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;

    private rseException a(NumberFormatException numberformatexception)
    {
        return c((new StringBuilder()).append("Couldn't parse integer: ").append(numberformatexception.getMessage()).toString());
    }

    private void a(List list)
        throws rseException
    {
        char c1 = '\0';
        if (c.length() > 0)
        {
            c1 = c.charAt(0);
        }
        if (c1 != '"' && c1 != '\'')
        {
            throw c("Expected string.");
        }
        if (c.length() < 2 || c.charAt(c.length() - 1) != c1)
        {
            throw c("String missing ending quote.");
        }
        try
        {
            ByteString bytestring = TextFormat.unescapeBytes(c.substring(1, c.length() - 1));
            b();
            list.add(bytestring);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            throw c(list.getMessage());
        }
    }

    private rseException b(NumberFormatException numberformatexception)
    {
        return c((new StringBuilder()).append("Couldn't parse number: ").append(numberformatexception.getMessage()).toString());
    }

    private void n()
    {
        b.usePattern(i);
        if (b.lookingAt())
        {
            b.region(b.end(), b.regionEnd());
        }
    }

    public boolean a()
    {
        return c.length() == 0;
    }

    public boolean a(String s)
    {
        if (c.equals(s))
        {
            b();
            return true;
        } else
        {
            return false;
        }
    }

    public void b()
    {
        g = e;
        h = f;
        while (d < b.regionStart()) 
        {
            if (a.charAt(d) == '\n')
            {
                e = e + 1;
                f = 0;
            } else
            {
                f = f + 1;
            }
            d = d + 1;
        }
        if (b.regionStart() == b.regionEnd())
        {
            c = "";
            return;
        }
        b.usePattern(j);
        if (b.lookingAt())
        {
            c = b.group();
            b.region(b.end(), b.regionEnd());
        } else
        {
            c = String.valueOf(a.charAt(d));
            b.region(d + 1, b.regionEnd());
        }
        n();
    }

    public void b(String s)
        throws rseException
    {
        if (!a(s))
        {
            throw c((new StringBuilder()).append("Expected \"").append(s).append("\".").toString());
        } else
        {
            return;
        }
    }

    public rseException c(String s)
    {
        return new rseException((new StringBuilder()).append(e + 1).append(":").append(f + 1).append(": ").append(s).toString());
    }

    public boolean c()
    {
        char c1;
        if (c.length() != 0)
        {
            if ('0' <= (c1 = c.charAt(0)) && c1 <= '9' || c1 == '-' || c1 == '+')
            {
                return true;
            }
        }
        return false;
    }

    public rseException d(String s)
    {
        return new rseException((new StringBuilder()).append(g + 1).append(":").append(h + 1).append(": ").append(s).toString());
    }

    public String d()
        throws rseException
    {
        for (int i1 = 0; i1 < c.length();)
        {
            char c1 = c.charAt(i1);
            if ('a' <= c1 && c1 <= 'z' || 'A' <= c1 && c1 <= 'Z' || '0' <= c1 && c1 <= '9' || c1 == '_' || c1 == '.')
            {
                i1++;
            } else
            {
                throw c("Expected identifier.");
            }
        }

        String s = c;
        b();
        return s;
    }

    public int e()
        throws rseException
    {
        int i1;
        try
        {
            i1 = TextFormat.parseInt32(c);
            b();
        }
        catch (NumberFormatException numberformatexception)
        {
            throw a(numberformatexception);
        }
        return i1;
    }

    public int f()
        throws rseException
    {
        int i1;
        try
        {
            i1 = TextFormat.parseUInt32(c);
            b();
        }
        catch (NumberFormatException numberformatexception)
        {
            throw a(numberformatexception);
        }
        return i1;
    }

    public long g()
        throws rseException
    {
        long l1;
        try
        {
            l1 = TextFormat.parseInt64(c);
            b();
        }
        catch (NumberFormatException numberformatexception)
        {
            throw a(numberformatexception);
        }
        return l1;
    }

    public long h()
        throws rseException
    {
        long l1;
        try
        {
            l1 = TextFormat.parseUInt64(c);
            b();
        }
        catch (NumberFormatException numberformatexception)
        {
            throw a(numberformatexception);
        }
        return l1;
    }

    public double i()
        throws rseException
    {
        if (k.matcher(c).matches())
        {
            boolean flag = c.startsWith("-");
            b();
            return !flag ? (1.0D / 0.0D) : (-1.0D / 0.0D);
        }
        if (c.equalsIgnoreCase("nan"))
        {
            b();
            return (0.0D / 0.0D);
        }
        double d1;
        try
        {
            d1 = Double.parseDouble(c);
            b();
        }
        catch (NumberFormatException numberformatexception)
        {
            throw b(numberformatexception);
        }
        return d1;
    }

    public float j()
        throws rseException
    {
        if (l.matcher(c).matches())
        {
            boolean flag = c.startsWith("-");
            b();
            return !flag ? (1.0F / 0.0F) : (-1.0F / 0.0F);
        }
        if (m.matcher(c).matches())
        {
            b();
            return (0.0F / 0.0F);
        }
        float f1;
        try
        {
            f1 = Float.parseFloat(c);
            b();
        }
        catch (NumberFormatException numberformatexception)
        {
            throw b(numberformatexception);
        }
        return f1;
    }

    public boolean k()
        throws rseException
    {
        if (c.equals("true") || c.equals("t") || c.equals("1"))
        {
            b();
            return true;
        }
        if (c.equals("false") || c.equals("f") || c.equals("0"))
        {
            b();
            return false;
        } else
        {
            throw c("Expected \"true\" or \"false\".");
        }
    }

    public String l()
        throws rseException
    {
        return m().toStringUtf8();
    }

    public ByteString m()
        throws rseException
    {
        ArrayList arraylist = new ArrayList();
        a(arraylist);
        for (; c.startsWith("'") || c.startsWith("\""); a(arraylist)) { }
        return ByteString.copyFrom(arraylist);
    }


    private rseException(CharSequence charsequence)
    {
        d = 0;
        e = 0;
        f = 0;
        g = 0;
        h = 0;
        a = charsequence;
        b = i.matcher(charsequence);
        n();
        b();
    }

    b(CharSequence charsequence, b b1)
    {
        this(charsequence);
    }
}
