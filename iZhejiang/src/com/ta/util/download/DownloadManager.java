// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.download;

import android.os.Environment;
import android.text.TextUtils;
import com.ta.common.TAStringUtils;
import com.ta.util.TALogger;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.FileHttpResponseHandler;
import java.io.File;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

// Referenced classes of package com.ta.util.download:
//            DownLoadCallback, DownLoadConfigUtil

public class DownloadManager extends Thread
{
    private class handlerQueue
    {

        private Queue handlerQueue;
        final DownloadManager this$0;

        public AsyncHttpResponseHandler get(int i)
        {
            if (i >= size())
            {
                return null;
            } else
            {
                return (AsyncHttpResponseHandler)((LinkedList)handlerQueue).get(i);
            }
        }

        public void offer(AsyncHttpResponseHandler asynchttpresponsehandler)
        {
            handlerQueue.offer(asynchttpresponsehandler);
        }

        public AsyncHttpResponseHandler poll()
        {
            do
            {
                if (mDownloadinghandlers.size() < 3)
                {
                    AsyncHttpResponseHandler asynchttpresponsehandler = (AsyncHttpResponseHandler)handlerQueue.poll();
                    if (asynchttpresponsehandler != null)
                    {
                        return asynchttpresponsehandler;
                    }
                }
                try
                {
                    Thread.sleep(1000L);
                }
                catch (InterruptedException interruptedexception)
                {
                    interruptedexception.printStackTrace();
                }
            } while (true);
        }

        public boolean remove(int i)
        {
            return handlerQueue.remove(get(i));
        }

        public boolean remove(AsyncHttpResponseHandler asynchttpresponsehandler)
        {
            return handlerQueue.remove(asynchttpresponsehandler);
        }

        public int size()
        {
            return handlerQueue.size();
        }

        public handlerQueue()
        {
            this$0 = DownloadManager.this;
            super();
            handlerQueue = new LinkedList();
        }
    }


