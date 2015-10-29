// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.jaxb;

import org.dom4j.Element;
import org.dom4j.io.ElementModifier;

// Referenced classes of package org.dom4j.jaxb:
//            JAXBModifier, JAXBObjectModifier

private class objectModifier
    implements ElementModifier
{

    private JAXBModifier jaxbModifier;
    private JAXBObjectModifier objectModifier;
    private final JAXBModifier this$0;

    public Element modifyElement(Element element)
        throws Exception
    {
        element = jaxbModifier.unmarshal(element);
        element = objectModifier.modifyObject(element);
        return jaxbModifier.marshal(element);
    }

    public (JAXBModifier jaxbmodifier1, JAXBObjectModifier jaxbobjectmodifier)
    {
        this$0 = JAXBModifier.this;
        jaxbModifier = jaxbmodifier1;
        objectModifier = jaxbobjectmodifier;
    }
}
