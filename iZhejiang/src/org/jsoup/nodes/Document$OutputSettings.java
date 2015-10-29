// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.nodes;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import org.jsoup.helper.Validate;

// Referenced classes of package org.jsoup.nodes:
//            Document

public static class Syntax.html
    implements Cloneable
{
    public static final class Syntax extends Enum
    {

        private static final Syntax $VALUES[];
        public static final Syntax html;
        public static final Syntax xml;

        public static Syntax valueOf(String s)
        {
            return (Syntax)Enum.valueOf(org/jsoup/nodes/Document$OutputSettings$Syntax, s);
        }

        public static Syntax[] values()
        {
            return (Syntax[])$VALUES.clone();
        }

        static 
        {
            html = new Syntax("html", 0);
            xml = new Syntax("xml", 1);
            $VALUES = (new Syntax[] {
                html, xml
            });
        }

        private Syntax(String s, int i)
        {
            super(s, i);
        }
    }


    private Charset charset;
    private CharsetEncoder charsetEncoder;
    private syntax escapeMode;
    private int indentAmount;
    private boolean outline;
    private boolean prettyPrint;
    private Syntax syntax;

    public Charset charset()
    {
        return charset;
    }

    public charset charset(String s)
    {
        charset(Charset.forName(s));
        return this;
    }

    public charset charset(Charset charset1)
    {
        charset = charset1;
        charsetEncoder = charset1.newEncoder();
        return this;
    }

    public volatile Object clone()
        throws CloneNotSupportedException
    {
        return clone();
    }

    public clone clone()
    {
        clone clone1;
        try
        {
            clone1 = (clone)super.clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            throw new RuntimeException(clonenotsupportedexception);
        }
        clone1.charset(charset.name());
        clone1.escapeMode = eOf(escapeMode.());
        return clone1;
    }

    CharsetEncoder encoder()
    {
        return charsetEncoder;
    }

    public charsetEncoder escapeMode(charsetEncoder charsetencoder)
    {
        escapeMode = charsetencoder;
        return this;
    }

    public escapeMode escapeMode()
    {
        return escapeMode;
    }

    public int indentAmount()
    {
        return indentAmount;
    }

    public indentAmount indentAmount(int i)
    {
        boolean flag;
        if (i >= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Validate.isTrue(flag);
        indentAmount = i;
        return this;
    }

    public indentAmount outline(boolean flag)
    {
        outline = flag;
        return this;
    }

    public boolean outline()
    {
        return outline;
    }

    public outline prettyPrint(boolean flag)
    {
        prettyPrint = flag;
        return this;
    }

    public boolean prettyPrint()
    {
        return prettyPrint;
    }

    public Syntax syntax()
    {
        return syntax;
    }

    public Syntax syntax(Syntax syntax1)
    {
        syntax = syntax1;
        return this;
    }

    public Syntax()
    {
        escapeMode = ;
        charset = Charset.forName("UTF-8");
        charsetEncoder = charset.newEncoder();
        prettyPrint = true;
        outline = false;
        indentAmount = 1;
        syntax = Syntax.html;
    }
}
