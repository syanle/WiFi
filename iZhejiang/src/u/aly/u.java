// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class u
{

    public u()
    {
    }

    public static Object a(String s)
    {
        if (s == null || s.length() == 0)
        {
            return null;
        }
        try
        {
            s = ((String) ((new ObjectInputStream(new ByteArrayInputStream(b(s)))).readObject()));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public static String a(Serializable serializable)
    {
        if (serializable == null)
        {
            return "";
        }
        try
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
            objectoutputstream.writeObject(serializable);
            objectoutputstream.close();
            serializable = a(bytearrayoutputstream.toByteArray());
        }
        // Misplaced declaration of an exception variable
        catch (Serializable serializable)
        {
            serializable.printStackTrace();
            return null;
        }
        return serializable;
    }

    public static String a(byte abyte0[])
    {
        StringBuffer stringbuffer = new StringBuffer();
        for (int i = 0; i < abyte0.length; i++)
        {
            stringbuffer.append((char)((abyte0[i] >> 4 & 0xf) + 97));
            stringbuffer.append((char)((abyte0[i] & 0xf) + 97));
        }

        return stringbuffer.toString();
    }

    public static byte[] b(String s)
    {
        byte abyte0[] = new byte[s.length() / 2];
        for (int i = 0; i < s.length(); i += 2)
        {
            char c = s.charAt(i);
            abyte0[i / 2] = (byte)(c - 97 << 4);
            c = s.charAt(i + 1);
            int j = i / 2;
            abyte0[j] = (byte)((c - 97) + abyte0[j]);
        }

        return abyte0;
    }
}
