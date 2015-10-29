// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.voms;

import java.util.List;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.IetfAttrSyntax;
import org.bouncycastle.x509.X509Attribute;
import org.bouncycastle.x509.X509AttributeCertificate;

public class VOMSAttribute
{
    public class FQAN
    {

        String capability;
        String fqan;
        String group;
        String role;
        final VOMSAttribute this$0;

        public String getCapability()
        {
            if (group == null && fqan != null)
            {
                split();
            }
            return capability;
        }

        public String getFQAN()
        {
            if (fqan != null)
            {
                return fqan;
            }
            StringBuilder stringbuilder = (new StringBuilder()).append(group).append("/Role=");
            String s;
            if (role != null)
            {
                s = role;
            } else
            {
                s = "";
            }
            stringbuilder = stringbuilder.append(s);
            if (capability != null)
            {
                s = (new StringBuilder()).append("/Capability=").append(capability).toString();
            } else
            {
                s = "";
            }
            fqan = stringbuilder.append(s).toString();
            return fqan;
        }

        public String getGroup()
        {
            if (group == null && fqan != null)
            {
                split();
            }
            return group;
        }

        public String getRole()
        {
            if (group == null && fqan != null)
            {
                split();
            }
            return role;
        }

        protected void split()
        {
            Object obj = null;
            fqan.length();
            int i = fqan.indexOf("/Role=");
            if (i < 0)
            {
                return;
            }
            group = fqan.substring(0, i);
            int j = fqan.indexOf("/Capability=", i + 6);
            String s;
            String s1;
            if (j < 0)
            {
                s = fqan.substring(i + 6);
            } else
            {
                s = fqan.substring(i + 6, j);
            }
            s1 = s;
            if (s.length() == 0)
            {
                s1 = null;
            }
            role = s1;
            if (j < 0)
            {
                s = null;
            } else
            {
                s = fqan.substring(j + 12);
            }
            s1 = obj;
            if (s != null)
            {
                if (s.length() == 0)
                {
                    s1 = obj;
                } else
                {
                    s1 = s;
                }
            }
            capability = s1;
        }

        public String toString()
        {
            return getFQAN();
        }

        public FQAN(String s)
        {
            this$0 = VOMSAttribute.this;
            super();
            fqan = s;
        }

        public FQAN(String s, String s1, String s2)
        {
            this$0 = VOMSAttribute.this;
            super();
            group = s;
            role = s1;
            capability = s2;
        }
    }


    public static final String VOMS_ATTR_OID = "1.3.6.1.4.1.8005.100.100.4";
    private X509AttributeCertificate myAC;
    private Vector myFQANs;
    private String myHostPort;
    private Vector myStringList;
    private String myVo;

    public VOMSAttribute(X509AttributeCertificate x509attributecertificate)
    {
        X509Attribute ax509attribute[];
        myStringList = new Vector();
        myFQANs = new Vector();
        if (x509attributecertificate == null)
        {
            throw new IllegalArgumentException("VOMSAttribute: AttributeCertificate is NULL");
        }
        myAC = x509attributecertificate;
        ax509attribute = x509attributecertificate.getAttributes("1.3.6.1.4.1.8005.100.100.4");
        if (ax509attribute != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i = 0;
_L6:
        IetfAttrSyntax ietfattrsyntax;
        String s;
        int j;
        if (i == ax509attribute.length)
        {
            continue; /* Loop/switch isn't completed */
        }
        ietfattrsyntax = new IetfAttrSyntax((ASN1Sequence)ax509attribute[i].getValues()[0]);
        s = ((DERIA5String)GeneralName.getInstance(((ASN1Sequence)ietfattrsyntax.getPolicyAuthority().getDERObject()).getObjectAt(0)).getName()).getString();
        j = s.indexOf("://");
        if (j < 0)
        {
            break MISSING_BLOCK_LABEL_143;
        }
        if (j != s.length() - 1)
        {
            break MISSING_BLOCK_LABEL_179;
        }
        throw new IllegalArgumentException((new StringBuilder()).append("Bad encoding of VOMS policyAuthority : [").append(s).append("]").toString());
        try
        {
            myVo = s.substring(0, j);
            myHostPort = s.substring(j + 3);
            if (ietfattrsyntax.getValueType() != 1)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("VOMS attribute values are not encoded as octet strings, policyAuthority = ").append(s).toString());
            }
        }
        // Misplaced declaration of an exception variable
        catch (X509AttributeCertificate x509attributecertificate)
        {
            throw x509attributecertificate;
        }
        catch (Exception exception)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Badly encoded VOMS extension in AC issued by ").append(x509attributecertificate.getIssuer()).toString());
        }
        ASN1OctetString aasn1octetstring[] = (ASN1OctetString[])(ASN1OctetString[])ietfattrsyntax.getValues();
        j = 0;
_L4:
        if (j == aasn1octetstring.length)
        {
            break; /* Loop/switch isn't completed */
        }
        String s1 = new String(aasn1octetstring[j].getOctets());
        FQAN fqan = new FQAN(s1);
        if (!myStringList.contains(s1) && s1.startsWith((new StringBuilder()).append("/").append(myVo).append("/").toString()))
        {
            myStringList.add(s1);
            myFQANs.add(fqan);
        }
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
        if (true) goto _L1; else goto _L7
_L7:
    }

    public X509AttributeCertificate getAC()
    {
        return myAC;
    }

    public List getFullyQualifiedAttributes()
    {
        return myStringList;
    }

    public String getHostPort()
    {
        return myHostPort;
    }

    public List getListOfFQAN()
    {
        return myFQANs;
    }

    public String getVO()
    {
        return myVo;
    }

    public String toString()
    {
        return (new StringBuilder()).append("VO      :").append(myVo).append("\n").append("HostPort:").append(myHostPort).append("\n").append("FQANs   :").append(myFQANs).toString();
    }
}
