// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

// Referenced classes of package u.aly:
//            du, dv

public class ds extends du
{

    protected InputStream a;
    protected OutputStream b;

    protected ds()
    {
        a = null;
        b = null;
    }

    public ds(InputStream inputstream)
    {
        a = null;
        b = null;
        a = inputstream;
    }

    public ds(InputStream inputstream, OutputStream outputstream)
    {
        a = null;
        b = null;
        a = inputstream;
        b = outputstream;
    }

    public ds(OutputStream outputstream)
    {
        a = null;
        b = null;
        b = outputstream;
    }

    public int a(byte abyte0[], int i, int j)
        throws dv
    {
        if (a == null)
        {
            throw new dv(1, "Cannot read from null inputStream");
        }
        try
        {
            i = a.read(abyte0, i, j);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new dv(0, abyte0);
        }
        if (i < 0)
        {
            throw new dv(4);
        } else
        {
            return i;
        }
    }

    public boolean a()
    {
        return true;
    }

    public void b()
        throws dv
    {
    }

    public void b(byte abyte0[], int i, int j)
        throws dv
    {
        if (b == null)
        {
            throw new dv(1, "Cannot write to null outputStream");
        }
        try
        {
            b.write(abyte0, i, j);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new dv(0, abyte0);
        }
    }

    public void c()
    {
        if (a != null)
        {
            try
            {
                a.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
            a = null;
        }
        if (b != null)
        {
            try
            {
                b.close();
            }
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
            b = null;
        }
    }

    public void d()
        throws dv
    {
        if (b == null)
        {
            throw new dv(1, "Cannot flush null outputStream");
        }
        try
        {
            b.flush();
            return;
        }
        catch (IOException ioexception)
        {
            throw new dv(0, ioexception);
        }
    }
}
