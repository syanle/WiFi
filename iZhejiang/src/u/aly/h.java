// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.os.Build;

// Referenced classes of package u.aly:
//            a

public class h extends a
{

    private static final String a = "serial";

    public h()
    {
        super("serial");
    }

    public String f()
    {
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            return Build.SERIAL;
        } else
        {
            return null;
        }
    }
}
