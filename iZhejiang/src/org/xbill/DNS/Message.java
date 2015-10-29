// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

// Referenced classes of package org.xbill.DNS:
//            Record, RRset, Header, WireParseException, 
//            DNSInput, SIGRecord, Update, Name, 
//            DNSOutput, TSIG, Compression, TSIGRecord, 
//            OPTRecord, Type, DClass, Section

public class Message
    implements Cloneable
{

    public static final int MAXLENGTH = 65535;
    static final int TSIG_FAILED = 4;
    static final int TSIG_INTERMEDIATE = 2;
    static final int TSIG_SIGNED = 3;
    static final int TSIG_UNSIGNED = 0;
    static final int TSIG_VERIFIED = 1;
    private static RRset emptyRRsetArray[] = new RRset[0];
    private static Record emptyRecordArray[] = new Record[0];
    private Header header;
    private TSIGRecord querytsig;
    private List sections[];
    int sig0start;
    private int size;
    int tsigState;
    private int tsigerror;
    private TSIG tsigkey;
    int tsigstart;

    public Message()
    {
        this(new Header());
    }

    public Message(int i)
    {
        this(new Header(i));
    }

    Message(DNSInput dnsinput)
        throws IOException
    {
        int i;
        boolean flag;
        boolean flag1;
        this(new Header(dnsinput));
        if (header.getOpcode() == 5)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        flag1 = header.getFlag(6);
        i = 0;
_L8:
        if (i < 4) goto _L2; else goto _L1
_L1:
        size = dnsinput.current();
        return;
_L2:
        int k = header.getCount(i);
        if (k <= 0) goto _L4; else goto _L3
_L3:
        sections[i] = new ArrayList(k);
          goto _L4
_L6:
        int l = dnsinput.current();
        Record record = Record.fromWire(dnsinput, i, flag);
        sections[i].add(record);
        if (record.getType() == 250)
        {
            tsigstart = l;
        }
        if (record.getType() == 24 && ((SIGRecord)record).getTypeCovered() == 0)
        {
            sig0start = l;
        }
        int j;
        j++;
        continue; /* Loop/switch isn't completed */
        WireParseException wireparseexception;
        wireparseexception;
        if (!flag1)
        {
            throw wireparseexception;
        }
          goto _L1
_L4:
        j = 0;
        if (j < k) goto _L6; else goto _L5
_L5:
        i++;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private Message(Header header1)
    {
        sections = new List[4];
        header = header1;
    }

    public Message(byte abyte0[])
        throws IOException
    {
        this(new DNSInput(abyte0));
    }

    public static Message newQuery(Record record)
    {
        Message message = new Message();
        message.header.setOpcode(0);
        message.header.setFlag(7);
        message.addRecord(record, 0);
        return message;
    }

    public static Message newUpdate(Name name)
    {
        return new Update(name);
    }

    private static boolean sameSet(Record record, Record record1)
    {
        return record.getRRsetType() == record1.getRRsetType() && record.getDClass() == record1.getDClass() && record.getName().equals(record1.getName());
    }

    private int sectionToWire(DNSOutput dnsoutput, int i, Compression compression, int j)
    {
        int l1 = sections[i].size();
        int j1 = dnsoutput.current();
        int l = 0;
        Record record = null;
        int k = 0;
        do
        {
            if (k >= l1)
            {
                return 0;
            }
            Record record1 = (Record)sections[i].get(k);
            int k1 = j1;
            int i1 = l;
            if (record != null)
            {
                k1 = j1;
                i1 = l;
                if (!sameSet(record1, record))
                {
                    k1 = dnsoutput.current();
                    i1 = k;
                }
            }
            record = record1;
            record1.toWire(dnsoutput, i, compression);
            if (dnsoutput.current() > j)
            {
                dnsoutput.jump(k1);
                return l1 - i1;
            }
            k++;
            j1 = k1;
            l = i1;
        } while (true);
    }

    private boolean toWire(DNSOutput dnsoutput, int i)
    {
        Header header1;
        Header header2;
        Compression compression;
        int j;
        int k;
        if (i < 12)
        {
            return false;
        }
        header2 = null;
        header1 = null;
        j = i;
        i = j;
        if (tsigkey != null)
        {
            i = j - tsigkey.recordLength();
        }
        k = dnsoutput.current();
        header.toWire(dnsoutput);
        compression = new Compression();
        j = 0;
_L5:
        if (j < 4) goto _L2; else goto _L1
_L1:
        if (tsigkey != null)
        {
            TSIGRecord tsigrecord = tsigkey.generate(this, dnsoutput.toByteArray(), tsigerror, querytsig);
            header2 = header1;
            if (header1 == null)
            {
                header2 = (Header)header.clone();
            }
            tsigrecord.toWire(dnsoutput, 3, compression);
            header2.incCount(3);
            dnsoutput.save();
            dnsoutput.jump(k);
            header2.toWire(dnsoutput);
            dnsoutput.restore();
        }
        return true;
_L2:
        if (sections[j] != null) goto _L4; else goto _L3
_L3:
        int l;
        j++;
          goto _L5
_L4:
        if ((l = sectionToWire(dnsoutput, j, compression, i)) == 0) goto _L3; else goto _L6
_L6:
        if (j == 3) goto _L1; else goto _L7
_L7:
        header1 = header2;
        if (true)
        {
            header1 = (Header)header.clone();
        }
        header1.setFlag(6);
        header1.setCount(j, header1.getCount(j) - l);
        i = j + 1;
_L8:
label0:
        {
            if (i < 4)
            {
                break label0;
            }
            dnsoutput.save();
            dnsoutput.jump(k);
            header1.toWire(dnsoutput);
            dnsoutput.restore();
        }
          goto _L1
        header1.setCount(i, 0);
        i++;
          goto _L8
    }

    public void addRecord(Record record, int i)
    {
        if (sections[i] == null)
        {
            sections[i] = new LinkedList();
        }
        header.incCount(i);
        sections[i].add(record);
    }

    public Object clone()
    {
        Message message = new Message();
        int i = 0;
        do
        {
            if (i >= sections.length)
            {
                message.header = (Header)header.clone();
                message.size = size;
                return message;
            }
            if (sections[i] != null)
            {
                message.sections[i] = new LinkedList(sections[i]);
            }
            i++;
        } while (true);
    }

    public boolean findRRset(Name name, int i)
    {
        boolean flag1 = true;
        boolean flag = flag1;
        if (!findRRset(name, i, 1))
        {
            flag = flag1;
            if (!findRRset(name, i, 2))
            {
                flag = flag1;
                if (!findRRset(name, i, 3))
                {
                    flag = false;
                }
            }
        }
        return flag;
    }

    public boolean findRRset(Name name, int i, int j)
    {
        if (sections[j] != null)
        {
            int k = 0;
            while (k < sections[j].size()) 
            {
                Record record = (Record)sections[j].get(k);
                if (record.getType() == i && name.equals(record.getName()))
                {
                    return true;
                }
                k++;
            }
        }
        return false;
    }

    public boolean findRecord(Record record)
    {
        int i = 1;
        do
        {
            if (i > 3)
            {
                return false;
            }
            if (sections[i] != null && sections[i].contains(record))
            {
                return true;
            }
            i++;
        } while (true);
    }

    public boolean findRecord(Record record, int i)
    {
        return sections[i] != null && sections[i].contains(record);
    }

    public Header getHeader()
    {
        return header;
    }

    public OPTRecord getOPT()
    {
        Record arecord[] = getSectionArray(3);
        int i = 0;
        do
        {
            if (i >= arecord.length)
            {
                return null;
            }
            if (arecord[i] instanceof OPTRecord)
            {
                return (OPTRecord)arecord[i];
            }
            i++;
        } while (true);
    }

    public Record getQuestion()
    {
        List list = sections[0];
        if (list == null || list.size() == 0)
        {
            return null;
        } else
        {
            return (Record)list.get(0);
        }
    }

    public int getRcode()
    {
        int j = header.getRcode();
        OPTRecord optrecord = getOPT();
        int i = j;
        if (optrecord != null)
        {
            i = j + (optrecord.getExtendedRcode() << 4);
        }
        return i;
    }

    public Record[] getSectionArray(int i)
    {
        if (sections[i] == null)
        {
            return emptyRecordArray;
        } else
        {
            List list = sections[i];
            return (Record[])list.toArray(new Record[list.size()]);
        }
    }

    public RRset[] getSectionRRsets(int i)
    {
        LinkedList linkedlist;
        Record arecord[];
        HashSet hashset;
        if (sections[i] == null)
        {
            return emptyRRsetArray;
        }
        linkedlist = new LinkedList();
        arecord = getSectionArray(i);
        hashset = new HashSet();
        i = 0;
_L3:
        Name name;
        int j;
        boolean flag;
        if (i >= arecord.length)
        {
            return (RRset[])linkedlist.toArray(new RRset[linkedlist.size()]);
        }
        name = arecord[i].getName();
        flag = true;
        j = ((flag) ? 1 : 0);
        if (!hashset.contains(name)) goto _L2; else goto _L1
_L1:
        j = linkedlist.size() - 1;
_L4:
        if (j < 0)
        {
            j = ((flag) ? 1 : 0);
        } else
        {
label0:
            {
                RRset rrset = (RRset)linkedlist.get(j);
                if (rrset.getType() != arecord[i].getRRsetType() || rrset.getDClass() != arecord[i].getDClass() || !rrset.getName().equals(name))
                {
                    break label0;
                }
                rrset.addRR(arecord[i]);
                j = 0;
            }
        }
_L2:
        if (j != 0)
        {
            linkedlist.add(new RRset(arecord[i]));
            hashset.add(name);
        }
        i++;
          goto _L3
        j--;
          goto _L4
    }

    public TSIGRecord getTSIG()
    {
        int i = header.getCount(3);
        if (i == 0)
        {
            return null;
        }
        Record record = (Record)sections[3].get(i - 1);
        if (record.type != 250)
        {
            return null;
        } else
        {
            return (TSIGRecord)record;
        }
    }

    public boolean isSigned()
    {
        boolean flag1 = true;
        boolean flag = flag1;
        if (tsigState != 3)
        {
            flag = flag1;
            if (tsigState != 1)
            {
                flag = flag1;
                if (tsigState != 4)
                {
                    flag = false;
                }
            }
        }
        return flag;
    }

    public boolean isVerified()
    {
        return tsigState == 1;
    }

    public int numBytes()
    {
        return size;
    }

    public void removeAllRecords(int i)
    {
        sections[i] = null;
        header.setCount(i, 0);
    }

    public boolean removeRecord(Record record, int i)
    {
        if (sections[i] != null && sections[i].remove(record))
        {
            header.decCount(i);
            return true;
        } else
        {
            return false;
        }
    }

    public String sectionToString(int i)
    {
        if (i > 3)
        {
            return null;
        }
        StringBuffer stringbuffer = new StringBuffer();
        Record arecord[] = getSectionArray(i);
        int j = 0;
        do
        {
            if (j >= arecord.length)
            {
                return stringbuffer.toString();
            }
            Record record = arecord[j];
            if (i == 0)
            {
                stringbuffer.append((new StringBuilder(";;\t")).append(record.name).toString());
                stringbuffer.append((new StringBuilder(", type = ")).append(Type.string(record.type)).toString());
                stringbuffer.append((new StringBuilder(", class = ")).append(DClass.string(record.dclass)).toString());
            } else
            {
                stringbuffer.append(record);
            }
            stringbuffer.append("\n");
            j++;
        } while (true);
    }

    public void setHeader(Header header1)
    {
        header = header1;
    }

    public void setTSIG(TSIG tsig, int i, TSIGRecord tsigrecord)
    {
        tsigkey = tsig;
        tsigerror = i;
        querytsig = tsigrecord;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        int i;
        if (getOPT() != null)
        {
            stringbuffer.append((new StringBuilder(String.valueOf(header.toStringWithRcode(getRcode())))).append("\n").toString());
        } else
        {
            stringbuffer.append((new StringBuilder()).append(header).append("\n").toString());
        }
        if (isSigned())
        {
            stringbuffer.append(";; TSIG ");
            if (isVerified())
            {
                stringbuffer.append("ok");
            } else
            {
                stringbuffer.append("invalid");
            }
            stringbuffer.append('\n');
        }
        i = 0;
        do
        {
            if (i >= 4)
            {
                stringbuffer.append((new StringBuilder(";; Message size: ")).append(numBytes()).append(" bytes").toString());
                return stringbuffer.toString();
            }
            if (header.getOpcode() != 5)
            {
                stringbuffer.append((new StringBuilder(";; ")).append(Section.longString(i)).append(":\n").toString());
            } else
            {
                stringbuffer.append((new StringBuilder(";; ")).append(Section.updString(i)).append(":\n").toString());
            }
            stringbuffer.append((new StringBuilder(String.valueOf(sectionToString(i)))).append("\n").toString());
            i++;
        } while (true);
    }

    void toWire(DNSOutput dnsoutput)
    {
        Compression compression;
        int i;
        header.toWire(dnsoutput);
        compression = new Compression();
        i = 0;
_L2:
        if (i >= 4)
        {
            return;
        }
        if (sections[i] != null)
        {
            break; /* Loop/switch isn't completed */
        }
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        int j = 0;
        while (j < sections[i].size()) 
        {
            ((Record)sections[i].get(j)).toWire(dnsoutput, i, compression);
            j++;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public byte[] toWire()
    {
        DNSOutput dnsoutput = new DNSOutput();
        toWire(dnsoutput);
        size = dnsoutput.current();
        return dnsoutput.toByteArray();
    }

    public byte[] toWire(int i)
    {
        DNSOutput dnsoutput = new DNSOutput();
        toWire(dnsoutput, i);
        size = dnsoutput.current();
        return dnsoutput.toByteArray();
    }

}
