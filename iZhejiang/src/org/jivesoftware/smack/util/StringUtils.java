// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util;

import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

// Referenced classes of package org.jivesoftware.smack.util:
//            Base64

public class StringUtils
{

    private static final char AMP_ENCODE[] = "&amp;".toCharArray();
    private static final char APOS_ENCODE[] = "&apos;".toCharArray();
    private static final char GT_ENCODE[] = "&gt;".toCharArray();
    private static final char LT_ENCODE[] = "&lt;".toCharArray();
    private static final char QUOTE_ENCODE[] = "&quot;".toCharArray();
    private static MessageDigest digest = null;
    private static char numbersAndLetters[] = "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    private static Random randGen = new Random();

    private StringUtils()
    {
    }

    public static byte[] decodeBase64(String s)
    {
        return Base64.decode(s);
    }

    public static String encodeBase64(String s)
    {
        Object obj = null;
        try
        {
            s = s.getBytes("ISO-8859-1");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            s = obj;
        }
        return encodeBase64(((byte []) (s)));
    }

    public static String encodeBase64(byte abyte0[])
    {
        return encodeBase64(abyte0, false);
    }

    public static String encodeBase64(byte abyte0[], int i, int j, boolean flag)
    {
        int k;
        if (flag)
        {
            k = 0;
        } else
        {
            k = 8;
        }
        return Base64.encodeBytes(abyte0, i, j, k);
    }

    public static String encodeBase64(byte abyte0[], boolean flag)
    {
        return encodeBase64(abyte0, 0, abyte0.length, flag);
    }

    public static String encodeHex(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder(abyte0.length * 2);
        int j = abyte0.length;
        int i = 0;
        do
        {
            if (i >= j)
            {
                return stringbuilder.toString();
            }
            byte byte0 = abyte0[i];
            if ((byte0 & 0xff) < 16)
            {
                stringbuilder.append("0");
            }
            stringbuilder.append(Integer.toString(byte0 & 0xff, 16));
            i++;
        } while (true);
    }

