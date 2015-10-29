// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xbill.DNS.utils.base16;

// Referenced classes of package org.xbill.DNS:
//            Record, WireParseException, Tokenizer, Address, 
//            DNSInput, DNSOutput, Name, Compression

public class APLRecord extends Record
{
    public static class Element
    {

        public final Object address;
        public final int family;
        public final boolean negative;
        public final int prefixLength;

        public boolean equals(Object obj)
        {
            if (obj != null && (obj instanceof Element))
            {
                if (family == ((Element) (obj = (Element)obj)).family && negative == ((Element) (obj)).negative && prefixLength == ((Element) (obj)).prefixLength && address.equals(((Element) (obj)).address))
                {
                    return true;
                }
            }
            return false;
        }

        public int hashCode()
        {
            int j = address.hashCode();
            int k = prefixLength;
            int i;
            if (negative)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            return i + (k + j);
        }

        public String toString()
        {
            StringBuffer stringbuffer = new StringBuffer();
            if (negative)
            {
                stringbuffer.append("!");
            }
            stringbuffer.append(family);
            stringbuffer.append(":");
            if (family == 1 || family == 2)
            {
                stringbuffer.append(((InetAddress)address).getHostAddress());
            } else
            {
                stringbuffer.append(base16.toString((byte[])address));
            }
            stringbuffer.append("/");
            stringbuffer.append(prefixLength);
            return stringbuffer.toString();
        }

        private Element(int i, boolean flag, Object obj, int j)
        {
            family = i;
            negative = flag;
            address = obj;
            prefixLength = j;
            if (!APLRecord.validatePrefixLength(i, j))
            {
                throw new IllegalArgumentException("invalid prefix length");
            } else
            {
                return;
            }
        }

        Element(int i, boolean flag, Object obj, int j, Element element)
        {
            this(i, flag, obj, j);
        }

        public Element(boolean flag, InetAddress inetaddress, int i)
        {
            this(Address.familyOf(inetaddress), flag, inetaddress, i);
        }
    }


    private static final long serialVersionUID = 0xed4a531451758048L;
    private List elements;

    APLRecord()
    {
    }

    public APLRecord(Name name, int i, long l, List list)
    {
        super(name, 42, i, l);
        elements = new ArrayList(list.size());
        name = list.iterator();
        do
        {
            if (!name.hasNext())
            {
                return;
            }
            list = ((List) (name.next()));
            if (!(list instanceof Element))
            {
                throw new IllegalArgumentException("illegal element");
            }
            list = (Element)list;
            if (((Element) (list)).family != 1 && ((Element) (list)).family != 2)
            {
                throw new IllegalArgumentException("unknown family");
            }
            elements.add(list);
        } while (true);
    }

    private static int addressLength(byte abyte0[])
    {
        int i = abyte0.length - 1;
        do
        {
            if (i < 0)
            {
                return 0;
            }
            if (abyte0[i] != 0)
            {
                return i + 1;
            }
            i--;
        } while (true);
    }

    private static byte[] parseAddress(byte abyte0[], int i)
        throws WireParseException
    {
        if (abyte0.length > i)
        {
            throw new WireParseException("invalid address length");
        }
        if (abyte0.length == i)
        {
            return abyte0;
        } else
        {
            byte abyte1[] = new byte[i];
            System.arraycopy(abyte0, 0, abyte1, 0, abyte0.length);
            return abyte1;
        }
    }

    private static boolean validatePrefixLength(int i, int j)
    {
        while (j < 0 || j >= 256 || i == 1 && j > 32 || i == 2 && j > 128) 
        {
            return false;
        }
        return true;
    }

    public List getElements()
    {
        return elements;
    }

    Record getObject()
    {
        return new APLRecord();
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        elements = new ArrayList(1);
        do
        {
            name = tokenizer.get();
            if (!name.isString())
            {
                tokenizer.unget();
                return;
            }
            boolean flag = false;
            String s1 = ((Tokenizer.Token) (name)).value;
            int i = 0;
            if (s1.startsWith("!"))
            {
                flag = true;
                i = 1;
            }
            int j = s1.indexOf(':', i);
            if (j < 0)
            {
                throw tokenizer.exception("invalid address prefix element");
            }
            int k = s1.indexOf('/', j);
            if (k < 0)
            {
                throw tokenizer.exception("invalid address prefix element");
            }
            String s = s1.substring(i, j);
            name = s1.substring(j + 1, k);
            s1 = s1.substring(k + 1);
            try
            {
                i = Integer.parseInt(s);
            }
            // Misplaced declaration of an exception variable
            catch (Name name)
            {
                throw tokenizer.exception("invalid family");
            }
            if (i != 1 && i != 2)
            {
                throw tokenizer.exception("unknown family");
            }
            try
            {
                j = Integer.parseInt(s1);
            }
            // Misplaced declaration of an exception variable
            catch (Name name)
            {
                throw tokenizer.exception("invalid prefix length");
            }
            if (!validatePrefixLength(i, j))
            {
                throw tokenizer.exception("invalid prefix length");
            }
            byte abyte0[] = Address.toByteArray(name, i);
            if (abyte0 == null)
            {
                throw tokenizer.exception((new StringBuilder("invalid IP address ")).append(name).toString());
            }
            name = InetAddress.getByAddress(abyte0);
            elements.add(new Element(flag, name, j));
        } while (true);
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        elements = new ArrayList(1);
        do
        {
            if (dnsinput.remaining() == 0)
            {
                return;
            }
            int i = dnsinput.readU16();
            int j = dnsinput.readU8();
            int k = dnsinput.readU8();
            Object obj;
            boolean flag;
            if ((k & 0x80) != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            obj = dnsinput.readByteArray(k & 0xffffff7f);
            if (!validatePrefixLength(i, j))
            {
                throw new WireParseException("invalid prefix length");
            }
            if (i == 1 || i == 2)
            {
                obj = new Element(flag, InetAddress.getByAddress(parseAddress(((byte []) (obj)), Address.addressLength(i))), j);
            } else
            {
                obj = new Element(i, flag, obj, j, null);
            }
            elements.add(obj);
        } while (true);
    }

    String rrToString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        Iterator iterator = elements.iterator();
        do
        {
            do
            {
                if (!iterator.hasNext())
                {
                    return stringbuffer.toString();
                }
                stringbuffer.append((Element)iterator.next());
            } while (!iterator.hasNext());
            stringbuffer.append(" ");
        } while (true);
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        Iterator iterator = elements.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            Element element = (Element)iterator.next();
            int i;
            int j;
            int k;
            if (element.family == 1 || element.family == 2)
            {
                compression = ((InetAddress)element.address).getAddress();
                i = addressLength(compression);
            } else
            {
                compression = (byte[])element.address;
                i = compression.length;
            }
            j = i;
            k = j;
            if (element.negative)
            {
                k = j | 0x80;
            }
            dnsoutput.writeU16(element.family);
            dnsoutput.writeU8(element.prefixLength);
            dnsoutput.writeU8(k);
            dnsoutput.writeByteArray(compression, 0, i);
        } while (true);
    }

}