    public static final String FILE_ROOT = (new StringBuilder(String.valueOf(SDCARD_ROOT))).append("thinkandroid/").toString();
    private static final int MAX_DOWNLOAD_THREAD_COUNT = 3;
    private static final int MAX_handler_COUNT = 100;
    private static final String SDCARD_ROOT = (new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()))).append("/").toString();
    private static DownloadManager downloadManager;
    private Boolean isRunning;
    private DownLoadCallback mDownLoadCallback;
    private List mDownloadinghandlers;
    private List mPausinghandlers;
    private handlerQueue mhandlerQueue;
    private String rootPath;

    private DownloadManager()
    {
        this(FILE_ROOT);
    }

    private DownloadManager(String s)
    {
        isRunning = Boolean.valueOf(false);
        rootPath = "";
        rootPath = s;
        mhandlerQueue = new handlerQueue();
        mDownloadinghandlers = new ArrayList();
        mPausinghandlers = new ArrayList();
        if (!TAStringUtils.isEmpty(s))
        {
            s = new File(s);
            if (!s.exists())
            {
                s.mkdir();
            }
        }
    }

    private void addHandler(AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        broadcastAddHandler(((FileHttpResponseHandler)asynchttpresponsehandler).getUrl());
        mhandlerQueue.offer(asynchttpresponsehandler);
        if (!isAlive())
        {
            startManage();
        }
    }

    private void broadcastAddHandler(String s)
    {
        broadcastAddHandler(s, false);
    }

    private void broadcastAddHandler(String s, boolean flag)
    {
        if (mDownLoadCallback != null)
        {
            mDownLoadCallback.sendAddMessage(s, Boolean.valueOf(false));
        }
    }

    public static DownloadManager getDownloadManager()
    {
        if (downloadManager == null)
        {
            downloadManager = new DownloadManager(FILE_ROOT);
        }
        return downloadManager;
    }

    public static DownloadManager getDownloadManager(String s)
    {
        if (downloadManager == null)
        {
            downloadManager = new DownloadManager(s);
        }
        return downloadManager;
    }

    private AsyncHttpResponseHandler newAsyncHttpResponseHandler(String s)
        throws MalformedURLException
    {
        return new FileHttpResponseHandler(s, rootPath, TAStringUtils.getFileNameFromUrl(s)) {

            final DownloadManager this$0;

            public void onFailure(Throwable throwable)
            {
                TALogger.d(DownloadManager.this, "Throwable");
                if (throwable != null && mDownLoadCallback != null)
                {
                    mDownLoadCallback.sendFailureMessage(getUrl(), throwable.getMessage());
                }
            }

            public void onFinish()
            {
                completehandler(this);
            }

            public void onProgress(long l, long l1, long l2)
            {
                super.onProgress(l, l1, l2);
                if (mDownLoadCallback != null)
                {
                    mDownLoadCallback.sendLoadMessage(getUrl(), l, l1, l2);
                }
            }

            public void onStart()
            {
                DownLoadConfigUtil.storeURL(mDownloadinghandlers.indexOf(this), getUrl());
            }

            public void onSuccess(String s1)
            {
                if (mDownLoadCallback != null)
                {
                    mDownLoadCallback.sendSuccessMessage(getUrl());
                }
            }

            
            {
                this$0 = DownloadManager.this;
                super(s, s1, s2);
            }
        };
    }

    public void addHandler(String s)
    {
        if (getTotalhandlerCount() >= 100)
        {
            if (mDownLoadCallback != null)
            {
                mDownLoadCallback.sendFailureMessage(s, "\u4EFB\u52A1\u5217\u8868\u5DF2\u6EE1");
            }
        } else
        if (!TextUtils.isEmpty(s) && !hasHandler(s))
        {
            try
            {
                addHandler(newAsyncHttpResponseHandler(s));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
            }
            return;
        }
    }

    public void checkUncompletehandlers()
    {
        List list = DownLoadConfigUtil.getURLArray();
        if (list.size() < 0) goto _L2; else goto _L1
_L1:
        int i = 0;
_L5:
        if (i < list.size()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        addHandler((String)list.get(i));
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void close()
    {
        isRunning = Boolean.valueOf(false);
        pauseAllHandler();
        if (mDownLoadCallback != null)
        {
            mDownLoadCallback.sendStopMessage();
        }
        stop();
    }

    public void completehandler(AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        this;
        JVM INSTR monitorenter ;
        if (mDownloadinghandlers.contains(asynchttpresponsehandler))
        {
            DownLoadConfigUtil.clearURL(mDownloadinghandlers.indexOf(asynchttpresponsehandler));
            mDownloadinghandlers.remove(asynchttpresponsehandler);
            if (mDownLoadCallback != null)
            {
                mDownLoadCallback.sendFinishMessage(((FileHttpResponseHandler)asynchttpresponsehandler).getUrl());
            }
        }
        this;
        JVM INSTR monitorexit ;
        return;
        asynchttpresponsehandler;
        throw asynchttpresponsehandler;
    }

    public void continueHandler(String s)
    {
        this;
        JVM INSTR monitorenter ;
        int i = 0;
_L2:
        int j = mPausinghandlers.size();
        if (i < j)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        FileHttpResponseHandler filehttpresponsehandler = (FileHttpResponseHandler)mPausinghandlers.get(i);
        if (filehttpresponsehandler == null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        if (filehttpresponsehandler.getUrl().equals(s))
        {
            continuehandler(filehttpresponsehandler);
        }
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        s;
        throw s;
    }

    public void continuehandler(AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        this;
        JVM INSTR monitorenter ;
        if (asynchttpresponsehandler == null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        mPausinghandlers.remove(asynchttpresponsehandler);
        mhandlerQueue.offer(asynchttpresponsehandler);
        this;
        JVM INSTR monitorexit ;
        return;
        asynchttpresponsehandler;
        throw asynchttpresponsehandler;
    }

    public void deleteHandler(String s)
    {
        this;
        JVM INSTR monitorenter ;
        int i = 0;
_L8:
        if (i < mDownloadinghandlers.size()) goto _L2; else goto _L1
_L1:
        i = 0;
_L10:
        if (i < mhandlerQueue.size()) goto _L4; else goto _L3
_L3:
        i = 0;
_L9:
        int j = mPausinghandlers.size();
        if (i < j) goto _L6; else goto _L5
_L5:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        FileHttpResponseHandler filehttpresponsehandler = (FileHttpResponseHandler)mDownloadinghandlers.get(i);
        if (filehttpresponsehandler == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!filehttpresponsehandler.getUrl().equals(s))
        {
            break; /* Loop/switch isn't completed */
        }
        s = filehttpresponsehandler.getFile();
        if (s.exists())
        {
            s.delete();
        }
        s = filehttpresponsehandler.getTempFile();
        if (s.exists())
        {
            s.delete();
        }
        filehttpresponsehandler.setInterrupt(true);
        completehandler(filehttpresponsehandler);
        if (true) goto _L5; else goto _L7
        s;
        throw s;
_L7:
        i++;
          goto _L8
_L4:
        filehttpresponsehandler = (FileHttpResponseHandler)mhandlerQueue.get(i);
        if (filehttpresponsehandler == null)
        {
            break MISSING_BLOCK_LABEL_226;
        }
        if (filehttpresponsehandler.getUrl().equals(s))
        {
            mhandlerQueue.remove(filehttpresponsehandler);
        }
        break MISSING_BLOCK_LABEL_226;
_L6:
        filehttpresponsehandler = (FileHttpResponseHandler)mPausinghandlers.get(i);
        if (filehttpresponsehandler == null)
        {
            break MISSING_BLOCK_LABEL_219;
        }
        if (filehttpresponsehandler.getUrl().equals(s))
        {
            mPausinghandlers.remove(filehttpresponsehandler);
        }
        i++;
          goto _L9
        i++;
          goto _L10
    }

    public int getDownloadinghandlerCount()
    {
        return mDownloadinghandlers.size();
    }

    public FileHttpResponseHandler getHandler(String s)
    {
        int i;
        s = null;
        i = 0;
_L3:
        if (i < mDownloadinghandlers.size()) goto _L2; else goto _L1
_L1:
        i = 0;
_L4:
        if (i >= mhandlerQueue.size())
        {
            return s;
        }
        break MISSING_BLOCK_LABEL_53;
_L2:
        s = (FileHttpResponseHandler)mDownloadinghandlers.get(i);
        i++;
          goto _L3
        s = (FileHttpResponseHandler)mhandlerQueue.get(i);
        i++;
          goto _L4
    }

    public int getPausinghandlerCount()
    {
        return mPausinghandlers.size();
    }

    public int getQueuehandlerCount()
    {
        return mhandlerQueue.size();
    }

    public String getRootPath()
    {
        if (TAStringUtils.isEmpty(rootPath))
        {
            rootPath = FILE_ROOT;
        }
        return rootPath;
    }

    public int getTotalhandlerCount()
    {
        return getQueuehandlerCount() + getDownloadinghandlerCount() + getPausinghandlerCount();
    }

    public AsyncHttpResponseHandler gethandler(int i)
    {
        if (i >= mDownloadinghandlers.size())
        {
            return mhandlerQueue.get(i - mDownloadinghandlers.size());
        } else
        {
            return (AsyncHttpResponseHandler)mDownloadinghandlers.get(i);
        }
    }

    public boolean hasHandler(String s)
    {
        int i;
        boolean flag1;
        flag1 = true;
        i = 0;
_L7:
        if (i < mDownloadinghandlers.size()) goto _L2; else goto _L1
_L1:
        i = 0;
_L9:
        if (i < mhandlerQueue.size()) goto _L4; else goto _L3
_L3:
        boolean flag = false;
_L6:
        return flag;
_L2:
        flag = flag1;
        if (((FileHttpResponseHandler)mDownloadinghandlers.get(i)).getUrl().equals(s)) goto _L6; else goto _L5
_L5:
        i++;
          goto _L7
_L4:
        flag = flag1;
        if (((FileHttpResponseHandler)mhandlerQueue.get(i)).getUrl().equals(s)) goto _L6; else goto _L8
_L8:
        i++;
          goto _L9
    }

    public boolean isRunning()
    {
        return isRunning.booleanValue();
    }

    public void pauseAllHandler()
    {
        this;
        JVM INSTR monitorenter ;
        int i = 0;
_L7:
        if (i < mhandlerQueue.size()) goto _L2; else goto _L1
_L1:
        i = 0;
_L5:
        int j = mDownloadinghandlers.size();
        if (i < j) goto _L4; else goto _L3
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        AsyncHttpResponseHandler asynchttpresponsehandler = mhandlerQueue.get(i);
        mhandlerQueue.remove(asynchttpresponsehandler);
        mPausinghandlers.add(asynchttpresponsehandler);
        i++;
        continue; /* Loop/switch isn't completed */
_L4:
        AsyncHttpResponseHandler asynchttpresponsehandler1 = (AsyncHttpResponseHandler)mDownloadinghandlers.get(i);
        if (asynchttpresponsehandler1 == null)
        {
            break MISSING_BLOCK_LABEL_94;
        }
        pausehandler(asynchttpresponsehandler1);
        i++;
          goto _L5
        Exception exception;
        exception;
        throw exception;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void pauseHandler(String s)
    {
        this;
        JVM INSTR monitorenter ;
        int i = 0;
_L2:
        int j = mDownloadinghandlers.size();
        if (i < j)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        FileHttpResponseHandler filehttpresponsehandler = (FileHttpResponseHandler)mDownloadinghandlers.get(i);
        if (filehttpresponsehandler == null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        if (filehttpresponsehandler.getUrl().equals(s))
        {
            pausehandler(filehttpresponsehandler);
        }
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        s;
        throw s;
    }

    public void pausehandler(AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = (FileHttpResponseHandler)asynchttpresponsehandler;
        if (asynchttpresponsehandler == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        ((FileHttpResponseHandler) (obj)).setInterrupt(true);
        obj = ((FileHttpResponseHandler) (obj)).getUrl();
        mDownloadinghandlers.remove(asynchttpresponsehandler);
        asynchttpresponsehandler = newAsyncHttpResponseHandler(((String) (obj)));
        mPausinghandlers.add(asynchttpresponsehandler);
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        asynchttpresponsehandler;
        asynchttpresponsehandler.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
        asynchttpresponsehandler;
        throw asynchttpresponsehandler;
    }

    public void reBroadcastAddAllhandler()
    {
        int i = 0;
_L5:
        if (i < mDownloadinghandlers.size()) goto _L2; else goto _L1
_L1:
        i = 0;
_L6:
        if (i < mhandlerQueue.size()) goto _L4; else goto _L3
_L3:
        i = 0;
_L7:
        if (i >= mPausinghandlers.size())
        {
            return;
        }
        break MISSING_BLOCK_LABEL_102;
_L2:
        FileHttpResponseHandler filehttpresponsehandler = (FileHttpResponseHandler)mDownloadinghandlers.get(i);
        broadcastAddHandler(filehttpresponsehandler.getUrl(), filehttpresponsehandler.isInterrupt());
        i++;
          goto _L5
_L4:
        broadcastAddHandler(((FileHttpResponseHandler)mhandlerQueue.get(i)).getUrl());
        i++;
          goto _L6
        broadcastAddHandler(((FileHttpResponseHandler)mPausinghandlers.get(i)).getUrl());
        i++;
          goto _L7
    }

    public void run()
    {
        super.run();
        do
        {
            FileHttpResponseHandler filehttpresponsehandler;
            do
            {
                if (!isRunning.booleanValue())
                {
                    return;
                }
                filehttpresponsehandler = (FileHttpResponseHandler)mhandlerQueue.poll();
            } while (filehttpresponsehandler == null);
            mDownloadinghandlers.add(filehttpresponsehandler);
            filehttpresponsehandler.setInterrupt(false);
        } while (true);
    }

    public void setDownLoadCallback(DownLoadCallback downloadcallback)
    {
        mDownLoadCallback = downloadcallback;
    }

    public void startManage()
    {
        isRunning = Boolean.valueOf(true);
        start();
        if (mDownLoadCallback != null)
        {
            mDownLoadCallback.sendStartMessage();
        }
    }



}
