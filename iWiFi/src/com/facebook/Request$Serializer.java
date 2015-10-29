// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.facebook.internal.Logger;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;

// Referenced classes of package com.facebook:
//            Request

private static class logger
    implements ializer
{

    private boolean firstWrite;
    private final Logger logger;
    private final BufferedOutputStream outputStream;

    public transient void write(String s, Object aobj[])
        throws IOException
    {
        if (firstWrite)
        {
            outputStream.write("--".getBytes());
            outputStream.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
            outputStream.write("\r\n".getBytes());
            firstWrite = false;
        }
        outputStream.write(String.format(s, aobj).getBytes());
    }

    public void writeBitmap(String s, Bitmap bitmap)
        throws IOException
    {
        writeContentDisposition(s, s, "image/png");
        bitmap.compress(android.graphics.at.PNG, 100, outputStream);
        writeLine("", new Object[0]);
        writeRecordBoundary();
        logger.appendKeyValue((new StringBuilder("    ")).append(s).toString(), "<Image>");
    }

    public void writeBytes(String s, byte abyte0[])
        throws IOException
    {
        writeContentDisposition(s, s, "content/unknown");
        outputStream.write(abyte0);
        writeLine("", new Object[0]);
        writeRecordBoundary();
        logger.appendKeyValue((new StringBuilder("    ")).append(s).toString(), String.format("<Data: %d>", new Object[] {
            Integer.valueOf(abyte0.length)
        }));
    }

    public void writeContentDisposition(String s, String s1, String s2)
        throws IOException
    {
        write("Content-Disposition: form-data; name=\"%s\"", new Object[] {
            s
        });
        if (s1 != null)
        {
            write("; filename=\"%s\"", new Object[] {
                s1
            });
        }
        writeLine("", new Object[0]);
        if (s2 != null)
        {
            writeLine("%s: %s", new Object[] {
                "Content-Type", s2
            });
        }
        writeLine("", new Object[0]);
    }

    public void writeFile(String s, ParcelFileDescriptor parcelfiledescriptor, String s1)
        throws IOException
    {
        String s2;
        int i;
        s2 = s1;
        if (s1 == null)
        {
            s2 = "content/unknown";
        }
        writeContentDisposition(s, s, s2);
        s2 = null;
        s1 = null;
        i = 0;
        parcelfiledescriptor = new android.os.r.AutoCloseInputStream(parcelfiledescriptor);
        BufferedInputStream bufferedinputstream = new BufferedInputStream(parcelfiledescriptor);
        s1 = new byte[8192];
_L1:
        int j = bufferedinputstream.read(s1);
        if (j == -1)
        {
            if (bufferedinputstream != null)
            {
                bufferedinputstream.close();
            }
            if (parcelfiledescriptor != null)
            {
                parcelfiledescriptor.close();
            }
            writeLine("", new Object[0]);
            writeRecordBoundary();
            logger.appendKeyValue((new StringBuilder("    ")).append(s).toString(), String.format("<Data: %d>", new Object[] {
                Integer.valueOf(i)
            }));
            return;
        }
        outputStream.write(s1, 0, j);
        i += j;
          goto _L1
        parcelfiledescriptor;
        s = s2;
_L3:
        if (s1 != null)
        {
            s1.close();
        }
        if (s != null)
        {
            s.close();
        }
        throw parcelfiledescriptor;
        Exception exception;
        exception;
        s = parcelfiledescriptor;
        parcelfiledescriptor = exception;
        continue; /* Loop/switch isn't completed */
        exception;
        s1 = bufferedinputstream;
        s = parcelfiledescriptor;
        parcelfiledescriptor = exception;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public void writeFile(String s, escriptorWithMimeType escriptorwithmimetype)
        throws IOException
    {
        writeFile(s, escriptorwithmimetype.getFileDescriptor(), escriptorwithmimetype.getMimeType());
    }

    public transient void writeLine(String s, Object aobj[])
        throws IOException
    {
        write(s, aobj);
        write("\r\n", new Object[0]);
    }

    public void writeObject(String s, Object obj)
        throws IOException
    {
        if (Request.access$0(obj))
        {
            writeString(s, Request.access$1(obj));
            return;
        }
        if (obj instanceof Bitmap)
        {
            writeBitmap(s, (Bitmap)obj);
            return;
        }
        if (obj instanceof byte[])
        {
            writeBytes(s, (byte[])obj);
            return;
        }
        if (obj instanceof ParcelFileDescriptor)
        {
            writeFile(s, (ParcelFileDescriptor)obj, null);
            return;
        }
        if (obj instanceof escriptorWithMimeType)
        {
            writeFile(s, (escriptorWithMimeType)obj);
            return;
        } else
        {
            throw new IllegalArgumentException("value is not a supported type: String, Bitmap, byte[]");
        }
    }

    public void writeRecordBoundary()
        throws IOException
    {
        writeLine("--%s", new Object[] {
            "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
        });
    }

    public void writeString(String s, String s1)
        throws IOException
    {
        writeContentDisposition(s, null, null);
        writeLine("%s", new Object[] {
            s1
        });
        writeRecordBoundary();
        if (logger != null)
        {
            logger.appendKeyValue((new StringBuilder("    ")).append(s).toString(), s1);
        }
    }

    public escriptorWithMimeType(BufferedOutputStream bufferedoutputstream, Logger logger1)
    {
        firstWrite = true;
        outputStream = bufferedoutputstream;
        logger = logger1;
    }
}
