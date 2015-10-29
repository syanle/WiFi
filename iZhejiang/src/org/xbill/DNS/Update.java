// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.util.Iterator;

// Referenced classes of package org.xbill.DNS:
//            Message, Name, RelativeNameException, DClass, 
//            Header, Record, RRset, Tokenizer

public class Update extends Message
{

    private int dclass;
    private Name origin;

    public Update(Name name)
    {
        this(name, 1);
    }

    public Update(Name name, int i)
    {
        if (!name.isAbsolute())
        {
            throw new RelativeNameException(name);
        } else
        {
            DClass.check(i);
            getHeader().setOpcode(5);
            addRecord(Record.newRecord(name, 6, 1), 0);
            origin = name;
            dclass = i;
            return;
        }
    }

    private void newPrereq(Record record)
    {
        addRecord(record, 1);
    }

    private void newUpdate(Record record)
    {
        addRecord(record, 2);
    }

    public void absent(Name name)
    {
        newPrereq(Record.newRecord(name, 255, 254, 0L));
    }

    public void absent(Name name, int i)
    {
        newPrereq(Record.newRecord(name, i, 254, 0L));
    }

    public void add(Name name, int i, long l, String s)
        throws IOException
    {
        newUpdate(Record.fromString(name, i, dclass, l, s, origin));
    }

    public void add(Name name, int i, long l, Tokenizer tokenizer)
        throws IOException
    {
        newUpdate(Record.fromString(name, i, dclass, l, tokenizer, origin));
    }

    public void add(RRset rrset)
    {
        rrset = rrset.rrs();
        do
        {
            if (!rrset.hasNext())
            {
                return;
            }
            add((Record)rrset.next());
        } while (true);
    }

    public void add(Record record)
    {
        newUpdate(record);
    }

    public void add(Record arecord[])
    {
        int i = 0;
        do
        {
            if (i >= arecord.length)
            {
                return;
            }
            add(arecord[i]);
            i++;
        } while (true);
    }

    public void delete(Name name)
    {
        newUpdate(Record.newRecord(name, 255, 255, 0L));
    }

    public void delete(Name name, int i)
    {
        newUpdate(Record.newRecord(name, i, 255, 0L));
    }

    public void delete(Name name, int i, String s)
        throws IOException
    {
        newUpdate(Record.fromString(name, i, 254, 0L, s, origin));
    }

    public void delete(Name name, int i, Tokenizer tokenizer)
        throws IOException
    {
        newUpdate(Record.fromString(name, i, 254, 0L, tokenizer, origin));
    }

    public void delete(RRset rrset)
    {
        rrset = rrset.rrs();
        do
        {
            if (!rrset.hasNext())
            {
                return;
            }
            delete((Record)rrset.next());
        } while (true);
    }

    public void delete(Record record)
    {
        newUpdate(record.withDClass(254, 0L));
    }

    public void delete(Record arecord[])
    {
        int i = 0;
        do
        {
            if (i >= arecord.length)
            {
                return;
            }
            delete(arecord[i]);
            i++;
        } while (true);
    }

    public void present(Name name)
    {
        newPrereq(Record.newRecord(name, 255, 255, 0L));
    }

    public void present(Name name, int i)
    {
        newPrereq(Record.newRecord(name, i, 255, 0L));
    }

    public void present(Name name, int i, String s)
        throws IOException
    {
        newPrereq(Record.fromString(name, i, dclass, 0L, s, origin));
    }

    public void present(Name name, int i, Tokenizer tokenizer)
        throws IOException
    {
        newPrereq(Record.fromString(name, i, dclass, 0L, tokenizer, origin));
    }

    public void present(Record record)
    {
        newPrereq(record);
    }

    public void replace(Name name, int i, long l, String s)
        throws IOException
    {
        delete(name, i);
        add(name, i, l, s);
    }

    public void replace(Name name, int i, long l, Tokenizer tokenizer)
        throws IOException
    {
        delete(name, i);
        add(name, i, l, tokenizer);
    }

    public void replace(RRset rrset)
    {
        delete(rrset.getName(), rrset.getType());
        rrset = rrset.rrs();
        do
        {
            if (!rrset.hasNext())
            {
                return;
            }
            add((Record)rrset.next());
        } while (true);
    }

    public void replace(Record record)
    {
        delete(record.getName(), record.getType());
        add(record);
    }

    public void replace(Record arecord[])
    {
        int i = 0;
        do
        {
            if (i >= arecord.length)
            {
                return;
            }
            replace(arecord[i]);
            i++;
        } while (true);
    }
}
