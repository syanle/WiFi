// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.anysoft.webservicetest.encoder;

import java.io.ByteArrayOutputStream;
import java.util.Properties;
import javax.crypto.Cipher;

// Referenced classes of package com.anysoft.webservicetest.encoder:
//            Key, BASE64Decoder, BASE64Encoder

public class DBEncrypt
{

    private Properties properties;

    public DBEncrypt()
    {
    }

    private String deEncryptPassword(String s)
    {
        return dCode(s.getBytes());
    }

    private String deEncryptUsername(String s)
    {
        return dCode(s.getBytes());
    }

    public String dCode(byte abyte0[])
    {
        try
        {
            Cipher cipher = Cipher.getInstance("DES");
            cipher.init(2, Key.loadKey());
            abyte0 = new String(cipher.doFinal((new BASE64Decoder()).decodeBuffer(new String(abyte0))));
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            abyte0.printStackTrace();
            return null;
        }
        return abyte0;
    }

    public String eCode(String s)
    {
        byte abyte0[] = (byte[])null;
        try
        {
            Object obj = Cipher.getInstance("DES");
            ((Cipher) (obj)).init(1, Key.loadKey());
            s = ((Cipher) (obj)).doFinal(s.getBytes());
            obj = new BASE64Encoder();
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            ((BASE64Encoder) (obj)).encode(s, bytearrayoutputstream);
            s = bytearrayoutputstream.toByteArray();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalStateException("System doesn't support DES algorithm.");
        }
        return new String(s);
    }

    public Object getObject()
        throws Exception
    {
        return getProperties();
    }

    public Class getObjectType()
    {
        return java/util/Properties;
    }

    public Properties getProperties()
    {
        return properties;
    }

    public boolean isSingleton()
    {
        return true;
    }

    public void setProperties(Properties properties1)
    {
        properties = properties1;
        String s = properties.getProperty("user");
        properties1 = properties.getProperty("password");
        if (s != null)
        {
            s = deEncryptUsername(s);
            properties.put("user", s);
        }
        if (properties1 != null)
        {
            properties1 = deEncryptPassword(properties1);
            properties.put("password", properties1);
        }
    }
}
