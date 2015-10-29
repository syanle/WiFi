// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.math.BigInteger;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.bouncycastle.asn1.oiw.ElGamalParameter;
import org.bouncycastle.asn1.pkcs.DHParameter;
import org.bouncycastle.asn1.pkcs.PBKDF2Params;
import org.bouncycastle.asn1.pkcs.PKCS12PBEParams;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.RC2CBCParameter;
import org.bouncycastle.asn1.pkcs.RSAESOAEPparams;
import org.bouncycastle.asn1.pkcs.RSASSAPSSparams;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.DSAParameter;
import org.bouncycastle.jce.spec.ElGamalParameterSpec;
import org.bouncycastle.jce.spec.GOST3410ParameterSpec;
import org.bouncycastle.jce.spec.GOST3410PublicKeyParameterSetSpec;
import org.bouncycastle.jce.spec.IESParameterSpec;
import org.bouncycastle.util.Arrays;

// Referenced classes of package org.bouncycastle.jce.provider:
//            JCEDigestUtil

public abstract class JDKAlgorithmParameters extends AlgorithmParametersSpi
{
    public static class DH extends JDKAlgorithmParameters
    {

        DHParameterSpec currentSpec;

        protected byte[] engineGetEncoded()
        {
            DHParameter dhparameter = new DHParameter(currentSpec.getP(), currentSpec.getG(), currentSpec.getL());
            byte abyte0[];
            try
            {
                abyte0 = dhparameter.getEncoded("DER");
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException("Error encoding DHParameters");
            }
            return abyte0;
        }

        protected byte[] engineGetEncoded(String s)
        {
            if (isASN1FormatString(s))
            {
                return engineGetEncoded();
            } else
            {
                return null;
            }
        }

        protected void engineInit(AlgorithmParameterSpec algorithmparameterspec)
            throws InvalidParameterSpecException
        {
            if (!(algorithmparameterspec instanceof DHParameterSpec))
            {
                throw new InvalidParameterSpecException("DHParameterSpec required to initialise a Diffie-Hellman algorithm parameters object");
            } else
            {
                currentSpec = (DHParameterSpec)algorithmparameterspec;
                return;
            }
        }

        protected void engineInit(byte abyte0[])
            throws IOException
        {
            try
            {
                abyte0 = new DHParameter((ASN1Sequence)ASN1Object.fromByteArray(abyte0));
                if (abyte0.getL() != null)
                {
                    currentSpec = new DHParameterSpec(abyte0.getP(), abyte0.getG(), abyte0.getL().intValue());
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new IOException("Not a valid DH Parameter encoding.");
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new IOException("Not a valid DH Parameter encoding.");
            }
            currentSpec = new DHParameterSpec(abyte0.getP(), abyte0.getG());
            return;
        }

        protected void engineInit(byte abyte0[], String s)
            throws IOException
        {
            if (isASN1FormatString(s))
            {
                engineInit(abyte0);
                return;
            } else
            {
                throw new IOException((new StringBuilder()).append("Unknown parameter format ").append(s).toString());
            }
        }

        protected String engineToString()
        {
            return "Diffie-Hellman Parameters";
        }

        protected AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
            throws InvalidParameterSpecException
        {
            if (class1 == javax/crypto/spec/DHParameterSpec)
            {
                return currentSpec;
            } else
            {
                throw new InvalidParameterSpecException("unknown parameter spec passed to DH parameters object.");
            }
        }

        public DH()
        {
        }
    }

    public static class DSA extends JDKAlgorithmParameters
    {

        DSAParameterSpec currentSpec;

        protected byte[] engineGetEncoded()
        {
            DSAParameter dsaparameter = new DSAParameter(currentSpec.getP(), currentSpec.getQ(), currentSpec.getG());
            byte abyte0[];
            try
            {
                abyte0 = dsaparameter.getEncoded("DER");
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException("Error encoding DSAParameters");
            }
            return abyte0;
        }

        protected byte[] engineGetEncoded(String s)
        {
            if (isASN1FormatString(s))
            {
                return engineGetEncoded();
            } else
            {
                return null;
            }
        }

        protected void engineInit(AlgorithmParameterSpec algorithmparameterspec)
            throws InvalidParameterSpecException
        {
            if (!(algorithmparameterspec instanceof DSAParameterSpec))
            {
                throw new InvalidParameterSpecException("DSAParameterSpec required to initialise a DSA algorithm parameters object");
            } else
            {
                currentSpec = (DSAParameterSpec)algorithmparameterspec;
                return;
            }
        }

