// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import android.location.Address;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.Proxy;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

// Referenced classes of package com.mapabc.mapapi.core:
//            ac, y, e, o

public class x extends ac
{

    private String a;
    private String b;
    private String c;
    private int d;
    private ArrayList e;
    private ArrayList f;
    private ArrayList g;
    private boolean h;
    private boolean i;
    private boolean j;
    private String k;

    public x(y y1, Proxy proxy, String s, String s1, String s2)
    {
        super(y1, proxy, s, s1, s2);
        a = null;
        b = null;
        c = null;
        d = 0;
        k = "<?xml version='1.0' encoding='utf-8' ?><spatial_request method='searchPoint'><x>%f</x><y>%f</y><poiNumber>%d</poiNumber><range>%d</range><pattern>0</pattern><roadLevel>0</roadLevel></spatial_request>";
        d = y1.h;
        e = new ArrayList();
        f = new ArrayList();
        g = new ArrayList();
    }

    private Address a(Node node, String s)
    {
        if (!node.hasChildNodes())
        {
            return null;
        }
        s = com.mapabc.mapapi.core.e.d();
        node = node.getChildNodes();
        int l = 0;
        do
        {
            if (l >= node.getLength())
            {
                break;
            }
            Node node1 = node.item(l);
            String s1 = node1.getNodeName();
            String s2 = a(node1);
            if (node1.getNodeType() == 1 && !com.mapabc.mapapi.core.e.b(s2))
            {
                a(s1, s2, ((Address) (s)));
            }
            l++;
        } while (true);
        return s;
    }

    private void a(String s, String s1, Address address)
    {
        if (s.equals("address"))
        {
            address.setAddressLine(0, s1);
            return;
        }
        if (s.equals("tel"))
        {
            address.setPhone(s1);
            return;
        }
        if (s.equals("name"))
        {
            address.setFeatureName(s1);
            return;
        } else
        {
            b(s, s1, address);
            return;
        }
    }

    private void a(ArrayList arraylist, ArrayList arraylist1)
    {
        int i1 = arraylist1.size();
        int j1 = d;
        int k1 = arraylist.size();
        for (int l = 0; l < j1 - k1; l++)
        {
            if (i1 > l)
            {
                arraylist.add(arraylist1.get(l));
            }
        }

    }

