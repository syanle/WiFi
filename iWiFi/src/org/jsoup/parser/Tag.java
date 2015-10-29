// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.parser;

import java.util.HashMap;
import java.util.Map;
import org.jsoup.helper.Validate;

public class Tag
{

    private static final String blockTags[] = {
        "html", "head", "body", "frameset", "script", "noscript", "style", "meta", "link", "title", 
        "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", "p", "h1", 
        "h2", "h3", "h4", "h5", "h6", "ul", "ol", "pre", "div", "blockquote", 
        "hr", "address", "figure", "figcaption", "form", "fieldset", "ins", "del", "s", "dl", 
        "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", 
        "tr", "th", "td", "video", "audio", "canvas", "details", "menu", "plaintext"
    };
    private static final String emptyTags[] = {
        "meta", "link", "base", "frame", "img", "br", "wbr", "embed", "hr", "input", 
        "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", 
        "track"
    };
    private static final String formListedTags[] = {
        "button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"
    };
    private static final String formSubmitTags[] = {
        "input", "keygen", "object", "select", "textarea"
    };
    private static final String formatAsInlineTags[] = {
        "title", "a", "p", "h1", "h2", "h3", "h4", "h5", "h6", "pre", 
        "address", "li", "th", "td", "script", "style", "ins", "del", "s"
    };
    private static final String inlineTags[] = {
        "object", "base", "font", "tt", "i", "b", "u", "big", "small", "em", 
        "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", "time", "acronym", 
        "mark", "ruby", "rt", "rp", "a", "img", "br", "wbr", "map", "q", 
        "sub", "sup", "bdo", "iframe", "embed", "span", "input", "select", "textarea", "label", 
        "button", "optgroup", "option", "legend", "datalist", "keygen", "output", "progress", "meter", "area", 
        "param", "source", "track", "summary", "command", "device", "area", "basefont", "bgsound", "menuitem", 
        "param", "source", "track"
    };
    private static final String preserveWhitespaceTags[] = {
        "pre", "plaintext", "title", "textarea"
    };
    private static final Map tags;
    private boolean canContainBlock;
    private boolean canContainInline;
    private boolean empty;
    private boolean formList;
    private boolean formSubmit;
    private boolean formatAsBlock;
    private boolean isBlock;
    private boolean preserveWhitespace;
    private boolean selfClosing;
    private String tagName;

    private Tag(String s)
    {
        isBlock = true;
        formatAsBlock = true;
        canContainBlock = true;
        canContainInline = true;
        empty = false;
        selfClosing = false;
        preserveWhitespace = false;
        formList = false;
        formSubmit = false;
        tagName = s.toLowerCase();
    }

    public static boolean isKnownTag(String s)
    {
        return tags.containsKey(s);
    }

    private static void register(Tag tag)
    {
        tags.put(tag.tagName, tag);
    }

    public static Tag valueOf(String s)
    {
        Validate.notNull(s);
        Tag tag = (Tag)tags.get(s);
        Object obj = tag;
        if (tag == null)
        {
            String s1 = s.trim().toLowerCase();
            Validate.notEmpty(s1);
            s = (Tag)tags.get(s1);
            obj = s;
            if (s == null)
            {
                obj = new Tag(s1);
                obj.isBlock = false;
                obj.canContainBlock = true;
            }
        }
        return ((Tag) (obj));
    }

