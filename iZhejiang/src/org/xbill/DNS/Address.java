// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;

// Referenced classes of package org.xbill.DNS:
//            ARecord, Lookup, ReverseMap, PTRRecord, 
//            Name, TextParseException, Record

public final class Address
{

    public static final int IPv4 = 1;
    public static final int IPv6 = 2;

    private Address()
    {
    }

    private static InetAddress addrFromRecord(String s, Record record)
        throws UnknownHostException
    {
        return InetAddress.getByAddress(s, ((ARecord)record).getAddress().getAddress());
    }

    public static int addressLength(int i)
    {
        if (i == 1)
        {
            return 4;
        }
        if (i == 2)
        {
            return 16;
        } else
        {
            throw new IllegalArgumentException("unknown address family");
        }
    }

    public static int familyOf(InetAddress inetaddress)
    {
        if (inetaddress instanceof Inet4Address)
        {
            return 1;
        }
        if (inetaddress instanceof Inet6Address)
        {
            return 2;
        } else
        {
            throw new IllegalArgumentException("unknown address family");
        }
    }

    public static InetAddress[] getAllByName(String s)
        throws UnknownHostException
    {
        InetAddress ainetaddress[];
        InetAddress inetaddress;
        try
        {
            inetaddress = getByAddress(s);
            ainetaddress = new InetAddress[1];
        }
        catch (UnknownHostException unknownhostexception)
        {
            Record arecord[] = lookupHostName(s);
            InetAddress ainetaddress1[] = new InetAddress[arecord.length];
            int i = 0;
            do
            {
                unknownhostexception = ainetaddress1;
                if (i >= arecord.length)
                {
                    continue;
                }
                ainetaddress1[i] = addrFromRecord(s, arecord[i]);
                i++;
            } while (true);
        }
        ainetaddress[0] = inetaddress;
        return ainetaddress;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_14;
_L1:
    }

    public static InetAddress getByAddress(String s)
        throws UnknownHostException
    {
        byte abyte0[] = toByteArray(s, 1);
        if (abyte0 != null)
        {
            return InetAddress.getByAddress(abyte0);
        }
        abyte0 = toByteArray(s, 2);
        if (abyte0 != null)
        {
            return InetAddress.getByAddress(abyte0);
        } else
        {
            throw new UnknownHostException((new StringBuilder("Invalid address: ")).append(s).toString());
        }
    }

    public static InetAddress getByAddress(String s, int i)
        throws UnknownHostException
    {
        if (i != 1 && i != 2)
        {
            throw new IllegalArgumentException("unknown address family");
        }
        byte abyte0[] = toByteArray(s, i);
        if (abyte0 != null)
        {
            return InetAddress.getByAddress(abyte0);
        } else
        {
            throw new UnknownHostException((new StringBuilder("Invalid address: ")).append(s).toString());
        }
    }

    public static InetAddress getByName(String s)
        throws UnknownHostException
    {
        InetAddress inetaddress;
        try
        {
            inetaddress = getByAddress(s);
        }
        catch (UnknownHostException unknownhostexception)
        {
            return addrFromRecord(s, lookupHostName(s)[0]);
        }
        return inetaddress;
    }

    public static String getHostName(InetAddress inetaddress)
        throws UnknownHostException
    {
        inetaddress = (new Lookup(ReverseMap.fromAddress(inetaddress), 12)).run();
        if (inetaddress == null)
        {
            throw new UnknownHostException("unknown address");
        } else
        {
            return ((PTRRecord)inetaddress[0]).getTarget().toString();
        }
    }

    public static boolean isDottedQuad(String s)
    {
        return toByteArray(s, 1) != null;
    }

    private static Record[] lookupHostName(String s)
        throws UnknownHostException
    {
        try
        {
            s = (new Lookup(s)).run();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new UnknownHostException("invalid name");
        }
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        throw new UnknownHostException("unknown host");
        return s;
    }

    private static byte[] parseV4(String s)
    {
        byte abyte0[];
        int i;
        int j;
        int k;
label0:
        {
            abyte0 = new byte[4];
            int j1 = s.length();
            k = 0;
            j = 0;
            int l = 0;
            i = 0;
            do
            {
                if (l >= j1)
                {
                    if (i != 3)
                    {
                        return null;
                    }
                    break label0;
                }
                int i1 = s.charAt(l);
                if (i1 >= '0' && i1 <= '9')
                {
                    if (j == 3)
                    {
                        return null;
                    }
                    if (j > 0 && k == 0)
                    {
                        return null;
                    }
                    j++;
                    k = k * 10 + (i1 - 48);
                    if (k > 255)
                    {
                        return null;
                    }
                } else
                {
                    if (i1 != '.')
                    {
                        break;
                    }
                    if (i == 3)
                    {
                        return null;
                    }
                    if (j == 0)
                    {
                        return null;
                    }
                    i1 = i + 1;
                    abyte0[i] = (byte)k;
                    k = 0;
                    j = 0;
                    i = i1;
                }
                l++;
            } while (true);
            return null;
        }
        if (j == 0)
        {
            return null;
        } else
        {
            abyte0[i] = (byte)k;
            return abyte0;
        }
    }