        protected void engineInit(byte abyte0[])
            throws IOException
        {
            try
            {
                abyte0 = new DSAParameter((ASN1Sequence)ASN1Object.fromByteArray(abyte0));
                currentSpec = new DSAParameterSpec(abyte0.getP(), abyte0.getQ(), abyte0.getG());
                return;
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new IOException("Not a valid DSA Parameter encoding.");
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new IOException("Not a valid DSA Parameter encoding.");
            }
        }

        protected void engineInit(byte abyte0[], String s)
            throws IOException
        {
            if (isASN1FormatString(s) || s.equalsIgnoreCase("X.509"))
            {
                engineInit(abyte0);
                return;
            } else
            {
                throw new IOException((new StringBuilder()).append("Unknown parameter format ").append(s).toString());
            }
        }

        protected String engineToString()
        {
            return "DSA Parameters";
        }

        protected AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
            throws InvalidParameterSpecException
        {
            if (class1 == java/security/spec/DSAParameterSpec)
            {
                return currentSpec;
            } else
            {
                throw new InvalidParameterSpecException("unknown parameter spec passed to DSA parameters object.");
            }
        }

        public DSA()
        {
        }
    }

    public static class ElGamal extends JDKAlgorithmParameters
    {

        ElGamalParameterSpec currentSpec;

        protected byte[] engineGetEncoded()
        {
            ElGamalParameter elgamalparameter = new ElGamalParameter(currentSpec.getP(), currentSpec.getG());
            byte abyte0[];
            try
            {
                abyte0 = elgamalparameter.getEncoded("DER");
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException("Error encoding ElGamalParameters");
            }
            return abyte0;
        }

        protected byte[] engineGetEncoded(String s)
        {
            if (isASN1FormatString(s) || s.equalsIgnoreCase("X.509"))
            {
                return engineGetEncoded();
            } else
            {
                return null;
            }
        }

        protected void engineInit(AlgorithmParameterSpec algorithmparameterspec)
            throws InvalidParameterSpecException
        {
            if (!(algorithmparameterspec instanceof ElGamalParameterSpec) && !(algorithmparameterspec instanceof DHParameterSpec))
            {
                throw new InvalidParameterSpecException("DHParameterSpec required to initialise a ElGamal algorithm parameters object");
            }
            if (algorithmparameterspec instanceof ElGamalParameterSpec)
            {
                currentSpec = (ElGamalParameterSpec)algorithmparameterspec;
                return;
            } else
            {
                algorithmparameterspec = (DHParameterSpec)algorithmparameterspec;
                currentSpec = new ElGamalParameterSpec(algorithmparameterspec.getP(), algorithmparameterspec.getG());
                return;
            }
        }

        protected void engineInit(byte abyte0[])
            throws IOException
        {
            try
            {
                abyte0 = new ElGamalParameter((ASN1Sequence)ASN1Object.fromByteArray(abyte0));
                currentSpec = new ElGamalParameterSpec(abyte0.getP(), abyte0.getG());
                return;
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new IOException("Not a valid ElGamal Parameter encoding.");
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new IOException("Not a valid ElGamal Parameter encoding.");
            }
        }

        protected void engineInit(byte abyte0[], String s)
            throws IOException
        {
            if (isASN1FormatString(s) || s.equalsIgnoreCase("X.509"))
            {
                engineInit(abyte0);
                return;
            } else
            {
                throw new IOException((new StringBuilder()).append("Unknown parameter format ").append(s).toString());
            }
        }

        protected String engineToString()
        {
            return "ElGamal Parameters";
        }

        protected AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
            throws InvalidParameterSpecException
        {
            if (class1 == org/bouncycastle/jce/spec/ElGamalParameterSpec)
            {
                return currentSpec;
            }
            if (class1 == javax/crypto/spec/DHParameterSpec)
            {
                return new DHParameterSpec(currentSpec.getP(), currentSpec.getG());
            } else
            {
                throw new InvalidParameterSpecException("unknown parameter spec passed to ElGamal parameters object.");
            }
        }

        public ElGamal()
        {
        }
    }

    public static class GOST3410 extends JDKAlgorithmParameters
    {

        GOST3410ParameterSpec currentSpec;

