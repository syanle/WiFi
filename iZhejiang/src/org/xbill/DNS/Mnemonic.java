// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.util.HashMap;

class Mnemonic
{

    static final int CASE_LOWER = 3;
    static final int CASE_SENSITIVE = 1;
    static final int CASE_UPPER = 2;
    private static Integer cachedInts[];
    private String description;
    private int max;
    private boolean numericok;
    private String prefix;
    private HashMap strings;
    private HashMap values;
    private int wordcase;

    public Mnemonic(String s, int i)
    {
        description = s;
        wordcase = i;
        strings = new HashMap();
        values = new HashMap();
        max = 0x7fffffff;
    }

    private int parseNumeric(String s)
    {
        int i = Integer.parseInt(s);
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        int j = max;
        if (i <= j)
        {
            return i;
        }
        break MISSING_BLOCK_LABEL_22;
        s;
        return -1;
    }

    private String sanitize(String s)
    {
        String s1;
        if (wordcase == 2)
        {
            s1 = s.toUpperCase();
        } else
        {
            s1 = s;
            if (wordcase == 3)
            {
                return s.toLowerCase();
            }
        }
        return s1;
    }

    public static Integer toInteger(int i)
    {
        if (i >= 0 && i < cachedInts.length)
        {
            return cachedInts[i];
        } else
        {
            return new Integer(i);
        }
    }

    public void add(int i, String s)
    {
        check(i);
        Integer integer = toInteger(i);
        s = sanitize(s);
        strings.put(s, integer);
        values.put(integer, s);
    }

    public void addAlias(int i, String s)
    {
        check(i);
        Integer integer = toInteger(i);
        s = sanitize(s);
        strings.put(s, integer);
    }

    public void addAll(Mnemonic mnemonic)
    {
        if (wordcase != mnemonic.wordcase)
        {
            throw new IllegalArgumentException((new StringBuilder(String.valueOf(mnemonic.description))).append(": wordcases do not match").toString());
        } else
        {
            strings.putAll(mnemonic.strings);
            values.putAll(mnemonic.values);
            return;
        }
    }

    public void check(int i)
    {
        if (i < 0 || i > max)
        {
            throw new IllegalArgumentException((new StringBuilder(String.valueOf(description))).append(" ").append(i).append("is out of range").toString());
        } else
        {
            return;
        }
    }

    public String getText(int i)
    {
        check(i);
        String s = (String)values.get(toInteger(i));
        if (s != null)
        {
            return s;
        }
        s = Integer.toString(i);
        if (prefix != null)
        {
            return (new StringBuilder(String.valueOf(prefix))).append(s).toString();
        } else
        {
            return s;
        }
    }

    public int getValue(String s)
    {
        Integer integer;
        s = sanitize(s);
        integer = (Integer)strings.get(s);
        if (integer == null) goto _L2; else goto _L1
_L1:
        int i = integer.intValue();
_L4:
        return i;
_L2:
        int j;
        if (prefix == null || !s.startsWith(prefix))
        {
            break; /* Loop/switch isn't completed */
        }
        j = parseNumeric(s.substring(prefix.length()));
        i = j;
        if (j >= 0) goto _L4; else goto _L3
_L3:
        if (numericok)
        {
            return parseNumeric(s);
        } else
        {
            return -1;
        }
    }

    public void setMaximum(int i)
    {
        max = i;
    }

    public void setNumericAllowed(boolean flag)
    {
        numericok = flag;
    }

    public void setPrefix(String s)
    {
        prefix = sanitize(s);
    }

    static 
    {
        cachedInts = new Integer[64];
        int i = 0;
        do
        {
            if (i >= cachedInts.length)
            {
                return;
            }
            cachedInts[i] = new Integer(i);
            i++;
        } while (true);
    }
}
