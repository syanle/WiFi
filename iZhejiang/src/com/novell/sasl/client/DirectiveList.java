// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.novell.sasl.client;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.harmony.javax.security.sasl.SaslException;

// Referenced classes of package com.novell.sasl.client:
//            ParsedDirective

class DirectiveList
{

    private static final int STATE_LOOKING_FOR_COMMA = 6;
    private static final int STATE_LOOKING_FOR_DIRECTIVE = 2;
    private static final int STATE_LOOKING_FOR_EQUALS = 4;
    private static final int STATE_LOOKING_FOR_FIRST_DIRECTIVE = 1;
    private static final int STATE_LOOKING_FOR_VALUE = 5;
    private static final int STATE_NO_UTF8_SUPPORT = 9;
    private static final int STATE_SCANNING_NAME = 3;
    private static final int STATE_SCANNING_QUOTED_STRING_VALUE = 7;
    private static final int STATE_SCANNING_TOKEN_VALUE = 8;
    private String m_curName;
    private int m_curPos;
    private ArrayList m_directiveList;
    private String m_directives;
    private int m_errorPos;
    private int m_scanStart;
    private int m_state;

    DirectiveList(byte abyte0[])
    {
        m_curPos = 0;
        m_state = 1;
        m_directiveList = new ArrayList(10);
        m_scanStart = 0;
        m_errorPos = -1;
        try
        {
            m_directives = new String(abyte0, "UTF-8");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            m_state = 9;
        }
    }

    void addDirective(String s, boolean flag)
    {
        if (flag) goto _L2; else goto _L1
_L1:
        Object obj = m_directives.substring(m_scanStart, m_curPos);
_L3:
        int i;
        int j;
        int k;
        if (m_state == 7)
        {
            i = 1;
        } else
        {
            i = 2;
        }
        m_directiveList.add(new ParsedDirective(s, ((String) (obj)), i));
        return;
_L2:
        obj = new StringBuffer(m_curPos - m_scanStart);
        j = 0;
        i = m_scanStart;
_L4:
label0:
        {
            if (i < m_curPos)
            {
                break label0;
            }
            obj = new String(((StringBuffer) (obj)));
        }
          goto _L3
        k = i;
        if ('\\' == m_directives.charAt(i))
        {
            k = i + 1;
        }
        ((StringBuffer) (obj)).setCharAt(j, m_directives.charAt(k));
        j++;
        i = k + 1;
          goto _L4
    }

    Iterator getIterator()
    {
        return m_directiveList.iterator();
    }

    boolean isValidTokenChar(char c)
    {
        return (c < 0 || c > ' ') && (c < ':' || c > '@') && (c < '[' || c > ']') && ',' != c && '%' != c && '(' != c && ')' != c && '{' != c && '}' != c && '\177' != c;
    }

    boolean isWhiteSpace(char c)
    {
        return '\t' == c || '\n' == c || '\r' == c || ' ' == c;
    }