        protected byte[] engineGetEncoded()
        {
            GOST3410PublicKeyAlgParameters gost3410publickeyalgparameters = new GOST3410PublicKeyAlgParameters(new DERObjectIdentifier(currentSpec.getPublicKeyParamSetOID()), new DERObjectIdentifier(currentSpec.getDigestParamSetOID()), new DERObjectIdentifier(currentSpec.getEncryptionParamSetOID()));
            byte abyte0[];
            try
            {
                abyte0 = gost3410publickeyalgparameters.getEncoded("DER");
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException("Error encoding GOST3410Parameters");
            }
            return abyte0;
        }

        protected byte[] engineGetEncoded(String s)
        {
            if (isASN1FormatString(s) || s.equalsIgnoreCase("X.509"))
            {
                return engineGetEncoded();
            } else
            {
                return null;
            }
        }

        protected void engineInit(AlgorithmParameterSpec algorithmparameterspec)
            throws InvalidParameterSpecException
        {
            if (!(algorithmparameterspec instanceof GOST3410ParameterSpec))
            {
                throw new InvalidParameterSpecException("GOST3410ParameterSpec required to initialise a GOST3410 algorithm parameters object");
            } else
            {
                currentSpec = (GOST3410ParameterSpec)algorithmparameterspec;
                return;
            }
        }

        protected void engineInit(byte abyte0[])
            throws IOException
        {
            try
            {
                currentSpec = GOST3410ParameterSpec.fromPublicKeyAlg(new GOST3410PublicKeyAlgParameters((ASN1Sequence)ASN1Object.fromByteArray(abyte0)));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new IOException("Not a valid GOST3410 Parameter encoding.");
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new IOException("Not a valid GOST3410 Parameter encoding.");
            }
        }

        protected void engineInit(byte abyte0[], String s)
            throws IOException
        {
            if (isASN1FormatString(s) || s.equalsIgnoreCase("X.509"))
            {
                engineInit(abyte0);
                return;
            } else
            {
                throw new IOException((new StringBuilder()).append("Unknown parameter format ").append(s).toString());
            }
        }

        protected String engineToString()
        {
            return "GOST3410 Parameters";
        }

        protected AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
            throws InvalidParameterSpecException
        {
            if (class1 == org/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec)
            {
                return currentSpec;
            } else
            {
                throw new InvalidParameterSpecException("unknown parameter spec passed to GOST3410 parameters object.");
            }
        }

        public GOST3410()
        {
        }
    }

    public static class IES extends JDKAlgorithmParameters
    {

        IESParameterSpec currentSpec;

        protected byte[] engineGetEncoded()
        {
            byte abyte0[];
            try
            {
                ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
                asn1encodablevector.add(new DEROctetString(currentSpec.getDerivationV()));
                asn1encodablevector.add(new DEROctetString(currentSpec.getEncodingV()));
                asn1encodablevector.add(new DERInteger(currentSpec.getMacKeySize()));
                abyte0 = (new DERSequence(asn1encodablevector)).getEncoded("DER");
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException("Error encoding IESParameters");
            }
            return abyte0;
        }

        protected byte[] engineGetEncoded(String s)
        {
            if (isASN1FormatString(s) || s.equalsIgnoreCase("X.509"))
            {
                return engineGetEncoded();
            } else
            {
                return null;
            }
        }

        protected void engineInit(AlgorithmParameterSpec algorithmparameterspec)
            throws InvalidParameterSpecException
        {
            if (!(algorithmparameterspec instanceof IESParameterSpec))
            {
                throw new InvalidParameterSpecException("IESParameterSpec required to initialise a IES algorithm parameters object");
            } else
            {
                currentSpec = (IESParameterSpec)algorithmparameterspec;
                return;
            }
        }

        protected void engineInit(byte abyte0[])
            throws IOException
        {
            try
            {
                abyte0 = (ASN1Sequence)ASN1Object.fromByteArray(abyte0);
                currentSpec = new IESParameterSpec(((ASN1OctetString)abyte0.getObjectAt(0)).getOctets(), ((ASN1OctetString)abyte0.getObjectAt(0)).getOctets(), ((DERInteger)abyte0.getObjectAt(0)).getValue().intValue());
                return;
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new IOException("Not a valid IES Parameter encoding.");
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new IOException("Not a valid IES Parameter encoding.");
            }
        }

