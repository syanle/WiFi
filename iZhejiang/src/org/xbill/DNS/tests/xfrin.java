// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS.tests;

import java.io.PrintStream;
import java.util.Iterator;
import java.util.List;
import org.xbill.DNS.Lookup;
import org.xbill.DNS.Name;
import org.xbill.DNS.Record;
import org.xbill.DNS.TSIG;
import org.xbill.DNS.ZoneTransferIn;

public class xfrin
{

    public xfrin()
    {
    }

    public static void main(String args[])
        throws Exception
    {
        Object obj;
        Object obj2;
        int i;
        int j;
        int l;
        boolean flag;
        obj2 = null;
        j = -1;
        obj = null;
        l = 53;
        flag = false;
        i = 0;
_L14:
        if (i < args.length) goto _L2; else goto _L1
_L1:
        if (i >= args.length)
        {
            usage("no zone name specified");
        }
        Object obj3 = Name.fromString(args[i]);
        args = ((String []) (obj));
        if (obj == null)
        {
            args = new Lookup(((Name) (obj3)), 2);
            obj = args.run();
            if (obj == null)
            {
                System.out.println((new StringBuilder("failed to look up NS record: ")).append(args.getErrorString()).toString());
                System.exit(1);
            }
            args = obj[0].rdataToString();
            System.out.println((new StringBuilder("sending to server '")).append(args).append("'").toString());
        }
        Object obj4;
        int k;
        int i1;
        int j1;
        boolean flag1;
        if (j >= 0)
        {
            args = ZoneTransferIn.newIXFR(((Name) (obj3)), j, flag, args, l, ((TSIG) (obj2)));
        } else
        {
            args = ZoneTransferIn.newAXFR(((Name) (obj3)), args, l, ((TSIG) (obj2)));
        }
        obj = args.run();
        if (!args.isAXFR()) goto _L4; else goto _L3
_L3:
        if (j >= 0)
        {
            System.out.println("AXFR-like IXFR response");
        } else
        {
            System.out.println("AXFR response");
        }
        args = ((List) (obj)).iterator();
_L11:
        if (args.hasNext()) goto _L6; else goto _L5
_L5:
        return;
_L2:
        if (args[i].equals("-i"))
        {
            j = i + 1;
            j1 = Integer.parseInt(args[j]);
            flag1 = flag;
            obj3 = obj;
            k = l;
            obj4 = obj2;
            i = j;
            i1 = j1;
            if (j1 < 0)
            {
                usage("invalid serial number");
                i1 = j1;
                i = j;
                obj4 = obj2;
                k = l;
                obj3 = obj;
                flag1 = flag;
            }
        } else
        if (args[i].equals("-k"))
        {
            i++;
            obj2 = args[i];
            k = ((String) (obj2)).indexOf('/');
            if (k < 0)
            {
                usage("invalid key");
            }
            obj4 = new TSIG(((String) (obj2)).substring(0, k), ((String) (obj2)).substring(k + 1));
            flag1 = flag;
            obj3 = obj;
            k = l;
            i1 = j;
        } else
        {
label0:
            {
                if (!args[i].equals("-s"))
                {
                    break label0;
                }
                i++;
                obj3 = args[i];
                flag1 = flag;
                k = l;
                obj4 = obj2;
                i1 = j;
            }
        }
_L9:
        i++;
        flag = flag1;
        obj = obj3;
        l = k;
        obj2 = obj4;
        j = i1;
        continue; /* Loop/switch isn't completed */
        if (!args[i].equals("-p"))
        {
            break MISSING_BLOCK_LABEL_510;
        }
        l = i + 1;
        j1 = Integer.parseInt(args[l]);
        if (j1 < 0) goto _L8; else goto _L7
_L7:
        flag1 = flag;
        obj3 = obj;
        k = j1;
        obj4 = obj2;
        i = l;
        i1 = j;
        if (j1 <= 65535) goto _L9; else goto _L8
_L8:
        usage("invalid port");
        flag1 = flag;
        obj3 = obj;
        k = j1;
        obj4 = obj2;
        i = l;
        i1 = j;
          goto _L9
        if (!args[i].equals("-f"))
        {
            continue; /* Loop/switch isn't completed */
        }
        flag1 = true;
        obj3 = obj;
        k = l;
        obj4 = obj2;
        i1 = j;
          goto _L9
        if (!args[i].startsWith("-")) goto _L1; else goto _L10
_L10:
        usage("invalid option");
        flag1 = flag;
        obj3 = obj;
        k = l;
        obj4 = obj2;
        i1 = j;
          goto _L9
          goto _L1
_L6:
        System.out.println(args.next());
          goto _L11
_L4:
        if (!args.isIXFR())
        {
            continue; /* Loop/switch isn't completed */
        }
        System.out.println("IXFR response");
        args = ((List) (obj)).iterator();
        while (args.hasNext()) 
        {
label1:
            {
                Object obj1 = (org.xbill.DNS.ZoneTransferIn.Delta)args.next();
                System.out.println((new StringBuilder("delta from ")).append(((org.xbill.DNS.ZoneTransferIn.Delta) (obj1)).start).append(" to ").append(((org.xbill.DNS.ZoneTransferIn.Delta) (obj1)).end).toString());
                System.out.println("deletes");
                for (Iterator iterator = ((org.xbill.DNS.ZoneTransferIn.Delta) (obj1)).deletes.iterator(); iterator.hasNext(); System.out.println(iterator.next()))
                {
                    break label1;
                }

                System.out.println("adds");
                obj1 = ((org.xbill.DNS.ZoneTransferIn.Delta) (obj1)).adds.iterator();
                while (((Iterator) (obj1)).hasNext()) 
                {
                    System.out.println(((Iterator) (obj1)).next());
                }
            }
        }
          goto _L5
        if (!args.isCurrent()) goto _L5; else goto _L12
_L12:
        System.out.println("up to date");
        return;
        if (true) goto _L14; else goto _L13
_L13:
    }

    private static void usage(String s)
    {
        System.out.println((new StringBuilder("Error: ")).append(s).toString());
        System.out.println("usage: xfrin [-i serial] [-k keyname/secret] [-s server] [-p port] [-f] zone");
        System.exit(1);
    }
}
