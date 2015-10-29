// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPrivateKeySpec;
import java.security.spec.EllipticCurve;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.sec.ECPrivateKeyStructure;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x9.X962Parameters;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.jce.interfaces.ECPointEncoder;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.bouncycastle.jce.provider.asymmetric.ec.EC5Util;
import org.bouncycastle.jce.provider.asymmetric.ec.ECUtil;
import org.bouncycastle.jce.spec.ECNamedCurveSpec;
import org.bouncycastle.math.ec.ECFieldElement;

// Referenced classes of package org.bouncycastle.jce.provider:
//            PKCS12BagAttributeCarrierImpl, JCEECPublicKey, ProviderUtil

public class JCEECPrivateKey
    implements ECPrivateKey, org.bouncycastle.jce.interfaces.ECPrivateKey, PKCS12BagAttributeCarrier, ECPointEncoder
{

    private String algorithm;
    private PKCS12BagAttributeCarrierImpl attrCarrier;
    private BigInteger d;
    private ECParameterSpec ecSpec;
    private DERBitString publicKey;
    private boolean withCompression;

    protected JCEECPrivateKey()
    {
        algorithm = "EC";
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
    }

    public JCEECPrivateKey(String s, ECPrivateKeySpec ecprivatekeyspec)
    {
        algorithm = "EC";
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        algorithm = s;
        d = ecprivatekeyspec.getS();
        ecSpec = ecprivatekeyspec.getParams();
    }

    public JCEECPrivateKey(String s, ECPrivateKeyParameters ecprivatekeyparameters)
    {
        algorithm = "EC";
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        algorithm = s;
        d = ecprivatekeyparameters.getD();
        ecSpec = null;
    }

    public JCEECPrivateKey(String s, ECPrivateKeyParameters ecprivatekeyparameters, JCEECPublicKey jceecpublickey, ECParameterSpec ecparameterspec)
    {
        algorithm = "EC";
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        ECDomainParameters ecdomainparameters = ecprivatekeyparameters.getParameters();
        algorithm = s;
        d = ecprivatekeyparameters.getD();
        if (ecparameterspec == null)
        {
            ecSpec = new ECParameterSpec(EC5Util.convertCurve(ecdomainparameters.getCurve(), ecdomainparameters.getSeed()), new ECPoint(ecdomainparameters.getG().getX().toBigInteger(), ecdomainparameters.getG().getY().toBigInteger()), ecdomainparameters.getN(), ecdomainparameters.getH().intValue());
        } else
        {
            ecSpec = ecparameterspec;
        }
        publicKey = getPublicKeyDetails(jceecpublickey);
    }

    public JCEECPrivateKey(String s, ECPrivateKeyParameters ecprivatekeyparameters, JCEECPublicKey jceecpublickey, org.bouncycastle.jce.spec.ECParameterSpec ecparameterspec)
    {
        algorithm = "EC";
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        ECDomainParameters ecdomainparameters = ecprivatekeyparameters.getParameters();
        algorithm = s;
        d = ecprivatekeyparameters.getD();
        if (ecparameterspec == null)
        {
            ecSpec = new ECParameterSpec(EC5Util.convertCurve(ecdomainparameters.getCurve(), ecdomainparameters.getSeed()), new ECPoint(ecdomainparameters.getG().getX().toBigInteger(), ecdomainparameters.getG().getY().toBigInteger()), ecdomainparameters.getN(), ecdomainparameters.getH().intValue());
        } else
        {
            ecSpec = new ECParameterSpec(EC5Util.convertCurve(ecparameterspec.getCurve(), ecparameterspec.getSeed()), new ECPoint(ecparameterspec.getG().getX().toBigInteger(), ecparameterspec.getG().getY().toBigInteger()), ecparameterspec.getN(), ecparameterspec.getH().intValue());
        }
        publicKey = getPublicKeyDetails(jceecpublickey);
    }

    public JCEECPrivateKey(String s, JCEECPrivateKey jceecprivatekey)
    {
        algorithm = "EC";
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        algorithm = s;
        d = jceecprivatekey.d;
        ecSpec = jceecprivatekey.ecSpec;
        withCompression = jceecprivatekey.withCompression;
        attrCarrier = jceecprivatekey.attrCarrier;
        publicKey = jceecprivatekey.publicKey;
    }

    public JCEECPrivateKey(String s, org.bouncycastle.jce.spec.ECPrivateKeySpec ecprivatekeyspec)
    {
        algorithm = "EC";
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        algorithm = s;
        d = ecprivatekeyspec.getD();
        if (ecprivatekeyspec.getParams() != null)
        {
            ecSpec = EC5Util.convertSpec(EC5Util.convertCurve(ecprivatekeyspec.getParams().getCurve(), ecprivatekeyspec.getParams().getSeed()), ecprivatekeyspec.getParams());
            return;
        } else
        {
            ecSpec = null;
            return;
        }
    }

    public JCEECPrivateKey(ECPrivateKey ecprivatekey)
    {
        algorithm = "EC";
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        d = ecprivatekey.getS();
        algorithm = ecprivatekey.getAlgorithm();
        ecSpec = ecprivatekey.getParams();
    }

    JCEECPrivateKey(PrivateKeyInfo privatekeyinfo)
    {
        algorithm = "EC";
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        populateFromPrivKeyInfo(privatekeyinfo);
    }

    private DERBitString getPublicKeyDetails(JCEECPublicKey jceecpublickey)
    {
        try
        {
            jceecpublickey = SubjectPublicKeyInfo.getInstance(ASN1Object.fromByteArray(jceecpublickey.getEncoded())).getPublicKeyData();
        }
        // Misplaced declaration of an exception variable
        catch (JCEECPublicKey jceecpublickey)
        {
            return null;
        }
        return jceecpublickey;
    }

    private void populateFromPrivKeyInfo(PrivateKeyInfo privatekeyinfo)
    {
        Object obj = new X962Parameters((DERObject)privatekeyinfo.getAlgorithmId().getParameters());
        if (((X962Parameters) (obj)).isNamedCurve())
        {
            obj = (DERObjectIdentifier)((X962Parameters) (obj)).getParameters();
            Object obj1 = ECUtil.getNamedCurveByOid(((DERObjectIdentifier) (obj)));
            if (obj1 == null)
            {
                obj1 = ECGOST3410NamedCurves.getByOID(((DERObjectIdentifier) (obj)));
                EllipticCurve ellipticcurve = EC5Util.convertCurve(((ECDomainParameters) (obj1)).getCurve(), ((ECDomainParameters) (obj1)).getSeed());
                ecSpec = new ECNamedCurveSpec(ECGOST3410NamedCurves.getName(((DERObjectIdentifier) (obj))), ellipticcurve, new ECPoint(((ECDomainParameters) (obj1)).getG().getX().toBigInteger(), ((ECDomainParameters) (obj1)).getG().getY().toBigInteger()), ((ECDomainParameters) (obj1)).getN(), ((ECDomainParameters) (obj1)).getH());
            } else
            {
                EllipticCurve ellipticcurve1 = EC5Util.convertCurve(((X9ECParameters) (obj1)).getCurve(), ((X9ECParameters) (obj1)).getSeed());
                ecSpec = new ECNamedCurveSpec(ECUtil.getCurveName(((DERObjectIdentifier) (obj))), ellipticcurve1, new ECPoint(((X9ECParameters) (obj1)).getG().getX().toBigInteger(), ((X9ECParameters) (obj1)).getG().getY().toBigInteger()), ((X9ECParameters) (obj1)).getN(), ((X9ECParameters) (obj1)).getH());
            }
        } else
        if (((X962Parameters) (obj)).isImplicitlyCA())
        {
            ecSpec = null;
        } else
        {
            obj = new X9ECParameters((ASN1Sequence)((X962Parameters) (obj)).getParameters());
            ecSpec = new ECParameterSpec(EC5Util.convertCurve(((X9ECParameters) (obj)).getCurve(), ((X9ECParameters) (obj)).getSeed()), new ECPoint(((X9ECParameters) (obj)).getG().getX().toBigInteger(), ((X9ECParameters) (obj)).getG().getY().toBigInteger()), ((X9ECParameters) (obj)).getN(), ((X9ECParameters) (obj)).getH().intValue());
        }
        if (privatekeyinfo.getPrivateKey() instanceof DERInteger)
        {
            d = ((DERInteger)privatekeyinfo.getPrivateKey()).getValue();
            return;
        } else
        {
            privatekeyinfo = new ECPrivateKeyStructure((ASN1Sequence)privatekeyinfo.getPrivateKey());
            d = privatekeyinfo.getKey();
            publicKey = privatekeyinfo.getPublicKey();
            return;
        }
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        populateFromPrivKeyInfo(PrivateKeyInfo.getInstance(ASN1Object.fromByteArray((byte[])(byte[])objectinputstream.readObject())));
        algorithm = (String)objectinputstream.readObject();
        withCompression = objectinputstream.readBoolean();
        attrCarrier = new PKCS12BagAttributeCarrierImpl();
        attrCarrier.readObject(objectinputstream);
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        objectoutputstream.writeObject(getEncoded());
        objectoutputstream.writeObject(algorithm);
        objectoutputstream.writeBoolean(withCompression);
        attrCarrier.writeObject(objectoutputstream);
    }

    org.bouncycastle.jce.spec.ECParameterSpec engineGetSpec()
    {
        if (ecSpec != null)
        {
            return EC5Util.convertSpec(ecSpec, withCompression);
        } else
        {
            return ProviderUtil.getEcImplicitlyCa();
        }
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof JCEECPrivateKey)
        {
            if (getD().equals(((JCEECPrivateKey) (obj = (JCEECPrivateKey)obj)).getD()) && engineGetSpec().equals(((JCEECPrivateKey) (obj)).engineGetSpec()))
            {
                return true;
            }
        }
        return false;
    }

    public String getAlgorithm()
    {
        return algorithm;
    }

    public DEREncodable getBagAttribute(DERObjectIdentifier derobjectidentifier)
    {
        return attrCarrier.getBagAttribute(derobjectidentifier);
    }

    public Enumeration getBagAttributeKeys()
    {
        return attrCarrier.getBagAttributeKeys();
    }

    public BigInteger getD()
    {
        return d;
    }

    public byte[] getEncoded()
    {
        Object obj;
        ECPrivateKeyStructure ecprivatekeystructure;
        if (ecSpec instanceof ECNamedCurveSpec)
        {
            DERObjectIdentifier derobjectidentifier = ECUtil.getNamedCurveOid(((ECNamedCurveSpec)ecSpec).getName());
            obj = derobjectidentifier;
            if (derobjectidentifier == null)
            {
                obj = new DERObjectIdentifier(((ECNamedCurveSpec)ecSpec).getName());
            }
            obj = new X962Parameters(((DERObjectIdentifier) (obj)));
        } else
        if (ecSpec == null)
        {
            obj = new X962Parameters(DERNull.INSTANCE);
        } else
        {
            obj = EC5Util.convertCurve(ecSpec.getCurve());
            obj = new X962Parameters(new X9ECParameters(((org.bouncycastle.math.ec.ECCurve) (obj)), EC5Util.convertPoint(((org.bouncycastle.math.ec.ECCurve) (obj)), ecSpec.getGenerator(), withCompression), ecSpec.getOrder(), BigInteger.valueOf(ecSpec.getCofactor()), ecSpec.getCurve().getSeed()));
        }
        if (publicKey != null)
        {
            ecprivatekeystructure = new ECPrivateKeyStructure(getS(), publicKey, ((org.bouncycastle.asn1.ASN1Encodable) (obj)));
        } else
        {
            ecprivatekeystructure = new ECPrivateKeyStructure(getS(), ((org.bouncycastle.asn1.ASN1Encodable) (obj)));
        }
        if (algorithm.equals("ECGOST3410"))
        {
            obj = new PrivateKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.gostR3410_2001, ((X962Parameters) (obj)).getDERObject()), ecprivatekeystructure.getDERObject());
        } else
        {
            obj = new PrivateKeyInfo(new AlgorithmIdentifier(X9ObjectIdentifiers.id_ecPublicKey, ((X962Parameters) (obj)).getDERObject()), ecprivatekeystructure.getDERObject());
        }
        return ((PrivateKeyInfo) (obj)).getDEREncoded();
    }

    public String getFormat()
    {
        return "PKCS#8";
    }

    public org.bouncycastle.jce.spec.ECParameterSpec getParameters()
    {
        if (ecSpec == null)
        {
            return null;
        } else
        {
            return EC5Util.convertSpec(ecSpec, withCompression);
        }
    }

    public ECParameterSpec getParams()
    {
        return ecSpec;
    }

    public BigInteger getS()
    {
        return d;
    }

    public int hashCode()
    {
        return getD().hashCode() ^ engineGetSpec().hashCode();
    }

    public void setBagAttribute(DERObjectIdentifier derobjectidentifier, DEREncodable derencodable)
    {
        attrCarrier.setBagAttribute(derobjectidentifier, derencodable);
    }

    public void setPointFormat(String s)
    {
        boolean flag;
        if (!"UNCOMPRESSED".equalsIgnoreCase(s))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        withCompression = flag;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        String s = System.getProperty("line.separator");
        stringbuffer.append("EC Private Key").append(s);
        stringbuffer.append("             S: ").append(d.toString(16)).append(s);
        return stringbuffer.toString();
    }
}