        protected void engineInit(byte abyte0[], String s)
            throws IOException
        {
            if (isASN1FormatString(s) || s.equalsIgnoreCase("X.509"))
            {
                engineInit(abyte0);
                return;
            } else
            {
                throw new IOException((new StringBuilder()).append("Unknown parameter format ").append(s).toString());
            }
        }

        protected String engineToString()
        {
            return "IES Parameters";
        }

        protected AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
            throws InvalidParameterSpecException
        {
            if (class1 == org/bouncycastle/jce/spec/IESParameterSpec)
            {
                return currentSpec;
            } else
            {
                throw new InvalidParameterSpecException("unknown parameter spec passed to ElGamal parameters object.");
            }
        }

        public IES()
        {
        }
    }

    public static class IVAlgorithmParameters extends JDKAlgorithmParameters
    {

        private byte iv[];

        protected byte[] engineGetEncoded()
            throws IOException
        {
            return engineGetEncoded("ASN.1");
        }

        protected byte[] engineGetEncoded(String s)
            throws IOException
        {
            if (isASN1FormatString(s))
            {
                return (new DEROctetString(engineGetEncoded("RAW"))).getEncoded();
            }
            if (s.equals("RAW"))
            {
                return Arrays.clone(iv);
            } else
            {
                return null;
            }
        }

        protected void engineInit(AlgorithmParameterSpec algorithmparameterspec)
            throws InvalidParameterSpecException
        {
            if (!(algorithmparameterspec instanceof IvParameterSpec))
            {
                throw new InvalidParameterSpecException("IvParameterSpec required to initialise a IV parameters algorithm parameters object");
            } else
            {
                iv = ((IvParameterSpec)algorithmparameterspec).getIV();
                return;
            }
        }

        protected void engineInit(byte abyte0[])
            throws IOException
        {
            byte abyte1[] = abyte0;
            if (abyte0.length % 8 != 0)
            {
                abyte1 = abyte0;
                if (abyte0[0] == 4)
                {
                    abyte1 = abyte0;
                    if (abyte0[1] == abyte0.length - 2)
                    {
                        abyte1 = ((ASN1OctetString)ASN1Object.fromByteArray(abyte0)).getOctets();
                    }
                }
            }
            iv = Arrays.clone(abyte1);
        }

        protected void engineInit(byte abyte0[], String s)
            throws IOException
        {
            if (isASN1FormatString(s))
            {
                try
                {
                    engineInit(((ASN1OctetString)ASN1Object.fromByteArray(abyte0)).getOctets());
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (byte abyte0[])
                {
                    throw new IOException((new StringBuilder()).append("Exception decoding: ").append(abyte0).toString());
                }
            }
            if (s.equals("RAW"))
            {
                engineInit(abyte0);
                return;
            } else
            {
                throw new IOException("Unknown parameters format in IV parameters object");
            }
        }

        protected String engineToString()
        {
            return "IV Parameters";
        }

        protected AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
            throws InvalidParameterSpecException
        {
            if (class1 == javax/crypto/spec/IvParameterSpec)
            {
                return new IvParameterSpec(iv);
            } else
            {
                throw new InvalidParameterSpecException("unknown parameter spec passed to IV parameters object.");
            }
        }

        public IVAlgorithmParameters()
        {
        }
    }

    public static class OAEP extends JDKAlgorithmParameters
    {

        OAEPParameterSpec currentSpec;

        protected byte[] engineGetEncoded()
        {
            Object obj = new AlgorithmIdentifier(JCEDigestUtil.getOID(currentSpec.getDigestAlgorithm()), new DERNull());
            Object obj1 = (MGF1ParameterSpec)currentSpec.getMGFParameters();
            obj1 = new AlgorithmIdentifier(PKCSObjectIdentifiers.id_mgf1, new AlgorithmIdentifier(JCEDigestUtil.getOID(((MGF1ParameterSpec) (obj1)).getDigestAlgorithm()), new DERNull()));
            javax.crypto.spec.PSource.PSpecified pspecified = (javax.crypto.spec.PSource.PSpecified)currentSpec.getPSource();
            obj = new RSAESOAEPparams(((AlgorithmIdentifier) (obj)), ((AlgorithmIdentifier) (obj1)), new AlgorithmIdentifier(PKCSObjectIdentifiers.id_pSpecified, new DEROctetString(pspecified.getValue())));
            byte abyte0[];
            try
            {
                abyte0 = ((RSAESOAEPparams) (obj)).getEncoded("DER");
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException("Error encoding OAEPParameters");
            }
            return abyte0;
        }

