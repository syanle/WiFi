// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;


// Referenced classes of package org.dom4j:
//            Attribute, CDATA, Comment, Document, 
//            DocumentType, Element, Entity, Namespace, 
//            ProcessingInstruction, Text

public interface Visitor
{

    public abstract void visit(Attribute attribute);

    public abstract void visit(CDATA cdata);

    public abstract void visit(Comment comment);

    public abstract void visit(Document document);

    public abstract void visit(DocumentType documenttype);

    public abstract void visit(Element element);

    public abstract void visit(Entity entity);

    public abstract void visit(Namespace namespace);

    public abstract void visit(ProcessingInstruction processinginstruction);

    public abstract void visit(Text text);
}
