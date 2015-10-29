// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.nodes;

import java.util.Arrays;
import org.jsoup.helper.Validate;

// Referenced classes of package org.jsoup.nodes:
//            Entities, Document

public class Attribute
    implements java.util.Map.Entry, Cloneable
{

    private static final String booleanAttributes[] = {
        "allowfullscreen", "async", "autofocus", "checked", "compact", "declare", "default", "defer", "disabled", "formnovalidate", 
        "hidden", "inert", "ismap", "itemscope", "multiple", "muted", "nohref", "noresize", "noshade", "novalidate", 
        "nowrap", "open", "readonly", "required", "reversed", "seamless", "selected", "sortable", "truespeed", "typemustmatch"
    };
    private String key;
    private String value;

    public Attribute(String s, String s1)
    {
        Validate.notEmpty(s);
        Validate.notNull(s1);
        key = s.trim().toLowerCase();
        value = s1;
    }

    public static Attribute createFromEncoded(String s, String s1)
    {
        return new Attribute(s, Entities.unescape(s1, true));
    }

    public volatile Object clone()
        throws CloneNotSupportedException
    {
        return clone();
    }

    public Attribute clone()
    {
        Attribute attribute;
        try
        {
            attribute = (Attribute)super.clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            throw new RuntimeException(clonenotsupportedexception);
        }
        return attribute;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof Attribute))
            {
                return false;
            }
            obj = (Attribute)obj;
            if (key == null ? ((Attribute) (obj)).key != null : !key.equals(((Attribute) (obj)).key))
            {
                return false;
            }
            if (value == null ? ((Attribute) (obj)).value != null : !value.equals(((Attribute) (obj)).value))
            {
                return false;
            }
        }
        return true;
    }

    public volatile Object getKey()
    {
        return getKey();
    }

    public String getKey()
    {
        return key;
    }

    public volatile Object getValue()
    {
        return getValue();
    }

    public String getValue()
    {
        return value;
    }

    public int hashCode()
    {
        int j = 0;
        int i;
        if (key != null)
        {
            i = key.hashCode();
        } else
        {
            i = 0;
        }
        if (value != null)
        {
            j = value.hashCode();
        }
        return i * 31 + j;
    }

    public String html()
    {
        StringBuilder stringbuilder = new StringBuilder();
        html(stringbuilder, (new Document("")).outputSettings());
        return stringbuilder.toString();
    }

    protected void html(StringBuilder stringbuilder, Document.OutputSettings outputsettings)
    {
        stringbuilder.append(key);
        if (!shouldCollapseAttribute(outputsettings))
        {
            stringbuilder.append("=\"");
            Entities.escape(stringbuilder, value, outputsettings, true, false, false);
            stringbuilder.append('"');
        }
    }

    protected boolean isDataAttribute()
    {
        return key.startsWith("data-") && key.length() > "data-".length();
    }

    public void setKey(String s)
    {
        Validate.notEmpty(s);
        key = s.trim().toLowerCase();
    }

    public volatile Object setValue(Object obj)
    {
        return setValue((String)obj);
    }

    public String setValue(String s)
    {
        Validate.notNull(s);
        String s1 = value;
        value = s;
        return s1;
    }

    protected final boolean shouldCollapseAttribute(Document.OutputSettings outputsettings)
    {
        return ("".equals(value) || value.equalsIgnoreCase(key)) && outputsettings.syntax() == Document.OutputSettings.Syntax.html && Arrays.binarySearch(booleanAttributes, key) >= 0;
    }

    public String toString()
    {
        return html();
    }

}
