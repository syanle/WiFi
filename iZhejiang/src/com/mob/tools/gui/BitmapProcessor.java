// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.gui;

import android.content.Context;
import android.graphics.Bitmap;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.network.RawNetworkCallback;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Timer;
import java.util.TimerTask;
import java.util.Vector;
import java.util.WeakHashMap;

public class BitmapProcessor
{
    public static interface BitmapCallback
    {

        public abstract void onImageGot(String s, Bitmap bitmap);
    }

    public static class ImageReq
    {

        private BitmapCallback callback;
        private Bitmap image;
        private long reqTime;
        private String url;
        private WorkerThread worker;

        private void throwComplete(Bitmap bitmap)
        {
            image = bitmap;
            if (callback != null)
            {
                callback.onImageGot(url, image);
            }
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("url=").append(url);
            stringbuilder.append("time=").append(reqTime);
            stringbuilder.append("worker=").append(worker.getName()).append(" (").append(worker.getId()).append("");
            return stringbuilder.toString();
        }



/*
        static String access$002(ImageReq imagereq, String s)
        {
            imagereq.url = s;
            return s;
        }

*/


/*
        static WorkerThread access$1002(ImageReq imagereq, WorkerThread workerthread)
        {
            imagereq.worker = workerthread;
            return workerthread;
        }

*/


/*
        static BitmapCallback access$102(ImageReq imagereq, BitmapCallback bitmapcallback)
        {
            imagereq.callback = bitmapcallback;
            return bitmapcallback;
        }

*/


        public ImageReq()
        {
            reqTime = System.currentTimeMillis();
        }
    }

    private static class ManagerThread extends Timer
    {

        private BitmapProcessor processor;

        private void scan()
        {
            if (processor.work)
            {
                long l = System.currentTimeMillis();
                int i = 0;
                while (i < processor.workerList.length) 
                {
                    if (processor.workerList[i] == null)
                    {
                        processor.workerList[i] = new WorkerThread(processor);
                        processor.workerList[i].setName((new StringBuilder()).append("worker ").append(i).toString());
                        WorkerThread workerthread = processor.workerList[i];
                        boolean flag;
                        if (i == 0)
                        {
                            flag = true;
                        } else
                        {
                            flag = false;
                        }
                        workerthread.localType = flag;
                        processor.workerList[i].start();
                    } else
                    if (l - processor.workerList[i].lastReport > 20000L)
                    {
                        processor.workerList[i].interrupt();
                        boolean flag1 = processor.workerList[i].localType;
                        processor.workerList[i] = new WorkerThread(processor);
                        processor.workerList[i].setName((new StringBuilder()).append("worker ").append(i).toString());
                        processor.workerList[i].localType = flag1;
                        processor.workerList[i].start();
                    }
                    i++;
                }
            }
        }



        public ManagerThread(BitmapProcessor bitmapprocessor)
        {
            processor = bitmapprocessor;
            schedule(new _cls1(), 0L, 200L);
        }
    }

    private static class PatchInputStream extends FilterInputStream
    {

        InputStream in;

        public long skip(long l)
            throws IOException
        {
            long l1 = 0L;
            do
            {
                long l2;
label0:
                {
                    if (l1 < l)
                    {
                        l2 = in.skip(l - l1);
                        if (l2 != 0L)
                        {
                            break label0;
                        }
                    }
                    return l1;
                }
                l1 += l2;
            } while (true);
        }

        protected PatchInputStream(InputStream inputstream)
        {
            super(inputstream);
            in = inputstream;
        }
    }

    private static class WorkerThread extends Thread
    {

        private ImageReq curReq;
        private long lastReport;
        private boolean localType;
        private BitmapProcessor processor;

        private void doLocalTask()
            throws Throwable
        {
            int i = processor.reqList.size();
            ImageReq imagereq;
            if (i > 0)
            {
                imagereq = (ImageReq)processor.reqList.remove(i - 1);
            } else
            {
                imagereq = null;
            }
            if (imagereq != null)
            {
                Bitmap bitmap = (Bitmap)processor.cacheMap.get(imagereq.url);
                if (bitmap != null)
                {
                    curReq = imagereq;
                    curReq.worker = this;
                    imagereq.throwComplete(bitmap);
                } else
                {
                    if ((new File(processor.cacheDir, Data.MD5(imagereq.url))).exists())
                    {
                        doTask(imagereq);
                        lastReport = System.currentTimeMillis();
                        return;
                    }
                    if (processor.netReqTPS.size() > 40)
                    {
                        for (; processor.reqList.size() > 0; processor.reqList.remove(0)) { }
                        processor.netReqTPS.remove(0);
                    }
                    processor.netReqTPS.add(imagereq);
                }
                lastReport = System.currentTimeMillis();
                return;
            } else
            {
                lastReport = System.currentTimeMillis();
                Thread.sleep(30L);
                return;
            }
        }

