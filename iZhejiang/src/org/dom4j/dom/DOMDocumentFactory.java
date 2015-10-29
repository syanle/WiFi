// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.dom;

import java.util.Map;
import org.dom4j.Attribute;
import org.dom4j.CDATA;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.Namespace;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;
import org.dom4j.Text;
import org.dom4j.util.SingletonStrategy;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DocumentType;

// Referenced classes of package org.dom4j.dom:
//            DOMDocumentType, DOMAttribute, DOMCDATA, DOMComment, 
//            DOMDocument, DOMElement, DOMEntityReference, DOMNamespace, 
//            DOMProcessingInstruction, DOMText

public class DOMDocumentFactory extends DocumentFactory
    implements DOMImplementation
{

    static Class class$org$dom4j$dom$DOMDocumentFactory;
    private static SingletonStrategy singleton;

    public DOMDocumentFactory()
    {
    }

    static Class _mthclass$(String s)
    {
        try
        {
            s = Class.forName(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new NoClassDefFoundError(s.getMessage());
        }
        return s;
    }

    public static DocumentFactory getInstance()
    {
        return (DOMDocumentFactory)singleton.instance();
    }

    protected DOMDocumentType asDocumentType(DocumentType documenttype)
    {
        if (documenttype instanceof DOMDocumentType)
        {
            return (DOMDocumentType)documenttype;
        } else
        {
            return new DOMDocumentType(documenttype.getName(), documenttype.getPublicId(), documenttype.getSystemId());
        }
    }

    public Attribute createAttribute(Element element, QName qname, String s)
    {
        return new DOMAttribute(qname, s);
    }

    public CDATA createCDATA(String s)
    {
        return new DOMCDATA(s);
    }

    public Comment createComment(String s)
    {
        return new DOMComment(s);
    }

    public org.dom4j.DocumentType createDocType(String s, String s1, String s2)
    {
        return new DOMDocumentType(s, s1, s2);
    }

    public Document createDocument()
    {
        DOMDocument domdocument = new DOMDocument();
        domdocument.setDocumentFactory(this);
        return domdocument;
    }

    public org.w3c.dom.Document createDocument(String s, String s1, DocumentType documenttype)
        throws DOMException
    {
        if (documenttype != null)
        {
            documenttype = new DOMDocument(asDocumentType(documenttype));
        } else
        {
            documenttype = new DOMDocument();
        }
        documenttype.addElement(createQName(s1, s));
        return documenttype;
    }

    public DocumentType createDocumentType(String s, String s1, String s2)
        throws DOMException
    {
        return new DOMDocumentType(s, s1, s2);
    }

    public Element createElement(QName qname)
    {
        return new DOMElement(qname);
    }

    public Element createElement(QName qname, int i)
    {
        return new DOMElement(qname, i);
    }

    public Entity createEntity(String s)
    {
        return new DOMEntityReference(s);
    }

    public Entity createEntity(String s, String s1)
    {
        return new DOMEntityReference(s, s1);
    }

    public Namespace createNamespace(String s, String s1)
    {
        return new DOMNamespace(s, s1);
    }

    public ProcessingInstruction createProcessingInstruction(String s, String s1)
    {
        return new DOMProcessingInstruction(s, s1);
    }

    public ProcessingInstruction createProcessingInstruction(String s, Map map)
    {
        return new DOMProcessingInstruction(s, map);
    }

    public Text createText(String s)
    {
        return new DOMText(s);
    }

    public boolean hasFeature(String s, String s1)
    {
        boolean flag;
label0:
        {
            boolean flag1 = false;
            if (!"XML".equalsIgnoreCase(s))
            {
                flag = flag1;
                if (!"Core".equalsIgnoreCase(s))
                {
                    break label0;
                }
            }
            if (s1 != null && s1.length() != 0 && !"1.0".equals(s1))
            {
                flag = flag1;
                if (!"2.0".equals(s1))
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    static 
    {
        singleton = null;
        Class class1 = null;
        Object obj;
        try
        {
            obj = Class.forName(System.getProperty("org.dom4j.dom.DOMDocumentFactory.singleton.strategy", "org.dom4j.util.SimpleSingleton"));
        }
        catch (Exception exception1)
        {
            Class class2;
            try
            {
                class2 = Class.forName("org.dom4j.util.SimpleSingleton");
            }
            catch (Exception exception2)
            {
                continue; /* Loop/switch isn't completed */
            }
            class1 = class2;
            continue; /* Loop/switch isn't completed */
        }
        class1 = ((Class) (obj));
_L3:
        singleton = (SingletonStrategy)class1.newInstance();
        obj = singleton;
        if (class$org$dom4j$dom$DOMDocumentFactory != null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        class1 = _mthclass$("org.dom4j.dom.DOMDocumentFactory");
        class$org$dom4j$dom$DOMDocumentFactory = class1;
_L1:
        ((SingletonStrategy) (obj)).setSingletonClassName(class1.getName());
        break; /* Loop/switch isn't completed */
        try
        {
            class1 = class$org$dom4j$dom$DOMDocumentFactory;
        }
        catch (Exception exception)
        {
            break; /* Loop/switch isn't completed */
        }
          goto _L1
        if (true) goto _L3; else goto _L2
_L2:
    }
}
