// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.dom4j.DocumentFactory;
import org.dom4j.Namespace;
import org.dom4j.QName;

public class NamespaceStack
{

    private Map currentNamespaceCache;
    private Namespace defaultNamespace;
    private DocumentFactory documentFactory;
    private ArrayList namespaceCacheList;
    private ArrayList namespaceStack;
    private Map rootNamespaceCache;

    public NamespaceStack()
    {
        namespaceStack = new ArrayList();
        namespaceCacheList = new ArrayList();
        rootNamespaceCache = new HashMap();
        documentFactory = DocumentFactory.getInstance();
    }

    public NamespaceStack(DocumentFactory documentfactory)
    {
        namespaceStack = new ArrayList();
        namespaceCacheList = new ArrayList();
        rootNamespaceCache = new HashMap();
        documentFactory = documentfactory;
    }

    public Namespace addNamespace(String s, String s1)
    {
        s = createNamespace(s, s1);
        push(s);
        return s;
    }

    public void clear()
    {
        namespaceStack.clear();
        namespaceCacheList.clear();
        rootNamespaceCache.clear();
        currentNamespaceCache = null;
    }

    public boolean contains(Namespace namespace)
    {
        Object obj = namespace.getPrefix();
        if (obj == null || ((String) (obj)).length() == 0)
        {
            obj = getDefaultNamespace();
        } else
        {
            obj = getNamespaceForPrefix(((String) (obj)));
        }
        if (obj == null)
        {
            return false;
        }
        if (obj == namespace)
        {
            return true;
        } else
        {
            return namespace.getURI().equals(((Namespace) (obj)).getURI());
        }
    }

    protected Namespace createNamespace(String s, String s1)
    {
        return documentFactory.createNamespace(s, s1);
    }

    protected QName createQName(String s, String s1, Namespace namespace)
    {
        return documentFactory.createQName(s, namespace);
    }

    protected Namespace findDefaultNamespace()
    {
        for (int i = namespaceStack.size() - 1; i >= 0; i--)
        {
            Namespace namespace = (Namespace)namespaceStack.get(i);
            if (namespace != null && (namespace.getPrefix() == null || namespace.getPrefix().length() == 0))
            {
                return namespace;
            }
        }

        return null;
    }

