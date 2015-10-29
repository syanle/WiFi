// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.asyncview;

import android.graphics.Bitmap;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Vector;
import java.util.WeakHashMap;
import m.framework.network.NetworkHelper;
import m.framework.network.ResponseCallback;
import m.framework.utils.Data;
import m.framework.utils.Utils;

// Referenced classes of package m.framework.ui.widget.asyncview:
//            BitmapProcessor

private static class lastReport extends Thread
{

    private doNetworkTask curReq;
    private long lastReport;
    private boolean localType;
    private BitmapProcessor processor;

    private void doLocalTask()
        throws Throwable
    {
        lastReport lastreport;
        lastreport = null;
        int i = BitmapProcessor.access$2(processor).size();
        if (i > 0)
        {
            lastreport = (processor)BitmapProcessor.access$2(processor).remove(i - 1);
        }
        if (lastreport == null) goto _L2; else goto _L1
_L1:
        Bitmap bitmap = (Bitmap)BitmapProcessor.access$3(processor).get(ss._mth0(lastreport));
        if (bitmap == null) goto _L4; else goto _L3
_L3:
        curReq = lastreport;
        ss._mth1(curReq, this);
        ss._mth2(lastreport, bitmap);
_L10:
        lastReport = System.currentTimeMillis();
        return;
_L4:
        if ((new File(BitmapProcessor.access$4(processor), Data.MD5(ss._mth0(lastreport)))).exists())
        {
            doTask(lastreport);
            lastReport = System.currentTimeMillis();
            return;
        }
        if (BitmapProcessor.access$5(processor).size() <= 40) goto _L6; else goto _L5
_L5:
        if (BitmapProcessor.access$2(processor).size() > 0) goto _L8; else goto _L7
_L7:
        BitmapProcessor.access$5(processor).remove(0);
_L6:
        BitmapProcessor.access$5(processor).add(lastreport);
        continue; /* Loop/switch isn't completed */
_L8:
        BitmapProcessor.access$2(processor).remove(0);
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
        lastReport lastreport = null;
        if (BitmapProcessor.access$5(processor).size() > 0)
        {
            lastreport = (processor)BitmapProcessor.access$5(processor).remove(0);
        }
        lastReport lastreport1 = lastreport;
        if (lastreport == null)
        {
            int i = BitmapProcessor.access$2(processor).size();
            lastreport1 = lastreport;
            if (i > 0)
            {
                lastreport1 = (processor)BitmapProcessor.access$2(processor).remove(i - 1);
            }
        }
        if (lastreport1 != null)
        {
            Bitmap bitmap = (Bitmap)BitmapProcessor.access$3(processor).get(ss._mth0(lastreport1));
            if (bitmap != null)
            {
                curReq = lastreport1;
                ss._mth1(curReq, this);
                ss._mth2(lastreport1, bitmap);
            } else
            {
                doTask(lastreport1);
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

    private void doTask(final lastReport req)
        throws Throwable
    {
        curReq = req;
        ss._mth1(curReq, this);
        Bitmap bitmap = null;
        final File file = new File(BitmapProcessor.access$4(processor), Data.MD5(ss._mth0(req)));
        if (file.exists())
        {
            bitmap = Utils.getBitmap(file.getAbsolutePath());
            if (bitmap != null)
            {
                BitmapProcessor.access$3(processor).put(ss._mth0(req), bitmap);
                ss._mth2(req, bitmap);
            }
            curReq = null;
        } else
        {
            (new NetworkHelper()).download(ss._mth0(req), new ResponseCallback() {

                final BitmapProcessor.WorkerThread this$1;
                private final File val$file;
                private final BitmapProcessor.ImageReq val$req;

                public void onResponse(InputStream inputstream)
                {
                    inputstream = Utils.getBitmap(new BitmapProcessor.PatchInputStream(inputstream));
                    if (inputstream == null || inputstream.isRecycled())
                    {
                        curReq = null;
                        return;
                    }
                    saveFile(inputstream, file);
                    if (inputstream != null)
                    {
                        BitmapProcessor.access$3(processor).put(BitmapProcessor.ImageReq.access$0(req), inputstream);
                        BitmapProcessor.ImageReq.access$2(req, inputstream);
                    }
                    curReq = null;
                }

            
            {
                this$1 = BitmapProcessor.WorkerThread.this;
                file = file1;
                req = imagereq;
                super();
            }
            });
        }
        if (bitmap != null)
        {
            BitmapProcessor.access$3(processor).put(ss._mth0(req), bitmap);
            ss._mth2(req, bitmap);
        }
        curReq = null;
    }

    private void saveFile(Bitmap bitmap, File file)
    {
        android.graphics.r.WorkerThread workerthread1;
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
        workerthread1 = android.graphics.r.WorkerThread;
        s = Utils.getFileMime(file.getAbsolutePath());
        android.graphics.r.WorkerThread workerthread;
        workerthread = workerthread1;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        if (s.endsWith("png"))
        {
            break MISSING_BLOCK_LABEL_80;
        }
        workerthread = workerthread1;
        if (!s.endsWith("gif"))
        {
            break MISSING_BLOCK_LABEL_84;
        }
        workerthread = android.graphics.r.WorkerThread;
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        bitmap.compress(workerthread, 100, fileoutputstream);
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
        if (!BitmapProcessor.access$0(processor))
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







    public _cls1.val.req(BitmapProcessor bitmapprocessor)
    {
        processor = bitmapprocessor;
        lastReport = System.currentTimeMillis();
    }
}
