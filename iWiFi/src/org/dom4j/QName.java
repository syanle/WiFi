// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import org.dom4j.tree.QNameCache;
import org.dom4j.util.SingletonStrategy;

// Referenced classes of package org.dom4j:
//            Namespace, DocumentFactory

public class QName
    implements Serializable
{

    static Class class$org$dom4j$tree$QNameCache;
    private static SingletonStrategy singleton;
    private DocumentFactory documentFactory;
    private int hashCode;
    private String name;
    private transient Namespace namespace;
    private String qualifiedName;

    public QName(String s)
    {
        this(s, Namespace.NO_NAMESPACE);
    }

    public QName(String s, Namespace namespace1)
    {
        String s1 = s;
        if (s == null)
        {
            s1 = "";
        }
        name = s1;
        s = namespace1;
        if (namespace1 == null)
        {
            s = Namespace.NO_NAMESPACE;
        }
        namespace = s;
    }

    public QName(String s, Namespace namespace1, String s1)
    {
        String s2 = s;
        if (s == null)
        {
            s2 = "";
        }
        name = s2;
        qualifiedName = s1;
        s = namespace1;
        if (namespace1 == null)
        {
            s = Namespace.NO_NAMESPACE;
        }
        namespace = s;
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

    public static QName get(String s)
    {
        return getCache().get(s);
    }

    public static QName get(String s, String s1)
    {
        if (s1 == null)
        {
            return getCache().get(s);
        } else
        {
            return getCache().get(s, s1);
        }
    }

    public static QName get(String s, String s1, String s2)
    {
        if ((s1 == null || s1.length() == 0) && s2 == null)
        {
            return get(s);
        }
        if (s1 == null || s1.length() == 0)
        {
            return getCache().get(s, Namespace.get(s2));
        }
        if (s2 == null)
        {
            return get(s);
        } else
        {
            return getCache().get(s, Namespace.get(s1, s2));
        }
    }

    public static QName get(String s, Namespace namespace1)
    {
        return getCache().get(s, namespace1);
    }

    public static QName get(String s, Namespace namespace1, String s1)
    {
        return getCache().get(s, namespace1, s1);
    }

    private static QNameCache getCache()
    {
        return (QNameCache)singleton.instance();
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        String s = (String)objectinputstream.readObject();
        String s1 = (String)objectinputstream.readObject();
        objectinputstream.defaultReadObject();
        namespace = Namespace.get(s, s1);
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        objectoutputstream.writeObject(namespace.getPrefix());
        objectoutputstream.writeObject(namespace.getURI());
        objectoutputstream.defaultWriteObject();
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (!(obj instanceof QName))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (QName)obj;
        if (hashCode() != ((QName) (obj)).hashCode())
        {
            break; /* Loop/switch isn't completed */
        }
        if (!getName().equals(((QName) (obj)).getName()) || !getNamespaceURI().equals(((QName) (obj)).getNamespaceURI()))
        {
            return false;
        }
        if (true) goto _L1; else goto _L3
_L3:
        return false;
    }

    public DocumentFactory getDocumentFactory()
    {
        return documentFactory;
    }

    public String getName()
    {
        return name;
    }

    public Namespace getNamespace()
    {
        return namespace;
    }

    public String getNamespacePrefix()
    {
        if (namespace == null)
        {
            return "";
        } else
        {
            return namespace.getPrefix();
        }
    }

    public String getNamespaceURI()
    {
        if (namespace == null)
        {
            return "";
        } else
        {
            return namespace.getURI();
        }
    }

    public String getQualifiedName()
    {
        if (qualifiedName == null)
        {
            String s = getNamespacePrefix();
            if (s != null && s.length() > 0)
            {
                qualifiedName = s + ":" + name;
            } else
            {
                qualifiedName = name;
            }
        }
        return qualifiedName;
    }

    public int hashCode()
    {
        if (hashCode == 0)
        {
            hashCode = getName().hashCode() ^ getNamespaceURI().hashCode();
            if (hashCode == 0)
            {
                hashCode = 47806;
            }
        }
        return hashCode;
    }

    public void setDocumentFactory(DocumentFactory documentfactory)
    {
        documentFactory = documentfactory;
    }

    public String toString()
    {
        return super.toString() + " [name: " + getName() + " namespace: \"" + getNamespace() + "\"]";
    }

    static 
    {
        singleton = null;
        Class class1 = null;
        Object obj;
        try
        {
            obj = Class.forName(System.getProperty("org.dom4j.QName.singleton.strategy", "org.dom4j.util.SimpleSingleton"));
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
        if (class$org$dom4j$tree$QNameCache != null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        class1 = _mthclass$("org.dom4j.tree.QNameCache");
        class$org$dom4j$tree$QNameCache = class1;
_L1:
        ((SingletonStrategy) (obj)).setSingletonClassName(class1.getName());
        break; /* Loop/switch isn't completed */
        try
        {
            class1 = class$org$dom4j$tree$QNameCache;
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
