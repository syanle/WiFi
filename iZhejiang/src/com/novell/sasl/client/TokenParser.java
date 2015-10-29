// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.novell.sasl.client;

import org.apache.harmony.javax.security.sasl.SaslException;

class TokenParser
{

    private static final int STATE_DONE = 6;
    private static final int STATE_LOOKING_FOR_COMMA = 4;
    private static final int STATE_LOOKING_FOR_FIRST_TOKEN = 1;
    private static final int STATE_LOOKING_FOR_TOKEN = 2;
    private static final int STATE_PARSING_ERROR = 5;
    private static final int STATE_SCANNING_TOKEN = 3;
    private int m_curPos;
    private int m_scanStart;
    private int m_state;
    private String m_tokens;

    TokenParser(String s)
    {
        m_tokens = s;
        m_curPos = 0;
        m_scanStart = 0;
        m_state = 1;
    }

    boolean isValidTokenChar(char c)
    {
        return (c < 0 || c > ' ') && (c < ':' || c > '@') && (c < '[' || c > ']') && ',' != c && '%' != c && '(' != c && ')' != c && '{' != c && '}' != c && '\177' != c;
    }

    boolean isWhiteSpace(char c)
    {
        return '\t' == c || '\n' == c || '\r' == c || ' ' == c;
    }

    String parseToken()
        throws SaslException
    {
        Object obj;
        obj = null;
        if (m_state == 6)
        {
            return null;
        }
          goto _L1
_L7:
        char c = m_tokens.charAt(m_curPos);
        m_state;
        JVM INSTR tableswitch 1 4: default 60
    //                   1 140
    //                   2 140
    //                   3 208
    //                   4 312;
           goto _L2 _L3 _L3 _L4 _L5
_L2:
        String s = obj;
_L14:
        m_curPos = m_curPos + 1;
        obj = s;
_L1:
        if (m_curPos < m_tokens.length() && obj == null) goto _L7; else goto _L6
_L6:
        s = obj;
        if (obj != null) goto _L9; else goto _L8
_L8:
        s = obj;
        m_state;
        JVM INSTR tableswitch 1 4: default 136
    //                   1 138
    //                   2 400
    //                   3 379
    //                   4 138;
           goto _L10 _L11 _L12 _L13 _L11
_L12:
        break MISSING_BLOCK_LABEL_400;
_L11:
        break; /* Loop/switch isn't completed */
_L10:
        s = obj;
_L9:
        return s;
_L3:
        s = obj;
        if (!isWhiteSpace(c))
        {
            if (isValidTokenChar(c))
            {
                m_scanStart = m_curPos;
                m_state = 3;
                s = obj;
            } else
            {
                m_state = 5;
                throw new SaslException((new StringBuilder("Invalid token character at position ")).append(m_curPos).toString());
            }
        }
          goto _L14
_L4:
        s = obj;
        if (!isValidTokenChar(c))
        {
            if (isWhiteSpace(c))
            {
                s = m_tokens.substring(m_scanStart, m_curPos);
                m_state = 4;
            } else
            if (',' == c)
            {
                s = m_tokens.substring(m_scanStart, m_curPos);
                m_state = 2;
            } else
            {
                m_state = 5;
                throw new SaslException((new StringBuilder("Invalid token character at position ")).append(m_curPos).toString());
            }
        }
          goto _L14
_L5:
        s = obj;
        if (!isWhiteSpace(c))
        {
            if (c == ',')
            {
                m_state = 2;
                s = obj;
            } else
            {
                m_state = 5;
                throw new SaslException((new StringBuilder("Expected a comma, found '")).append(c).append("' at postion ").append(m_curPos).toString());
            }
        }
          goto _L14
_L13:
        s = m_tokens.substring(m_scanStart);
        m_state = 6;
          goto _L9
        throw new SaslException("Trialing comma");
          goto _L14
    }
}
