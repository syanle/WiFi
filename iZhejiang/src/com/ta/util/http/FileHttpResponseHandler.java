// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.http;

import android.os.Message;
import android.util.Log;
import com.ta.exception.FileAlreadyExistException;
import com.ta.util.TALogger;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Timer;
import java.util.TimerTask;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.conn.ConnectTimeoutException;

// Referenced classes of package com.ta.util.http:
//            AsyncHttpResponseHandler

public class FileHttpResponseHandler extends AsyncHttpResponseHandler
{
    private class ProgressReportingRandomAccessFile extends RandomAccessFile
    {

        private int progress;
        final FileHttpResponseHandler this$0;

        public void write(byte abyte0[], int i, int j)
            throws IOException
        {
            super.write(abyte0, i, j);
            progress = progress + j;
            totalTime = System.currentTimeMillis() - previousTime;
            downloadSize = (long)progress + previousFileSize;
            if (totalTime > 0L)
            {
                networkSpeed = (long)((double)((long)progress / totalTime) / 1.024D);
            }
        }

        public ProgressReportingRandomAccessFile(File file1, String s)
            throws FileNotFoundException
        {
            this$0 = FileHttpResponseHandler.this;
            super(file1, s);
            progress = 0;
        }
    }


    private static final int BUFFER_SIZE = 8192;
    private static final String TAG = "FileHttpResponseHandler";
    private static final String TEMP_SUFFIX = ".download";
    private static final int TIMERSLEEPTIME = 100;
    public static final int TIME_OUT = 30000;
    private File baseDirFile;
    private long downloadSize;
    private File file;
    private boolean interrupt;
    private long networkSpeed;
    private RandomAccessFile outputStream;
    private long previousFileSize;
    private long previousTime;
    private File tempFile;
    private Timer timer;
    private boolean timerInterrupt;
    private long totalSize;
    private long totalTime;
    private String url;

    public FileHttpResponseHandler(String s)
    {
        interrupt = false;
        timerInterrupt = false;
        timer = new Timer();
        file = new File(s);
        baseDirFile = new File(file.getParent());
        tempFile = new File((new StringBuilder(String.valueOf(s))).append(".download").toString());
        init();
    }

    public FileHttpResponseHandler(String s, String s1)
    {
        interrupt = false;
        timerInterrupt = false;
        timer = new Timer();
        baseDirFile = new File(s);
        file = new File(s, s1);
        tempFile = new File(s, (new StringBuilder(String.valueOf(s1))).append(".download").toString());
        init();
    }

    public FileHttpResponseHandler(String s, String s1, String s2)
    {
        interrupt = false;
        timerInterrupt = false;
        timer = new Timer();
        url = s;
        baseDirFile = new File(s1);
        file = new File(s1, s2);
        tempFile = new File(s1, (new StringBuilder(String.valueOf(s2))).append(".download").toString());
        init();
    }

    private void init()
    {
        if (!baseDirFile.exists())
        {
            baseDirFile.mkdirs();
        }
    }

    private void startTimer()
    {
        timer.schedule(new TimerTask() {

            final FileHttpResponseHandler this$0;

            public void run()
            {
                do
                {
                    if (timerInterrupt)
                    {
                        return;
                    }
                    sendProgressMessage(totalSize, getDownloadSize(), networkSpeed);
                    try
                    {
                        Thread.sleep(100L);
                    }
                    catch (InterruptedException interruptedexception)
                    {
                        interruptedexception.printStackTrace();
                    }
                } while (true);
            }

            
            {
                this$0 = FileHttpResponseHandler.this;
                super();
            }
        }, 0L, 1000L);
    }

    private void stopTimer()
    {
        timerInterrupt = true;
    }