    public static String escapeForXML(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        s = null;
_L4:
        return s;
_L2:
        char ac[];
        StringBuilder stringbuilder;
        int j;
        int k;
        int l;
        j = 0;
        k = 0;
        ac = s.toCharArray();
        l = ac.length;
        stringbuilder = new StringBuilder((int)((double)l * 1.3D));
_L5:
label0:
        {
            if (j < l)
            {
                break label0;
            }
            if (k != 0)
            {
                if (j > k)
                {
                    stringbuilder.append(ac, k, j - k);
                }
                return stringbuilder.toString();
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        int i;
        char c;
        c = ac[j];
        i = k;
        if (c <= '>')
        {
            if (c == '<')
            {
                if (j > k)
                {
                    stringbuilder.append(ac, k, j - k);
                }
                i = j + 1;
                stringbuilder.append(LT_ENCODE);
            } else
            {
label1:
                {
                    if (c != '>')
                    {
                        break label1;
                    }
                    if (j > k)
                    {
                        stringbuilder.append(ac, k, j - k);
                    }
                    i = j + 1;
                    stringbuilder.append(GT_ENCODE);
                }
            }
        }
_L8:
        j++;
        k = i;
          goto _L5
        if (c != '&')
        {
            break MISSING_BLOCK_LABEL_300;
        }
        if (j > k)
        {
            stringbuilder.append(ac, k, j - k);
        }
        if (l <= j + 5 || ac[j + 1] != '#' || !Character.isDigit(ac[j + 2]) || !Character.isDigit(ac[j + 3]) || !Character.isDigit(ac[j + 4])) goto _L7; else goto _L6
_L6:
        i = k;
        if (ac[j + 5] == ';') goto _L8; else goto _L7
_L7:
        i = j + 1;
        stringbuilder.append(AMP_ENCODE);
          goto _L8
        if (c == '"')
        {
            if (j > k)
            {
                stringbuilder.append(ac, k, j - k);
            }
            i = j + 1;
            stringbuilder.append(QUOTE_ENCODE);
        } else
        {
            i = k;
            if (c == '\'')
            {
                if (j > k)
                {
                    stringbuilder.append(ac, k, j - k);
                }
                i = j + 1;
                stringbuilder.append(APOS_ENCODE);
            }
        }
          goto _L8
    }

    public static String escapeNode(String s)
    {
label0:
        {
label1:
            {
label2:
                {
label3:
                    {
label4:
                        {
label5:
                            {
label6:
                                {
label7:
                                    {
                                        if (s == null)
                                        {
                                            return null;
                                        }
                                        StringBuilder stringbuilder = new StringBuilder(s.length() + 8);
                                        int i = 0;
                                        int j = s.length();
label8:
                                        do
                                        {
                                            {
                                                if (i >= j)
                                                {
                                                    return stringbuilder.toString();
                                                }
                                                char c = s.charAt(i);
                                                switch (c)
                                                {
                                                default:
                                                    if (Character.isWhitespace(c))
                                                    {
                                                        stringbuilder.append("\\20");
                                                    } else
                                                    {
                                                        stringbuilder.append(c);
                                                    }
                                                    break;

                                                case 34: // '"'
                                                    break label8;

                                                case 38: // '&'
                                                    break label7;

                                                case 39: // '\''
                                                    break label6;

                                                case 47: // '/'
                                                    break label5;

                                                case 58: // ':'
                                                    break label4;

                                                case 60: // '<'
                                                    break label3;

                                                case 62: // '>'
                                                    break label2;

                                                case 64: // '@'
                                                    break label1;

                                                case 92: // '\\'
                                                    break label0;
                                                }
                                            }
                                            i++;
                                        } while (true);
                                        stringbuilder.append("\\22");
                                        break MISSING_BLOCK_LABEL_142;
                                    }
                                    stringbuilder.append("\\26");
                                    break MISSING_BLOCK_LABEL_142;
                                }
                                stringbuilder.append("\\27");
                                break MISSING_BLOCK_LABEL_142;
                            }
                            stringbuilder.append("\\2f");
                            break MISSING_BLOCK_LABEL_142;
                        }
                        stringbuilder.append("\\3a");
                        break MISSING_BLOCK_LABEL_142;
                    }
                    stringbuilder.append("\\3c");
                    break MISSING_BLOCK_LABEL_142;
                }
                stringbuilder.append("\\3e");
                break MISSING_BLOCK_LABEL_142;
            }
            stringbuilder.append("\\40");
            break MISSING_BLOCK_LABEL_142;
        }
        stringbuilder.append("\\5c");
        break MISSING_BLOCK_LABEL_142;
    }

    public static String hash(String s)
    {
        org/jivesoftware/smack/util/StringUtils;
        JVM INSTR monitorenter ;
        MessageDigest messagedigest = digest;
        if (messagedigest != null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        digest = MessageDigest.getInstance("SHA-1");
_L1:
        digest.update(s.getBytes("UTF-8"));
_L2:
        s = encodeHex(digest.digest());
        org/jivesoftware/smack/util/StringUtils;
        JVM INSTR monitorexit ;
        return s;
        NoSuchAlgorithmException nosuchalgorithmexception;
        nosuchalgorithmexception;
        System.err.println("Failed to load the SHA-1 MessageDigest. Jive will be unable to function normally.");
          goto _L1
        s;
        throw s;
        s;
        System.err.println(s);
          goto _L2
    }

    public static String parseBareAddress(String s)
    {
        String s1;
        if (s == null)
        {
            s1 = null;
        } else
        {
            int i = s.indexOf("/");
            s1 = s;
            if (i >= 0)
            {
                if (i == 0)
                {
                    return "";
                } else
                {
                    return s.substring(0, i);
                }
            }
        }
        return s1;
    }

    public static String parseName(String s)
    {
        if (s == null)
        {
            return null;
        }
        int i = s.lastIndexOf("@");
        if (i <= 0)
        {
            return "";
        } else
        {
            return s.substring(0, i);
        }
    }

    public static String parseResource(String s)
    {
        if (s == null)
        {
            return null;
        }
        int i = s.indexOf("/");
        if (i + 1 > s.length() || i < 0)
        {
            return "";
        } else
        {
            return s.substring(i + 1);
        }
    }

    public static String parseServer(String s)
    {
        if (s == null)
        {
            return null;
        }
        int i = s.lastIndexOf("@");
        if (i + 1 > s.length())
        {
            return "";
        }
        int j = s.indexOf("/");
        if (j > 0 && j > i)
        {
            return s.substring(i + 1, j);
        } else
        {
            return s.substring(i + 1);
        }
    }

    public static String randomString(int i)
    {
        if (i < 1)
        {
            return null;
        }
        char ac[] = new char[i];
        i = 0;
        do
        {
            if (i >= ac.length)
            {
                return new String(ac);
            }
            ac[i] = numbersAndLetters[randGen.nextInt(71)];
            i++;
        } while (true);
    }

    public static String unescapeNode(String s)
    {
        char ac[];
        StringBuilder stringbuilder;
        int i;
        int j;
        if (s == null)
        {
            return null;
        }
        ac = s.toCharArray();
        stringbuilder = new StringBuilder(ac.length);
        i = 0;
        j = ac.length;
_L10:
        char c;
        if (i >= j)
        {
            return stringbuilder.toString();
        }
        c = s.charAt(i);
        if (c != '\\' || i + 2 >= j) goto _L2; else goto _L1
_L1:
        char c1;
        char c2;
        c1 = ac[i + 1];
        c2 = ac[i + 2];
        if (c1 != '2') goto _L4; else goto _L3
_L3:
        c2;
        JVM INSTR lookupswitch 5: default 136
    //                   48: 151
    //                   50: 167
    //                   54: 183
    //                   55: 199
    //                   102: 215;
           goto _L2 _L5 _L6 _L7 _L8 _L9
_L2:
        stringbuilder.append(c);
_L11:
        i++;
          goto _L10
_L5:
        stringbuilder.append(' ');
        i += 2;
          goto _L11
_L6:
        stringbuilder.append('"');
        i += 2;
          goto _L11
_L7:
        stringbuilder.append('&');
        i += 2;
          goto _L11
_L8:
        stringbuilder.append('\'');
        i += 2;
          goto _L11
_L9:
        stringbuilder.append('/');
        i += 2;
          goto _L11
_L4:
        if (c1 != '3') goto _L13; else goto _L12
_L12:
        c2;
        JVM INSTR tableswitch 97 101: default 276
    //                   97 279
    //                   98 276
    //                   99 295
    //                   100 276
    //                   101 311;
           goto _L2 _L14 _L2 _L15 _L2 _L16
_L14:
        stringbuilder.append(':');
        i += 2;
          goto _L11
_L15:
        stringbuilder.append('<');
        i += 2;
          goto _L11
_L16:
        stringbuilder.append('>');
        i += 2;
          goto _L11
_L13:
        if (c1 != '4')
        {
            continue; /* Loop/switch isn't completed */
        }
        if (c2 != '0') goto _L2; else goto _L17
_L17:
        stringbuilder.append("@");
        i += 2;
          goto _L11
        if (c1 != '5' || c2 != 'c') goto _L2; else goto _L18
_L18:
        stringbuilder.append("\\");
        i += 2;
          goto _L11
    }

}
