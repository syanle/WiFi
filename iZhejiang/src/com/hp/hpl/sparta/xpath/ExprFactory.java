// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;

import java.io.IOException;

// Referenced classes of package com.hp.hpl.sparta.xpath:
//            XPathException, SimpleStreamTokenizer, PositionEqualsExpr, AttrExistsExpr, 
//            AttrEqualsExpr, AttrLessExpr, AttrGreaterExpr, AttrNotEqualsExpr, 
//            TextExistsExpr, TextEqualsExpr, TextNotEqualsExpr, XPath, 
//            BooleanExpr

public class ExprFactory
{

    public ExprFactory()
    {
    }

    static BooleanExpr createExpr(XPath xpath, SimpleStreamTokenizer simplestreamtokenizer)
        throws XPathException, IOException
    {
        switch (simplestreamtokenizer.ttype)
        {
        default:
            throw new XPathException(xpath, "at beginning of expression", simplestreamtokenizer, "@, number, or text()");

        case -2: 
            int i = simplestreamtokenizer.nval;
            simplestreamtokenizer.nextToken();
            return new PositionEqualsExpr(i);

        case 64: // '@'
            if (simplestreamtokenizer.nextToken() != -3)
            {
                throw new XPathException(xpath, "after @", simplestreamtokenizer, "name");
            }
            String s = simplestreamtokenizer.sval;
            switch (simplestreamtokenizer.nextToken())
            {
            default:
                return new AttrExistsExpr(s);

            case 61: // '='
                simplestreamtokenizer.nextToken();
                if (simplestreamtokenizer.ttype != 34 && simplestreamtokenizer.ttype != 39)
                {
                    throw new XPathException(xpath, "right hand side of equals", simplestreamtokenizer, "quoted string");
                } else
                {
                    xpath = simplestreamtokenizer.sval;
                    simplestreamtokenizer.nextToken();
                    return new AttrEqualsExpr(s, xpath);
                }

            case 60: // '<'
                simplestreamtokenizer.nextToken();
                int j;
                if (simplestreamtokenizer.ttype == 34 || simplestreamtokenizer.ttype == 39)
                {
                    j = Integer.parseInt(simplestreamtokenizer.sval);
                } else
                if (simplestreamtokenizer.ttype == -2)
                {
                    j = simplestreamtokenizer.nval;
                } else
                {
                    throw new XPathException(xpath, "right hand side of less-than", simplestreamtokenizer, "quoted string or number");
                }
                simplestreamtokenizer.nextToken();
                return new AttrLessExpr(s, j);

            case 62: // '>'
                simplestreamtokenizer.nextToken();
                int k;
                if (simplestreamtokenizer.ttype == 34 || simplestreamtokenizer.ttype == 39)
                {
                    k = Integer.parseInt(simplestreamtokenizer.sval);
                } else
                if (simplestreamtokenizer.ttype == -2)
                {
                    k = simplestreamtokenizer.nval;
                } else
                {
                    throw new XPathException(xpath, "right hand side of greater-than", simplestreamtokenizer, "quoted string or number");
                }
                simplestreamtokenizer.nextToken();
                return new AttrGreaterExpr(s, k);

            case 33: // '!'
                simplestreamtokenizer.nextToken();
                break;
            }
            if (simplestreamtokenizer.ttype != 61)
            {
                throw new XPathException(xpath, "after !", simplestreamtokenizer, "=");
            }
            simplestreamtokenizer.nextToken();
            if (simplestreamtokenizer.ttype != 34 && simplestreamtokenizer.ttype != 39)
            {
                throw new XPathException(xpath, "right hand side of !=", simplestreamtokenizer, "quoted string");
            } else
            {
                xpath = simplestreamtokenizer.sval;
                simplestreamtokenizer.nextToken();
                return new AttrNotEqualsExpr(s, xpath);
            }

        case -3: 
            break;
        }
        if (!simplestreamtokenizer.sval.equals("text"))
        {
            throw new XPathException(xpath, "at beginning of expression", simplestreamtokenizer, "text()");
        }
        if (simplestreamtokenizer.nextToken() != 40)
        {
            throw new XPathException(xpath, "after text", simplestreamtokenizer, "(");
        }
        if (simplestreamtokenizer.nextToken() != 41)
        {
            throw new XPathException(xpath, "after text(", simplestreamtokenizer, ")");
        }
        switch (simplestreamtokenizer.nextToken())
        {
        default:
            return TextExistsExpr.INSTANCE;

        case 61: // '='
            simplestreamtokenizer.nextToken();
            if (simplestreamtokenizer.ttype != 34 && simplestreamtokenizer.ttype != 39)
            {
                throw new XPathException(xpath, "right hand side of equals", simplestreamtokenizer, "quoted string");
            } else
            {
                xpath = simplestreamtokenizer.sval;
                simplestreamtokenizer.nextToken();
                return new TextEqualsExpr(xpath);
            }

        case 33: // '!'
            simplestreamtokenizer.nextToken();
            break;
        }
        if (simplestreamtokenizer.ttype != 61)
        {
            throw new XPathException(xpath, "after !", simplestreamtokenizer, "=");
        }
        simplestreamtokenizer.nextToken();
        if (simplestreamtokenizer.ttype != 34 && simplestreamtokenizer.ttype != 39)
        {
            throw new XPathException(xpath, "right hand side of !=", simplestreamtokenizer, "quoted string");
        } else
        {
            xpath = simplestreamtokenizer.sval;
            simplestreamtokenizer.nextToken();
            return new TextNotEqualsExpr(xpath);
        }
    }
}
