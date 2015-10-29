// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS.tests;

import java.io.PrintStream;
import java.util.Iterator;
import org.xbill.DNS.Name;
import org.xbill.DNS.Zone;

public class primary
{

    public primary()
    {
    }

    public static void main(String args[])
        throws Exception
    {
        int i;
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3 = false;
        boolean flag5 = false;
        boolean flag7 = false;
        boolean flag8 = false;
        i = ((flag8) ? 1 : 0);
        flag = flag5;
        flag2 = flag7;
        flag1 = flag3;
        if (args.length < 2)
        {
            usage();
            flag1 = flag3;
            flag2 = flag7;
            flag = flag5;
            i = ((flag8) ? 1 : 0);
        }
_L5:
        if (args.length - i > 2) goto _L2; else goto _L1
_L1:
        long l;
        long l1;
        int j = i + 1;
        Name name = Name.fromString(args[i], Name.root);
        args = args[j];
        l = System.currentTimeMillis();
        args = new Zone(name, args);
        l1 = System.currentTimeMillis();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_250;
        }
        args = args.AXFR();
_L6:
        if (args.hasNext()) goto _L4; else goto _L3
_L3:
        if (flag1)
        {
            System.out.println((new StringBuilder("; Load time: ")).append(l1 - l).append(" ms").toString());
        }
        return;
_L2:
        boolean flag4;
        boolean flag6;
        if (args[0].equals("-t"))
        {
            flag6 = true;
            flag4 = flag;
        } else
        if (args[0].equals("-a"))
        {
            flag4 = true;
            flag6 = flag1;
        } else
        {
            flag4 = flag;
            flag6 = flag1;
            if (args[0].equals("-i"))
            {
                flag2 = true;
                flag4 = flag;
                flag6 = flag1;
            }
        }
        i++;
        flag = flag4;
        flag1 = flag6;
          goto _L5
_L4:
        System.out.println(args.next());
          goto _L6
        if (flag2)
        {
            args = args.iterator();
            while (args.hasNext()) 
            {
                System.out.println(args.next());
            }
        } else
        {
            System.out.println(args);
        }
          goto _L3
    }

    private static void usage()
    {
        System.out.println("usage: primary [-t] [-a | -i] origin file");
        System.exit(1);
    }
}
