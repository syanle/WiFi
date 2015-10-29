// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ResourceBundle;
import java.util.StringTokenizer;

// Referenced classes of package org.xbill.DNS:
//            TextParseException, Options, Name

public class ResolverConfig
{

    private static ResolverConfig currentConfig;
    private Name searchlist[];
    private String servers[];

    public ResolverConfig()
    {
        servers = null;
        for (searchlist = null; findProperty() || findSunJVM() || servers != null && searchlist != null;)
        {
            return;
        }

        String s = System.getProperty("os.name");
        String s1 = System.getProperty("java.vendor");
        if (s.indexOf("Windows") != -1)
        {
            if (s.indexOf("95") != -1 || s.indexOf("98") != -1 || s.indexOf("ME") != -1)
            {
                find95();
                return;
            } else
            {
                findNT();
                return;
            }
        }
        if (s.indexOf("NetWare") != -1)
        {
            findNetware();
            return;
        }
        if (s1.indexOf("Android") != -1)
        {
            findAndroid();
            return;
        } else
        {
            findUnix();
            return;
        }
    }

    private void addSearch(String s, List list)
    {
        if (Options.check("verbose"))
        {
            System.out.println((new StringBuilder("adding search ")).append(s).toString());
        }
        try
        {
            s = Name.fromString(s, Name.root);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        if (list.contains(s))
        {
            return;
        } else
        {
            list.add(s);
            return;
        }
    }

    private void addServer(String s, List list)
    {
        if (list.contains(s))
        {
            return;
        }
        if (Options.check("verbose"))
        {
            System.out.println((new StringBuilder("adding server ")).append(s).toString());
        }
        list.add(s);
    }

    private void configureFromLists(List list, List list1)
    {
        if (servers == null && list.size() > 0)
        {
            servers = (String[])list.toArray(new String[0]);
        }
        if (searchlist == null && list1.size() > 0)
        {
            searchlist = (Name[])list1.toArray(new Name[0]);
        }
    }

    private void find95()
    {
        try
        {
            Runtime.getRuntime().exec((new StringBuilder("winipcfg /all /batch ")).append("winipcfg.out").toString()).waitFor();
            findWin(new FileInputStream(new File("winipcfg.out")));
            (new File("winipcfg.out")).delete();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void findAndroid()
    {
        ArrayList arraylist;
        BufferedReader bufferedreader;
        arraylist = new ArrayList();
        bufferedreader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop").getInputStream()));
_L1:
        Object obj = bufferedreader.readLine();
        if (obj == null)
        {
            try
            {
                configureFromLists(arraylist, null);
                return;
            }
            catch (Exception exception)
            {
                return;
            }
        }
        obj = new StringTokenizer(((String) (obj)), ":");
        if (((StringTokenizer) (obj)).nextToken().indexOf(".dns") > -1)
        {
            obj = ((StringTokenizer) (obj)).nextToken().replaceAll("[ \\[\\]]", "");
            if ((((String) (obj)).matches("^\\d+(\\.\\d+){3}$") || ((String) (obj)).matches("^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$")) && !arraylist.contains(obj))
            {
                arraylist.add(obj);
            }
        }
          goto _L1
    }

    private void findNT()
    {
        try
        {
            Process process = Runtime.getRuntime().exec("ipconfig /all");
            findWin(process.getInputStream());
            process.destroy();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void findNetware()
    {
        findResolvConf("sys:/etc/resolv.cfg");
    }

    private boolean findProperty()
    {
        ArrayList arraylist;
        ArrayList arraylist1;
        Object obj;
        boolean flag1;
        flag1 = false;
        arraylist = new ArrayList(0);
        arraylist1 = new ArrayList(0);
        obj = System.getProperty("dns.server");
        if (obj == null) goto _L2; else goto _L1
_L1:
        obj = new StringTokenizer(((String) (obj)), ",");
_L5:
        if (((StringTokenizer) (obj)).hasMoreTokens()) goto _L3; else goto _L2
_L2:
        obj = System.getProperty("dns.search");
        if (obj != null)
        {
            boolean flag;
            for (obj = new StringTokenizer(((String) (obj)), ","); ((StringTokenizer) (obj)).hasMoreTokens(); addSearch(((StringTokenizer) (obj)).nextToken(), arraylist1))
            {
                break MISSING_BLOCK_LABEL_123;
            }

        }
        configureFromLists(arraylist, arraylist1);
        flag = flag1;
        if (servers != null)
        {
            flag = flag1;
            if (searchlist != null)
            {
                flag = true;
            }
        }
        return flag;
_L3:
        addServer(((StringTokenizer) (obj)).nextToken(), arraylist);
        if (true) goto _L5; else goto _L4
_L4:
    }

    private void findResolvConf(String s)
    {
        ArrayList arraylist;
        Object obj;
        BufferedReader bufferedreader;
        try
        {
            s = new FileInputStream(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        bufferedreader = new BufferedReader(new InputStreamReader(s));
        s = new ArrayList(0);
        arraylist = new ArrayList(0);
_L1:
        obj = bufferedreader.readLine();
        if (obj == null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception) { }
            configureFromLists(s, arraylist);
            return;
        }
label0:
        {
            if (!((String) (obj)).startsWith("nameserver"))
            {
                break label0;
            }
            obj = new StringTokenizer(((String) (obj)));
            ((StringTokenizer) (obj)).nextToken();
            addServer(((StringTokenizer) (obj)).nextToken(), s);
        }
          goto _L1
        if (!((String) (obj)).startsWith("domain"))
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = new StringTokenizer(((String) (obj)));
        ((StringTokenizer) (obj)).nextToken();
        if (((StringTokenizer) (obj)).hasMoreTokens() && arraylist.isEmpty())
        {
            addSearch(((StringTokenizer) (obj)).nextToken(), arraylist);
        }
          goto _L1
        if (!((String) (obj)).startsWith("search")) goto _L1; else goto _L2
_L2:
        if (!arraylist.isEmpty())
        {
            arraylist.clear();
        }
        obj = new StringTokenizer(((String) (obj)));
        ((StringTokenizer) (obj)).nextToken();
        while (((StringTokenizer) (obj)).hasMoreTokens()) 
        {
            addSearch(((StringTokenizer) (obj)).nextToken(), arraylist);
        }
          goto _L1
    }

    private boolean findSunJVM()
    {
        Object obj;
        ArrayList arraylist;
        Object obj1;
        List list;
        obj = new ArrayList(0);
        arraylist = new ArrayList(0);
        try
        {
            Class aclass[] = new Class[0];
            Object aobj[] = new Object[0];
            Class class1 = Class.forName("sun.net.dns.ResolverConfiguration");
            Object obj2 = class1.getDeclaredMethod("open", aclass).invoke(null, aobj);
            obj1 = (List)class1.getMethod("nameservers", aclass).invoke(obj2, aobj);
            list = (List)class1.getMethod("searchlist", aclass).invoke(obj2, aobj);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return false;
        }
        if (((List) (obj1)).size() == 0)
        {
            return false;
        }
        if (((List) (obj1)).size() <= 0) goto _L2; else goto _L1
_L1:
        obj1 = ((List) (obj1)).iterator();
_L5:
        if (((Iterator) (obj1)).hasNext()) goto _L3; else goto _L2
_L2:
        if (list.size() > 0)
        {
            for (obj1 = list.iterator(); ((Iterator) (obj1)).hasNext(); addSearch((String)((Iterator) (obj1)).next(), arraylist))
            {
                break MISSING_BLOCK_LABEL_190;
            }

        }
        configureFromLists(((List) (obj)), arraylist);
        return true;
_L3:
        addServer((String)((Iterator) (obj1)).next(), ((List) (obj)));
        if (true) goto _L5; else goto _L4
_L4:
    }

    private void findUnix()
    {
        findResolvConf("/etc/resolv.conf");
    }

    private void findWin(InputStream inputstream)
    {
        BufferedReader bufferedreader;
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        Object obj = ResourceBundle.getBundle((new StringBuilder(String.valueOf(org/xbill/DNS/ResolverConfig.getPackage().getName()))).append(".windows.DNSServer").toString());
        String s = ((ResourceBundle) (obj)).getString("host_name");
        String s1 = ((ResourceBundle) (obj)).getString("primary_dns_suffix");
        String s2 = ((ResourceBundle) (obj)).getString("dns_suffix");
        String s3 = ((ResourceBundle) (obj)).getString("dns_servers");
        bufferedreader = new BufferedReader(new InputStreamReader(inputstream));
        ArrayList arraylist;
        ArrayList arraylist1;
        StringTokenizer stringtokenizer;
        String s4;
        boolean flag4;
        try
        {
            arraylist = new ArrayList();
            arraylist1 = new ArrayList();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            try
            {
                bufferedreader.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                return;
            }
        }
        finally { }
        flag1 = false;
        flag = false;
_L10:
        s4 = bufferedreader.readLine();
        if (s4 != null)
        {
            break MISSING_BLOCK_LABEL_133;
        }
        configureFromLists(arraylist, arraylist1);
        try
        {
            bufferedreader.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            return;
        }
        stringtokenizer = new StringTokenizer(s4);
        if (!stringtokenizer.hasMoreTokens())
        {
            flag1 = false;
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        inputstream = stringtokenizer.nextToken();
        flag3 = flag;
        flag2 = flag1;
        if (s4.indexOf(":") != -1)
        {
            flag2 = false;
            flag3 = false;
        }
        if (s4.indexOf(s) == -1)
        {
            break MISSING_BLOCK_LABEL_272;
        }
_L1:
        flag4 = stringtokenizer.hasMoreTokens();
        if (flag4)
        {
            break MISSING_BLOCK_LABEL_263;
        }
        obj = Name.fromString(inputstream, null);
        flag = flag3;
        flag1 = flag2;
        if (((Name) (obj)).labels() == 1)
        {
            continue; /* Loop/switch isn't completed */
        }
        addSearch(inputstream, arraylist1);
        flag = flag3;
        flag1 = flag2;
        continue; /* Loop/switch isn't completed */
        inputstream = stringtokenizer.nextToken();
          goto _L1
        if (s4.indexOf(s1) == -1)
        {
            break MISSING_BLOCK_LABEL_334;
        }
_L2:
        if (stringtokenizer.hasMoreTokens())
        {
            break MISSING_BLOCK_LABEL_325;
        }
        flag = flag3;
        flag1 = flag2;
        if (inputstream.equals(":"))
        {
            continue; /* Loop/switch isn't completed */
        }
        addSearch(inputstream, arraylist1);
        flag = true;
        flag1 = flag2;
        continue; /* Loop/switch isn't completed */
        inputstream = stringtokenizer.nextToken();
          goto _L2
        obj = inputstream;
        if (flag3) goto _L4; else goto _L3
_L3:
        if (s4.indexOf(s2) == -1) goto _L6; else goto _L5
_L5:
        obj = inputstream;
_L4:
        if (stringtokenizer.hasMoreTokens())
        {
            break MISSING_BLOCK_LABEL_396;
        }
        flag = flag3;
        flag1 = flag2;
        if (((String) (obj)).equals(":"))
        {
            continue; /* Loop/switch isn't completed */
        }
        addSearch(((String) (obj)), arraylist1);
        flag = true;
        flag1 = flag2;
        continue; /* Loop/switch isn't completed */
        obj = stringtokenizer.nextToken();
        if (true) goto _L4; else goto _L6
_L6:
        obj = inputstream;
        if (flag2)
        {
            break MISSING_BLOCK_LABEL_433;
        }
        flag = flag3;
        flag1 = flag2;
        if (s4.indexOf(s3) == -1)
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = inputstream;
_L8:
        if (stringtokenizer.hasMoreTokens())
        {
            break MISSING_BLOCK_LABEL_475;
        }
        flag = flag3;
        flag1 = flag2;
        if (((String) (obj)).equals(":"))
        {
            continue; /* Loop/switch isn't completed */
        }
        addServer(((String) (obj)), arraylist);
        flag1 = true;
        flag = flag3;
        continue; /* Loop/switch isn't completed */
        obj = stringtokenizer.nextToken();
        if (true) goto _L8; else goto _L7
_L7:
        try
        {
            bufferedreader.close();
        }
        catch (IOException ioexception) { }
        throw inputstream;
        inputstream;
        flag = flag3;
        flag1 = flag2;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public static ResolverConfig getCurrentConfig()
    {
        org/xbill/DNS/ResolverConfig;
        JVM INSTR monitorenter ;
        ResolverConfig resolverconfig = currentConfig;
        org/xbill/DNS/ResolverConfig;
        JVM INSTR monitorexit ;
        return resolverconfig;
        Exception exception;
        exception;
        throw exception;
    }

    public static void refresh()
    {
        ResolverConfig resolverconfig = new ResolverConfig();
        org/xbill/DNS/ResolverConfig;
        JVM INSTR monitorenter ;
        currentConfig = resolverconfig;
        org/xbill/DNS/ResolverConfig;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        org/xbill/DNS/ResolverConfig;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Name[] searchPath()
    {
        return searchlist;
    }

    public String server()
    {
        if (servers == null)
        {
            return null;
        } else
        {
            return servers[0];
        }
    }

    public String[] servers()
    {
        return servers;
    }

    static 
    {
        refresh();
    }
}
