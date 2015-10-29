// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package u.aly:
//            at, q, au, bn, 
//            bc

public class ag extends at
    implements q
{

    public ag()
    {
        a(System.currentTimeMillis());
        a(au.a);
    }

    public ag(String s)
    {
        this();
        a(s);
    }

    public ag(Throwable throwable)
    {
        this();
        a(a(throwable));
    }

    private String a(Throwable throwable)
    {
        Object obj = null;
        if (throwable == null)
        {
            return null;
        }
        Throwable throwable1 = obj;
        StringWriter stringwriter;
        PrintWriter printwriter;
        try
        {
            stringwriter = new StringWriter();
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
            return throwable1;
        }
        throwable1 = obj;
        printwriter = new PrintWriter(stringwriter);
        throwable1 = obj;
        throwable.printStackTrace(printwriter);
        throwable1 = obj;
        throwable = throwable.getCause();
_L2:
        if (throwable == null)
        {
            break; /* Loop/switch isn't completed */
        }
        throwable1 = obj;
        throwable.printStackTrace(printwriter);
        throwable1 = obj;
        throwable = throwable.getCause();
        if (true) goto _L2; else goto _L1
_L1:
        throwable1 = obj;
        throwable = stringwriter.toString();
        throwable1 = throwable;
        printwriter.close();
        throwable1 = throwable;
        stringwriter.close();
        return throwable;
    }

    public ag a(boolean flag)
    {
        au au1;
        if (flag)
        {
            au1 = au.a;
        } else
        {
            au1 = au.b;
        }
        a(au1);
        return this;
    }

    public void a(bn bn1, String s)
    {
        if (bn1.s() <= 0) goto _L2; else goto _L1
_L1:
        Iterator iterator = bn1.u().iterator();
_L5:
        if (!iterator.hasNext()) goto _L2; else goto _L3
_L3:
        bc bc1 = (bc)iterator.next();
        if (!s.equals(bc1.c())) goto _L5; else goto _L4
_L4:
        bc bc2 = bc1;
        if (bc1 == null)
        {
            bc2 = new bc();
            bc2.a(s);
            bn1.a(bc2);
        }
        bc2.a(this);
        return;
_L2:
        bc1 = null;
        if (true) goto _L4; else goto _L6
_L6:
    }
}