        protected byte[] engineGetEncoded(String s)
        {
            if (isASN1FormatString(s) || s.equalsIgnoreCase("X.509"))
            {
                return engineGetEncoded();
            } else
            {
                return null;
            }
        }

        protected void engineInit(AlgorithmParameterSpec algorithmparameterspec)
            throws InvalidParameterSpecException
        {
            if (!(algorithmparameterspec instanceof OAEPParameterSpec))
            {
                throw new InvalidParameterSpecException("OAEPParameterSpec required to initialise an OAEP algorithm parameters object");
            } else
            {
                currentSpec = (OAEPParameterSpec)algorithmparameterspec;
                return;
            }
        }

        protected void engineInit(byte abyte0[])
            throws IOException
        {
            try
            {
                abyte0 = new RSAESOAEPparams((ASN1Sequence)ASN1Object.fromByteArray(abyte0));
                currentSpec = new OAEPParameterSpec(abyte0.getHashAlgorithm().getObjectId().getId(), abyte0.getMaskGenAlgorithm().getObjectId().getId(), new MGF1ParameterSpec(AlgorithmIdentifier.getInstance(abyte0.getMaskGenAlgorithm().getParameters()).getObjectId().getId()), new javax.crypto.spec.PSource.PSpecified(ASN1OctetString.getInstance(abyte0.getPSourceAlgorithm().getParameters()).getOctets()));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new IOException("Not a valid OAEP Parameter encoding.");
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new IOException("Not a valid OAEP Parameter encoding.");
            }
        }

        protected void engineInit(byte abyte0[], String s)
            throws IOException
        {
            if (s.equalsIgnoreCase("X.509") || s.equalsIgnoreCase("ASN.1"))
            {
                engineInit(abyte0);
                return;
            } else
            {
                throw new IOException((new StringBuilder()).append("Unknown parameter format ").append(s).toString());
            }
        }

        protected String engineToString()
        {
            return "OAEP Parameters";
        }

        protected AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
            throws InvalidParameterSpecException
        {
            if (class1 == javax/crypto/spec/OAEPParameterSpec && currentSpec != null)
            {
                return currentSpec;
            } else
            {
                throw new InvalidParameterSpecException("unknown parameter spec passed to OAEP parameters object.");
            }
        }

        public OAEP()
        {
        }
    }

    public static class PBKDF2 extends JDKAlgorithmParameters
    {

        PBKDF2Params params;

        protected byte[] engineGetEncoded()
        {
            byte abyte0[];
            try
            {
                abyte0 = params.getEncoded("DER");
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException((new StringBuilder()).append("Oooops! ").append(ioexception.toString()).toString());
            }
            return abyte0;
        }

        protected byte[] engineGetEncoded(String s)
        {
            if (isASN1FormatString(s))
            {
                return engineGetEncoded();
            } else
            {
                return null;
            }
        }

        protected void engineInit(AlgorithmParameterSpec algorithmparameterspec)
            throws InvalidParameterSpecException
        {
            if (!(algorithmparameterspec instanceof PBEParameterSpec))
            {
                throw new InvalidParameterSpecException("PBEParameterSpec required to initialise a PKCS12 PBE parameters algorithm parameters object");
            } else
            {
                algorithmparameterspec = (PBEParameterSpec)algorithmparameterspec;
                params = new PBKDF2Params(algorithmparameterspec.getSalt(), algorithmparameterspec.getIterationCount());
                return;
            }
        }

        protected void engineInit(byte abyte0[])
            throws IOException
        {
            params = PBKDF2Params.getInstance(ASN1Object.fromByteArray(abyte0));
        }

        protected void engineInit(byte abyte0[], String s)
            throws IOException
        {
            if (isASN1FormatString(s))
            {
                engineInit(abyte0);
                return;
            } else
            {
                throw new IOException("Unknown parameters format in PWRIKEK parameters object");
            }
        }

        protected String engineToString()
        {
            return "PBKDF2 Parameters";
        }

        protected AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
            throws InvalidParameterSpecException
        {
            if (class1 == javax/crypto/spec/PBEParameterSpec)
            {
                return new PBEParameterSpec(params.getSalt(), params.getIterationCount().intValue());
            } else
            {
                throw new InvalidParameterSpecException("unknown parameter spec passed to PKCS12 PBE parameters object.");
            }
        }

        public PBKDF2()
        {
        }
    }