    public int copy(InputStream inputstream, RandomAccessFile randomaccessfile)
        throws IOException
    {
        byte abyte0[];
        int i;
        long l;
        if (inputstream == null || randomaccessfile == null)
        {
            return -1;
        }
        abyte0 = new byte[8192];
        inputstream = new BufferedInputStream(inputstream, 8192);
        TALogger.v("FileHttpResponseHandler", (new StringBuilder("length")).append(randomaccessfile.length()).toString());
        i = 0;
        l = -1L;
        randomaccessfile.seek(randomaccessfile.length());
        previousTime = System.currentTimeMillis();
_L5:
        boolean flag = interrupt;
        if (!flag) goto _L2; else goto _L1
_L1:
        int j;
        try
        {
            randomaccessfile.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            return i;
        }
        return i;
_L2:
        if ((j = inputstream.read(abyte0, 0, 8192)) == -1) goto _L1; else goto _L3
_L3:
        randomaccessfile.write(abyte0, 0, j);
        i += j;
        if (networkSpeed != 0L)
        {
            break MISSING_BLOCK_LABEL_183;
        }
        if (l <= 0L)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        if (System.currentTimeMillis() - l <= 30000L) goto _L5; else goto _L4
_L4:
        throw new ConnectTimeoutException("connection time out.");
        inputstream;
        try
        {
            randomaccessfile.close();
        }
        // Misplaced declaration of an exception variable
        catch (RandomAccessFile randomaccessfile) { }
        throw inputstream;
        l = System.currentTimeMillis();
          goto _L5
        l = -1L;
          goto _L5
    }

    public long getDownloadSize()
    {
        return downloadSize;
    }

    public double getDownloadSpeed()
    {
        return (double)networkSpeed;
    }

    public File getFile()
    {
        return file;
    }

    public File getTempFile()
    {
        return tempFile;
    }

    public long getTotalSize()
    {
        return totalSize;
    }

    public long getTotalTime()
    {
        return totalTime;
    }

    public String getUrl()
    {
        return url;
    }

    protected void handleFailureMessage(Throwable throwable, byte abyte0[])
    {
        onFailure(throwable, abyte0);
    }

    protected void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            super.handleMessage(message);
            return;