    private static byte[] parseV6(String s)
    {
        byte abyte0[];
        int i;
        int j;
        int i1;
        j = -1;
        abyte0 = new byte[16];
        s = s.split(":", -1);
        i = 0;
        i1 = s.length - 1;
        if (s[0].length() != 0) goto _L2; else goto _L1
_L1:
        if (i1 - 0 <= 0 || s[1].length() != 0) goto _L4; else goto _L3
_L3:
        i = 0 + 1;
_L2:
        int k = i1;
        if (s[i1].length() != 0) goto _L6; else goto _L5
_L5:
        if (i1 - i <= 0 || s[i1 - 1].length() != 0) goto _L8; else goto _L7
_L7:
        k = i1 - 1;
_L6:
        if ((k - i) + 1 <= 8) goto _L10; else goto _L9
_L9:
        s = null;
_L19:
        return s;
_L4:
        return null;
_L8:
        return null;
_L10:
        i1 = i;
        i = 0;
_L15:
        if (i1 <= k) goto _L12; else goto _L11
_L11:
        if (i < 16 && j < 0)
        {
            return null;
        }
        break MISSING_BLOCK_LABEL_347;
_L12:
        if (s[i1].length() != 0) goto _L14; else goto _L13
_L13:
        if (j >= 0)
        {
            return null;
        }
        j = i;
_L16:
        i1++;
          goto _L15
_L14:
label0:
        {
            if (s[i1].indexOf('.') < 0)
            {
                break label0;
            }
            if (i1 < k)
            {
                return null;
            }
            if (i1 > 6)
            {
                return null;
            }
            s = toByteArray(s[i1], 1);
            if (s == null)
            {
                return null;
            }
            k = 0;
            while (k < 4) 
            {
                abyte0[i] = s[k];
                k++;
                i++;
            }
        }
          goto _L11
        int j1 = 0;
_L17:
        if (j1 < s[i1].length())
        {
            break MISSING_BLOCK_LABEL_279;
        }
        j1 = Integer.parseInt(s[i1], 16);
        int k1;
        if (j1 <= 65535 && j1 >= 0)
        {
            int l1 = i + 1;
            abyte0[i] = (byte)(j1 >>> 8);
            abyte0[l1] = (byte)(j1 & 0xff);
            i = l1 + 1;
        } else
        {
            return null;
        }
          goto _L16
        try
        {
            k1 = Character.digit(s[i1].charAt(j1), 16);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        if (k1 < 0)
        {
            return null;
        }
        j1++;
          goto _L17
        s = abyte0;
        if (j < 0)
        {
            continue;
        }
        int l = 16 - i;
        System.arraycopy(abyte0, j, abyte0, j + l, i - j);
        i = j;
        do
        {
            s = abyte0;
            if (i >= j + l)
            {
                continue;
            }
            abyte0[i] = 0;
            i++;
        } while (true);
          goto _L16
        if (true) goto _L19; else goto _L18
_L18:
    }

    public static int[] toArray(String s)
    {
        return toArray(s, 1);
    }

    public static int[] toArray(String s, int i)
    {
        byte abyte0[] = toByteArray(s, i);
        if (abyte0 != null) goto _L2; else goto _L1
_L1:
        s = null;
_L4:
        return s;
_L2:
        int ai[] = new int[abyte0.length];
        i = 0;
        do
        {
            s = ai;
            if (i >= abyte0.length)
            {
                continue;
            }
            ai[i] = abyte0[i] & 0xff;
            i++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static byte[] toByteArray(String s, int i)
    {
        if (i == 1)
        {
            return parseV4(s);
        }
        if (i == 2)
        {
            return parseV6(s);
        } else
        {
            throw new IllegalArgumentException("unknown address family");
        }
    }

    public static String toDottedQuad(byte abyte0[])
    {
        return (new StringBuilder(String.valueOf(abyte0[0] & 0xff))).append(".").append(abyte0[1] & 0xff).append(".").append(abyte0[2] & 0xff).append(".").append(abyte0[3] & 0xff).toString();
    }

    public static String toDottedQuad(int ai[])
    {
        return (new StringBuilder(String.valueOf(ai[0]))).append(".").append(ai[1]).append(".").append(ai[2]).append(".").append(ai[3]).toString();
    }
}