    public static class PKCS12PBE extends JDKAlgorithmParameters
    {

        PKCS12PBEParams params;

        protected byte[] engineGetEncoded()
        {
            byte abyte0[];
            try
            {
                abyte0 = params.getEncoded("DER");
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException((new StringBuilder()).append("Oooops! ").append(ioexception.toString()).toString());
            }
            return abyte0;
        }

        protected byte[] engineGetEncoded(String s)
        {
            if (isASN1FormatString(s))
            {
                return engineGetEncoded();
            } else
            {
                return null;
            }
        }

        protected void engineInit(AlgorithmParameterSpec algorithmparameterspec)
            throws InvalidParameterSpecException
        {
            if (!(algorithmparameterspec instanceof PBEParameterSpec))
            {
                throw new InvalidParameterSpecException("PBEParameterSpec required to initialise a PKCS12 PBE parameters algorithm parameters object");
            } else
            {
                algorithmparameterspec = (PBEParameterSpec)algorithmparameterspec;
                params = new PKCS12PBEParams(algorithmparameterspec.getSalt(), algorithmparameterspec.getIterationCount());
                return;
            }
        }

        protected void engineInit(byte abyte0[])
            throws IOException
        {
            params = PKCS12PBEParams.getInstance(ASN1Object.fromByteArray(abyte0));
        }

        protected void engineInit(byte abyte0[], String s)
            throws IOException
        {
            if (isASN1FormatString(s))
            {
                engineInit(abyte0);
                return;
            } else
            {
                throw new IOException("Unknown parameters format in PKCS12 PBE parameters object");
            }
        }

        protected String engineToString()
        {
            return "PKCS12 PBE Parameters";
        }

        protected AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
            throws InvalidParameterSpecException
        {
            if (class1 == javax/crypto/spec/PBEParameterSpec)
            {
                return new PBEParameterSpec(params.getIV(), params.getIterations().intValue());
            } else
            {
                throw new InvalidParameterSpecException("unknown parameter spec passed to PKCS12 PBE parameters object.");
            }
        }

        public PKCS12PBE()
        {
        }
    }

    public static class PSS extends JDKAlgorithmParameters
    {

        PSSParameterSpec currentSpec;

        protected byte[] engineGetEncoded()
            throws IOException
        {
            PSSParameterSpec pssparameterspec = currentSpec;
            AlgorithmIdentifier algorithmidentifier = new AlgorithmIdentifier(JCEDigestUtil.getOID(pssparameterspec.getDigestAlgorithm()), new DERNull());
            MGF1ParameterSpec mgf1parameterspec = (MGF1ParameterSpec)pssparameterspec.getMGFParameters();
            return (new RSASSAPSSparams(algorithmidentifier, new AlgorithmIdentifier(PKCSObjectIdentifiers.id_mgf1, new AlgorithmIdentifier(JCEDigestUtil.getOID(mgf1parameterspec.getDigestAlgorithm()), new DERNull())), new DERInteger(pssparameterspec.getSaltLength()), new DERInteger(pssparameterspec.getTrailerField()))).getEncoded("DER");
        }

        protected byte[] engineGetEncoded(String s)
            throws IOException
        {
            if (s.equalsIgnoreCase("X.509") || s.equalsIgnoreCase("ASN.1"))
            {
                return engineGetEncoded();
            } else
            {
                return null;
            }
        }

        protected void engineInit(AlgorithmParameterSpec algorithmparameterspec)
            throws InvalidParameterSpecException
        {
            if (!(algorithmparameterspec instanceof PSSParameterSpec))
            {
                throw new InvalidParameterSpecException("PSSParameterSpec required to initialise an PSS algorithm parameters object");
            } else
            {
                currentSpec = (PSSParameterSpec)algorithmparameterspec;
                return;
            }
        }

        protected void engineInit(byte abyte0[])
            throws IOException
        {
            try
            {
                abyte0 = new RSASSAPSSparams((ASN1Sequence)ASN1Object.fromByteArray(abyte0));
                currentSpec = new PSSParameterSpec(abyte0.getHashAlgorithm().getObjectId().getId(), abyte0.getMaskGenAlgorithm().getObjectId().getId(), new MGF1ParameterSpec(AlgorithmIdentifier.getInstance(abyte0.getMaskGenAlgorithm().getParameters()).getObjectId().getId()), abyte0.getSaltLength().getValue().intValue(), abyte0.getTrailerField().getValue().intValue());
                return;
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new IOException("Not a valid PSS Parameter encoding.");
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new IOException("Not a valid PSS Parameter encoding.");
            }
        }

