// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.bouncycastle.util.Arrays;

// Referenced classes of package org.bouncycastle.asn1:
//            ASN1Object, DERString, DEREncodable, DERObject, 
//            ASN1TaggedObject, ASN1OctetString, DEROutputStream, ASN1OutputStream

public class DERBitString extends ASN1Object
    implements DERString
{

    private static final char table[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'A', 'B', 'C', 'D', 'E', 'F'
    };
    protected byte data[];
    protected int padBits;

    protected DERBitString(byte byte0, int i)
    {
        data = new byte[1];
        data[0] = byte0;
        padBits = i;
    }

    public DERBitString(DEREncodable derencodable)
    {
        try
        {
            data = derencodable.getDERObject().getEncoded("DER");
            padBits = 0;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (DEREncodable derencodable)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Error processing object : ").append(derencodable.toString()).toString());
        }
    }

    public DERBitString(byte abyte0[])
    {
        this(abyte0, 0);
    }

    public DERBitString(byte abyte0[], int i)
    {
        data = abyte0;
        padBits = i;
    }

    static DERBitString fromOctetString(byte abyte0[])
    {
        if (abyte0.length < 1)
        {
            throw new IllegalArgumentException("truncated BIT STRING detected");
        }
        byte byte0 = abyte0[0];
        byte abyte1[] = new byte[abyte0.length - 1];
        if (abyte1.length != 0)
        {
            System.arraycopy(abyte0, 1, abyte1, 0, abyte0.length - 1);
        }
        return new DERBitString(abyte1, byte0);
    }

    protected static byte[] getBytes(int i)
    {
        int j = 4;
        int k = 3;
        byte abyte0[];
        do
        {
            if (k < 1 || (255 << k * 8 & i) != 0)
            {
                abyte0 = new byte[j];
                for (k = 0; k < j; k++)
                {
                    abyte0[k] = (byte)(i >> k * 8 & 0xff);
                }

                break;
            }
            j--;
            k--;
        } while (true);
        return abyte0;
    }

    public static DERBitString getInstance(Object obj)
    {
        if (obj == null || (obj instanceof DERBitString))
        {
            return (DERBitString)obj;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal object in getInstance: ").append(obj.getClass().getName()).toString());
        }
    }

    public static DERBitString getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        asn1taggedobject = asn1taggedobject.getObject();
        if (flag || (asn1taggedobject instanceof DERBitString))
        {
            return getInstance(asn1taggedobject);
        } else
        {
            return fromOctetString(((ASN1OctetString)asn1taggedobject).getOctets());
        }
    }

    protected static int getPadBits(int i)
    {
        int k;
        boolean flag;
        flag = false;
        k = 3;
_L8:
        int j = ((flag) ? 1 : 0);
        if (k < 0) goto _L2; else goto _L1
_L1:
        if (k == 0) goto _L4; else goto _L3
_L3:
        if (i >> k * 8 == 0) goto _L6; else goto _L5
_L5:
        j = i >> k * 8 & 0xff;
_L2:
        if (j == 0)
        {
            return 7;
        }
        break; /* Loop/switch isn't completed */
_L4:
        if (i == 0)
        {
            break; /* Loop/switch isn't completed */
        }
        j = i & 0xff;
        if (true) goto _L2; else goto _L6
_L6:
        k--;
        if (true) goto _L8; else goto _L7
_L7:
        i = 1;
        do
        {
            j <<= 1;
            if ((j & 0xff) != 0)
            {
                i++;
            } else
            {
                return 8 - i;
            }
        } while (true);
    }

    protected boolean asn1Equals(DERObject derobject)
    {
        if (derobject instanceof DERBitString)
        {
            if (padBits == ((DERBitString) (derobject = (DERBitString)derobject)).padBits && Arrays.areEqual(data, ((DERBitString) (derobject)).data))
            {
                return true;
            }
        }
        return false;
    }

    void encode(DEROutputStream deroutputstream)
        throws IOException
    {
        byte abyte0[] = new byte[getBytes().length + 1];
        abyte0[0] = (byte)getPadBits();
        System.arraycopy(getBytes(), 0, abyte0, 1, abyte0.length - 1);
        deroutputstream.writeEncoded(3, abyte0);
    }

    public byte[] getBytes()
    {
        return data;
    }

    public int getPadBits()
    {
        return padBits;
    }

    public String getString()
    {
        Object obj = new StringBuffer("#");
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        ASN1OutputStream asn1outputstream = new ASN1OutputStream(bytearrayoutputstream);
        byte abyte0[];
        try
        {
            asn1outputstream.writeObject(this);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new RuntimeException("internal error encoding BitString");
        }
        abyte0 = bytearrayoutputstream.toByteArray();
        for (int i = 0; i != abyte0.length; i++)
        {
            ((StringBuffer) (obj)).append(table[abyte0[i] >>> 4 & 0xf]);
            ((StringBuffer) (obj)).append(table[abyte0[i] & 0xf]);
        }

        return ((StringBuffer) (obj)).toString();
    }

    public int hashCode()
    {
        return padBits ^ Arrays.hashCode(data);
    }

    public int intValue()
    {
        int i = 0;
        int j = 0;
        for (; i != data.length && i != 4; i++)
        {
            j |= (data[i] & 0xff) << i * 8;
        }

        return j;
    }

    public String toString()
    {
        return getString();
    }

}
