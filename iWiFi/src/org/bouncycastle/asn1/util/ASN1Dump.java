// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.util;

import java.io.IOException;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.BERApplicationSpecific;
import org.bouncycastle.asn1.BERConstructedOctetString;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.BERSet;
import org.bouncycastle.asn1.BERTaggedObject;
import org.bouncycastle.asn1.DERApplicationSpecific;
import org.bouncycastle.asn1.DERBMPString;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERBoolean;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DEREnumerated;
import org.bouncycastle.asn1.DERExternal;
import org.bouncycastle.asn1.DERGeneralizedTime;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERPrintableString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.DERT61String;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.DERUTCTime;
import org.bouncycastle.asn1.DERUTF8String;
import org.bouncycastle.asn1.DERUnknownTag;
import org.bouncycastle.asn1.DERVisibleString;
import org.bouncycastle.util.encoders.Hex;

public class ASN1Dump
{

    private static final int SAMPLE_SIZE = 32;
    private static final String TAB = "    ";

    public ASN1Dump()
    {
    }

    static void _dumpAsString(String s, boolean flag, DERObject derobject, StringBuffer stringbuffer)
    {
        String s1 = System.getProperty("line.separator");
        if (!(derobject instanceof ASN1Sequence)) goto _L2; else goto _L1
_L1:
        Enumeration enumeration = ((ASN1Sequence)derobject).getObjects();
        String s5 = (new StringBuilder()).append(s).append("    ").toString();
        stringbuffer.append(s);
        if (derobject instanceof BERSequence)
        {
            stringbuffer.append("BER Sequence");
        } else
        if (derobject instanceof DERSequence)
        {
            stringbuffer.append("DER Sequence");
        } else
        {
            stringbuffer.append("Sequence");
        }
        stringbuffer.append(s1);
        while (enumeration.hasMoreElements()) 
        {
            s = ((String) (enumeration.nextElement()));
            if (s == null || s.equals(new DERNull()))
            {
                stringbuffer.append(s5);
                stringbuffer.append("NULL");
                stringbuffer.append(s1);
            } else
            if (s instanceof DERObject)
            {
                _dumpAsString(s5, flag, (DERObject)s, stringbuffer);
            } else
            {
                _dumpAsString(s5, flag, ((DEREncodable)s).getDERObject(), stringbuffer);
            }
        }
          goto _L3
_L2:
        if (!(derobject instanceof DERTaggedObject)) goto _L5; else goto _L4
_L4:
        String s2;
        s2 = (new StringBuilder()).append(s).append("    ").toString();
        stringbuffer.append(s);
        if (derobject instanceof BERTaggedObject)
        {
            stringbuffer.append("BER Tagged [");
        } else
        {
            stringbuffer.append("Tagged [");
        }
        s = (DERTaggedObject)derobject;
        stringbuffer.append(Integer.toString(s.getTagNo()));
        stringbuffer.append(']');
        if (!s.isExplicit())
        {
            stringbuffer.append(" IMPLICIT ");
        }
        stringbuffer.append(s1);
        if (!s.isEmpty()) goto _L7; else goto _L6
_L6:
        stringbuffer.append(s2);
        stringbuffer.append("EMPTY");
        stringbuffer.append(s1);
_L3:
        return;
_L7:
        _dumpAsString(s2, flag, s.getObject(), stringbuffer);
        return;
_L5:
        if (!(derobject instanceof BERSet))
        {
            break; /* Loop/switch isn't completed */
        }
        derobject = ((ASN1Set)derobject).getObjects();
        String s3 = (new StringBuilder()).append(s).append("    ").toString();
        stringbuffer.append(s);
        stringbuffer.append("BER Set");
        stringbuffer.append(s1);
        while (derobject.hasMoreElements()) 
        {
            s = ((String) (derobject.nextElement()));
            if (s == null)
            {
                stringbuffer.append(s3);
                stringbuffer.append("NULL");
                stringbuffer.append(s1);
            } else
            if (s instanceof DERObject)
            {
                _dumpAsString(s3, flag, (DERObject)s, stringbuffer);
            } else
            {
                _dumpAsString(s3, flag, ((DEREncodable)s).getDERObject(), stringbuffer);
            }
        }
        if (true) goto _L3; else goto _L8
_L8:
        if (!(derobject instanceof DERSet))
        {
            break; /* Loop/switch isn't completed */
        }
        derobject = ((ASN1Set)derobject).getObjects();
        String s4 = (new StringBuilder()).append(s).append("    ").toString();
        stringbuffer.append(s);
        stringbuffer.append("DER Set");
        stringbuffer.append(s1);
        while (derobject.hasMoreElements()) 
        {
            s = ((String) (derobject.nextElement()));
            if (s == null)
            {
                stringbuffer.append(s4);
                stringbuffer.append("NULL");
                stringbuffer.append(s1);
            } else
            if (s instanceof DERObject)
            {
                _dumpAsString(s4, flag, (DERObject)s, stringbuffer);
            } else
            {
                _dumpAsString(s4, flag, ((DEREncodable)s).getDERObject(), stringbuffer);
            }
        }
        if (true) goto _L3; else goto _L9
_L9:
        if (derobject instanceof DERObjectIdentifier)
        {
            stringbuffer.append((new StringBuilder()).append(s).append("ObjectIdentifier(").append(((DERObjectIdentifier)derobject).getId()).append(")").append(s1).toString());
            return;
        }
        if (derobject instanceof DERBoolean)
        {
            stringbuffer.append((new StringBuilder()).append(s).append("Boolean(").append(((DERBoolean)derobject).isTrue()).append(")").append(s1).toString());
            return;
        }
        if (derobject instanceof DERInteger)
        {
            stringbuffer.append((new StringBuilder()).append(s).append("Integer(").append(((DERInteger)derobject).getValue()).append(")").append(s1).toString());
            return;
        }
        if (derobject instanceof BERConstructedOctetString)
        {
            derobject = (ASN1OctetString)derobject;
            stringbuffer.append((new StringBuilder()).append(s).append("BER Constructed Octet String").append("[").append(derobject.getOctets().length).append("] ").toString());
            if (flag)
            {
                stringbuffer.append(dumpBinaryDataAsString(s, derobject.getOctets()));
                return;
            } else
            {
                stringbuffer.append(s1);
                return;
            }
        }
        if (derobject instanceof DEROctetString)
        {
            derobject = (ASN1OctetString)derobject;
            stringbuffer.append((new StringBuilder()).append(s).append("DER Octet String").append("[").append(derobject.getOctets().length).append("] ").toString());
            if (flag)
            {
                stringbuffer.append(dumpBinaryDataAsString(s, derobject.getOctets()));
                return;
            } else
            {
                stringbuffer.append(s1);
                return;
            }
        }
        if (derobject instanceof DERBitString)
        {
            derobject = (DERBitString)derobject;
            stringbuffer.append((new StringBuilder()).append(s).append("DER Bit String").append("[").append(derobject.getBytes().length).append(", ").append(derobject.getPadBits()).append("] ").toString());
            if (flag)
            {
                stringbuffer.append(dumpBinaryDataAsString(s, derobject.getBytes()));
                return;
            } else
            {
                stringbuffer.append(s1);
                return;
            }
        }
        if (derobject instanceof DERIA5String)
        {
            stringbuffer.append((new StringBuilder()).append(s).append("IA5String(").append(((DERIA5String)derobject).getString()).append(") ").append(s1).toString());
            return;
        }
        if (derobject instanceof DERUTF8String)
        {
            stringbuffer.append((new StringBuilder()).append(s).append("UTF8String(").append(((DERUTF8String)derobject).getString()).append(") ").append(s1).toString());
            return;
        }
        if (derobject instanceof DERPrintableString)
        {
            stringbuffer.append((new StringBuilder()).append(s).append("PrintableString(").append(((DERPrintableString)derobject).getString()).append(") ").append(s1).toString());
            return;
        }
        if (derobject instanceof DERVisibleString)
        {
            stringbuffer.append((new StringBuilder()).append(s).append("VisibleString(").append(((DERVisibleString)derobject).getString()).append(") ").append(s1).toString());
            return;
        }
        if (derobject instanceof DERBMPString)
        {
            stringbuffer.append((new StringBuilder()).append(s).append("BMPString(").append(((DERBMPString)derobject).getString()).append(") ").append(s1).toString());
            return;
        }
        if (derobject instanceof DERT61String)
        {
            stringbuffer.append((new StringBuilder()).append(s).append("T61String(").append(((DERT61String)derobject).getString()).append(") ").append(s1).toString());
            return;
        }
        if (derobject instanceof DERUTCTime)
        {
            stringbuffer.append((new StringBuilder()).append(s).append("UTCTime(").append(((DERUTCTime)derobject).getTime()).append(") ").append(s1).toString());
            return;
        }
        if (derobject instanceof DERGeneralizedTime)
        {
            stringbuffer.append((new StringBuilder()).append(s).append("GeneralizedTime(").append(((DERGeneralizedTime)derobject).getTime()).append(") ").append(s1).toString());
            return;
        }
        if (derobject instanceof DERUnknownTag)
        {
            stringbuffer.append((new StringBuilder()).append(s).append("Unknown ").append(Integer.toString(((DERUnknownTag)derobject).getTag(), 16)).append(" ").append(new String(Hex.encode(((DERUnknownTag)derobject).getData()))).append(s1).toString());
            return;
        }
        if (derobject instanceof BERApplicationSpecific)
        {
            stringbuffer.append(outputApplicationSpecific("BER", s, flag, derobject, s1));
            return;
        }
        if (derobject instanceof DERApplicationSpecific)
        {
            stringbuffer.append(outputApplicationSpecific("DER", s, flag, derobject, s1));
            return;
        }
        if (derobject instanceof DEREnumerated)
        {
            derobject = (DEREnumerated)derobject;
            stringbuffer.append((new StringBuilder()).append(s).append("DER Enumerated(").append(derobject.getValue()).append(")").append(s1).toString());
            return;
        }
        if (derobject instanceof DERExternal)
        {
            derobject = (DERExternal)derobject;
            stringbuffer.append((new StringBuilder()).append(s).append("External ").append(s1).toString());
            s = (new StringBuilder()).append(s).append("    ").toString();
            if (derobject.getDirectReference() != null)
            {
                stringbuffer.append((new StringBuilder()).append(s).append("Direct Reference: ").append(derobject.getDirectReference().getId()).append(s1).toString());
            }
            if (derobject.getIndirectReference() != null)
            {
                stringbuffer.append((new StringBuilder()).append(s).append("Indirect Reference: ").append(derobject.getIndirectReference().toString()).append(s1).toString());
            }
            if (derobject.getDataValueDescriptor() != null)
            {
                _dumpAsString(s, flag, ((DERObject) (derobject.getDataValueDescriptor())), stringbuffer);
            }
            stringbuffer.append((new StringBuilder()).append(s).append("Encoding: ").append(derobject.getEncoding()).append(s1).toString());
            _dumpAsString(s, flag, derobject.getExternalContent(), stringbuffer);
            return;
        } else
        {
            stringbuffer.append((new StringBuilder()).append(s).append(derobject.toString()).append(s1).toString());
            return;
        }
    }