    public boolean canContainBlock()
    {
        return canContainBlock;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof Tag))
            {
                return false;
            }
            obj = (Tag)obj;
            if (canContainBlock != ((Tag) (obj)).canContainBlock)
            {
                return false;
            }
            if (canContainInline != ((Tag) (obj)).canContainInline)
            {
                return false;
            }
            if (empty != ((Tag) (obj)).empty)
            {
                return false;
            }
            if (formatAsBlock != ((Tag) (obj)).formatAsBlock)
            {
                return false;
            }
            if (isBlock != ((Tag) (obj)).isBlock)
            {
                return false;
            }
            if (preserveWhitespace != ((Tag) (obj)).preserveWhitespace)
            {
                return false;
            }
            if (selfClosing != ((Tag) (obj)).selfClosing)
            {
                return false;
            }
            if (formList != ((Tag) (obj)).formList)
            {
                return false;
            }
            if (formSubmit != ((Tag) (obj)).formSubmit)
            {
                return false;
            }
            if (!tagName.equals(((Tag) (obj)).tagName))
            {
                return false;
            }
        }
        return true;
    }

    public boolean formatAsBlock()
    {
        return formatAsBlock;
    }

    public String getName()
    {
        return tagName;
    }

    public int hashCode()
    {
        int i2 = 1;
        int j2 = tagName.hashCode();
        int i;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        if (isBlock)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (formatAsBlock)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        if (canContainBlock)
        {
            k = 1;
        } else
        {
            k = 0;
        }
        if (canContainInline)
        {
            l = 1;
        } else
        {
            l = 0;
        }
        if (empty)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (selfClosing)
        {
            j1 = 1;
        } else
        {
            j1 = 0;
        }
        if (preserveWhitespace)
        {
            k1 = 1;
        } else
        {
            k1 = 0;
        }
        if (formList)
        {
            l1 = 1;
        } else
        {
            l1 = 0;
        }
        if (!formSubmit)
        {
            i2 = 0;
        }
        return ((((((((j2 * 31 + i) * 31 + j) * 31 + k) * 31 + l) * 31 + i1) * 31 + j1) * 31 + k1) * 31 + l1) * 31 + i2;
    }

    public boolean isBlock()
    {
        return isBlock;
    }

    public boolean isData()
    {
        return !canContainInline && !isEmpty();
    }

    public boolean isEmpty()
    {
        return empty;
    }

    public boolean isFormListed()
    {
        return formList;
    }

    public boolean isFormSubmittable()
    {
        return formSubmit;
    }

    public boolean isInline()
    {
        return !isBlock;
    }

    public boolean isKnownTag()
    {
        return tags.containsKey(tagName);
    }

    public boolean isSelfClosing()
    {
        return empty || selfClosing;
    }

    public boolean preserveWhitespace()
    {
        return preserveWhitespace;
    }

    Tag setSelfClosing()
    {
        selfClosing = true;
        return this;
    }

    public String toString()
    {
        return tagName;
    }

    static 
    {
        tags = new HashMap();
        String as[] = blockTags;
        int l1 = as.length;
        for (int i = 0; i < l1; i++)
        {
            register(new Tag(as[i]));
        }

        as = inlineTags;
        l1 = as.length;
        for (int j = 0; j < l1; j++)
        {
            Tag tag = new Tag(as[j]);
            tag.isBlock = false;
            tag.canContainBlock = false;
            tag.formatAsBlock = false;
            register(tag);
        }

        as = emptyTags;
        l1 = as.length;
        for (int k = 0; k < l1; k++)
        {
            Object obj = as[k];
            obj = (Tag)tags.get(obj);
            Validate.notNull(obj);
            obj.canContainBlock = false;
            obj.canContainInline = false;
            obj.empty = true;
        }

        as = formatAsInlineTags;
        l1 = as.length;
        for (int l = 0; l < l1; l++)
        {
            Object obj1 = as[l];
            obj1 = (Tag)tags.get(obj1);
            Validate.notNull(obj1);
            obj1.formatAsBlock = false;
        }

        as = preserveWhitespaceTags;
        l1 = as.length;
        for (int i1 = 0; i1 < l1; i1++)
        {
            Object obj2 = as[i1];
            obj2 = (Tag)tags.get(obj2);
            Validate.notNull(obj2);
            obj2.preserveWhitespace = true;
        }

        as = formListedTags;
        l1 = as.length;
        for (int j1 = 0; j1 < l1; j1++)
        {
            Object obj3 = as[j1];
            obj3 = (Tag)tags.get(obj3);
            Validate.notNull(obj3);
            obj3.formList = true;
        }

        as = formSubmitTags;
        l1 = as.length;
        for (int k1 = 0; k1 < l1; k1++)
        {
            Object obj4 = as[k1];
            obj4 = (Tag)tags.get(obj4);
            Validate.notNull(obj4);
            obj4.formSubmit = true;
        }

    }
}
