// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta.xpath;

import java.io.IOException;
import java.io.Reader;

public class SimpleStreamTokenizer
{

    private static final int QUOTE = -6;
    public static final int TT_EOF = -1;
    public static final int TT_NUMBER = -2;
    public static final int TT_WORD = -3;
    private static final int WHITESPACE = -5;
    private final StringBuffer buf_;
    private final int charType_[];
    private char inQuote_;
    private int nextType_;
    public int nval;
    private boolean pushedBack_;
    private final Reader reader_;
    public String sval;
    public int ttype;

    public SimpleStreamTokenizer(Reader reader)
        throws IOException
    {
        char c;
        c = '\0';
        super();
        ttype = 0x80000000;
        nval = 0x80000000;
        sval = "";
        buf_ = new StringBuffer();
        charType_ = new int[256];
        pushedBack_ = false;
        inQuote_ = '\0';
        reader_ = reader;
_L2:
        if (c >= charType_.length)
        {
            nextToken();
            return;
        }
        if ((65 > c || c > 90) && (97 > c || c > 122) && c != 45)
        {
            break; /* Loop/switch isn't completed */
        }
        charType_[c] = -3;
_L3:
        c++;
        if (true) goto _L2; else goto _L1
_L1:
        if ('0' <= c && c <= '9')
        {
            charType_[c] = -2;
        } else
        if (c >= 0 && c <= ' ')
        {
            charType_[c] = -5;
        } else
        {
            charType_[c] = c;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public int nextToken()
        throws IOException
    {
        if (pushedBack_)
        {
            pushedBack_ = false;
            return ttype;
        }
        ttype = nextType_;
_L10:
        int i;
        int k;
        boolean flag1 = false;
        boolean flag;
        do
        {
            k = reader_.read();
            boolean flag2;
            if (k == -1)
            {
                if (inQuote_ != 0)
                {
                    throw new IOException("Unterminated quote");
                }
                i = -1;
            } else
            {
                i = charType_[k];
            }
            if (inQuote_ == 0 && i == -5)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            if (flag1 || flag2)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            flag1 = flag;
        } while (flag2);
        if (i == 39 || i == 34)
        {
            if (inQuote_ == 0)
            {
                inQuote_ = (char)i;
            } else
            if (inQuote_ == i)
            {
                inQuote_ = '\0';
            }
        }
        if (inQuote_ != 0)
        {
            i = inQuote_;
        }
        if (flag || ttype >= -1 && ttype != 39 && ttype != 34 || ttype != i)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        ttype;
        JVM INSTR lookupswitch 4: default 224
    //                   -3: 340
    //                   -2: 397
    //                   34: 362
    //                   39: 362;
           goto _L3 _L4 _L5 _L6 _L6
_L3:
        if (i != -5)
        {
            int j;
            if (i == -6)
            {
                j = k;
            } else
            {
                j = i;
            }
            nextType_ = j;
        }
_L2:
        i;
        JVM INSTR lookupswitch 4: default 288
    //                   -3: 427
    //                   -2: 427
    //                   34: 427
    //                   39: 427;
           goto _L7 _L8 _L8 _L8 _L8
_L7:
        if (flag)
        {
            return ttype;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        sval = buf_.toString();
        buf_.setLength(0);
          goto _L3
_L6:
        sval = buf_.toString().substring(1, buf_.length() - 1);
        buf_.setLength(0);
          goto _L3
_L5:
        nval = Integer.parseInt(buf_.toString());
        buf_.setLength(0);
          goto _L3
_L8:
        buf_.append((char)k);
          goto _L7
        if (true) goto _L10; else goto _L9
_L9:
    }

    public void ordinaryChar(char c)
    {
        charType_[c] = c;
    }

    public void pushBack()
    {
        pushedBack_ = true;
    }

    public String toString()
    {
        switch (ttype)
        {
        default:
            return "'" + (char)ttype + "'";

        case -2: 
            return Integer.toString(nval);

        case -3: 
        case 34: // '"'
            return "\"" + sval + "\"";

        case 39: // '\''
            return "'" + sval + "'";

        case -1: 
            return "(EOF)";
        }
    }

    public void wordChars(char c, char c1)
    {
        do
        {
            if (c > c1)
            {
                return;
            }
            charType_[c] = -3;
            c++;
        } while (true);
    }
}
