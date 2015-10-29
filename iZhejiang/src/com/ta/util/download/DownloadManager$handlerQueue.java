// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.download;

import com.ta.util.http.AsyncHttpResponseHandler;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

// Referenced classes of package com.ta.util.download:
//            DownloadManager

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
            if (DownloadManager.access$0(DownloadManager.this).size() < 3)
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

    public ()
    {
        this$0 = DownloadManager.this;
        super();
        handlerQueue = new LinkedList();
    }
}
