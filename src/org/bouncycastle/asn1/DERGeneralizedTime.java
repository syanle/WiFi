// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SimpleTimeZone;
import java.util.TimeZone;

// Referenced classes of package org.bouncycastle.asn1:
//            ASN1Object, ASN1TaggedObject, ASN1OctetString, DEROutputStream, 
//            DERObject

public class DERGeneralizedTime extends ASN1Object
{

    String time;

    public DERGeneralizedTime(String s)
    {
        time = s;
        try
        {
            getDate();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("invalid date string: ").append(s.getMessage()).toString());
        }
    }

    public DERGeneralizedTime(Date date)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyyMMddHHmmss'Z'");
        simpledateformat.setTimeZone(new SimpleTimeZone(0, "Z"));
        time = simpledateformat.format(date);
    }

    DERGeneralizedTime(byte abyte0[])
    {
        char ac[] = new char[abyte0.length];
        for (int i = 0; i != ac.length; i++)
        {
            ac[i] = (char)(abyte0[i] & 0xff);
        }

        time = new String(ac);
    }

    private String calculateGMTOffset()
    {
        String s;
        TimeZone timezone;
        int i;
        int l;
        s = "+";
        timezone = TimeZone.getDefault();
        i = timezone.getRawOffset();
        int j = i;
        if (i < 0)
        {
            s = "-";
            j = -i;
        }
        i = j / 0x36ee80;
        l = (j - i * 60 * 60 * 1000) / 60000;
        boolean flag;
        if (!timezone.useDaylightTime() || !timezone.inDaylightTime(getDate()))
        {
            break MISSING_BLOCK_LABEL_90;
        }
        flag = s.equals("+");
        int k;
        if (flag)
        {
            k = 1;
        } else
        {
            k = -1;
        }
        i = k + i;
_L2:
        return (new StringBuilder()).append("GMT").append(s).append(convert(i)).append(":").append(convert(l)).toString();
        ParseException parseexception;
        parseexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private String convert(int i)
    {
        if (i < 10)
        {
            return (new StringBuilder()).append("0").append(i).toString();
        } else
        {
            return Integer.toString(i);
        }
    }

    public static DERGeneralizedTime getInstance(Object obj)
    {
        if (obj == null || (obj instanceof DERGeneralizedTime))
        {
            return (DERGeneralizedTime)obj;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal object in getInstance: ").append(obj.getClass().getName()).toString());
        }
    }

    public static DERGeneralizedTime getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        asn1taggedobject = asn1taggedobject.getObject();
        if (flag || (asn1taggedobject instanceof DERGeneralizedTime))
        {
            return getInstance(asn1taggedobject);
        } else
        {
            return new DERGeneralizedTime(((ASN1OctetString)asn1taggedobject).getOctets());
        }
    }

    private byte[] getOctets()
    {
        char ac[] = time.toCharArray();
        byte abyte0[] = new byte[ac.length];
        for (int i = 0; i != ac.length; i++)
        {
            abyte0[i] = (byte)ac[i];
        }

        return abyte0;
    }

    private boolean hasFractionalSeconds()
    {
        return time.indexOf('.') == 14;
    }

    boolean asn1Equals(DERObject derobject)
    {
        if (!(derobject instanceof DERGeneralizedTime))
        {
            return false;
        } else
        {
            return time.equals(((DERGeneralizedTime)derobject).time);
        }
    }

    void encode(DEROutputStream deroutputstream)
        throws IOException
    {
        deroutputstream.writeEncoded(24, getOctets());
    }

    public Date getDate()
        throws ParseException
    {
        Object obj;
        Object obj1;
        String s;
        int i;
        obj1 = time;
        Object obj2;
        if (time.endsWith("Z"))
        {
            char c;
            if (hasFractionalSeconds())
            {
                obj = new SimpleDateFormat("yyyyMMddHHmmss.SSS'Z'");
            } else
            {
                obj = new SimpleDateFormat("yyyyMMddHHmmss'Z'");
            }
            ((SimpleDateFormat) (obj)).setTimeZone(new SimpleTimeZone(0, "Z"));
            obj2 = obj;
            obj = obj1;
        } else
        if (time.indexOf('-') > 0 || time.indexOf('+') > 0)
        {
            obj1 = getTime();
            if (hasFractionalSeconds())
            {
                obj = new SimpleDateFormat("yyyyMMddHHmmss.SSSz");
            } else
            {
                obj = new SimpleDateFormat("yyyyMMddHHmmssz");
            }
            ((SimpleDateFormat) (obj)).setTimeZone(new SimpleTimeZone(0, "Z"));
            obj2 = obj;
            obj = obj1;
        } else
        {
            if (hasFractionalSeconds())
            {
                obj = new SimpleDateFormat("yyyyMMddHHmmss.SSS");
            } else
            {
                obj = new SimpleDateFormat("yyyyMMddHHmmss");
            }
            ((SimpleDateFormat) (obj)).setTimeZone(new SimpleTimeZone(0, TimeZone.getDefault().getID()));
            obj2 = obj;
            obj = obj1;
        }
        obj1 = obj;
        if (!hasFractionalSeconds()) goto _L2; else goto _L1
_L1:
        s = ((String) (obj)).substring(14);
        i = 1;
_L7:
        if (i >= s.length()) goto _L4; else goto _L3
_L3:
        c = s.charAt(i);
        if ('0' <= c && c <= '9') goto _L5; else goto _L4
_L4:
        if (i - 1 > 3)
        {
            obj1 = (new StringBuilder()).append(s.substring(0, 4)).append(s.substring(i)).toString();
            obj1 = (new StringBuilder()).append(((String) (obj)).substring(0, 14)).append(((String) (obj1))).toString();
        } else
        if (i - 1 == 1)
        {
            obj1 = (new StringBuilder()).append(s.substring(0, i)).append("00").append(s.substring(i)).toString();
            obj1 = (new StringBuilder()).append(((String) (obj)).substring(0, 14)).append(((String) (obj1))).toString();
        } else
        {
            obj1 = obj;
            if (i - 1 == 2)
            {
                obj1 = (new StringBuilder()).append(s.substring(0, i)).append("0").append(s.substring(i)).toString();
                obj1 = (new StringBuilder()).append(((String) (obj)).substring(0, 14)).append(((String) (obj1))).toString();
            }
        }
_L2:
        return ((SimpleDateFormat) (obj2)).parse(((String) (obj1)));
_L5:
        i++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public String getTime()
    {
        if (time.charAt(time.length() - 1) == 'Z')
        {
            return (new StringBuilder()).append(time.substring(0, time.length() - 1)).append("GMT+00:00").toString();
        }
        int i = time.length() - 5;
        char c = time.charAt(i);
        if (c == '-' || c == '+')
        {
            return (new StringBuilder()).append(time.substring(0, i)).append("GMT").append(time.substring(i, i + 3)).append(":").append(time.substring(i + 3)).toString();
        }
        i = time.length() - 3;
        c = time.charAt(i);
        if (c == '-' || c == '+')
        {
            return (new StringBuilder()).append(time.substring(0, i)).append("GMT").append(time.substring(i)).append(":00").toString();
        } else
        {
            return (new StringBuilder()).append(time).append(calculateGMTOffset()).toString();
        }
    }

    public String getTimeString()
    {
        return time;
    }

    public int hashCode()
    {
        return time.hashCode();
    }
}
