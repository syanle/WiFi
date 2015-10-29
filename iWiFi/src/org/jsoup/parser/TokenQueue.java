// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.parser;

import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;

public class TokenQueue
{

    private static final char ESC = 92;
    private int pos;
    private String queue;

    public TokenQueue(String s)
    {
        pos = 0;
        Validate.notNull(s);
        queue = s;
    }

    private int remainingLength()
    {
        return queue.length() - pos;
    }

    public static String unescape(String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        int j = 0;
        s = s.toCharArray();
        int k = s.length;
        int i = 0;
        while (i < k) 
        {
            char c = s[i];
            if (c == '\\')
            {
                if (j != 0 && j == 92)
                {
                    stringbuilder.append(c);
                }
            } else
            {
                stringbuilder.append(c);
            }
            j = c;
            i++;
        }
        return stringbuilder.toString();
    }

    public void addFirst(Character character)
    {
        addFirst(character.toString());
    }

    public void addFirst(String s)
    {
        queue = (new StringBuilder()).append(s).append(queue.substring(pos)).toString();
        pos = 0;
    }

    public void advance()
    {
        if (!isEmpty())
        {
            pos = pos + 1;
        }
    }

    public String chompBalanced(char c, char c1)
    {
        int i;
        int j;
        int k1;
        int l1;
        j = -1;
        i = -1;
        l1 = 0;
        k1 = 0;
_L4:
        if (!isEmpty()) goto _L2; else goto _L1
_L1:
        if (i >= 0)
        {
            return queue.substring(j, i);
        } else
        {
            return "";
        }
_L2:
label0:
        {
            Character character = Character.valueOf(consume());
            int k;
            int l;
            if (k1 != 0)
            {
                l = l1;
                k = j;
                if (k1 == 92)
                {
                    break label0;
                }
            }
            int j1;
            if (character.equals(Character.valueOf(c)))
            {
                int i1 = l1 + 1;
                l = i1;
                k = j;
                if (j == -1)
                {
                    k = pos;
                    l = i1;
                }
            } else
            {
                l = l1;
                k = j;
                if (character.equals(Character.valueOf(c1)))
                {
                    l = l1 - 1;
                    k = j;
                }
            }
        }
        j1 = i;
        if (l > 0)
        {
            j1 = i;
            if (k1 != 0)
            {
                j1 = pos;
            }
        }
        k1 = character.charValue();
        l1 = l;
        i = j1;
        j = k;
        if (l > 0) goto _L4; else goto _L3
_L3:
        i = j1;
        j = k;
          goto _L1
    }

    public String chompTo(String s)
    {
        String s1 = consumeTo(s);
        matchChomp(s);
        return s1;
    }

    public String chompToIgnoreCase(String s)
    {
        String s1 = consumeToIgnoreCase(s);
        matchChomp(s);
        return s1;
    }

    public char consume()
    {
        String s = queue;
        int i = pos;
        pos = i + 1;
        return s.charAt(i);
    }

    public void consume(String s)
    {
        if (!matches(s))
        {
            throw new IllegalStateException("Queue did not match expected sequence");
        }
        int i = s.length();
        if (i > remainingLength())
        {
            throw new IllegalStateException("Queue not long enough to consume sequence");
        } else
        {
            pos = pos + i;
            return;
        }
    }

    public String consumeAttributeKey()
    {
        int i = pos;
        while (!isEmpty() && (matchesWord() || matchesAny(new char[] {
            '-', '_', ':'
        }))) 
        {
            pos = pos + 1;
        }
        return queue.substring(i, pos);
    }

    public String consumeCssIdentifier()
    {
        int i = pos;
        while (!isEmpty() && (matchesWord() || matchesAny(new char[] {
            '-', '_'
        }))) 
        {
            pos = pos + 1;
        }
        return queue.substring(i, pos);
    }

    public String consumeElementSelector()
    {
        int i = pos;
        while (!isEmpty() && (matchesWord() || matchesAny(new char[] {
            '|', '_', '-'
        }))) 
        {
            pos = pos + 1;
        }
        return queue.substring(i, pos);
    }

    public String consumeTagName()
    {
        int i = pos;
        while (!isEmpty() && (matchesWord() || matchesAny(new char[] {
            ':', '_', '-'
        }))) 
        {
            pos = pos + 1;
        }
        return queue.substring(i, pos);
    }

    public String consumeTo(String s)
    {
        int i = queue.indexOf(s, pos);
        if (i != -1)
        {
            s = queue.substring(pos, i);
            pos = pos + s.length();
            return s;
        } else
        {
            return remainder();
        }
    }

    public transient String consumeToAny(String as[])
    {
        int i = pos;
        while (!isEmpty() && !matchesAny(as)) 
        {
            pos = pos + 1;
        }
        return queue.substring(i, pos);
    }

    public String consumeToIgnoreCase(String s)
    {
        int i = pos;
        String s1 = s.substring(0, 1);
        boolean flag = s1.toLowerCase().equals(s1.toUpperCase());
        do
        {
            if (isEmpty() || matches(s))
            {
                return queue.substring(i, pos);
            }
            if (flag)
            {
                int j = queue.indexOf(s1, pos) - pos;
                if (j == 0)
                {
                    pos = pos + 1;
                } else
                if (j < 0)
                {
                    pos = queue.length();
                } else
                {
                    pos = pos + j;
                }
            } else
            {
                pos = pos + 1;
            }
        } while (true);
    }

    public boolean consumeWhitespace()
    {
        boolean flag;
        for (flag = false; matchesWhitespace(); flag = true)
        {
            pos = pos + 1;
        }

        return flag;
    }

    public String consumeWord()
    {
        int i = pos;
        while (matchesWord()) 
        {
            pos = pos + 1;
        }
        return queue.substring(i, pos);
    }

    public boolean isEmpty()
    {
        return remainingLength() == 0;
    }

    public boolean matchChomp(String s)
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

    public boolean matches(String s)
    {
        return queue.regionMatches(true, pos, s, 0, s.length());
    }

    public transient boolean matchesAny(char ac[])
    {
        if (!isEmpty())
        {
            int j = ac.length;
            int i = 0;
            while (i < j) 
            {
                char c = ac[i];
                if (queue.charAt(pos) == c)
                {
                    return true;
                }
                i++;
            }
        }
        return false;
    }

    public transient boolean matchesAny(String as[])
    {
        int j = as.length;
        for (int i = 0; i < j; i++)
        {
            if (matches(as[i]))
            {
                return true;
            }
        }

        return false;
    }

    public boolean matchesCS(String s)
    {
        return queue.startsWith(s, pos);
    }

    public boolean matchesStartTag()
    {
        return remainingLength() >= 2 && queue.charAt(pos) == '<' && Character.isLetter(queue.charAt(pos + 1));
    }

    public boolean matchesWhitespace()
    {
        return !isEmpty() && StringUtil.isWhitespace(queue.charAt(pos));
    }

    public boolean matchesWord()
    {
        return !isEmpty() && Character.isLetterOrDigit(queue.charAt(pos));
    }

    public char peek()
    {
        if (isEmpty())
        {
            return '\0';
        } else
        {
            return queue.charAt(pos);
        }
    }

    public String remainder()
    {
        String s = queue.substring(pos, queue.length());
        pos = queue.length();
        return s;
    }

    public String toString()
    {
        return queue.substring(pos);
    }
}
