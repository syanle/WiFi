// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.text.DecimalFormat;
import java.text.NumberFormat;

// Referenced classes of package org.xbill.DNS:
//            Record, Tokenizer, WireParseException, DNSInput, 
//            DNSOutput, Name, Compression

public class LOCRecord extends Record
{

    private static final long serialVersionUID = 0x7db54773c7eed6c9L;
    private static NumberFormat w2;
    private static NumberFormat w3;
    private long altitude;
    private long hPrecision;
    private long latitude;
    private long longitude;
    private long size;
    private long vPrecision;

    LOCRecord()
    {
    }

    public LOCRecord(Name name, int i, long l, double d, double d1, double d2, double d3, double d4, 
            double d5)
    {
        super(name, 29, i, l);
        latitude = (long)(3600D * d * 1000D + 2147483648D);
        longitude = (long)(3600D * d1 * 1000D + 2147483648D);
        altitude = (long)((100000D + d2) * 100D);
        size = (long)(100D * d3);
        hPrecision = (long)(100D * d4);
        vPrecision = (long)(100D * d5);
    }

    private long parseDouble(Tokenizer tokenizer, String s, boolean flag, long l, long l1, 
            long l2)
        throws IOException
    {
        Object obj = tokenizer.get();
        if (((Tokenizer.Token) (obj)).isEOL())
        {
            if (flag)
            {
                throw tokenizer.exception((new StringBuilder("Invalid LOC ")).append(s).toString());
            } else
            {
                tokenizer.unget();
                return l2;
            }
        }
        String s1 = ((Tokenizer.Token) (obj)).value;
        obj = s1;
        if (s1.length() > 1)
        {
            obj = s1;
            if (s1.charAt(s1.length() - 1) == 'm')
            {
                obj = s1.substring(0, s1.length() - 1);
            }
        }
        try
        {
            l2 = (long)(100D * parseFixedPoint(((String) (obj))));
        }
        catch (NumberFormatException numberformatexception)
        {
            throw tokenizer.exception((new StringBuilder("Invalid LOC ")).append(s).toString());
        }
        if (l2 >= l && l2 <= l1)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        throw tokenizer.exception((new StringBuilder("Invalid LOC ")).append(s).toString());
        return l2;
    }

    private double parseFixedPoint(String s)
    {
        if (s.matches("^\\d+$"))
        {
            return (double)Integer.parseInt(s);
        }
        if (s.matches("^\\d+\\.\\d*$"))
        {
            s = s.split("\\.");
            double d = Integer.parseInt(s[0]);
            return (double)Integer.parseInt(s[1]) / Math.pow(10D, s[1].length()) + d;
        } else
        {
            throw new NumberFormatException();
        }
    }

    private static long parseLOCformat(int i)
        throws WireParseException
    {
        long l = i >> 4;
        i &= 0xf;
        if (l > 9L || i > 9)
        {
            throw new WireParseException("Invalid LOC Encoding");
        }
        for (; i > 0; i--)
        {
            l *= 10L;
        }

        return l;
    }

    private long parsePosition(Tokenizer tokenizer, String s)
        throws IOException
    {
        double d;
        double d1;
        Object obj;
        Object obj1;
        int i;
        int k;
        boolean flag;
        flag = s.equals("latitude");
        i = 0;
        d1 = 0.0D;
        k = tokenizer.getUInt16();
        if (k > 180 || k > 90 && flag)
        {
            throw tokenizer.exception((new StringBuilder("Invalid LOC ")).append(s).append(" degrees").toString());
        }
        obj1 = tokenizer.getString();
        obj = obj1;
        d = d1;
        int j = Integer.parseInt(((String) (obj1)));
        if (j >= 0 && j <= 59) goto _L2; else goto _L1
_L1:
        i = j;
        obj = obj1;
        d = d1;
        try
        {
            throw tokenizer.exception((new StringBuilder("Invalid LOC ")).append(s).append(" minutes").toString());
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1) { }
_L4:
        if (((String) (obj)).length() != 1)
        {
            throw tokenizer.exception((new StringBuilder("Invalid LOC ")).append(s).toString());
        }
        break; /* Loop/switch isn't completed */
_L2:
        i = j;
        obj = obj1;
        d = d1;
        obj1 = tokenizer.getString();
        i = j;
        obj = obj1;
        d = d1;
        d1 = parseFixedPoint(((String) (obj1)));
        if (d1 >= 0.0D && d1 < 60D)
        {
            break MISSING_BLOCK_LABEL_256;
        }
        i = j;
        obj = obj1;
        d = d1;
        throw tokenizer.exception((new StringBuilder("Invalid LOC ")).append(s).append(" seconds").toString());
        i = j;
        obj = obj1;
        d = d1;
        obj1 = tokenizer.getString();
        obj = obj1;
        i = j;
        d = d1;
        if (true) goto _L4; else goto _L3
_L3:
        long l1;
        l1 = (long)(1000D * ((double)(60L * ((long)i + 60L * (long)k)) + d));
        i = Character.toUpperCase(((String) (obj)).charAt(0));
        if ((!flag || i != 'S') && (flag || i != 'W')) goto _L6; else goto _L5
_L5:
        long l = -l1;
_L8:
        return l + 0x80000000L;
_L6:
        if (flag && i != 'N')
        {
            break; /* Loop/switch isn't completed */
        }
        l = l1;
        if (flag) goto _L8; else goto _L7
_L7:
        l = l1;
        if (i == 'E') goto _L8; else goto _L9
_L9:
        throw tokenizer.exception((new StringBuilder("Invalid LOC ")).append(s).toString());
    }

