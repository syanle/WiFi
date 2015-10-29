// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.b;
import com.umeng.analytics.h;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

// Referenced classes of package u.aly:
//            ba, bb, w, cd, 
//            ck, cq

public class f
{

    private static final String a = ".imprint";
    private static final byte b[] = "pbl0".getBytes();
    private static f e;
    private w c;
    private ba d;
    private Context f;

    f(Context context)
    {
        d = null;
        f = context;
    }

    private int a(String s)
    {
        ba ba1 = d;
        if (ba1 == null || !ba1.f())
        {
            return -1;
        }
        s = (bb)ba1.d().get(s);
        if (s == null || TextUtils.isEmpty(s.c()))
        {
            return -1;
        }
        int i;
        try
        {
            i = Integer.parseInt(s.c().trim());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return -1;
        }
        return i;
    }

    private ba a(ba ba1, ba ba2)
    {
        if (ba2 == null)
        {
            return ba1;
        }
        Map map = ba1.d();
        for (Iterator iterator = ba2.d().entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (((bb)entry.getValue()).e())
            {
                map.put(entry.getKey(), entry.getValue());
            } else
            {
                map.remove(entry.getKey());
            }
        }

        ba1.a(ba2.h());
        ba1.a(a(ba1));
        return ba1;
    }

    public static f a(Context context)
    {
        u/aly/f;
        JVM INSTR monitorenter ;
        if (e == null)
        {
            e = new f(context);
            e.b();
        }
        context = e;
        u/aly/f;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    private boolean c(ba ba1)
    {
        if (!ba1.k().equals(a(ba1)))
        {
            return false;
        }
        for (ba1 = ba1.d().values().iterator(); ba1.hasNext();)
        {
            bb bb1 = (bb)ba1.next();
            byte abyte0[] = com.umeng.analytics.b.a(bb1.j());
            byte abyte1[] = a(bb1);
            int i = 0;
            while (i < 4) 
            {
                if (abyte0[i] != abyte1[i])
                {
                    return false;
                }
                i++;
            }
        }

        return true;
    }

    private void e()
    {
        if (c != null)
        {
            int i = a("defcon");
            if (i != -1)
            {
                c.a(i);
                h.a(f).a(i);
            }
            i = a("latent");
            if (i != -1)
            {
                i *= 1000;
                c.b(i);
                h.a(f).b(i);
            }
            i = a("codex");
            if (i == 0 || i == 1 || i == -1)
            {
                c.c(i);
                h.a(f).c(i);
                return;
            }
        }
    }

    public String a(ba ba1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        java.util.Map.Entry entry;
        for (Iterator iterator = (new TreeMap(ba1.d())).entrySet().iterator(); iterator.hasNext(); stringbuilder.append(((bb)entry.getValue()).j()))
        {
            entry = (java.util.Map.Entry)iterator.next();
            stringbuilder.append((String)entry.getKey());
            stringbuilder.append(((bb)entry.getValue()).c());
            stringbuilder.append(((bb)entry.getValue()).f());
        }

        stringbuilder.append(ba1.b);
        return cd.a(stringbuilder.toString()).toLowerCase(Locale.US);
    }

    public ba a()
    {
        this;
        JVM INSTR monitorenter ;
        ba ba1 = d;
        this;
        JVM INSTR monitorexit ;
        return ba1;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(w w1)
    {
        c = w1;
    }

    public byte[] a(bb bb1)
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(8);
        bytebuffer.order(null);
        bytebuffer.putLong(bb1.f());
        bb1 = bytebuffer.array();
        byte abyte0[] = b;
        byte abyte1[] = new byte[4];
        for (int i = 0; i < 4; i++)
        {
            abyte1[i] = (byte)(bb1[i] ^ abyte0[i]);
        }

        return abyte1;
    }

    public void b()
    {
        java.io.InputStream inputstream;
        Object obj1;
        inputstream = null;
        obj1 = null;
        if ((new File(f.getFilesDir(), ".imprint")).exists()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Object obj = f.openFileInput(".imprint");
        inputstream = ((java.io.InputStream) (obj));
        byte abyte0[] = u.aly.cd.b(((java.io.InputStream) (obj)));
        inputstream = abyte0;
        cd.c(((java.io.InputStream) (obj)));
_L4:
        if (inputstream != null)
        {
            try
            {
                obj = new ba();
                (new ck()).a(((ch) (obj)), inputstream);
                d = ((ba) (obj));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((Exception) (obj)).printStackTrace();
            }
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception1;
        exception1;
        obj = null;
_L7:
        inputstream = ((java.io.InputStream) (obj));
        exception1.printStackTrace();
        cd.c(((java.io.InputStream) (obj)));
        inputstream = obj1;
          goto _L4
        Exception exception;
        exception;
_L6:
        cd.c(inputstream);
        throw exception;
        exception;
        if (true) goto _L6; else goto _L5
_L5:
        exception1;
          goto _L7
    }

    public void b(ba ba1)
    {
_L2:
        return;
        if (ba1 == null || !c(ba1)) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorenter ;
        ba ba2 = d;
        if (ba2 != null)
        {
            break MISSING_BLOCK_LABEL_43;
        }
_L4:
        d = ba1;
        this;
        JVM INSTR monitorexit ;
        if (d == null) goto _L2; else goto _L3
_L3:
        e();
        return;
        ba1 = a(ba2, ba1);
          goto _L4
        ba1;
        this;
        JVM INSTR monitorexit ;
        throw ba1;
    }

    public void c()
    {
        if (d == null)
        {
            return;
        }
        try
        {
            byte abyte0[] = (new cq()).a(d);
            cd.a(new File(f.getFilesDir(), ".imprint"), abyte0);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public boolean d()
    {
        return (new File(f.getFilesDir(), ".imprint")).delete();
    }

}
