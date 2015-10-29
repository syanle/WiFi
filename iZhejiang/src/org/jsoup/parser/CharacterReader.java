// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.parser;

import java.util.Locale;
import org.jsoup.helper.Validate;

class CharacterReader
{

    static final char EOF = 65535;
    private final char input[];
    private final int length;
    private int mark;
    private int pos;

    CharacterReader(String s)
    {
        pos = 0;
        mark = 0;
        Validate.notNull(s);
        input = s.toCharArray();
        length = input.length;
    }

    void advance()
    {
        pos = pos + 1;
    }

    char consume()
    {
        char c;
        if (pos >= length)
        {
            c = '\uFFFF';
        } else
        {
            c = input[pos];
        }
        pos = pos + 1;
        return c;
    }

    String consumeAsString()
    {
        char ac[] = input;
        int i = pos;
        pos = i + 1;
        return new String(ac, i, 1);
    }

    String consumeDigitSequence()
    {
        int i = pos;
        do
        {
            if (pos >= length)
            {
                break;
            }
            char c = input[pos];
            if (c < '0' || c > '9')
            {
                break;
            }
            pos = pos + 1;
        } while (true);
        return new String(input, i, pos - i);
    }

    String consumeHexSequence()
    {
        int i = pos;
        do
        {
            if (pos >= length)
            {
                break;
            }
            char c = input[pos];
            if ((c < '0' || c > '9') && (c < 'A' || c > 'F') && (c < 'a' || c > 'f'))
            {
                break;
            }
            pos = pos + 1;
        } while (true);
        return new String(input, i, pos - i);
    }

    String consumeLetterSequence()
    {
        int i = pos;
        do
        {
            if (pos >= length)
            {
                break;
            }
            char c = input[pos];
            if ((c < 'A' || c > 'Z') && (c < 'a' || c > 'z'))
            {
                break;
            }
            pos = pos + 1;
        } while (true);
        return new String(input, i, pos - i);
    }

    String consumeLetterThenDigitSequence()
    {
        int i = pos;
        do
        {
            if (pos >= length)
            {
                break;
            }
            char c = input[pos];
            if ((c < 'A' || c > 'Z') && (c < 'a' || c > 'z'))
            {
                break;
            }
            pos = pos + 1;
        } while (true);
        do
        {
            if (isEmpty())
            {
                break;
            }
            char c1 = input[pos];
            if (c1 < '0' || c1 > '9')
            {
                break;
            }
            pos = pos + 1;
        } while (true);
        return new String(input, i, pos - i);
    }

    String consumeTo(char c)
    {
        int i = nextIndexOf(c);
        if (i != -1)
        {
            String s = new String(input, pos, i);
            pos = pos + i;
            return s;
        } else
        {
            return consumeToEnd();
        }
    }

    String consumeTo(String s)
    {
        int i = nextIndexOf(s);
        if (i != -1)
        {
            s = new String(input, pos, i);
            pos = pos + i;
            return s;
        } else
        {
            return consumeToEnd();
        }
    }

    transient String consumeToAny(char ac[])
    {
        int j = pos;
_L7:
        if (pos >= length) goto _L2; else goto _L1
_L1:
        int i = 0;
_L5:
        if (i >= ac.length)
        {
            break; /* Loop/switch isn't completed */
        }
        if (input[pos] != ac[i]) goto _L3; else goto _L2
_L2:
        if (pos > j)
        {
            return new String(input, j, pos - j);
        } else
        {
            return "";
        }
_L3:
        i++;
        if (true) goto _L5; else goto _L4
_L4:
        pos = pos + 1;
        if (true) goto _L7; else goto _L6
_L6:
    }

    String consumeToEnd()
    {
        String s = new String(input, pos, length - pos);
        pos = length;
        return s;
    }

    boolean containsIgnoreCase(String s)
    {
        String s1 = s.toLowerCase(Locale.ENGLISH);
        s = s.toUpperCase(Locale.ENGLISH);
        return nextIndexOf(s1) > -1 || nextIndexOf(s) > -1;
    }

    char current()
    {
        if (pos >= length)
        {
            return '\uFFFF';
        } else
        {
            return input[pos];
        }
    }

    boolean isEmpty()
    {
        return pos >= length;
    }

    void mark()
    {
        mark = pos;
    }

    boolean matchConsume(String s)
    {
        if (matches(s))
        {
            pos = pos + s.length();
            return true;
        } else
        {
            return false;
        }
    }

    boolean matchConsumeIgnoreCase(String s)
    {
        if (matchesIgnoreCase(s))
        {
            pos = pos + s.length();
            return true;
        } else
        {
            return false;
        }
    }

    boolean matches(char c)
    {
        return !isEmpty() && input[pos] == c;
    }

    boolean matches(String s)
    {
        int j = s.length();
        if (j <= length - pos) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = 0;
label0:
        do
        {
label1:
            {
                if (i >= j)
                {
                    break label1;
                }
                if (s.charAt(i) != input[pos + i])
                {
                    break label0;
                }
                i++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    transient boolean matchesAny(char ac[])
    {
        if (!isEmpty())
        {
            char c = input[pos];
            int j = ac.length;
            int i = 0;
            while (i < j) 
            {
                if (ac[i] == c)
                {
                    return true;
                }
                i++;
            }
        }
        return false;
    }

    boolean matchesDigit()
    {
        char c;
        if (!isEmpty())
        {
            if ((c = input[pos]) >= '0' && c <= '9')
            {
                return true;
            }
        }
        return false;
    }

    boolean matchesIgnoreCase(String s)
    {
        int j = s.length();
        if (j <= length - pos) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = 0;
label0:
        do
        {
label1:
            {
                if (i >= j)
                {
                    break label1;
                }
                if (Character.toUpperCase(s.charAt(i)) != Character.toUpperCase(input[pos + i]))
                {
                    break label0;
                }
                i++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    boolean matchesLetter()
    {
        char c;
        if (!isEmpty())
        {
            if ((c = input[pos]) >= 'A' && c <= 'Z' || c >= 'a' && c <= 'z')
            {
                return true;
            }
        }
        return false;
    }

    int nextIndexOf(char c)
    {
        for (int i = pos; i < length; i++)
        {
            if (c == input[i])
            {
                return i - pos;
            }
        }

        return -1;
    }

    int nextIndexOf(CharSequence charsequence)
    {
        char c = charsequence.charAt(0);
        int j;
        for (int i = pos; i < length; i = j + 1)
        {
label0:
            {
                j = i;
                if (c == input[i])
                {
                    break label0;
                }
                j = i;
                do
                {
                    i = j + 1;
                    j = i;
                    if (i >= length)
                    {
                        break label0;
                    }
                    j = i;
                } while (c != input[i]);
                j = i;
            }
            int k = j + 1;
            int l = (charsequence.length() + k) - 1;
            if (j >= length || l > length)
            {
                continue;
            }
            for (i = 1; k < l && charsequence.charAt(i) == input[k]; i++)
            {
                k++;
            }

            if (k == l)
            {
                return j - pos;
            }
        }

        return -1;
    }

    int pos()
    {
        return pos;
    }

    void rewindToMark()
    {
        pos = mark;
    }

    public String toString()
    {
        return new String(input, pos, length - pos);
    }

    void unconsume()
    {
        pos = pos - 1;
    }
}
