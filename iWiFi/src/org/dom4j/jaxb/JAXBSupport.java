// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.jaxb;

import java.io.StringReader;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.transform.stream.StreamSource;
import org.dom4j.Element;
import org.dom4j.dom.DOMDocument;

abstract class JAXBSupport
{

    private ClassLoader classloader;
    private String contextPath;
    private JAXBContext jaxbContext;
    private Marshaller marshaller;
    private Unmarshaller unmarshaller;

    public JAXBSupport(String s)
    {
        contextPath = s;
    }

    public JAXBSupport(String s, ClassLoader classloader1)
    {
        contextPath = s;
        classloader = classloader1;
    }

    private JAXBContext getContext()
        throws JAXBException
    {
        if (jaxbContext == null)
        {
            if (classloader == null)
            {
                jaxbContext = JAXBContext.newInstance(contextPath);
            } else
            {
                jaxbContext = JAXBContext.newInstance(contextPath, classloader);
            }
        }
        return jaxbContext;
    }

    private Marshaller getMarshaller()
        throws JAXBException
    {
        if (marshaller == null)
        {
            marshaller = getContext().createMarshaller();
        }
        return marshaller;
    }

    private Unmarshaller getUnmarshaller()
        throws JAXBException
    {
        if (unmarshaller == null)
        {
            unmarshaller = getContext().createUnmarshaller();
        }
        return unmarshaller;
    }

    protected Element marshal(javax.xml.bind.Element element)
        throws JAXBException
    {
        DOMDocument domdocument = new DOMDocument();
        getMarshaller().marshal(element, domdocument);
        return domdocument.getRootElement();
    }

    protected javax.xml.bind.Element unmarshal(Element element)
        throws JAXBException
    {
        element = new StreamSource(new StringReader(element.asXML()));
        return (javax.xml.bind.Element)getUnmarshaller().unmarshal(element);
    }
}
