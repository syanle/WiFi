// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;


class CharCircBuffer
{

    private final int buf_[];
    private boolean enabled_;
    private int next_;
    private int total_;

    CharCircBuffer(int i)
    {
        next_ = 0;
        total_ = 0;
        enabled_ = true;
        buf_ = new int[i];
    }

    private void addRaw(int i)
    {
        if (enabled_)
        {
            buf_[next_] = i;
            next_ = (next_ + 1) % buf_.length;
            total_ = total_ + 1;
        }
    }

    void addChar(char c)
    {
        addRaw(c);
    }

    void addInt(int i)
    {
        addRaw(0x10000 + i);
    }

    void addString(String s)
    {
        s = s.toCharArray();
        int j = s.length;
        int i = 0;
        do
        {
            if (i >= j)
            {
                return;
            }
            addChar(s[i]);
            i++;
        } while (true);
    }

    void disable()
    {
        enabled_ = false;
    }

    void enable()
    {
        enabled_ = true;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer((buf_.length * 11) / 10);
        int i;
        if (total_ < buf_.length)
        {
            i = buf_.length - total_;
        } else
        {
            i = 0;
        }
        do
        {
            if (i >= buf_.length)
            {
                return stringbuffer.toString();
            }
            int j = next_;
            int k = buf_.length;
            j = buf_[(j + i) % k];
            if (j < 0x10000)
            {
                stringbuffer.append((char)j);
            } else
            {
                stringbuffer.append(Integer.toString(j - 0x10000));
            }
            i++;
        } while (true);
    }
}
