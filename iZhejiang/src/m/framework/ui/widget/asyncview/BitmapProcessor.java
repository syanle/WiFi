// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.asyncview;

import android.graphics.Bitmap;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Timer;
import java.util.TimerTask;
import java.util.Vector;
import java.util.WeakHashMap;
import m.framework.network.NetworkHelper;
import m.framework.network.ResponseCallback;
import m.framework.utils.Data;
import m.framework.utils.Utils;

// Referenced classes of package m.framework.ui.widget.asyncview:
//            BitmapCallback

public class BitmapProcessor
{
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
                        processor.workerList[i].setName((new StringBuilder("worker ")).append(i).toString());
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
                        processor.workerList[i].setName((new StringBuilder("worker ")).append(i).toString());
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
_L5:
            if (l1 < l) goto _L2; else goto _L1
_L1:
            long l2;
            return l1;
_L2:
            if ((l2 = in.skip(l - l1)) == 0L) goto _L1; else goto _L3
_L3:
            l1 += l2;
            if (true) goto _L5; else goto _L4
_L4:
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
            ImageReq imagereq;
            imagereq = null;
            int i = processor.reqList.size();
            if (i > 0)
            {
                imagereq = (ImageReq)processor.reqList.remove(i - 1);
            }
            if (imagereq == null) goto _L2; else goto _L1
_L1:
            Bitmap bitmap = (Bitmap)processor.cacheMap.get(imagereq.url);
            if (bitmap == null) goto _L4; else goto _L3
_L3:
            curReq = imagereq;
            curReq.worker = this;
            imagereq.throwComplete(bitmap);
_L10:
            lastReport = System.currentTimeMillis();
            return;
_L4:
            if ((new File(processor.cacheDir, Data.MD5(imagereq.url))).exists())
            {
                doTask(imagereq);
                lastReport = System.currentTimeMillis();
                return;
            }
            if (processor.netReqTPS.size() <= 40) goto _L6; else goto _L5
_L5:
            if (processor.reqList.size() > 0) goto _L8; else goto _L7
_L7:
            processor.netReqTPS.remove(0);
_L6:
            processor.netReqTPS.add(imagereq);
            continue; /* Loop/switch isn't completed */
_L8:
            processor.reqList.remove(0);
            if (true) goto _L5; else goto _L2
_L2:
            lastReport = System.currentTimeMillis();
            Thread.sleep(30L);
            return;
            if (true) goto _L10; else goto _L9
_L9:
        }

        private void doNetworkTask()
            throws Throwable
        {
            ImageReq imagereq = null;
            if (processor.netReqTPS.size() > 0)
            {
                imagereq = (ImageReq)processor.netReqTPS.remove(0);
            }
            ImageReq imagereq1 = imagereq;
            if (imagereq == null)
            {
                int i = processor.reqList.size();
                imagereq1 = imagereq;
                if (i > 0)
                {
                    imagereq1 = (ImageReq)processor.reqList.remove(i - 1);
                }
            }
            if (imagereq1 != null)
            {
                Bitmap bitmap = (Bitmap)processor.cacheMap.get(imagereq1.url);
                if (bitmap != null)
                {
                    curReq = imagereq1;
                    curReq.worker = this;
                    imagereq1.throwComplete(bitmap);
                } else
                {
                    doTask(imagereq1);
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
            Bitmap bitmap = null;
            final File file = new File(processor.cacheDir, Data.MD5(imagereq.url));
            if (file.exists())
            {
                bitmap = Utils.getBitmap(file.getAbsolutePath());
                if (bitmap != null)
                {
                    processor.cacheMap.put(imagereq.url, bitmap);
                    imagereq.throwComplete(bitmap);
                }
                curReq = null;
            } else
            {
                (new NetworkHelper()).download(imagereq.url, imagereq. new ResponseCallback() {

                    final WorkerThread this$1;
                    private final File val$file;
                    private final ImageReq val$req;

                    public void onResponse(InputStream inputstream)
                    {
                        inputstream = Utils.getBitmap(new PatchInputStream(inputstream));
                        if (inputstream == null || inputstream.isRecycled())
                        {
                            curReq = null;
                            return;
                        }
                        saveFile(inputstream, file);
                        if (inputstream != null)
                        {
                            processor.cacheMap.put(req.url, inputstream);
                            req.throwComplete(inputstream);
                        }
                        curReq = null;
                    }

            
            {
                this$1 = final_workerthread;
                file = file1;
                req = ImageReq.this;
                super();
            }
                });
            }
            if (bitmap != null)
            {
                processor.cacheMap.put(imagereq.url, bitmap);
                imagereq.throwComplete(bitmap);
            }
            curReq = null;
        }

        private void saveFile(Bitmap bitmap, File file)
        {
            android.graphics.Bitmap.CompressFormat compressformat1;
            String s;
            if (file.exists())
            {
                file.delete();
            }
            if (!file.getParentFile().exists())
            {
                file.getParentFile().mkdirs();
            }
            file.createNewFile();
            compressformat1 = android.graphics.Bitmap.CompressFormat.JPEG;
            s = Utils.getFileMime(file.getAbsolutePath());
            android.graphics.Bitmap.CompressFormat compressformat;
            compressformat = compressformat1;
            if (s == null)
            {
                break MISSING_BLOCK_LABEL_84;
            }
            if (s.endsWith("png"))
            {
                break MISSING_BLOCK_LABEL_80;
            }
            compressformat = compressformat1;
            if (!s.endsWith("gif"))
            {
                break MISSING_BLOCK_LABEL_84;
            }
            compressformat = android.graphics.Bitmap.CompressFormat.PNG;
            FileOutputStream fileoutputstream = new FileOutputStream(file);
            bitmap.compress(compressformat, 100, fileoutputstream);
            fileoutputstream.flush();
            fileoutputstream.close();
_L1:
            return;
            bitmap;
            if (file.exists())
            {
                file.delete();
                return;
            }
              goto _L1
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
                return;
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
                throwable.printStackTrace();
            }
            if (true) goto _L2; else goto _L1
_L1:
        }







        public WorkerThread(BitmapProcessor bitmapprocessor)
        {
            processor = bitmapprocessor;
            lastReport = System.currentTimeMillis();
        }
    }


    private static final int CAPACITY = 5;
    private static final int MAX_REQ_TIME = 200;
    private static final int MAX_SIZE = 40;
    private static final int OVERFLOW_SIZE = 50;
    private static BitmapProcessor instance;
    private File cacheDir;
    private WeakHashMap cacheMap;
    private Vector netReqTPS;
    private Vector reqList;
    private boolean work;
    private WorkerThread workerList[];

    private BitmapProcessor(String s)
    {
        reqList = new Vector();
        netReqTPS = new Vector();
        workerList = new WorkerThread[5];
        cacheMap = new WeakHashMap();
        cacheDir = new File(s);
        if (!cacheDir.exists())
        {
            cacheDir.mkdirs();
        }
        new ManagerThread(this);
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

    public static void prepare(String s)
    {
        m/framework/ui/widget/asyncview/BitmapProcessor;
        JVM INSTR monitorenter ;
        if (instance == null)
        {
            instance = new BitmapProcessor(s);
        }
        m/framework/ui/widget/asyncview/BitmapProcessor;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
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
        if (instance.reqList.size() <= 50) goto _L2; else goto _L1
_L1:
        if (instance.reqList.size() > 40) goto _L3; else goto _L2
_L2:
        start();
        return;
_L3:
        instance.reqList.remove(0);
        if (true) goto _L1; else goto _L4
_L4:
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
        if (instance == null) goto _L2; else goto _L1
_L1:
        int i;
        instance.work = false;
        instance.reqList.clear();
        i = 0;
_L6:
        if (i < instance.workerList.length) goto _L4; else goto _L3
_L3:
        instance = null;
_L2:
        return;
_L4:
        if (instance.workerList[i] != null)
        {
            instance.workerList[i].interrupt();
        }
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }







    // Unreferenced inner class m/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1

/* anonymous class */
    class ManagerThread._cls1 extends TimerTask
    {

        private int counter;
        final ManagerThread this$1;

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
                this$1 = ManagerThread.this;
                super();
            }
    }

}
