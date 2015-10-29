// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.jaxb;

import javax.xml.bind.Element;

public interface JAXBObjectModifier
{

    public abstract Element modifyObject(Element element)
        throws Exception;
}
