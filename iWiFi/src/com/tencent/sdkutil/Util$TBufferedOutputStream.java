// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import java.io.BufferedOutputStream;
import java.io.OutputStream;

class mLength extends BufferedOutputStream
{

    private int mLength;

    public int getLength()
    {
        return mLength;
    }

    public void write(byte abyte0[])
    {
        super.write(abyte0);
        mLength = mLength + abyte0.length;
    }

    public (OutputStream outputstream)
    {
        super(outputstream);
        mLength = 0;
    }
}
