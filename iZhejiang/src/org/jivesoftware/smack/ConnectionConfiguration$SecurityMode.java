// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;


// Referenced classes of package org.jivesoftware.smack:
//            ConnectionConfiguration

public static final class A extends Enum
{

    private static final disabled ENUM$VALUES[];
    public static final disabled disabled;
    public static final disabled enabled;
    public static final disabled required;

    public static A valueOf(String s)
    {
        return (A)Enum.valueOf(org/jivesoftware/smack/ConnectionConfiguration$SecurityMode, s);
    }

    public static A[] values()
    {
        A aa[] = ENUM$VALUES;
        int i = aa.length;
        A aa1[] = new ENUM.VALUES[i];
        System.arraycopy(aa, 0, aa1, 0, i);
        return aa1;
    }

    static 
    {
        required = new <init>("required", 0);
        enabled = new <init>("enabled", 1);
        disabled = new <init>("disabled", 2);
        ENUM$VALUES = (new ENUM.VALUES[] {
            required, enabled, disabled
        });
    }

    private A(String s, int i)
    {
        super(s, i);
    }
}