    private void a(Node node, ArrayList arraylist, String s)
    {
        int l = 0;
        if (d > 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i1;
        node = node.getChildNodes();
        i1 = Math.min(d, node.getLength());
_L6:
        if (l >= i1) goto _L1; else goto _L3
_L3:
        arraylist = node.item(l);
        if (arraylist.getNodeType() == 1) goto _L5; else goto _L4
_L4:
        l++;
          goto _L6
_L5:
        Object obj = arraylist.getNodeName();
        if (!((String) (obj)).equals(s)) goto _L4; else goto _L7
_L7:
        arraylist = a(((Node) (arraylist)), ((String) (obj)));
        if (!((String) (obj)).equals("Road"))
        {
            break MISSING_BLOCK_LABEL_165;
        }
        obj = arraylist.getClass().getMethod("setPremises", new Class[] {
            java/lang/String
        });
        Exception exception;
        if (obj != null)
        {
            try
            {
                ((Method) (obj)).invoke(arraylist, new Object[] {
                    "StreetAndRoad"
                });
            }
            catch (Exception exception1) { }
        }
        if (arraylist != null)
        {
            e.add(arraylist);
            h = true;
        }
          goto _L4
        if (!((String) (obj)).equals("poi")) goto _L9; else goto _L8
_L8:
        obj = arraylist.getClass().getMethod("setPremises", new Class[] {
            java/lang/String
        });
        if (obj != null)
        {
            try
            {
                ((Method) (obj)).invoke(arraylist, new Object[] {
                    "POI"
                });
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception) { }
        }
        if (arraylist != null)
        {
            f.add(arraylist);
            i = true;
        }
          goto _L4
_L9:
        if (!((String) (obj)).equals("cross")) goto _L4; else goto _L10
_L10:
        obj = arraylist.getClass().getMethod("setPremises", new Class[] {
            java/lang/String
        });
        if (obj != null)
        {
            try
            {
                ((Method) (obj)).invoke(arraylist, new Object[] {
                    "Cross"
                });
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception) { }
        }
        if (arraylist != null)
        {
            g.add(arraylist);
            j = true;
        }
          goto _L4
    }

    private String b(Node node)
    {
        int l;
        node = node.getChildNodes();
        l = 0;
_L3:
        Node node1;
        if (l >= node.getLength())
        {
            break; /* Loop/switch isn't completed */
        }
        node1 = node.item(l);
          goto _L1
_L5:
        l++;
        if (true) goto _L3; else goto _L2
_L1:
        if (node1.getNodeType() != 1 || !node1.getNodeName().equals("name")) goto _L5; else goto _L4
_L4:
        return a(node1);
_L2:
        return null;
    }

    private ArrayList b(ArrayList arraylist)
    {
        if (d > 0)
        {
            if (j)
            {
                arraylist.add(g.get(0));
            }
            a(arraylist, f);
            if (d - arraylist.size() == 0)
            {
                if (h)
                {
                    arraylist.set(arraylist.size() - 1, e.get(0));
                    return arraylist;
                }
            } else
            {
                a(arraylist, e);
                return arraylist;
            }
        }
        return arraylist;
    }

    private void b(String s, String s1, Address address)
    {
        if (s.equals("x"))
        {
            address.setLongitude(Double.parseDouble(s1));
        } else
        if (s.equals("y"))
        {
            address.setLatitude(Double.parseDouble(s1));
            return;
        }
    }

    private void b(Node node, ArrayList arraylist)
    {
        String s = node.getNodeName();
        if (s.equals("Province"))
        {
            b = b(node);
        } else
        {
            if (s.equals("City"))
            {
                a = b(node);
                return;
            }
            if (s.equals("District"))
            {
                c = b(node);
                return;
            }
            if (s.equals("roadList"))
            {
                a(node, arraylist, "Road");
                return;
            }
            if (s.equals("poiList"))
            {
                a(node, arraylist, "poi");
                return;
            }
            if (s.equals("crossPoiList"))
            {
                a(node, arraylist, "cross");
                b(arraylist);
                return;
            }
        }
    }

    protected void a(ArrayList arraylist)
    {
        if (b != null && arraylist.size() == 0)
        {
            arraylist.add(com.mapabc.mapapi.core.e.d());
        }
        arraylist = arraylist.iterator();
_L2:
        Address address;
        if (!arraylist.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        address = (Address)arraylist.next();
        address.setAdminArea(b);
        address.setLocality(a);
        Method method = address.getClass().getMethod("setSubLocality", new Class[] {
            java/lang/String
        });
        if (method != null)
        {
            try
            {
                method.invoke(address, new Object[] {
                    c
                });
            }
            catch (Exception exception) { }
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void a(Node node, ArrayList arraylist)
    {
        node = node.getChildNodes();
        for (int l = 0; l < node.getLength(); l++)
        {
            b(node.item(l), arraylist);
        }

    }

    protected String[] getRequestLines()
    {
        String s;
        try
        {
            s = URLEncoder.encode(String.format(k, new Object[] {
                Double.valueOf(((y)task).f), Double.valueOf(((y)task).g), Integer.valueOf(((y)task).h), Integer.valueOf(500)
            }), "utf-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            unsupportedencodingexception.printStackTrace();
            unsupportedencodingexception = "";
        }
        return (new String[] {
            "&enc=utf-8", (new StringBuilder()).append("&spatialXml=").append(s).toString(), (new StringBuilder()).append("&a_k=").append(getmKey()).toString()
        });
    }

    protected boolean getRequestType()
    {
        return true;
    }

    protected int getServiceCode()
    {
        return 17;
    }

    protected String getUrl()
    {
        return (new StringBuilder()).append(o.a().d()).append("/sisserver?&config=SPAS&resType=xml").toString();
    }
}
