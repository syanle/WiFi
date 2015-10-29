// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.IOException;
import java.io.Writer;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import org.bouncycastle.util.io.pem.PemGenerationException;
import org.bouncycastle.util.io.pem.PemObjectGenerator;
import org.bouncycastle.util.io.pem.PemWriter;

// Referenced classes of package org.bouncycastle.openssl:
//            MiscPEMGenerator, EncryptionException

public class PEMWriter extends PemWriter
{

    private String provider;

    public PEMWriter(Writer writer)
    {
        this(writer, "BC");
    }

    public PEMWriter(Writer writer, String s)
    {
        super(writer);
        provider = s;
    }

    public void writeObject(Object obj)
        throws IOException
    {
        try
        {
            super.writeObject(new MiscPEMGenerator(obj));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        if (((PemGenerationException) (obj)).getCause() instanceof IOException)
        {
            throw (IOException)((PemGenerationException) (obj)).getCause();
        } else
        {
            throw obj;
        }
    }

    public void writeObject(Object obj, String s, char ac[], SecureRandom securerandom)
        throws IOException
    {
        try
        {
            super.writeObject(new MiscPEMGenerator(obj, s, ac, securerandom, provider));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new EncryptionException(((NoSuchProviderException) (obj)).getMessage(), ((Throwable) (obj)));
        }
    }

    public void writeObject(PemObjectGenerator pemobjectgenerator)
        throws IOException
    {
        super.writeObject(pemobjectgenerator);
    }
}