        case 4: // '\004'
            message = ((Message) ((Object[])message.obj));
            break;
        }
        handleSuccessMessage(((Integer)message[0]).intValue(), (byte[])message[1]);
    }

    protected void handleSuccessMessage(int i, byte abyte0[])
    {
        onSuccess(i, abyte0);
    }

    public boolean isInterrupt()
    {
        return interrupt;
    }

    public void onFailure(Throwable throwable, byte abyte0[])
    {
        onFailure(throwable);
    }

    public void onSuccess(int i, byte abyte0[])
    {
        onSuccess(abyte0);
    }

    public void onSuccess(byte abyte0[])
    {
        onSuccess(new String(abyte0));
    }

    protected void sendFailureMessage(Throwable throwable, byte abyte0[])
    {
        sendMessage(obtainMessage(1, ((Object) (new Object[] {
            throwable, abyte0
        }))));
    }

    protected void sendProgressMessage(long l, long l1, long l2)
    {
        sendMessage(obtainMessage(0, ((Object) (new Object[] {
            Long.valueOf(l), Long.valueOf(l1), Long.valueOf(l2)
        }))));
    }

    protected void sendResponseMessage(HttpResponse httpresponse)
    {
        Object obj;
        int j;
        int k;
        int l;
        int i1;
        long l3;
        obj = null;
        l3 = -1L;
        k = 0;
        l = 0;
        i1 = 0;
        j = 0;
        int i = httpresponse.getStatusLine().getStatusCode();
        j = i;
        k = i;
        l = i;
        i1 = i;
        long l4 = httpresponse.getEntity().getContentLength();
        long l1;
        l1 = l4;
        if (l4 != -1L)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        j = i;
        k = i;
        l = i;
        i1 = i;
        l1 = httpresponse.getEntity().getContent().available();
        j = i;
        k = i;
        l = i;
        i1 = i;
        totalSize = previousFileSize + l1;
        j = i;
        k = i;
        l = i;
        i1 = i;
        TALogger.v("FileHttpResponseHandler", (new StringBuilder("totalSize: ")).append(totalSize).toString());
        j = i;
        k = i;
        l = i;
        i1 = i;
        if (!file.exists())
        {
            break MISSING_BLOCK_LABEL_343;
        }
        j = i;
        k = i;
        l = i;
        i1 = i;
        if (totalSize != file.length())
        {
            break MISSING_BLOCK_LABEL_343;
        }
        j = i;
        k = i;
        l = i;
        i1 = i;
        TALogger.v("FileHttpResponseHandler", "Output file already exists. Skipping download.");
        j = i;
        k = i;
        l = i;
        i1 = i;
        InterruptedException interruptedexception;
        int j1;
        long l2;
        try
        {
            throw new FileAlreadyExistException("Output file already exists. Skipping download.");
        }
        // Misplaced declaration of an exception variable
        catch (HttpResponse httpresponse)
        {
            sendFailureMessage(httpresponse, null);
            i = j;
            l2 = l3;
        }
        // Misplaced declaration of an exception variable
        catch (HttpResponse httpresponse)
        {
            l2 = l3;
            i = i1;
        }
        // Misplaced declaration of an exception variable
        catch (HttpResponse httpresponse)
        {
            l2 = l3;
            i = k;
        }
        // Misplaced declaration of an exception variable
        catch (HttpResponse httpresponse)
        {
            l2 = l3;
            i = l;
        }
        stopTimer();
        try
        {
            Thread.sleep(100L);
        }
        // Misplaced declaration of an exception variable
        catch (InterruptedException interruptedexception)
        {
            interruptedexception.printStackTrace();
        }
        if (l2 != -1L && !interrupt && httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_787;
        }
        if (httpresponse != null)
        {
            Log.v("FileHttpResponseHandler", (new StringBuilder("Download failed.")).append(httpresponse.getMessage()).toString());
            if (!(httpresponse instanceof FileAlreadyExistException))
            {
                break MISSING_BLOCK_LABEL_780;
            }
            sendSuccessMessage(i, "\u4E0B\u8F7D\u6210\u529F\uFF01".getBytes());
        }
        return;
        j = i;
        k = i;
        l = i;
        i1 = i;
        if (!tempFile.exists())
        {
            break MISSING_BLOCK_LABEL_505;
        }
        j = i;
        k = i;
        l = i;
        i1 = i;
        TALogger.v("FileHttpResponseHandler", (new StringBuilder("yahooo: ")).append(httpresponse.getEntity().getContentLength()).toString());
        j = i;
        k = i;
        l = i;
        i1 = i;
        previousFileSize = tempFile.length();
        j = i;
        k = i;
        l = i;
        i1 = i;
        TALogger.v("FileHttpResponseHandler", "File is not complete, download now.");
        j = i;
        k = i;
        l = i;
        i1 = i;
        TALogger.v("FileHttpResponseHandler", (new StringBuilder("File length:")).append(tempFile.length()).append(" totalSize:").append(totalSize).toString());
        j = i;
        k = i;
        l = i;
        i1 = i;
        outputStream = new ProgressReportingRandomAccessFile(tempFile, "rw");
        j = i;
        k = i;
        l = i;
        i1 = i;
        httpresponse = httpresponse.getEntity().getContent();
        j = i;
        k = i;
        l = i;
        i1 = i;
        startTimer();
        j = i;
        k = i;
        l = i;
        i1 = i;
        j1 = copy(httpresponse, outputStream);
        j = i;
        k = i;
        l = i;
        i1 = i;
        if (previousFileSize + (long)j1 == totalSize)
        {
            break MISSING_BLOCK_LABEL_720;
        }
        j = i;
        k = i;
        l = i;
        i1 = i;
        if (totalSize == -1L)
        {
            break MISSING_BLOCK_LABEL_720;
        }
        j = i;
        k = i;
        l = i;
        i1 = i;
        if (interrupt)
        {
            break MISSING_BLOCK_LABEL_720;
        }
        j = i;
        k = i;
        l = i;
        i1 = i;
        throw new IOException((new StringBuilder("Download incomplete: ")).append(j1).append(" != ").append(totalSize).toString());
        j = i;
        k = i;
        l = i;
        i1 = i;
        TALogger.v("FileHttpResponseHandler", "Download completed successfully.");
        l2 = j1;
        httpresponse = obj;
        break MISSING_BLOCK_LABEL_264;
        sendFailureMessage(httpresponse, null);
        return;
        tempFile.renameTo(file);
        sendSuccessMessage(i, "\u4E0B\u8F7D\u6210\u529F\uFF01".getBytes());
        return;
    }

    protected void sendSuccessMessage(int i, byte abyte0[])
    {
        sendMessage(obtainMessage(4, ((Object) (new Object[] {
            Integer.valueOf(i), abyte0
        }))));
    }

    public void setInterrupt(boolean flag)
    {
        interrupt = flag;
    }

    public void setPreviousFileSize(long l)
    {
        previousFileSize = l;
    }









}
