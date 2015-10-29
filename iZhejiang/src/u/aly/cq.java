// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

// Referenced classes of package u.aly:
//            ds, di, cn, ch, 
//            dg

public class cq
{

    private final ByteArrayOutputStream a;
    private final ds b;
    private dg c;

    public cq()
    {
        this(((di) (new da.a())));
    }

    public cq(di di1)
    {
        a = new ByteArrayOutputStream();
        b = new ds(a);
        c = di1.a(b);
    }

    public String a(ch ch1, String s)
        throws cn
    {
        try
        {
            ch1 = new String(a(ch1), s);
        }
        // Misplaced declaration of an exception variable
        catch (ch ch1)
        {
            throw new cn((new StringBuilder()).append("JVM DOES NOT SUPPORT ENCODING: ").append(s).toString());
        }
        return ch1;
    }

    public byte[] a(ch ch1)
        throws cn
    {
        a.reset();
        ch1.b(c);
        return a.toByteArray();
    }

    public String b(ch ch1)
        throws cn
    {
        return new String(a(ch1));
    }
}
