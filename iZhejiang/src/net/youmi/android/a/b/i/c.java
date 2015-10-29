// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.i;

import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.f.g;
import net.youmi.android.a.b.f.l;

// Referenced classes of package net.youmi.android.a.b.i:
//            d

public class c
{

    protected String a;
    protected String b;
    protected boolean c;
    protected List d;
    protected byte e[];
    protected List f;
    protected String g;
    protected InetAddress h;
    private String i;

    public c()
    {
    }

    private String a(Map map)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (map == null)
        {
            stringbuilder.append("can not get host ip");
            return stringbuilder.toString();
        }
        if (map.containsKey("ipv4"))
        {
            String s1;
            for (Iterator iterator = ((List)map.get("ipv4")).iterator(); iterator.hasNext(); stringbuilder.append((new StringBuilder()).append(s1).append(";").toString()))
            {
                s1 = (String)iterator.next();
            }

        }
        if (map.containsKey("ipv6"))
        {
            String s;
            for (map = ((List)map.get("ipv6")).iterator(); map.hasNext(); stringbuilder.append((new StringBuilder()).append(s).append(";").toString()))
            {
                s = (String)map.next();
            }

        }
        return stringbuilder.toString();
    }

    public void a(String s)
    {
        a = s;
    }

    public void a(List list)
    {
        d = list;
    }

    public void a(boolean flag)
    {
        c = flag;
    }

    public void a(byte abyte0[])
    {
        e = abyte0;
    }

    public boolean a()
    {
        return c;
    }

    public List b()
    {
        return d;
    }

    public void b(String s)
    {
        b = s;
    }

    public void b(List list)
    {
        f = list;
    }

    public List c()
    {
        return f;
    }

    public String d()
    {
        if (i == null)
        {
            return "UTF-8";
        } else
        {
            return i;
        }
    }

    public String e()
    {
        return a;
    }

    public String f()
    {
        Object obj;
        g = g();
        obj = new HashMap();
        if (net.youmi.android.a.b.b.e.a(g)) goto _L2; else goto _L1
_L1:
        InetAddress ainetaddress[];
        int j1;
        ainetaddress = InetAddress.getAllByName(g);
        j1 = ainetaddress.length;
        int i1 = 0;
_L9:
        if (i1 >= j1) goto _L4; else goto _L3
_L3:
        InetAddress inetaddress = ainetaddress[i1];
        if (!(inetaddress instanceof Inet4Address)) goto _L6; else goto _L5
_L5:
        if (!((Map) (obj)).containsKey("ipv4"))
        {
            ((Map) (obj)).put("ipv4", new ArrayList());
        }
        ((List)((Map) (obj)).get("ipv4")).add(inetaddress.getHostAddress());
          goto _L7
_L6:
        if (inetaddress instanceof Inet6Address)
        {
            if (!((Map) (obj)).containsKey("ipv6"))
            {
                ((Map) (obj)).put("ipv6", new ArrayList());
            }
            ((List)((Map) (obj)).get("ipv6")).add(inetaddress.getHostAddress());
        }
          goto _L7
        obj;
_L2:
        return "";
_L4:
        obj = a(((Map) (obj)));
        return ((String) (obj));
_L7:
        i1++;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public String g()
    {
        if (!net.youmi.android.a.b.b.e.a(a))
        {
            String s = a.replace("http://", "");
            return s.substring(0, s.indexOf("/"));
        } else
        {
            return "";
        }
    }

    public String h()
    {
        if (!net.youmi.android.a.b.b.e.a(a))
        {
            String s = a.replace("http://", "");
            return s.substring(s.indexOf("/"), s.indexOf("?"));
        } else
        {
            return "";
        }
    }

    public String i()
    {
        if (!net.youmi.android.a.b.b.e.a(a))
        {
            int i1 = a.indexOf("?");
            int j1 = a.length();
            return a.substring(i1, j1);
        } else
        {
            return "";
        }
    }

    public boolean j()
    {
        Object obj;
        g g1;
        obj = new l("223.5.5.5");
        g1 = new g(g);
        h = null;
        UnknownHostException unknownhostexception;
        try
        {
            h = InetAddress.getByAddress(((l) (obj)).a(g1).a());
            obj = new d(this);
            if (!f.contains(obj))
            {
                f.add(obj);
            }
            if (h != null)
            {
                String s = h.getHostAddress();
                a = a.replaceFirst(g, s);
            }
        }
        catch (IOException ioexception) { }
        return h != null;
        unknownhostexception;
        break MISSING_BLOCK_LABEL_106;
    }

    public byte[] k()
    {
        return e;
    }

    public String l()
    {
        return b;
    }
}
