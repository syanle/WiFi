// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.io.File;
import java.io.FileInputStream;

// Referenced classes of package u.aly:
//            y, cd, t, aa

class Object
    implements com.umeng.analytics.
{

    final y a;

    public void a(File file)
    {
    }

    public boolean b(File file)
    {
        FileInputStream fileinputstream = new FileInputStream(file);
        file = cd.b(fileinputstream);
        int i;
        try
        {
            cd.c(fileinputstream);
            file = y.a(a).a(file);
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            return false;
        }
        if (file != null) goto _L2; else goto _L1
_L1:
        i = 1;
_L3:
        if (i != 2)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        if (y.b(a).m())
        {
            y.b(a).l();
        }
        break MISSING_BLOCK_LABEL_64;
_L4:
        cd.c(fileinputstream);
        throw file;
_L2:
        i = y.a(a, file);
          goto _L3
        if (y.c(a))
        {
            return true;
        }
        return i != 1;
        file;
          goto _L4
        file;
        fileinputstream = null;
          goto _L4
    }

    public void c(File file)
    {
        y.b(a).k();
    }

    le(y y1)
    {
        a = y1;
        super();
    }
}
