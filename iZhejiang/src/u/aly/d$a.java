// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package u.aly:
//            d, x

public static class a
{

    private Context a;
    private Set b;

    public void a()
    {
        if (!b.isEmpty())
        {
            StringBuilder stringbuilder = new StringBuilder();
            for (Iterator iterator = b.iterator(); iterator.hasNext(); stringbuilder.append(','))
            {
                stringbuilder.append((String)iterator.next());
            }

            stringbuilder.deleteCharAt(stringbuilder.length() - 1);
            x.a(a).edit().putString("invld_id", stringbuilder.toString()).commit();
        }
    }

    public boolean a(String s)
    {
        return !b.contains(s);
    }

    public void b()
    {
        String s = x.a(a).getString("invld_id", null);
        if (!TextUtils.isEmpty(s))
        {
            String as[] = s.split(",");
            if (as != null)
            {
                int j = as.length;
                for (int i = 0; i < j; i++)
                {
                    String s1 = as[i];
                    if (!TextUtils.isEmpty(s1))
                    {
                        b.add(s1);
                    }
                }

            }
        }
    }

    public void b(String s)
    {
        b.add(s);
    }

    public void c(String s)
    {
        b.remove(s);
    }

    public ntent.Context(Context context)
    {
        b = new HashSet();
        a = context;
    }
}
