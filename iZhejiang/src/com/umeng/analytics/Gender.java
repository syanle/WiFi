// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import java.util.Locale;
import u.aly.aw;

public class Gender extends Enum
{

    public static final Gender Female;
    public static final Gender Male;
    public static final Gender Unknown;
    private static final Gender a[];
    public int value;

    private Gender(String s, int i, int j)
    {
        super(s, i);
        value = j;
    }


    public static Gender getGender(int i)
    {
        switch (i)
        {
        default:
            return Unknown;

        case 1: // '\001'
            return Male;

        case 2: // '\002'
            return Female;
        }
    }

    public static aw transGender(Gender gender)
    {
        static class _cls4
        {

            static final int a[];

            static 
            {
                a = new int[Gender.values().length];
                try
                {
                    a[Gender.Male.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[Gender.Female.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[Gender.Unknown.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls4.a[gender.ordinal()])
        {
        default:
            return aw.c;

        case 1: // '\001'
            return aw.a;

        case 2: // '\002'
            return aw.b;
        }
    }

    public static Gender valueOf(String s)
    {
        return (Gender)Enum.valueOf(com/umeng/analytics/Gender, s);
    }

    public static Gender[] values()
    {
        return (Gender[])a.clone();
    }

    public int value()
    {
        return value;
    }

    static 
    {
        Male = new Gender("Male", 0, 1) {

            public String toString()
            {
                return String.format(Locale.US, "Male:%d", new Object[] {
                    Integer.valueOf(value)
                });
            }

        };
        Female = new Gender("Female", 1, 2) {

            public String toString()
            {
                return String.format(Locale.US, "Female:%d", new Object[] {
                    Integer.valueOf(value)
                });
            }

        };
        Unknown = new Gender("Unknown", 2, 0) {

            public String toString()
            {
                return String.format(Locale.US, "Unknown:%d", new Object[] {
                    Integer.valueOf(value)
                });
            }

        };
        a = (new Gender[] {
            Male, Female, Unknown
        });
    }
}
