// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.c.d;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import net.youmi.android.a.b.i.a.b;
import net.youmi.android.a.c.b.a;
import org.apache.http.Header;

// Referenced classes of package net.youmi.android.a.c.d:
//            b, a

public class c
{

    public static String a(Context context, String s)
    {
        return a(context, s, null, null);
    }

    private static String a(Context context, String s, String s1, boolean flag, Header aheader[], b b1)
    {
        int i = 0;
        if (s == null)
        {
            if (flag)
            {
                net.youmi.android.a.c.b.a.b("Request error , url is null");
            }
            return null;
        }
        if (flag)
        {
            net.youmi.android.a.c.b.a.c("Request url : %s", new Object[] {
                s
            });
        }
        if (s1 != null);
        Object obj;
        net.youmi.android.a.b.i.b b2;
        try
        {
            obj = new ArrayList();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        if (aheader == null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        if (aheader.length <= 0)
        {
            break MISSING_BLOCK_LABEL_87;
        }
_L1:
        if (i >= aheader.length)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        ((ArrayList) (obj)).add(aheader[i]);
        i++;
          goto _L1
        if (b1 != null)
        {
            break MISSING_BLOCK_LABEL_291;
        }
        s1 = new b();
        s1.a(a());
_L2:
        b1 = new net.youmi.android.a.b.i.c();
        b1.a(s);
        b1.a(false);
        b1.b(((List) (obj)));
        b1.b("get");
        obj = new net.youmi.android.a.c.d.b(context, b1);
        b2 = new net.youmi.android.a.b.i.b();
        b2.a(true);
        ((net.youmi.android.a.c.d.b) (obj)).a(b2);
        ((net.youmi.android.a.c.d.b) (obj)).b();
        s = ((net.youmi.android.a.c.d.b) (obj)).e();
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_276;
        }
        aheader = b1.f();
        s = aheader;
        if (aheader == null)
        {
            s = "-1";
        }
        if (s != null)
        {
            try
            {
                if (s.startsWith("127.") && b1.j())
                {
                    ((net.youmi.android.a.c.d.b) (obj)).a(b1);
                    ((net.youmi.android.a.c.d.b) (obj)).b();
                }
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        if (((net.youmi.android.a.c.d.b) (obj)).e() != null)
        {
            break MISSING_BLOCK_LABEL_270;
        }
        net.youmi.android.a.c.a.a(new net.youmi.android.a.c.d.a(context, b1, b2, ((net.youmi.android.a.b.i.a) (obj)), s1));
        return null;
        return ((net.youmi.android.a.c.d.b) (obj)).e();
        context = ((net.youmi.android.a.c.d.b) (obj)).e();
        return context;
        s1 = b1;
          goto _L2
    }

    public static String a(Context context, String s, List list, b b1)
    {
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        return a(context, s, list, null, "UTF-8", null, b1);
        context = a(context, s, "UTF-8", false, null, b1);
        return context;
        context;
        return null;
    }

    public static String a(Context context, String s, List list, boolean flag, Header aheader[], b b1)
    {
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_18;
        }
        return a(context, s, list, null, "UTF-8", aheader, b1);
        context = a(context, s, "UTF-8", flag, aheader, b1);
        return context;
        context;
        return null;
    }

    private static String a(Context context, String s, List list, byte abyte0[], String s1, Header aheader[], b b1)
    {
        int i;
        i = 0;
        if (s == null)
        {
            return null;
        }
        if (s1 != null);
        ArrayList arraylist = new ArrayList();
        if (aheader == null)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        if (aheader.length <= 0)
        {
            break MISSING_BLOCK_LABEL_62;
        }
_L1:
        if (i >= aheader.length)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        arraylist.add(aheader[i]);
        i++;
          goto _L1
        if (b1 != null)
        {
            break MISSING_BLOCK_LABEL_206;
        }
        s1 = new b();
        s1.a(a());
_L4:
        aheader = new net.youmi.android.a.b.i.c();
        aheader.a(s);
        aheader.a(false);
        aheader.a(list);
        aheader.a(abyte0);
        aheader.b(arraylist);
        aheader.b("post");
        s = new net.youmi.android.a.c.d.b(context, aheader);
        list = new net.youmi.android.a.b.i.b();
        list.a(true);
        s.a(list);
        s.b();
        abyte0 = s.e();
        if (abyte0 != null)
        {
            break MISSING_BLOCK_LABEL_192;
        }
        net.youmi.android.a.c.a.a(new net.youmi.android.a.c.d.a(context, aheader, list, s, s1));
        return null;
        context = s.e();
        return context;
        context;
_L3:
        return null;
        context;
        if (true) goto _L3; else goto _L2
_L2:
        s1 = b1;
          goto _L4
    }

    public static String a(Context context, String s, b b1)
    {
        return a(context, s, null, b1);
    }

    public static String a(Context context, String s, boolean flag)
    {
        return a(context, s, ((List) (null)), flag, null, null);
    }

    public static String a(Context context, String s, byte abyte0[], Header aheader[], b b1)
    {
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_17;
        }
        return a(context, s, null, abyte0, "UTF-8", aheader, b1);
        context = a(context, s, "UTF-8", false, aheader, b1);
        return context;
        context;
        return null;
    }
}
