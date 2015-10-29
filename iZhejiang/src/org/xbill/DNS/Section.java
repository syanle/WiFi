// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            Mnemonic

public final class Section
{

    public static final int ADDITIONAL = 3;
    public static final int ANSWER = 1;
    public static final int AUTHORITY = 2;
    public static final int PREREQ = 1;
    public static final int QUESTION = 0;
    public static final int UPDATE = 2;
    public static final int ZONE = 0;
    private static String longSections[];
    private static Mnemonic sections;
    private static String updateSections[];

    private Section()
    {
    }

    public static String longString(int i)
    {
        sections.check(i);
        return longSections[i];
    }

    public static String string(int i)
    {
        return sections.getText(i);
    }

    public static String updString(int i)
    {
        sections.check(i);
        return updateSections[i];
    }

    public static int value(String s)
    {
        return sections.getValue(s);
    }

    static 
    {
        sections = new Mnemonic("Message Section", 3);
        longSections = new String[4];
        updateSections = new String[4];
        sections.setMaximum(3);
        sections.setNumericAllowed(true);
        sections.add(0, "qd");
        sections.add(1, "an");
        sections.add(2, "au");
        sections.add(3, "ad");
        longSections[0] = "QUESTIONS";
        longSections[1] = "ANSWERS";
        longSections[2] = "AUTHORITY RECORDS";
        longSections[3] = "ADDITIONAL RECORDS";
        updateSections[0] = "ZONE";
        updateSections[1] = "PREREQUISITES";
        updateSections[2] = "UPDATE RECORDS";
        updateSections[3] = "ADDITIONAL RECORDS";
    }
}
