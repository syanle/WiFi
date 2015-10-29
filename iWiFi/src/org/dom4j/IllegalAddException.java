// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;


// Referenced classes of package org.dom4j:
//            Branch, Element, Node

public class IllegalAddException extends IllegalArgumentException
{

    public IllegalAddException(String s)
    {
        super(s);
    }

    public IllegalAddException(Branch branch, Node node, String s)
    {
        super("The node \"" + node.toString() + "\" could not be added to the branch \"" + branch.getName() + "\" because: " + s);
    }

    public IllegalAddException(Element element, Node node, String s)
    {
        super("The node \"" + node.toString() + "\" could not be added to the element \"" + element.getQualifiedName() + "\" because: " + s);
    }
}