    private String positionToString(long l, char c, char c1)
    {
        StringBuffer stringbuffer = new StringBuffer();
        l -= 0x80000000L;
        if (l < 0L)
        {
            l = -l;
        } else
        {
            c1 = c;
        }
        stringbuffer.append(l / 0x36ee80L);
        l %= 0x36ee80L;
        stringbuffer.append(" ");
        stringbuffer.append(l / 60000L);
        stringbuffer.append(" ");
        renderFixedPoint(stringbuffer, w3, l % 60000L, 1000L);
        stringbuffer.append(" ");
        stringbuffer.append(c1);
        return stringbuffer.toString();
    }

    private void renderFixedPoint(StringBuffer stringbuffer, NumberFormat numberformat, long l, long l1)
    {
        stringbuffer.append(l / l1);
        l %= l1;
        if (l != 0L)
        {
            stringbuffer.append(".");
            stringbuffer.append(numberformat.format(l));
        }
    }

    private int toLOCformat(long l)
    {
        byte byte0 = 0;
        do
        {
            if (l <= 9L)
            {
                return (int)((l << 4) + (long)byte0);
            }
            byte0++;
            l /= 10L;
        } while (true);
    }

    public double getAltitude()
    {
        return (double)(altitude - 0x989680L) / 100D;
    }

    public double getHPrecision()
    {
        return (double)hPrecision / 100D;
    }

    public double getLatitude()
    {
        return (double)(latitude - 0x80000000L) / 3600000D;
    }

    public double getLongitude()
    {
        return (double)(longitude - 0x80000000L) / 3600000D;
    }

    Record getObject()
    {
        return new LOCRecord();
    }

    public double getSize()
    {
        return (double)size / 100D;
    }

    public double getVPrecision()
    {
        return (double)vPrecision / 100D;
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        latitude = parsePosition(tokenizer, "latitude");
        longitude = parsePosition(tokenizer, "longitude");
        altitude = parseDouble(tokenizer, "altitude", true, 0xffffffffff676980L, 0xff67697fL, 0L) + 0x989680L;
        size = parseDouble(tokenizer, "size", false, 0L, 0x218711a00L, 100L);
        hPrecision = parseDouble(tokenizer, "horizontal precision", false, 0L, 0x218711a00L, 0xf4240L);
        vPrecision = parseDouble(tokenizer, "vertical precision", false, 0L, 0x218711a00L, 1000L);
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        if (dnsinput.readU8() != 0)
        {
            throw new WireParseException("Invalid LOC version");
        } else
        {
            size = parseLOCformat(dnsinput.readU8());
            hPrecision = parseLOCformat(dnsinput.readU8());
            vPrecision = parseLOCformat(dnsinput.readU8());
            latitude = dnsinput.readU32();
            longitude = dnsinput.readU32();
            altitude = dnsinput.readU32();
            return;
        }
    }

    String rrToString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(positionToString(latitude, 'N', 'S'));
        stringbuffer.append(" ");
        stringbuffer.append(positionToString(longitude, 'E', 'W'));
        stringbuffer.append(" ");
        renderFixedPoint(stringbuffer, w2, altitude - 0x989680L, 100L);
        stringbuffer.append("m ");
        renderFixedPoint(stringbuffer, w2, size, 100L);
        stringbuffer.append("m ");
        renderFixedPoint(stringbuffer, w2, hPrecision, 100L);
        stringbuffer.append("m ");
        renderFixedPoint(stringbuffer, w2, vPrecision, 100L);
        stringbuffer.append("m");
        return stringbuffer.toString();
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        dnsoutput.writeU8(0);
        dnsoutput.writeU8(toLOCformat(size));
        dnsoutput.writeU8(toLOCformat(hPrecision));
        dnsoutput.writeU8(toLOCformat(vPrecision));
        dnsoutput.writeU32(latitude);
        dnsoutput.writeU32(longitude);
        dnsoutput.writeU32(altitude);
    }

    static 
    {
        w2 = new DecimalFormat();
        w2.setMinimumIntegerDigits(2);
        w3 = new DecimalFormat();
        w3.setMinimumIntegerDigits(3);
    }
}
