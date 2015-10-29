// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.PrintStream;

// Referenced classes of package org.xbill.DNS:
//            Options, Name

public class Compression
{
    private static class Entry
    {

        Name name;
        Entry next;
        int pos;

        private Entry()
        {
        }

        Entry(Entry entry)
        {
            this();
        }
    }


    private static final int MAX_POINTER = 16383;
    private static final int TABLE_SIZE = 17;
    private Entry table[];
    private boolean verbose;

    public Compression()
    {
        verbose = Options.check("verbosecompression");
        table = new Entry[17];
    }

    public void add(int i, Name name)
    {
        if (i <= 16383)
        {
            int j = (name.hashCode() & 0x7fffffff) % 17;
            Entry entry = new Entry(null);
            entry.name = name;
            entry.pos = i;
            entry.next = table[j];
            table[j] = entry;
            if (verbose)
            {
                System.err.println((new StringBuilder("Adding ")).append(name).append(" at ").append(i).toString());
                return;
            }
        }
    }

    public int get(Name name)
    {
        int j = name.hashCode();
        int i = -1;
        Entry entry = table[(j & 0x7fffffff) % 17];
        do
        {
            if (entry == null)
            {
                if (verbose)
                {
                    System.err.println((new StringBuilder("Looking for ")).append(name).append(", found ").append(i).toString());
                }
                return i;
            }
            if (entry.name.equals(name))
            {
                i = entry.pos;
            }
            entry = entry.next;
        } while (true);
    }
}
