// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.util;


public final class Arrays
{

    private Arrays()
    {
    }

    public static boolean areEqual(byte abyte0[], byte abyte1[])
    {
        boolean flag1 = false;
        if (abyte0 != abyte1) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (abyte0 != null)
        {
            flag = flag1;
            if (abyte1 != null)
            {
                flag = flag1;
                if (abyte0.length == abyte1.length)
                {
                    int i = 0;
label0:
                    do
                    {
label1:
                        {
                            if (i == abyte0.length)
                            {
                                break label1;
                            }
                            flag = flag1;
                            if (abyte0[i] != abyte1[i])
                            {
                                break label0;
                            }
                            i++;
                        }
                    } while (true);
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        return true;
    }

    public static boolean areEqual(char ac[], char ac1[])
    {
        boolean flag1 = false;
        if (ac != ac1) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (ac != null)
        {
            flag = flag1;
            if (ac1 != null)
            {
                flag = flag1;
                if (ac.length == ac1.length)
                {
                    int i = 0;
label0:
                    do
                    {
label1:
                        {
                            if (i == ac.length)
                            {
                                break label1;
                            }
                            flag = flag1;
                            if (ac[i] != ac1[i])
                            {
                                break label0;
                            }
                            i++;
                        }
                    } while (true);
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        return true;
    }

    public static boolean areEqual(int ai[], int ai1[])
    {
        boolean flag1 = false;
        if (ai != ai1) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (ai != null)
        {
            flag = flag1;
            if (ai1 != null)
            {
                flag = flag1;
                if (ai.length == ai1.length)
                {
                    int i = 0;
label0:
                    do
                    {
label1:
                        {
                            if (i == ai.length)
                            {
                                break label1;
                            }
                            flag = flag1;
                            if (ai[i] != ai1[i])
                            {
                                break label0;
                            }
                            i++;
                        }
                    } while (true);
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        return true;
    }

    public static boolean areEqual(boolean aflag[], boolean aflag1[])
    {
        boolean flag1 = false;
        if (aflag != aflag1) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (aflag != null)
        {
            flag = flag1;
            if (aflag1 != null)
            {
                flag = flag1;
                if (aflag.length == aflag1.length)
                {
                    int i = 0;
label0:
                    do
                    {
label1:
                        {
                            if (i == aflag.length)
                            {
                                break label1;
                            }
                            flag = flag1;
                            if (aflag[i] != aflag1[i])
                            {
                                break label0;
                            }
                            i++;
                        }
                    } while (true);
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        return true;
    }

    public static byte[] clone(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return null;
        } else
        {
            byte abyte1[] = new byte[abyte0.length];
            System.arraycopy(abyte0, 0, abyte1, 0, abyte0.length);
            return abyte1;
        }
    }

    public static int[] clone(int ai[])
    {
        if (ai == null)
        {
            return null;
        } else
        {
            int ai1[] = new int[ai.length];
            System.arraycopy(ai, 0, ai1, 0, ai.length);
            return ai1;
        }
    }

    public static boolean constantTimeAreEqual(byte abyte0[], byte abyte1[])
    {
        boolean flag1 = false;
        boolean flag;
        if (abyte0 == abyte1)
        {
            flag = true;
        } else
        {
            flag = flag1;
            if (abyte0 != null)
            {
                flag = flag1;
                if (abyte1 != null)
                {
                    flag = flag1;
                    if (abyte0.length == abyte1.length)
                    {
                        int i = 0;
                        int j = 0;
                        for (; i != abyte0.length; i++)
                        {
                            j |= abyte0[i] ^ abyte1[i];
                        }

                        flag = flag1;
                        if (j == 0)
                        {
                            return true;
                        }
                    }
                }
            }
        }
        return flag;
    }

    public static void fill(byte abyte0[], byte byte0)
    {
        for (int i = 0; i < abyte0.length; i++)
        {
            abyte0[i] = byte0;
        }

    }

    public static void fill(long al[], long l)
    {
        for (int i = 0; i < al.length; i++)
        {
            al[i] = l;
        }

    }

    public static void fill(short aword0[], short word0)
    {
        for (int i = 0; i < aword0.length; i++)
        {
            aword0[i] = word0;
        }

    }

    public static int hashCode(byte abyte0[])
    {
        if (abyte0 != null) goto _L2; else goto _L1
_L1:
        int j = 0;
_L4:
        return j;
_L2:
        j = abyte0.length;
        int i = j + 1;
        do
        {
            int k = j - 1;
            j = i;
            if (k < 0)
            {
                continue;
            }
            i = i * 257 ^ abyte0[k];
            j = k;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }
}
