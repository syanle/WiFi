// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.nodes;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.helper.Validate;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;

// Referenced classes of package org.jsoup.nodes:
//            Element, Attributes

public class FormElement extends Element
{

    private final Elements elements = new Elements();

    public FormElement(Tag tag, String s, Attributes attributes)
    {
        super(tag, s, attributes);
    }

    public FormElement addElement(Element element)
    {
        elements.add(element);
        return this;
    }

    public Elements elements()
    {
        return elements;
    }

    public boolean equals(Object obj)
    {
        return super.equals(obj);
    }

    public List formData()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = elements.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Object obj = (Element)iterator.next();
            if (((Element) (obj)).tag().isFormSubmittable())
            {
                String s = ((Element) (obj)).attr("name");
                if (s.length() != 0)
                {
                    if ("select".equals(((Element) (obj)).tagName()))
                    {
                        obj = ((Element) (obj)).select("option[selected]").iterator();
                        while (((Iterator) (obj)).hasNext()) 
                        {
                            arraylist.add(org.jsoup.helper.HttpConnection.KeyVal.create(s, ((Element)((Iterator) (obj)).next()).val()));
                        }
                    } else
                    {
                        arraylist.add(org.jsoup.helper.HttpConnection.KeyVal.create(s, ((Element) (obj)).val()));
                    }
                }
            }
        } while (true);
        return arraylist;
    }

    public Connection submit()
    {
        String s;
        org.jsoup.Connection.Method method;
        if (hasAttr("action"))
        {
            s = absUrl("action");
        } else
        {
            s = baseUri();
        }
        Validate.notEmpty(s, "Could not determine a form action URL for submit. Ensure you set a base URI when parsing.");
        if (attr("method").toUpperCase().equals("POST"))
        {
            method = org.jsoup.Connection.Method.POST;
        } else
        {
            method = org.jsoup.Connection.Method.GET;
        }
        return Jsoup.connect(s).data(formData()).method(method);
    }
}
