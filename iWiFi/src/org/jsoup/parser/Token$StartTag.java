// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.parser;

import org.jsoup.nodes.Attributes;

// Referenced classes of package org.jsoup.parser:
//            Token

static class attributes extends attributes
{

    public String toString()
    {
        if (attributes != null && attributes.size() > 0)
        {
            return (new StringBuilder()).append("<").append(name()).append(" ").append(attributes.toString()).append(">").toString();
        } else
        {
            return (new StringBuilder()).append("<").append(name()).append(">").toString();
        }
    }

    ()
    {
        attributes = new Attributes();
        type = .StartTag;
    }

    .StartTag(String s)
    {
        this();
        tagName = s;
    }

    tagName(String s, Attributes attributes)
    {
        this();
        tagName = s;
        this.attributes = attributes;
    }
}
