// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x500.style;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERUniversalString;
import org.bouncycastle.asn1.x500.AttributeTypeAndValue;
import org.bouncycastle.asn1.x500.RDN;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x500.X500NameBuilder;
import org.bouncycastle.asn1.x500.X500NameStyle;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;

// Referenced classes of package org.bouncycastle.asn1.x500.style:
//            X500NameTokenizer

public class IETFUtils
{

    public IETFUtils()
    {
    }

    public static void appendTypeAndValue(StringBuffer stringbuffer, AttributeTypeAndValue attributetypeandvalue, Hashtable hashtable)
    {
        hashtable = (String)hashtable.get(attributetypeandvalue.getType());
        if (hashtable != null)
        {
            stringbuffer.append(hashtable);
        } else
        {
            stringbuffer.append(attributetypeandvalue.getType().getId());
        }
        stringbuffer.append('=');
        stringbuffer.append(valueToString(attributetypeandvalue.getValue()));
    }

    private static String bytesToString(byte abyte0[])
    {
        char ac[] = new char[abyte0.length];
        for (int i = 0; i != ac.length; i++)
        {
            ac[i] = (char)(abyte0[i] & 0xff);
        }

        return new String(ac);
    }

    public static String canonicalize(String s)
    {
        s = Strings.toLowerCase(s.trim());
        if (s.length() > 0 && s.charAt(0) == '#')
        {
            ASN1Object asn1object = decodeObject(s);
            if (asn1object instanceof ASN1String)
            {
                s = Strings.toLowerCase(((ASN1String)asn1object).getString().trim());
            }
        }
        return stripInternalSpaces(s);
    }

    public static ASN1ObjectIdentifier decodeAttrName(String s, Hashtable hashtable)
    {
        if (Strings.toUpperCase(s).startsWith("OID."))
        {
            hashtable = new ASN1ObjectIdentifier(s.substring(4));
        } else
        {
            if (s.charAt(0) >= '0' && s.charAt(0) <= '9')
            {
                return new ASN1ObjectIdentifier(s);
            }
            ASN1ObjectIdentifier asn1objectidentifier = (ASN1ObjectIdentifier)hashtable.get(Strings.toLowerCase(s));
            hashtable = asn1objectidentifier;
            if (asn1objectidentifier == null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Unknown object id - ").append(s).append(" - passed to distinguished name").toString());
            }
        }
        return hashtable;
    }

    private static ASN1Object decodeObject(String s)
    {
        try
        {
            s = ASN1Object.fromByteArray(Hex.decode(s.substring(1)));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalStateException((new StringBuilder()).append("unknown encoding in name: ").append(s).toString());
        }
        return s;
    }

    public static RDN[] rDNsFromString(String s, X500NameStyle x500namestyle)
    {
        s = new X500NameTokenizer(s);
        X500NameBuilder x500namebuilder = new X500NameBuilder(x500namestyle);
        while (s.hasMoreTokens()) 
        {
            Object obj = s.nextToken();
            int i = ((String) (obj)).indexOf('=');
            if (i == -1)
            {
                throw new IllegalArgumentException("badly formated directory string");
            }
            String s1 = ((String) (obj)).substring(0, i);
            obj = ((String) (obj)).substring(i + 1);
            Object obj1 = x500namestyle.attrNameToOID(s1);
            if (((String) (obj)).indexOf('+') > 0)
            {
                X500NameTokenizer x500nametokenizer = new X500NameTokenizer(((String) (obj)), '+');
                String s2 = x500nametokenizer.nextToken();
                obj = new Vector();
                Vector vector = new Vector();
                ((Vector) (obj)).addElement(obj1);
                vector.addElement(s2);
                String s3;
                for (; x500nametokenizer.hasMoreTokens(); vector.addElement(s3))
                {
                    s3 = x500nametokenizer.nextToken();
                    int j = s3.indexOf('=');
                    obj1 = s3.substring(0, j);
                    s3 = s3.substring(j + 1);
                    ((Vector) (obj)).addElement(x500namestyle.attrNameToOID(((String) (obj1))));
                }

                x500namebuilder.addMultiValuedRDN(toOIDArray(((Vector) (obj))), toValueArray(vector));
            } else
            {
                x500namebuilder.addRDN(((ASN1ObjectIdentifier) (obj1)), ((String) (obj)));
            }
        }
        return x500namebuilder.build().getRDNs();
    }

