// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.http;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

// Referenced classes of package com.ta.util.http:
//            FileHttpResponseHandler

private class progress extends RandomAccessFile
{

    private int progress;
    final FileHttpResponseHandler this$0;

    public void write(byte abyte0[], int i, int j)
        throws IOException
    {
        super.write(abyte0, i, j);
        progress = progress + j;
        FileHttpResponseHandler.access$1(FileHttpResponseHandler.this, System.currentTimeMillis() - FileHttpResponseHandler.access$0(FileHttpResponseHandler.this));
        FileHttpResponseHandler.access$3(FileHttpResponseHandler.this, (long)progress + FileHttpResponseHandler.access$2(FileHttpResponseHandler.this));
        if (FileHttpResponseHandler.access$4(FileHttpResponseHandler.this) > 0L)
        {
            FileHttpResponseHandler.access$5(FileHttpResponseHandler.this, (long)((double)((long)progress / FileHttpResponseHandler.access$4(FileHttpResponseHandler.this)) / 1.024D));
        }
    }

    public (File file, String s)
        throws FileNotFoundException
    {
        this$0 = FileHttpResponseHandler.this;
        super(file, s);
        progress = 0;
    }
}
