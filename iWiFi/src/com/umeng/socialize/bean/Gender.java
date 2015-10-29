// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;


// Referenced classes of package com.umeng.socialize.bean:
//            j, k

public class Gender extends Enum
{

    public static final Gender FEMALE;
    public static final Gender MALE;
    private static final Gender a[];

    private Gender(String s, int i)
    {
        super(s, i);
    }

    Gender(String s, int i, Gender gender)
    {
        this(s, i);
    }

    public static Gender convertToEmun(String s)
    {
        Gender agender[];
        int i;
        int l;
        agender = values();
        l = agender.length;
        i = 0;
_L6:
        if (i < l) goto _L2; else goto _L1
_L1:
        Gender gender = null;
_L4:
        return gender;
_L2:
        Gender gender1;
        gender1 = agender[i];
        gender = gender1;
        if (gender1.toString().equals(s)) goto _L4; else goto _L3
_L3:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static Gender valueOf(String s)
    {
        return (Gender)Enum.valueOf(com/umeng/socialize/bean/Gender, s);
    }

    public static Gender[] values()
    {
        Gender agender[] = a;
        int i = agender.length;
        Gender agender1[] = new Gender[i];
        System.arraycopy(agender, 0, agender1, 0, i);
        return agender1;
    }

    static 
    {
        MALE = new j("MALE", 0);
        FEMALE = new k("FEMALE", 1);
        a = (new Gender[] {
            MALE, FEMALE
        });
    }
}