        protected void engineInit(byte abyte0[], String s)
            throws IOException
        {
            if (isASN1FormatString(s) || s.equalsIgnoreCase("X.509"))
            {
                engineInit(abyte0);
                return;
            } else
            {
                throw new IOException((new StringBuilder()).append("Unknown parameter format ").append(s).toString());
            }
        }

        protected String engineToString()
        {
            return "PSS Parameters";
        }

        protected AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
            throws InvalidParameterSpecException
        {
            if (class1 == java/security/spec/PSSParameterSpec && currentSpec != null)
            {
                return currentSpec;
            } else
            {
                throw new InvalidParameterSpecException("unknown parameter spec passed to PSS parameters object.");
            }
        }

        public PSS()
        {
        }
    }

    public static class RC2AlgorithmParameters extends JDKAlgorithmParameters
    {

        private static final short ekb[] = {
            93, 190, 155, 139, 17, 153, 110, 77, 89, 243, 
            133, 166, 63, 183, 131, 197, 228, 115, 107, 58, 
            104, 90, 192, 71, 160, 100, 52, 12, 241, 208, 
            82, 165, 185, 30, 150, 67, 65, 216, 212, 44, 
            219, 248, 7, 119, 42, 202, 235, 239, 16, 28, 
            22, 13, 56, 114, 47, 137, 193, 249, 128, 196, 
            109, 174, 48, 61, 206, 32, 99, 254, 230, 26, 
            199, 184, 80, 232, 36, 23, 252, 37, 111, 187, 
            106, 163, 68, 83, 217, 162, 1, 171, 188, 182, 
            31, 152, 238, 154, 167, 45, 79, 158, 142, 172, 
            224, 198, 73, 70, 41, 244, 148, 138, 175, 225, 
            91, 195, 179, 123, 87, 209, 124, 156, 237, 135, 
            64, 140, 226, 203, 147, 20, 201, 97, 46, 229, 
            204, 246, 94, 168, 92, 214, 117, 141, 98, 149, 
            88, 105, 118, 161, 74, 181, 85, 9, 120, 51, 
            130, 215, 221, 121, 245, 27, 11, 222, 38, 33, 
            40, 116, 4, 151, 86, 223, 60, 240, 55, 57, 
            220, 255, 6, 164, 234, 66, 8, 218, 180, 113, 
            176, 207, 18, 122, 78, 250, 108, 29, 132, 0, 
            200, 127, 145, 69, 170, 43, 194, 177, 143, 213, 
            186, 242, 173, 25, 178, 103, 54, 247, 15, 10, 
            146, 125, 227, 157, 233, 144, 62, 35, 39, 102, 
            19, 236, 129, 21, 189, 34, 191, 159, 126, 169, 
            81, 75, 76, 251, 2, 211, 112, 134, 49, 231, 
            59, 5, 3, 84, 96, 72, 101, 24, 210, 205, 
            95, 50, 136, 14, 53, 253
        };
        private static final short table[] = {
            189, 86, 234, 242, 162, 241, 172, 42, 176, 147, 
            209, 156, 27, 51, 253, 208, 48, 4, 182, 220, 
            125, 223, 50, 75, 247, 203, 69, 155, 49, 187, 
            33, 90, 65, 159, 225, 217, 74, 77, 158, 218, 
            160, 104, 44, 195, 39, 95, 128, 54, 62, 238, 
            251, 149, 26, 254, 206, 168, 52, 169, 19, 240, 
            166, 63, 216, 12, 120, 36, 175, 35, 82, 193, 
            103, 23, 245, 102, 144, 231, 232, 7, 184, 96, 
            72, 230, 30, 83, 243, 146, 164, 114, 140, 8, 
            21, 110, 134, 0, 132, 250, 244, 127, 138, 66, 
            25, 246, 219, 205, 20, 141, 80, 18, 186, 60, 
            6, 78, 236, 179, 53, 17, 161, 136, 142, 43, 
            148, 153, 183, 113, 116, 211, 228, 191, 58, 222, 
            150, 14, 188, 10, 237, 119, 252, 55, 107, 3, 
            121, 137, 98, 198, 215, 192, 210, 124, 106, 139, 
            34, 163, 91, 5, 93, 2, 117, 213, 97, 227, 
            24, 143, 85, 81, 173, 31, 11, 94, 133, 229, 
            194, 87, 99, 202, 61, 108, 180, 197, 204, 112, 
            178, 145, 89, 13, 71, 32, 200, 79, 88, 224, 
            1, 226, 22, 56, 196, 111, 59, 15, 101, 70, 
            190, 126, 45, 123, 130, 249, 64, 181, 29, 115, 
            248, 235, 38, 199, 135, 151, 37, 84, 177, 40, 
            170, 152, 157, 165, 100, 109, 122, 212, 16, 129, 
            68, 239, 73, 214, 174, 46, 221, 118, 92, 47, 
            167, 28, 201, 9, 105, 154, 131, 207, 41, 57, 
            185, 233, 76, 255, 67, 171
        };
        private byte iv[];
        private int parameterVersion;

