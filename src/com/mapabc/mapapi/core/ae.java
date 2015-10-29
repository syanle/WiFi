// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import java.io.IOException;
import java.io.InputStream;
import java.net.Proxy;
import java.util.ArrayList;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

// Referenced classes of package com.mapabc.mapapi.core:
//            t, MapAbcException, e

public abstract class ae extends t
{

    private ArrayList a;

    public ae(Object obj, Proxy proxy, String s, String s1, String s2)
    {
        super(obj, proxy, s, s1, s2);
        a = new ArrayList();
    }

    protected String a(Node node)
    {
        Object obj = null;
        if (node == null)
        {
            node = obj;
        } else
        {
            Node node1 = node.getFirstChild();
            node = obj;
            if (node1 != null)
            {
                node = obj;
                if (node1.getNodeType() == 3)
                {
                    String s = node1.getNodeValue();
                    int i = s.indexOf("ppppppppShitJava");
                    node = s;
                    if (i >= 0)
                    {
                        i = Integer.parseInt(s.substring(i + "ppppppppShitJava".length()));
                        return (String)a.get(i);
                    }
                }
            }
        }
        return node;
    }

    protected abstract Object b(NodeList nodelist);

    protected NodeList b(InputStream inputstream)
        throws MapAbcException
    {
        return e.c(readString(inputstream)).getDocumentElement().getChildNodes();
    }

    protected Object loadData(InputStream inputstream)
        throws MapAbcException
    {
        Object obj = b(b(inputstream));
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                throw new MapAbcException("IO \u64CD\u4F5C\u5F02\u5E38 - IOException");
            }
        }
        return obj;
    }
}
