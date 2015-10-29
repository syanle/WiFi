// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.dom4j.DocumentFactory;
import org.dom4j.Namespace;
import org.dom4j.QName;

public class QNameCache
{

    private DocumentFactory documentFactory;
    protected Map namespaceCache;
    protected Map noNamespaceCache;

    public QNameCache()
    {
        noNamespaceCache = Collections.synchronizedMap(new WeakHashMap());
        namespaceCache = Collections.synchronizedMap(new WeakHashMap());
    }

    public QNameCache(DocumentFactory documentfactory)
    {
        noNamespaceCache = Collections.synchronizedMap(new WeakHashMap());
        namespaceCache = Collections.synchronizedMap(new WeakHashMap());
        documentFactory = documentfactory;
    }

    protected Map createMap()
    {
        return Collections.synchronizedMap(new HashMap());
    }

    protected QName createQName(String s)
    {
        return new QName(s);
    }

    protected QName createQName(String s, Namespace namespace)
    {
        return new QName(s, namespace);
    }

    protected QName createQName(String s, Namespace namespace, String s1)
    {
        return new QName(s, namespace, s1);
    }

    public QName get(String s)
    {
        String s1 = null;
        Object obj;
        if (s != null)
        {
            QName qname = (QName)noNamespaceCache.get(s);
            s1 = s;
            s = qname;
        } else
        {
            String s2 = "";
            s = s1;
            s1 = s2;
        }
        obj = s;
        if (s == null)
        {
            obj = createQName(s1);
            ((QName) (obj)).setDocumentFactory(documentFactory);
            noNamespaceCache.put(s1, obj);
        }
        return ((QName) (obj));
    }

    public QName get(String s, String s1)
    {
        int i = s.indexOf(':');
        if (i < 0)
        {
            return get(s, Namespace.get(s1));
        } else
        {
            return get(s.substring(i + 1), Namespace.get(s.substring(0, i), s1));
        }
    }

    public QName get(String s, Namespace namespace)
    {
        Map map = getNamespaceCache(namespace);
        String s1 = null;
        Object obj;
        if (s != null)
        {
            QName qname = (QName)map.get(s);
            s1 = s;
            s = qname;
        } else
        {
            String s2 = "";
            s = s1;
            s1 = s2;
        }
        obj = s;
        if (s == null)
        {
            obj = createQName(s1, namespace);
            ((QName) (obj)).setDocumentFactory(documentFactory);
            map.put(s1, obj);
        }
        return ((QName) (obj));
    }

    public QName get(String s, Namespace namespace, String s1)
    {
        Map map = getNamespaceCache(namespace);
        String s2 = null;
        Object obj;
        if (s != null)
        {
            QName qname = (QName)map.get(s);
            s2 = s;
            s = qname;
        } else
        {
            String s3 = "";
            s = s2;
            s2 = s3;
        }
        obj = s;
        if (s == null)
        {
            obj = createQName(s2, namespace, s1);
            ((QName) (obj)).setDocumentFactory(documentFactory);
            map.put(s2, obj);
        }
        return ((QName) (obj));
    }

    protected Map getNamespaceCache(Namespace namespace)
    {
        Map map2;
        if (namespace == Namespace.NO_NAMESPACE)
        {
            map2 = noNamespaceCache;
        } else
        {
            Map map = null;
            if (namespace != null)
            {
                map = (Map)namespaceCache.get(namespace);
            }
            map2 = map;
            if (map == null)
            {
                Map map1 = createMap();
                namespaceCache.put(namespace, map1);
                return map1;
            }
        }
        return map2;
    }

    public List getQNames()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.addAll(noNamespaceCache.values());
        for (Iterator iterator = namespaceCache.values().iterator(); iterator.hasNext(); arraylist.addAll(((Map)iterator.next()).values())) { }
        return arraylist;
    }

    public QName intern(QName qname)
    {
        return get(qname.getName(), qname.getNamespace(), qname.getQualifiedName());
    }
}