    private static String calculateAscString(byte abyte0[], int i, int j)
    {
        StringBuffer stringbuffer = new StringBuffer();
        for (int k = i; k != i + j; k++)
        {
            if (abyte0[k] >= 32 && abyte0[k] <= 126)
            {
                stringbuffer.append((char)abyte0[k]);
            }
        }

        return stringbuffer.toString();
    }

    public static String dumpAsString(Object obj)
    {
        return dumpAsString(obj, false);
    }

    public static String dumpAsString(Object obj, boolean flag)
    {
        StringBuffer stringbuffer = new StringBuffer();
        if (obj instanceof DERObject)
        {
            _dumpAsString("", flag, (DERObject)obj, stringbuffer);
        } else
        if (obj instanceof DEREncodable)
        {
            _dumpAsString("", flag, ((DEREncodable)obj).getDERObject(), stringbuffer);
        } else
        {
            return (new StringBuilder()).append("unknown object type ").append(obj.toString()).toString();
        }
        return stringbuffer.toString();
    }

    private static String dumpBinaryDataAsString(String s, byte abyte0[])
    {
        String s1 = System.getProperty("line.separator");
        StringBuffer stringbuffer = new StringBuffer();
        s = (new StringBuilder()).append(s).append("    ").toString();
        stringbuffer.append(s1);
        int i = 0;
        while (i < abyte0.length) 
        {
            if (abyte0.length - i > 32)
            {
                stringbuffer.append(s);
                stringbuffer.append(new String(Hex.encode(abyte0, i, 32)));
                stringbuffer.append("    ");
                stringbuffer.append(calculateAscString(abyte0, i, 32));
                stringbuffer.append(s1);
            } else
            {
                stringbuffer.append(s);
                stringbuffer.append(new String(Hex.encode(abyte0, i, abyte0.length - i)));
                for (int j = abyte0.length - i; j != 32; j++)
                {
                    stringbuffer.append("  ");
                }

                stringbuffer.append("    ");
                stringbuffer.append(calculateAscString(abyte0, i, abyte0.length - i));
                stringbuffer.append(s1);
            }
            i += 32;
        }
        return stringbuffer.toString();
    }

    private static String outputApplicationSpecific(String s, String s1, boolean flag, DERObject derobject, String s2)
    {
        DERApplicationSpecific derapplicationspecific = (DERApplicationSpecific)derobject;
        derobject = new StringBuffer();
        if (derapplicationspecific.isConstructed())
        {
            try
            {
                ASN1Sequence asn1sequence = ASN1Sequence.getInstance(derapplicationspecific.getObject(16));
                derobject.append((new StringBuilder()).append(s1).append(s).append(" ApplicationSpecific[").append(derapplicationspecific.getApplicationTag()).append("]").append(s2).toString());
                for (s = asn1sequence.getObjects(); s.hasMoreElements(); _dumpAsString((new StringBuilder()).append(s1).append("    ").toString(), flag, (DERObject)s.nextElement(), derobject)) { }
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                derobject.append(s);
            }
            return derobject.toString();
        } else
        {
            return (new StringBuilder()).append(s1).append(s).append(" ApplicationSpecific[").append(derapplicationspecific.getApplicationTag()).append("] (").append(new String(Hex.encode(derapplicationspecific.getContents()))).append(")").append(s2).toString();
        }
    }
}
