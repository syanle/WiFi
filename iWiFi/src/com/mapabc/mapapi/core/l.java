// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import java.net.Proxy;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

// Referenced classes of package com.mapabc.mapapi.core:
//            ae, o

public class l extends ae
{

    private GeoPoint.b a;

    public l(GeoPoint.b b1, Proxy proxy, String s, String s1, String s2)
    {
        super(b1, proxy, s, s1, s2);
        a = b1;
    }

    private GeoPoint.b a(Node node, GeoPoint.b b1)
    {
        if (node.getNodeType() == 1 && node.getNodeName().equals("Item"))
        {
            node = node.getChildNodes();
            int i = 0;
            while (i < node.getLength()) 
            {
                Node node1 = node.item(i);
                if (node1.getNodeName().equals("x"))
                {
                    b1.a = Double.parseDouble(a(node1));
                } else
                if (node1.getNodeName().equals("y"))
                {
                    b1.b = Double.parseDouble(a(node1));
                }
                i++;
            }
        }
        return b1;
    }

    protected GeoPoint.b a(NodeList nodelist)
    {
        GeoPoint.b b1 = a;
        int j = nodelist.getLength();
        for (int i = 0; i < j; i++)
        {
            a(nodelist.item(i), b1);
        }

        return b1;
    }

    protected volatile Object b(NodeList nodelist)
    {
        return a(nodelist);
    }

    protected String[] getRequestLines()
    {
        return (new String[] {
            "&enc=utf-8", (new StringBuilder()).append("&x1=").append(String.format("%f", new Object[] {
                Double.valueOf(((GeoPoint.b)task).a)
            })).toString(), (new StringBuilder()).append("&y1=").append(String.format("%f", new Object[] {
                Double.valueOf(((GeoPoint.b)task).b)
            })).toString(), (new StringBuilder()).append("&a_k=").append(getmKey()).toString()
        });
    }

    protected boolean getRequestType()
    {
        return true;
    }

    protected int getServiceCode()
    {
        return 2;
    }

    protected String getUrl()
    {
        return (new StringBuilder()).append(o.a().d()).append("/sisserver?config=RGC&resType=xml&flag=true").toString();
    }
}