        protected byte[] engineGetEncoded()
        {
            return Arrays.clone(iv);
        }

        protected byte[] engineGetEncoded(String s)
            throws IOException
        {
            if (isASN1FormatString(s))
            {
                if (parameterVersion == -1)
                {
                    return (new RC2CBCParameter(engineGetEncoded())).getEncoded();
                } else
                {
                    return (new RC2CBCParameter(parameterVersion, engineGetEncoded())).getEncoded();
                }
            }
            if (s.equals("RAW"))
            {
                return engineGetEncoded();
            } else
            {
                return null;
            }
        }

        protected void engineInit(AlgorithmParameterSpec algorithmparameterspec)
            throws InvalidParameterSpecException
        {
            if (algorithmparameterspec instanceof IvParameterSpec)
            {
                iv = ((IvParameterSpec)algorithmparameterspec).getIV();
                return;
            }
            if (algorithmparameterspec instanceof RC2ParameterSpec)
            {
                int i = ((RC2ParameterSpec)algorithmparameterspec).getEffectiveKeyBits();
                if (i != -1)
                {
                    if (i < 256)
                    {
                        parameterVersion = table[i];
                    } else
                    {
                        parameterVersion = i;
                    }
                }
                iv = ((RC2ParameterSpec)algorithmparameterspec).getIV();
                return;
            } else
            {
                throw new InvalidParameterSpecException("IvParameterSpec or RC2ParameterSpec required to initialise a RC2 parameters algorithm parameters object");
            }
        }

        protected void engineInit(byte abyte0[])
            throws IOException
        {
            iv = Arrays.clone(abyte0);
        }

        protected void engineInit(byte abyte0[], String s)
            throws IOException
        {
            if (isASN1FormatString(s))
            {
                abyte0 = RC2CBCParameter.getInstance(ASN1Object.fromByteArray(abyte0));
                if (abyte0.getRC2ParameterVersion() != null)
                {
                    parameterVersion = abyte0.getRC2ParameterVersion().intValue();
                }
                iv = abyte0.getIV();
                return;
            }
            if (s.equals("RAW"))
            {
                engineInit(abyte0);
                return;
            } else
            {
                throw new IOException("Unknown parameters format in IV parameters object");
            }
        }

        protected String engineToString()
        {
            return "RC2 Parameters";
        }

        protected AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
            throws InvalidParameterSpecException
        {
            if (class1 == javax/crypto/spec/RC2ParameterSpec && parameterVersion != -1)
            {
                if (parameterVersion < 256)
                {
                    return new RC2ParameterSpec(ekb[parameterVersion], iv);
                } else
                {
                    return new RC2ParameterSpec(parameterVersion, iv);
                }
            }
            if (class1 == javax/crypto/spec/IvParameterSpec)
            {
                return new IvParameterSpec(iv);
            } else
            {
                throw new InvalidParameterSpecException("unknown parameter spec passed to RC2 parameters object.");
            }
        }


        public RC2AlgorithmParameters()
        {
            parameterVersion = 58;
        }
    }


    public JDKAlgorithmParameters()
    {
    }

    protected AlgorithmParameterSpec engineGetParameterSpec(Class class1)
        throws InvalidParameterSpecException
    {
        if (class1 == null)
        {
            throw new NullPointerException("argument to getParameterSpec must not be null");
        } else
        {
            return localEngineGetParameterSpec(class1);
        }
    }

    protected boolean isASN1FormatString(String s)
    {
        return s == null || s.equals("ASN.1");
    }

    protected abstract AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
        throws InvalidParameterSpecException;
}
