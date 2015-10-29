// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a;

import java.util.Locale;

// Referenced classes of package net.youmi.android.a.a:
//            a

public class c extends a
{

    protected static int a = 2;
    private static String b;
    private static String c;
    private static String d;
    private static String e;
    private static String f;

    public static void a(int i)
    {
        a = i;
    }

    public static final String b()
    {
        return b(b, "0a4144490c4b1b441603124a5f42484d09115d5b4c0a00401d17554d0d590b16", "0a4144490c4b1b500e0d0405541b1f4d0714591c0c01111b411507164b41514d0d575c17");
    }

    protected static String b(String s, String s1, String s2)
    {
        switch (a)
        {
        default:
            return a(s, s1, "androidurl");

        case 0: // '\0'
            if (Locale.getDefault().getCountry() != null && !Locale.getDefault().getCountry().toUpperCase().equals("CN"))
            {
                return a(s, s2, "androidurl");
            } else
            {
                return a(s, s1, "androidurl");
            }

        case 1: // '\001'
            return a(s, s2, "androidurl");

        case 2: // '\002'
            return a(s, s1, "androidurl");
        }
    }

    public static final String c()
    {
        return b(c, "0a4144490c4b1b441603124a5f42484d09115d5b4c0a00401d0009114b41514d145746", "0a4144490c4b1b500e0d0405541b1f4d0714591c0c01111b411507164b560d114b4f064c155a46");
    }

    public static final String d()
    {
        return b(d, "0a4144490c4b1b431003050f16510b44481d5f470f0d4b5a571549145518030c004b5a0a011b45005b5b00575612", "0a4144490c4b1b431003050f16510b44481d5f470f0d4b5a571549145518030c004b5a0a011b45005b5b00575612");
    }

    public static final String e()
    {
        return b(e, "0a4144490c4b1b441603124a5f42484d09115d5b4c0a00401d121203101814514b5a5a0d03", "0a4144490c4b1b500e0d0405541b1f4d0714591c0c01111b411507164b41514d07565b05");
    }

    public static final String f()
    {
        return b(f, "0a4144490c4b1b441603124a5f42484d09115d5b4c0a00401d0016124b41514d005c433c104451004c55", "0a4144490c4b1b500e0d0405541b1f4d0714591c0c01111b411507164b41514d005c433c104451004c55");
    }

}
