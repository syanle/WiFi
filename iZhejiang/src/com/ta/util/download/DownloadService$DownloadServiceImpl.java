// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.download;

import android.os.RemoteException;
import com.ta.common.TAStringUtils;

// Referenced classes of package com.ta.util.download:
//            DownloadService, DownloadManager

private class <init> extends <init>
{

    final DownloadService this$0;

    public void addTask(String s)
        throws RemoteException
    {
        if (!TAStringUtils.isEmpty(s))
        {
            DownloadService.access$0(DownloadService.this).addHandler(s);
        }
    }

    public void continueTask(String s)
        throws RemoteException
    {
        if (!TAStringUtils.isEmpty(s))
        {
            DownloadService.access$0(DownloadService.this).continueHandler(s);
        }
    }

    public void deleteTask(String s)
        throws RemoteException
    {
        if (!TAStringUtils.isEmpty(s))
        {
            DownloadService.access$0(DownloadService.this).deleteHandler(s);
        }
    }

    public void pauseAll(String s)
        throws RemoteException
    {
        if (!TAStringUtils.isEmpty(s))
        {
            DownloadService.access$0(DownloadService.this).pauseAllHandler();
        }
    }

    public void pauseTask(String s)
        throws RemoteException
    {
        if (!TAStringUtils.isEmpty(s))
        {
            DownloadService.access$0(DownloadService.this).pauseHandler(s);
        }
    }

    public void startManage()
        throws RemoteException
    {
        DownloadService.access$0(DownloadService.this).startManage();
    }

    public void stopManage()
        throws RemoteException
    {
        DownloadService.access$0(DownloadService.this).close();
    }

    private ()
    {
        this$0 = DownloadService.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
