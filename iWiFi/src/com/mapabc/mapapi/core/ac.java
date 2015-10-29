// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import java.io.IOException;
import java.io.InputStream;
import java.net.Proxy;
import java.util.ArrayList;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

// Referenced classes of package com.mapabc.mapapi.core:
//            ae, MapAbcException

public abstract class ac extends ae
{

    public ac(Object obj, Proxy proxy, String s, String s1, String s2)
    {
        super(obj, proxy, s, s1, s2);
    }

    protected ArrayList a(InputStream inputstream)
        throws MapAbcException
    {
        NodeList nodelist = b(inputstream);
        ArrayList arraylist = new ArrayList();
        int j = nodelist.getLength();
        for (int i = 0; i < j; i++)
        {
            a(nodelist.item(i), arraylist);
        }

        a(arraylist);
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
        return arraylist;
    }

    protected ArrayList a(NodeList nodelist)
    {
        return null;
    }

    protected abstract void a(ArrayList arraylist);

    protected abstract void a(Node node, ArrayList arraylist);

    protected volatile Object b(NodeList nodelist)
    {
        return a(nodelist);
    }

    protected volatile Object loadData(InputStream inputstream)
        throws MapAbcException
    {
        return a(inputstream);
    }
}
