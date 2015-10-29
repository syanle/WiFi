// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.geocoder;

import android.location.Address;
import com.mapabc.mapapi.core.ac;
import com.mapabc.mapapi.core.e;
import com.mapabc.mapapi.core.o;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.Proxy;
import java.net.URLEncoder;
import java.util.ArrayList;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

// Referenced classes of package com.mapabc.mapapi.geocoder:
//            b

class a extends ac
{

    public int a;

    public a(b b1, Proxy proxy, String s, String s1, String s2)
    {
        super(b1, proxy, s, s1, s2);
        a = 0;
        a = b1.f;
    }

    private void a(String s, String s1, Address address)
    {
        if (!s.equals("name")) goto _L2; else goto _L1
_L1:
        address.setFeatureName(s1);
_L4:
        return;
_L2:
        if (s.equals("province"))
        {
            address.setAdminArea(s1);
            return;
        }
        if (s.equals("city"))
        {
            address.setLocality(s1);
            return;
        }
        if (!s.equals("district"))
        {
            break MISSING_BLOCK_LABEL_94;
        }
        try
        {
            s = address.getClass().getMethod("setSubLocality", new Class[] {
                java/lang/String
            });
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        if (s == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        s.invoke(address, new Object[] {
            s1
        });
        return;
        if (s.equals("address"))
        {
            address.setAddressLine(0, s1);
            return;
        }
        if (s.equals("x"))
        {
            address.setLongitude(Double.parseDouble(s1));
            return;
        }
        if (s.equals("y"))
        {
            address.setLatitude(Double.parseDouble(s1));
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void a(Node node, Address address)
    {
        node = node.getChildNodes();
        for (int i = 0; i < node.getLength(); i++)
        {
            Node node1 = node.item(i);
            a(node1.getNodeName(), a(node1), address);
        }

    }

    protected void a(ArrayList arraylist)
    {
    }

    protected void a(Node node, ArrayList arraylist)
    {
        if (node.getNodeType() == 1 && node.getNodeName().equals("list"))
        {
            node = node.getChildNodes();
            int j = Math.min(a, node.getLength());
            int i = 0;
            while (i < j) 
            {
                Node node1 = node.item(i);
                if (node1.getNodeName().equals("poi") && node1.hasChildNodes())
                {
                    Address address = e.d();
                    a(node1, address);
                    arraylist.add(address);
                }
                i++;
            }
        }
    }

    protected String[] getRequestLines()
    {
        String s = ((b)task).e;
        String s1 = URLEncoder.encode(s, "utf-8");
        s = s1;
_L2:
        return (new String[] {
            "&enc=utf-8", "&ver=2", (new StringBuilder()).append("&address=").append(s).toString(), (new StringBuilder()).append("&a_k=").append(getmKey()).toString()
        });
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        unsupportedencodingexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected boolean getRequestType()
    {
        return true;
    }

    protected int getServiceCode()
    {
        return 16;
    }

    protected String getUrl()
    {
        return (new StringBuilder()).append(o.a().d()).append("/sisserver?config=GOC").toString();
    }
}
