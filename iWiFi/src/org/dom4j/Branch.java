// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package org.dom4j:
//            Node, Comment, Element, ProcessingInstruction, 
//            QName

public interface Branch
    extends Node
{

    public abstract void add(Comment comment);

    public abstract void add(Element element);

    public abstract void add(Node node1);

    public abstract void add(ProcessingInstruction processinginstruction);

    public abstract Element addElement(String s);

    public abstract Element addElement(String s, String s1);

    public abstract Element addElement(QName qname);

    public abstract void appendContent(Branch branch);

    public abstract void clearContent();

    public abstract List content();

    public abstract Element elementByID(String s);

    public abstract int indexOf(Node node1);

    public abstract Node node(int i)
        throws IndexOutOfBoundsException;

    public abstract int nodeCount();

    public abstract Iterator nodeIterator();

    public abstract void normalize();

    public abstract ProcessingInstruction processingInstruction(String s);

    public abstract List processingInstructions();

    public abstract List processingInstructions(String s);

    public abstract boolean remove(Comment comment);

    public abstract boolean remove(Element element);

    public abstract boolean remove(Node node1);

    public abstract boolean remove(ProcessingInstruction processinginstruction);

    public abstract boolean removeProcessingInstruction(String s);

    public abstract void setContent(List list);

    public abstract void setProcessingInstructions(List list);
}