    public QName getAttributeQName(String s, String s1, String s2)
    {
        String s3;
        String s5;
        Map map;
        int i;
        s3 = s2;
        if (s2 == null)
        {
            s3 = s1;
        }
        map = getNamespaceCache();
        s2 = (QName)map.get(s3);
        if (s2 != null)
        {
            return s2;
        }
        s2 = s1;
        if (s1 == null)
        {
            s2 = s3;
        }
        s1 = s;
        if (s == null)
        {
            s1 = "";
        }
        s5 = "";
        i = s3.indexOf(":");
        if (i <= 0) goto _L2; else goto _L1
_L1:
        String s4;
        s5 = s3.substring(0, i);
        Namespace namespace = createNamespace(s5, s1);
        s1 = namespace;
        s4 = s5;
        s = s2;
        if (s2.trim().length() == 0)
        {
            s = s3.substring(i + 1);
            s4 = s5;
            s1 = namespace;
        }
_L4:
        s = pushQName(s, s3, s1, s4);
        map.put(s3, s);
        return s;
_L2:
        Namespace namespace1 = Namespace.NO_NAMESPACE;
        s1 = namespace1;
        s4 = s5;
        s = s2;
        if (s2.trim().length() == 0)
        {
            s = s3;
            s1 = namespace1;
            s4 = s5;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public Namespace getDefaultNamespace()
    {
        if (defaultNamespace == null)
        {
            defaultNamespace = findDefaultNamespace();
        }
        return defaultNamespace;
    }

    public DocumentFactory getDocumentFactory()
    {
        return documentFactory;
    }

    public Namespace getNamespace(int i)
    {
        return (Namespace)namespaceStack.get(i);
    }

    protected Map getNamespaceCache()
    {
        if (currentNamespaceCache != null) goto _L2; else goto _L1
_L1:
        int i = namespaceStack.size() - 1;
        if (i >= 0) goto _L4; else goto _L3
_L3:
        currentNamespaceCache = rootNamespaceCache;
_L2:
        return currentNamespaceCache;
_L4:
        currentNamespaceCache = (Map)namespaceCacheList.get(i);
        if (currentNamespaceCache == null)
        {
            currentNamespaceCache = new HashMap();
            namespaceCacheList.set(i, currentNamespaceCache);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public Namespace getNamespaceForPrefix(String s)
    {
        String s1 = s;
        if (s == null)
        {
            s1 = "";
        }
        for (int i = namespaceStack.size() - 1; i >= 0; i--)
        {
            s = (Namespace)namespaceStack.get(i);
            if (s1.equals(s.getPrefix()))
            {
                return s;
            }
        }

        return null;
    }

    public QName getQName(String s, String s1, String s2)
    {
        String s3;
        String s4;
        String s5;
        int i;
        if (s1 == null)
        {
            s4 = s2;
            s3 = s2;
        } else
        {
            s4 = s1;
            s3 = s2;
            if (s2 == null)
            {
                s3 = s1;
                s4 = s1;
            }
        }
        s1 = s;
        if (s == null)
        {
            s1 = "";
        }
        s5 = "";
        i = s3.indexOf(":");
        if (i > 0)
        {
            s5 = s3.substring(0, i);
            s2 = s5;
            s = s4;
            if (s4.trim().length() == 0)
            {
                s = s3.substring(i + 1);
                s2 = s5;
            }
        } else
        {
            s2 = s5;
            s = s4;
            if (s4.trim().length() == 0)
            {
                s = s3;
                s2 = s5;
            }
        }
        return pushQName(s, s3, createNamespace(s2, s1), s2);
    }

    public String getURI(String s)
    {
        s = getNamespaceForPrefix(s);
        if (s != null)
        {
            return s.getURI();
        } else
        {
            return null;
        }
    }

    public Namespace pop()
    {
        return remove(namespaceStack.size() - 1);
    }

    public Namespace pop(String s)
    {
        String s1 = s;
        if (s == null)
        {
            s1 = "";
        }
        Object obj = null;
        int i = namespaceStack.size() - 1;
        do
        {
label0:
            {
                s = obj;
                if (i >= 0)
                {
                    s = (Namespace)namespaceStack.get(i);
                    if (!s1.equals(s.getPrefix()))
                    {
                        break label0;
                    }
                    remove(i);
                }
                if (s == null)
                {
                    System.out.println("Warning: missing namespace prefix ignored: " + s1);
                }
                return s;
            }
            i--;
        } while (true);
    }

    public void push(String s, String s1)
    {
        String s2 = s1;
        if (s1 == null)
        {
            s2 = "";
        }
        push(createNamespace(s, s2));
    }

    public void push(Namespace namespace)
    {
        namespaceStack.add(namespace);
        namespaceCacheList.add(null);
        currentNamespaceCache = null;
        String s = namespace.getPrefix();
        if (s == null || s.length() == 0)
        {
            defaultNamespace = namespace;
        }
    }

    protected QName pushQName(String s, String s1, Namespace namespace, String s2)
    {
        if (s2 == null || s2.length() == 0)
        {
            defaultNamespace = null;
        }
        return createQName(s, s1, namespace);
    }

    protected Namespace remove(int i)
    {
        Namespace namespace = (Namespace)namespaceStack.remove(i);
        namespaceCacheList.remove(i);
        defaultNamespace = null;
        currentNamespaceCache = null;
        return namespace;
    }

    public void setDocumentFactory(DocumentFactory documentfactory)
    {
        documentFactory = documentfactory;
    }

    public int size()
    {
        return namespaceStack.size();
    }

    public String toString()
    {
        return super.toString() + " Stack: " + namespaceStack.toString();
    }
}
