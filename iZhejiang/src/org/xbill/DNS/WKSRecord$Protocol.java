// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            WKSRecord, Mnemonic

public static class 
{

    public static final int ARGUS = 13;
    public static final int BBN_RCC_MON = 10;
    public static final int BR_SAT_MON = 76;
    public static final int CFTP = 62;
    public static final int CHAOS = 16;
    public static final int DCN_MEAS = 19;
    public static final int EGP = 8;
    public static final int EMCON = 14;
    public static final int GGP = 3;
    public static final int HMP = 20;
    public static final int ICMP = 1;
    public static final int IGMP = 2;
    public static final int IGP = 9;
    public static final int IPCV = 71;
    public static final int IPPC = 67;
    public static final int IRTP = 28;
    public static final int ISO_TP4 = 29;
    public static final int LEAF_1 = 25;
    public static final int LEAF_2 = 26;
    public static final int MERIT_INP = 32;
    public static final int MFE_NSP = 31;
    public static final int MIT_SUBNET = 65;
    public static final int MUX = 18;
    public static final int NETBLT = 30;
    public static final int NVP_II = 11;
    public static final int PRM = 21;
    public static final int PUP = 12;
    public static final int RDP = 27;
    public static final int RVD = 66;
    public static final int SAT_EXPAK = 64;
    public static final int SAT_MON = 69;
    public static final int SEP = 33;
    public static final int ST = 5;
    public static final int TCP = 6;
    public static final int TRUNK_1 = 23;
    public static final int TRUNK_2 = 24;
    public static final int UCL = 7;
    public static final int UDP = 17;
    public static final int WB_EXPAK = 79;
    public static final int WB_MON = 78;
    public static final int XNET = 15;
    public static final int XNS_IDP = 22;
    private static Mnemonic protocols;

    public static String string(int i)
    {
        return protocols.getText(i);
    }

    public static int value(String s)
    {
        return protocols.getValue(s);
    }

    static 
    {
        protocols = new Mnemonic("IP protocol", 3);
        protocols.setMaximum(255);
        protocols.setNumericAllowed(true);
        protocols.add(1, "icmp");
        protocols.add(2, "igmp");
        protocols.add(3, "ggp");
        protocols.add(5, "st");
        protocols.add(6, "tcp");
        protocols.add(7, "ucl");
        protocols.add(8, "egp");
        protocols.add(9, "igp");
        protocols.add(10, "bbn-rcc-mon");
        protocols.add(11, "nvp-ii");
        protocols.add(12, "pup");
        protocols.add(13, "argus");
        protocols.add(14, "emcon");
        protocols.add(15, "xnet");
        protocols.add(16, "chaos");
        protocols.add(17, "udp");
        protocols.add(18, "mux");
        protocols.add(19, "dcn-meas");
        protocols.add(20, "hmp");
        protocols.add(21, "prm");
        protocols.add(22, "xns-idp");
        protocols.add(23, "trunk-1");
        protocols.add(24, "trunk-2");
        protocols.add(25, "leaf-1");
        protocols.add(26, "leaf-2");
        protocols.add(27, "rdp");
        protocols.add(28, "irtp");
        protocols.add(29, "iso-tp4");
        protocols.add(30, "netblt");
        protocols.add(31, "mfe-nsp");
        protocols.add(32, "merit-inp");
        protocols.add(33, "sep");
        protocols.add(62, "cftp");
        protocols.add(64, "sat-expak");
        protocols.add(65, "mit-subnet");
        protocols.add(66, "rvd");
        protocols.add(67, "ippc");
        protocols.add(69, "sat-mon");
        protocols.add(71, "ipcv");
        protocols.add(76, "br-sat-mon");
        protocols.add(78, "wb-mon");
        protocols.add(79, "wb-expak");
    }

    private ()
    {
    }
}
