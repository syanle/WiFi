// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            WKSRecord, Mnemonic

public static class 
{

    public static final int AUTH = 113;
    public static final int BL_IDM = 142;
    public static final int BOOTPC = 68;
    public static final int BOOTPS = 67;
    public static final int CHARGEN = 19;
    public static final int CISCO_FNA = 130;
    public static final int CISCO_SYS = 132;
    public static final int CISCO_TNA = 131;
    public static final int CSNET_NS = 105;
    public static final int DAYTIME = 13;
    public static final int DCP = 93;
    public static final int DISCARD = 9;
    public static final int DOMAIN = 53;
    public static final int DSP = 33;
    public static final int ECHO = 7;
    public static final int EMFIS_CNTL = 141;
    public static final int EMFIS_DATA = 140;
    public static final int ERPC = 121;
    public static final int FINGER = 79;
    public static final int FTP = 21;
    public static final int FTP_DATA = 20;
    public static final int GRAPHICS = 41;
    public static final int HOSTNAME = 101;
    public static final int HOSTS2_NS = 81;
    public static final int INGRES_NET = 134;
    public static final int ISI_GL = 55;
    public static final int ISO_TSAP = 102;
    public static final int LA_MAINT = 51;
    public static final int LINK = 245;
    public static final int LOCUS_CON = 127;
    public static final int LOCUS_MAP = 125;
    public static final int LOC_SRV = 135;
    public static final int LOGIN = 49;
    public static final int METAGRAM = 99;
    public static final int MIT_DOV = 91;
    public static final int MPM = 45;
    public static final int MPM_FLAGS = 44;
    public static final int MPM_SND = 46;
    public static final int MSG_AUTH = 31;
    public static final int MSG_ICP = 29;
    public static final int NAMESERVER = 42;
    public static final int NETBIOS_DGM = 138;
    public static final int NETBIOS_NS = 137;
    public static final int NETBIOS_SSN = 139;
    public static final int NETRJS_1 = 71;
    public static final int NETRJS_2 = 72;
    public static final int NETRJS_3 = 73;
    public static final int NETRJS_4 = 74;
    public static final int NICNAME = 43;
    public static final int NI_FTP = 47;
    public static final int NI_MAIL = 61;
    public static final int NNTP = 119;
    public static final int NSW_FE = 27;
    public static final int NTP = 123;
    public static final int POP_2 = 109;
    public static final int PROFILE = 136;
    public static final int PWDGEN = 129;
    public static final int QUOTE = 17;
    public static final int RJE = 5;
    public static final int RLP = 39;
    public static final int RTELNET = 107;
    public static final int SFTP = 115;
    public static final int SMTP = 25;
    public static final int STATSRV = 133;
    public static final int SUNRPC = 111;
    public static final int SUPDUP = 95;
    public static final int SUR_MEAS = 243;
    public static final int SU_MIT_TG = 89;
    public static final int SWIFT_RVF = 97;
    public static final int TACACS_DS = 65;
    public static final int TACNEWS = 98;
    public static final int TELNET = 23;
    public static final int TFTP = 69;
    public static final int TIME = 37;
    public static final int USERS = 11;
    public static final int UUCP_PATH = 117;
    public static final int VIA_FTP = 63;
    public static final int X400 = 103;
    public static final int X400_SND = 104;
    private static Mnemonic services;

    public static String string(int i)
    {
        return services.getText(i);
    }

    public static int value(String s)
    {
        return services.getValue(s);
    }

    static 
    {
        services = new Mnemonic("TCP/UDP service", 3);
        services.setMaximum(65535);
        services.setNumericAllowed(true);
        services.add(5, "rje");
        services.add(7, "echo");
        services.add(9, "discard");
        services.add(11, "users");
        services.add(13, "daytime");
        services.add(17, "quote");
        services.add(19, "chargen");
        services.add(20, "ftp-data");
        services.add(21, "ftp");
        services.add(23, "telnet");
        services.add(25, "smtp");
        services.add(27, "nsw-fe");
        services.add(29, "msg-icp");
        services.add(31, "msg-auth");
        services.add(33, "dsp");
        services.add(37, "time");
        services.add(39, "rlp");
        services.add(41, "graphics");
        services.add(42, "nameserver");
        services.add(43, "nicname");
        services.add(44, "mpm-flags");
        services.add(45, "mpm");
        services.add(46, "mpm-snd");
        services.add(47, "ni-ftp");
        services.add(49, "login");
        services.add(51, "la-maint");
        services.add(53, "domain");
        services.add(55, "isi-gl");
        services.add(61, "ni-mail");
        services.add(63, "via-ftp");
        services.add(65, "tacacs-ds");
        services.add(67, "bootps");
        services.add(68, "bootpc");
        services.add(69, "tftp");
        services.add(71, "netrjs-1");
        services.add(72, "netrjs-2");
        services.add(73, "netrjs-3");
        services.add(74, "netrjs-4");
        services.add(79, "finger");
        services.add(81, "hosts2-ns");
        services.add(89, "su-mit-tg");
        services.add(91, "mit-dov");
        services.add(93, "dcp");
        services.add(95, "supdup");
        services.add(97, "swift-rvf");
        services.add(98, "tacnews");
        services.add(99, "metagram");
        services.add(101, "hostname");
        services.add(102, "iso-tsap");
        services.add(103, "x400");
        services.add(104, "x400-snd");
        services.add(105, "csnet-ns");
        services.add(107, "rtelnet");
        services.add(109, "pop-2");
        services.add(111, "sunrpc");
        services.add(113, "auth");
        services.add(115, "sftp");
        services.add(117, "uucp-path");
        services.add(119, "nntp");
        services.add(121, "erpc");
        services.add(123, "ntp");
        services.add(125, "locus-map");
        services.add(127, "locus-con");
        services.add(129, "pwdgen");
        services.add(130, "cisco-fna");
        services.add(131, "cisco-tna");
        services.add(132, "cisco-sys");
        services.add(133, "statsrv");
        services.add(134, "ingres-net");
        services.add(135, "loc-srv");
        services.add(136, "profile");
        services.add(137, "netbios-ns");
        services.add(138, "netbios-dgm");
        services.add(139, "netbios-ssn");
        services.add(140, "emfis-data");
        services.add(141, "emfis-cntl");
        services.add(142, "bl-idm");
        services.add(243, "sur-meas");
        services.add(245, "link");
    }

    private ()
    {
    }
}