        private void doNetworkTask()
            throws Throwable
        {
            ImageReq imagereq = null;
            if (processor.netReqTPS.size() > 0)
            {
                imagereq = (ImageReq)processor.netReqTPS.remove(0);
            }
            if (imagereq == null)
            {
                int i = processor.reqList.size();
                if (i > 0)
                {
                    imagereq = (ImageReq)processor.reqList.remove(i - 1);
                }
            }
            if (imagereq != null)
            {
                Bitmap bitmap = (Bitmap)processor.cacheMap.get(imagereq.url);
                if (bitmap != null)
                {
                    curReq = imagereq;
                    curReq.worker = this;
                    imagereq.throwComplete(bitmap);
                } else
                {
                    doTask(imagereq);
                }
                lastReport = System.currentTimeMillis();
                return;
            } else
            {
                lastReport = System.currentTimeMillis();
                Thread.sleep(30L);
                return;
            }
        }

        private void doTask(ImageReq imagereq)
            throws Throwable
        {
            curReq = imagereq;
            curReq.worker = this;
            final Object file;
            final boolean saveAsPng;
            if (imagereq.url.toLowerCase().endsWith("png") || imagereq.url.toLowerCase().endsWith("gif"))
            {
                saveAsPng = true;
            } else
            {
                saveAsPng = false;
            }
            file = new File(processor.cacheDir, Data.MD5(imagereq.url));
            if (((File) (file)).exists())
            {
                file = BitmapHelper.getBitmap(((File) (file)).getAbsolutePath());
                if (file != null)
                {
                    processor.cacheMap.put(imagereq.url, file);
                    imagereq.throwComplete(((Bitmap) (file)));
                }
                curReq = null;
            } else
            {
                (new NetworkHelper()).rawGet(imagereq.url, imagereq. new RawNetworkCallback() {

                    final WorkerThread this$0;
                    final File val$file;
                    final ImageReq val$req;
                    final boolean val$saveAsPng;

                    public void onResponse(InputStream inputstream)
                        throws Throwable
                    {
                        inputstream = BitmapHelper.getBitmap(new PatchInputStream(inputstream), 1);
                        if (inputstream == null || inputstream.isRecycled())
                        {
                            curReq = null;
                            return;
                        }
                        saveFile(inputstream, file, saveAsPng);
                        if (inputstream != null)
                        {
                            processor.cacheMap.put(req.url, inputstream);
                            req.throwComplete(inputstream);
                        }
                        curReq = null;
                    }

            
            {
                this$0 = final_workerthread;
                file = file1;
                saveAsPng = flag;
                req = ImageReq.this;
                super();
            }
                });
                file = null;
            }
            if (file != null)
            {
                processor.cacheMap.put(imagereq.url, file);
                imagereq.throwComplete(((Bitmap) (file)));
            }
            curReq = null;
        }

        private void saveFile(Bitmap bitmap, File file, boolean flag)
        {
            android.graphics.Bitmap.CompressFormat compressformat;
            FileOutputStream fileoutputstream;
            try
            {
                if (file.exists())
                {
                    file.delete();
                }
                if (!file.getParentFile().exists())
                {
                    file.getParentFile().mkdirs();
                }
                file.createNewFile();
            }
            // Misplaced declaration of an exception variable
            catch (Bitmap bitmap)
            {
                if (file.exists())
                {
                    file.delete();
                }
                return;
            }
            if (!flag)
            {
                break MISSING_BLOCK_LABEL_76;
            }
            compressformat = android.graphics.Bitmap.CompressFormat.PNG;
_L2:
            fileoutputstream = new FileOutputStream(file);
            bitmap.compress(compressformat, 100, fileoutputstream);
            fileoutputstream.flush();
            fileoutputstream.close();
            return;
            compressformat = android.graphics.Bitmap.CompressFormat.JPEG;
            if (true) goto _L2; else goto _L1
_L1:
        }