    public static String stripInternalSpaces(String s)
    {
        StringBuffer stringbuffer = new StringBuffer();
        if (s.length() != 0)
        {
            char c = s.charAt(0);
            stringbuffer.append(c);
            int i = 1;
            for (char c1 = c; i < s.length(); c1 = c)
            {
                c = s.charAt(i);
                if (c1 != ' ' || c != ' ')
                {
                    stringbuffer.append(c);
                }
                i++;
            }

        }
        return stringbuffer.toString();
    }

    private static ASN1ObjectIdentifier[] toOIDArray(Vector vector)
    {
        ASN1ObjectIdentifier aasn1objectidentifier[] = new ASN1ObjectIdentifier[vector.size()];
        for (int i = 0; i != aasn1objectidentifier.length; i++)
        {
            aasn1objectidentifier[i] = (ASN1ObjectIdentifier)vector.elementAt(i);
        }

        return aasn1objectidentifier;
    }

    private static String[] toValueArray(Vector vector)
    {
        String as[] = new String[vector.size()];
        for (int i = 0; i != as.length; i++)
        {
            as[i] = (String)vector.elementAt(i);
        }

        return as;
    }

    public static ASN1Encodable valueFromHexString(String s, int i)
        throws IOException
    {
        s = Strings.toLowerCase(s);
        byte abyte0[] = new byte[(s.length() - i) / 2];
        int j = 0;
        while (j != abyte0.length) 
        {
            char c = s.charAt(j * 2 + i);
            char c1 = s.charAt(j * 2 + i + 1);
            if (c < 'a')
            {
                abyte0[j] = (byte)(c - 48 << 4);
            } else
            {
                abyte0[j] = (byte)((c - 97) + 10 << 4);
            }
            if (c1 < 'a')
            {
                abyte0[j] = (byte)(abyte0[j] | (byte)(c1 - 48));
            } else
            {
                abyte0[j] = (byte)(abyte0[j] | (byte)((c1 - 97) + 10));
            }
            j++;
        }
        return ASN1Object.fromByteArray(abyte0);
    }

    public static String valueToString(ASN1Encodable asn1encodable)
    {
        int k = 2;
        StringBuffer stringbuffer = new StringBuffer();
        int i;
        int j;
        if ((asn1encodable instanceof ASN1String) && !(asn1encodable instanceof DERUniversalString))
        {
            asn1encodable = ((ASN1String)asn1encodable).getString();
            int l;
            if (asn1encodable.length() > 0 && asn1encodable.charAt(0) == '#')
            {
                stringbuffer.append((new StringBuilder()).append("\\").append(asn1encodable).toString());
            } else
            {
                stringbuffer.append(asn1encodable);
            }
        } else
        {
            stringbuffer.append((new StringBuilder()).append("#").append(bytesToString(Hex.encode(asn1encodable.getDERObject().getDEREncoded()))).toString());
        }
        i = stringbuffer.length();
        if (stringbuffer.length() >= 2 && stringbuffer.charAt(0) == '\\' && stringbuffer.charAt(1) == '#')
        {
            j = i;
            i = k;
        } else
        {
            boolean flag = false;
            j = i;
            i = ((flag) ? 1 : 0);
        }
        for (; i != j; j = k)
        {
label0:
            {
                if (stringbuffer.charAt(i) != ',' && stringbuffer.charAt(i) != '"' && stringbuffer.charAt(i) != '\\' && stringbuffer.charAt(i) != '+' && stringbuffer.charAt(i) != '=' && stringbuffer.charAt(i) != '<' && stringbuffer.charAt(i) != '>')
                {
                    l = i;
                    k = j;
                    if (stringbuffer.charAt(i) != ';')
                    {
                        break label0;
                    }
                }
                stringbuffer.insert(i, "\\");
                l = i + 1;
                k = j + 1;
            }
            i = l + 1;
        }

        return stringbuffer.toString();
    }
}
