// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.gui;

import android.graphics.Bitmap;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.network.RawNetworkCallback;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.Ln;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Vector;
import java.util.WeakHashMap;

// Referenced classes of package com.mob.tools.gui:
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
        int i = BitmapProcessor.access$800(processor).size();
        lastReport lastreport;
        if (i > 0)
        {
            lastreport = (processor)BitmapProcessor.access$800(processor).remove(i - 1);
        } else
        {
            lastreport = null;
        }
        if (lastreport != null)
        {
            Bitmap bitmap = (Bitmap)BitmapProcessor.access$900(processor).get(ss._mth000(lastreport));
            if (bitmap != null)
            {
                curReq = lastreport;
                ss._mth1002(curReq, this);
                ss._mth1100(lastreport, bitmap);
            } else
            {
                if ((new File(BitmapProcessor.access$1200(processor), Data.MD5(ss._mth000(lastreport)))).exists())
                {
                    doTask(lastreport);
                    lastReport = System.currentTimeMillis();
                    return;
                }
                if (BitmapProcessor.access$1300(processor).size() > 40)
                {
                    for (; BitmapProcessor.access$800(processor).size() > 0; BitmapProcessor.access$800(processor).remove(0)) { }
                    BitmapProcessor.access$1300(processor).remove(0);
                }
                BitmapProcessor.access$1300(processor).add(lastreport);
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
        lastReport lastreport = null;
        if (BitmapProcessor.access$1300(processor).size() > 0)
        {
            lastreport = (processor)BitmapProcessor.access$1300(processor).remove(0);
        }
        if (lastreport == null)
        {
            int i = BitmapProcessor.access$800(processor).size();
            if (i > 0)
            {
                lastreport = (processor)BitmapProcessor.access$800(processor).remove(i - 1);
            }
        }
        if (lastreport != null)
        {
            Bitmap bitmap = (Bitmap)BitmapProcessor.access$900(processor).get(ss._mth000(lastreport));
            if (bitmap != null)
            {
                curReq = lastreport;
                ss._mth1002(curReq, this);
                ss._mth1100(lastreport, bitmap);
            } else
            {
                doTask(lastreport);
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
        ss._mth1002(curReq, this);
        final Object file;
        final boolean saveAsPng;
        if (ss._mth000(req).toLowerCase().endsWith("png") || ss._mth000(req).toLowerCase().endsWith("gif"))
        {
            saveAsPng = true;
        } else
        {
            saveAsPng = false;
        }
        file = new File(BitmapProcessor.access$1200(processor), Data.MD5(ss._mth000(req)));
        if (((File) (file)).exists())
        {
            file = BitmapHelper.getBitmap(((File) (file)).getAbsolutePath());
            if (file != null)
            {
                BitmapProcessor.access$900(processor).put(ss._mth000(req), file);
                ss._mth1100(req, ((Bitmap) (file)));
            }
            curReq = null;
        } else
        {
            (new NetworkHelper()).rawGet(ss._mth000(req), new RawNetworkCallback() {

                final BitmapProcessor.WorkerThread this$0;
                final File val$file;
                final BitmapProcessor.ImageReq val$req;
                final boolean val$saveAsPng;

                public void onResponse(InputStream inputstream)
                    throws Throwable
                {
                    inputstream = BitmapHelper.getBitmap(new BitmapProcessor.PatchInputStream(inputstream), 1);
                    if (inputstream == null || inputstream.isRecycled())
                    {
                        curReq = null;
                        return;
                    }
                    saveFile(inputstream, file, saveAsPng);
                    if (inputstream != null)
                    {
                        BitmapProcessor.access$900(processor).put(BitmapProcessor.ImageReq.access$000(req), inputstream);
                        BitmapProcessor.ImageReq.access$1100(req, inputstream);
                    }
                    curReq = null;
                }

            
            {
                this$0 = BitmapProcessor.WorkerThread.this;
                file = file1;
                saveAsPng = flag;
                req = imagereq;
                super();
            }
            });
            file = null;
        }
        if (file != null)
        {
            BitmapProcessor.access$900(processor).put(ss._mth000(req), file);
            ss._mth1100(req, ((Bitmap) (file)));
        }
        curReq = null;
    }

    private void saveFile(Bitmap bitmap, File file, boolean flag)
    {
        android.graphics. ;
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
         = android.graphics.;
_L2:
        fileoutputstream = new FileOutputStream(file);
        bitmap.compress(, 100, fileoutputstream);
        fileoutputstream.flush();
        fileoutputstream.close();
        return;
         = android.graphics.;
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
        if (!BitmapProcessor.access$300(processor))
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
    static _cls1 access$1402(_cls1 _pcls1, _cls1 _pcls1_1)
    {
        _pcls1.curReq = _pcls1_1;
        return _pcls1_1;
    }

*/





/*
    static boolean access$602(curReq curreq, boolean flag)
    {
        curreq.localType = flag;
        return flag;
    }

*/


    public _cls1.val.req(BitmapProcessor bitmapprocessor)
    {
        processor = bitmapprocessor;
        lastReport = System.currentTimeMillis();
    }
}
