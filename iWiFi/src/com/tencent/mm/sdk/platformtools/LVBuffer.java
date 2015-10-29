// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import java.nio.ByteBuffer;

public class LVBuffer
{

    public static final int LENGTH_ALLOC_PER_NEW = 4096;
    public static final int MAX_STRING_LENGTH = 2048;
    private ByteBuffer U;
    private boolean V;

    public LVBuffer()
    {
    }

    private int b(int i)
    {
        if (U.limit() - U.position() > i)
        {
            return 0;
        } else
        {
            ByteBuffer bytebuffer = ByteBuffer.allocate(U.limit() + 4096);
            bytebuffer.put(U.array(), 0, U.position());
            U = bytebuffer;
            return 0;
        }
    }

    public byte[] buildFinish()
    {
        if (!V)
        {
            throw new Exception("Buffer For Parse");
        } else
        {
            b(1);
            U.put((byte)125);
            byte abyte0[] = new byte[U.position()];
            System.arraycopy(U.array(), 0, abyte0, 0, abyte0.length);
            return abyte0;
        }
    }

    public boolean checkGetFinish()
    {
        return U.limit() - U.position() <= 1;
    }

    public int getInt()
    {
        if (V)
        {
            throw new Exception("Buffer For Build");
        } else
        {
            return U.getInt();
        }
    }

    public long getLong()
    {
        if (V)
        {
            throw new Exception("Buffer For Build");
        } else
        {
            return U.getLong();
        }
    }

    public String getString()
    {
        if (V)
        {
            throw new Exception("Buffer For Build");
        }
        short word0 = U.getShort();
        if (word0 > 2048)
        {
            U = null;
            throw new Exception("Buffer String Length Error");
        }
        if (word0 == 0)
        {
            return "";
        } else
        {
            byte abyte0[] = new byte[word0];
            U.get(abyte0, 0, word0);
            return new String(abyte0);
        }
    }

    public int initBuild()
    {
        U = ByteBuffer.allocate(4096);
        U.put((byte)123);
        V = true;
        return 0;
    }

    public int initParse(byte abyte0[])
    {
        byte byte0;
        if (abyte0 == null || abyte0.length == 0)
        {
            byte0 = -1;
        } else
        if (abyte0[0] != 123)
        {
            byte0 = -2;
        } else
        if (abyte0[abyte0.length - 1] != 125)
        {
            byte0 = -3;
        } else
        {
            byte0 = 0;
        }
        if (byte0 != 0)
        {
            U = null;
            return -1;
        } else
        {
            U = ByteBuffer.wrap(abyte0);
            U.position(1);
            V = false;
            return 0;
        }
    }

    public int putInt(int i)
    {
        if (!V)
        {
            throw new Exception("Buffer For Parse");
        } else
        {
            b(4);
            U.putInt(i);
            return 0;
        }
    }

    public int putLong(long l)
    {
        if (!V)
        {
            throw new Exception("Buffer For Parse");
        } else
        {
            b(8);
            U.putLong(l);
            return 0;
        }
    }

    public int putString(String s)
    {
        if (!V)
        {
            throw new Exception("Buffer For Parse");
        }
        byte abyte0[] = null;
        if (s != null)
        {
            abyte0 = s.getBytes();
        }
        s = abyte0;
        if (abyte0 == null)
        {
            s = new byte[0];
        }
        if (s.length > 2048)
        {
            throw new Exception("Buffer String Length Error");
        }
        b(s.length + 2);
        U.putShort((short)s.length);
        if (s.length > 0)
        {
            U.put(s);
        }
        return 0;
    }
}