    void parseDirectives()
        throws SaslException
    {
        String s1;
        char c1;
        boolean flag1;
        flag1 = false;
        s1 = "<no name>";
        if (m_state == 9)
        {
            throw new SaslException("No UTF-8 support on platform");
        }
        c1 = '\0';
_L20:
        if (m_curPos < m_directives.length()) goto _L2; else goto _L1
_L1:
        if (false) goto _L4; else goto _L3
_L3:
        m_state;
        JVM INSTR tableswitch 1 8: default 96
    //                   1 96
    //                   2 705
    //                   3 715
    //                   4 715
    //                   5 715
    //                   6 96
    //                   7 725
    //                   8 698;
           goto _L4 _L4 _L5 _L6 _L6 _L6 _L4 _L7 _L8
_L4:
        return;
_L2:
        char c = m_directives.charAt(m_curPos);
        m_state;
        JVM INSTR tableswitch 1 8: default 160
    //                   1 194
    //                   2 194
    //                   3 256
    //                   4 358
    //                   5 410
    //                   6 646
    //                   7 591
    //                   8 504;
           goto _L9 _L10 _L10 _L11 _L12 _L13 _L14 _L15 _L16
_L10:
        break; /* Loop/switch isn't completed */
_L9:
        String s;
        boolean flag;
        flag = flag1;
        s = s1;
_L18:
        s1 = s;
        if (true)
        {
            c1 = c;
            m_curPos = m_curPos + 1;
            s1 = s;
            flag1 = flag;
            continue; /* Loop/switch isn't completed */
        }
        if (true) goto _L1; else goto _L17
_L17:
        s = s1;
        flag = flag1;
        if (!isWhiteSpace(c))
        {
            if (isValidTokenChar(c))
            {
                m_scanStart = m_curPos;
                m_state = 3;
                s = s1;
                flag = flag1;
            } else
            {
                m_errorPos = m_curPos;
                throw new SaslException("Parse error: Invalid name character");
            }
        }
          goto _L18
_L11:
        s = s1;
        flag = flag1;
        if (!isValidTokenChar(c))
        {
            if (isWhiteSpace(c))
            {
                s = m_directives.substring(m_scanStart, m_curPos);
                m_state = 4;
                flag = flag1;
            } else
            if ('=' == c)
            {
                s = m_directives.substring(m_scanStart, m_curPos);
                m_state = 5;
                flag = flag1;
            } else
            {
                m_errorPos = m_curPos;
                throw new SaslException("Parse error: Invalid name character");
            }
        }
          goto _L18
_L12:
        s = s1;
        flag = flag1;
        if (!isWhiteSpace(c))
        {
            if ('=' == c)
            {
                m_state = 5;
                s = s1;
                flag = flag1;
            } else
            {
                m_errorPos = m_curPos;
                throw new SaslException("Parse error: Expected equals sign '='.");
            }
        }
          goto _L18
_L13:
        s = s1;
        flag = flag1;
        if (!isWhiteSpace(c))
        {
            if ('"' == c)
            {
                m_scanStart = m_curPos + 1;
                m_state = 7;
                s = s1;
                flag = flag1;
            } else
            if (isValidTokenChar(c))
            {
                m_scanStart = m_curPos;
                m_state = 8;
                s = s1;
                flag = flag1;
            } else
            {
                m_errorPos = m_curPos;
                throw new SaslException("Parse error: Unexpected character");
            }
        }
          goto _L18
_L16:
        s = s1;
        flag = flag1;
        if (!isValidTokenChar(c))
        {
            if (isWhiteSpace(c))
            {
                addDirective(s1, false);
                m_state = 6;
                s = s1;
                flag = flag1;
            } else
            if (',' == c)
            {
                addDirective(s1, false);
                m_state = 2;
                s = s1;
                flag = flag1;
            } else
            {
                m_errorPos = m_curPos;
                throw new SaslException("Parse error: Invalid value character");
            }
        }
          goto _L18
_L15:
        if ('\\' == c)
        {
            flag1 = true;
        }
        s = s1;
        flag = flag1;
        if ('"' == c)
        {
            s = s1;
            flag = flag1;
            if ('\\' != c1)
            {
                addDirective(s1, flag1);
                flag = false;
                m_state = 6;
                s = s1;
            }
        }
          goto _L18
_L14:
        s = s1;
        flag = flag1;
        if (!isWhiteSpace(c))
        {
            if (c == ',')
            {
                m_state = 2;
                s = s1;
                flag = flag1;
            } else
            {
                m_errorPos = m_curPos;
                throw new SaslException("Parse error: Expected a comma.");
            }
        }
          goto _L18
_L8:
        addDirective(s1, false);
        return;
_L5:
        throw new SaslException("Parse error: Trailing comma.");
_L6:
        throw new SaslException("Parse error: Missing value.");
_L7:
        throw new SaslException("Parse error: Missing closing quote.");
        if (true) goto _L20; else goto _L19
_L19:
    }
}