        public void interrupt()
        {
            try
            {
                super.interrupt();
                return;
            }
            catch (Throwable throwable)
            {
                return;
            }
        }

        public void run()
        {
_L2:
            if (!processor.work)
            {
                break; /* Loop/switch isn't completed */
            }
            Throwable throwable;
            if (localType)
            {
                doLocalTask();
                continue; /* Loop/switch isn't completed */
            }
            try
            {
                doNetworkTask();
            }
            // Misplaced declaration of an exception variable
            catch (Throwable throwable)
            {
                Ln.w(throwable);
            }
            if (true) goto _L2; else goto _L1
_L1:
        }


/*
        static ImageReq access$1402(WorkerThread workerthread, ImageReq imagereq)
        {
            workerthread.curReq = imagereq;
            return imagereq;
        }

*/





/*
        static boolean access$602(WorkerThread workerthread, boolean flag)
        {
            workerthread.localType = flag;
            return flag;
        }

*/


        public WorkerThread(BitmapProcessor bitmapprocessor)
        {
            processor = bitmapprocessor;
            lastReport = System.currentTimeMillis();
        }
    }


    private static final int CAPACITY = 3;
    private static final int MAX_REQ_TIME = 200;
    private static final int MAX_SIZE = 40;
    private static final int OVERFLOW_SIZE = 50;
    private static BitmapProcessor instance;
    private File cacheDir;
    private WeakHashMap cacheMap;
    private ManagerThread manager;
    private Vector netReqTPS;
    private Vector reqList;
    private boolean work;
    private WorkerThread workerList[];

    private BitmapProcessor(Context context)
    {
        reqList = new Vector();
        netReqTPS = new Vector();
        workerList = new WorkerThread[3];
        cacheMap = new WeakHashMap();
        cacheDir = new File(R.getImageCachePath(context));
        manager = new ManagerThread(this);
    }

    public static Bitmap getBitmapFromCache(String s)
    {
        if (instance == null)
        {
            throw new RuntimeException("Call BitmapProcessor.prepare(String) before start");
        } else
        {
            return (Bitmap)instance.cacheMap.get(s);
        }
    }

    public static void prepare(Context context)
    {
        com/mob/tools/gui/BitmapProcessor;
        JVM INSTR monitorenter ;
        if (instance == null)
        {
            instance = new BitmapProcessor(context.getApplicationContext());
        }
        com/mob/tools/gui/BitmapProcessor;
        JVM INSTR monitorexit ;
        return;
        context;
        throw context;
    }

    public static void process(String s, BitmapCallback bitmapcallback)
    {
        if (instance == null)
        {
            throw new RuntimeException("Call BitmapProcessor.prepare(String) before start");
        }
        if (s == null)
        {
            return;
        }
        ImageReq imagereq = new ImageReq();
        imagereq.url = s;
        imagereq.callback = bitmapcallback;
        instance.reqList.add(imagereq);
        if (instance.reqList.size() > 50)
        {
            for (; instance.reqList.size() > 40; instance.reqList.remove(0)) { }
        }
        start();
    }

    public static void start()
    {
        if (instance == null)
        {
            throw new RuntimeException("Call BitmapProcessor.prepare(String) before start");
        } else
        {
            instance.work = true;
            return;
        }
    }

    public static void stop()
    {
        int i = 0;
        if (instance != null)
        {
            instance.work = false;
            instance.reqList.clear();
            instance.manager.cancel();
            for (; i < instance.workerList.length; i++)
            {
                if (instance.workerList[i] != null)
                {
                    instance.workerList[i].interrupt();
                }
            }

            instance = null;
        }
    }







    // Unreferenced inner class com/mob/tools/gui/BitmapProcessor$ManagerThread$1

/* anonymous class */
    class ManagerThread._cls1 extends TimerTask
    {

        private int counter;
        final ManagerThread this$0;

        public void run()
        {
            if (processor.work)
            {
                counter = counter - 1;
                if (counter <= 0)
                {
                    counter = 100;
                    scan();
                }
            }
        }

            
            {
                this$0 = ManagerThread.this;
                super();
            }
    }

}
