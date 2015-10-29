// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.download;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.ta.common.TAStringUtils;

// Referenced classes of package com.ta.util.download:
//            DownloadManager

public class DownloadService extends Service
{
    private class DownloadServiceImpl extends IDownloadService.Stub
    {

        final DownloadService this$0;

        public void addTask(String s)
            throws RemoteException
        {
            if (!TAStringUtils.isEmpty(s))
            {
                mDownloadManager.addHandler(s);
            }
        }

        public void continueTask(String s)
            throws RemoteException
        {
            if (!TAStringUtils.isEmpty(s))
            {
                mDownloadManager.continueHandler(s);
            }
        }

        public void deleteTask(String s)
            throws RemoteException
        {
            if (!TAStringUtils.isEmpty(s))
            {
                mDownloadManager.deleteHandler(s);
            }
        }

        public void pauseAll(String s)
            throws RemoteException
        {
            if (!TAStringUtils.isEmpty(s))
            {
                mDownloadManager.pauseAllHandler();
            }
        }

        public void pauseTask(String s)
            throws RemoteException
        {
            if (!TAStringUtils.isEmpty(s))
            {
                mDownloadManager.pauseHandler(s);
            }
        }

        public void startManage()
            throws RemoteException
        {
            mDownloadManager.startManage();
        }

        public void stopManage()
            throws RemoteException
        {
            mDownloadManager.close();
        }

        private DownloadServiceImpl()
        {
            this$0 = DownloadService.this;
            super();
        }

        DownloadServiceImpl(DownloadServiceImpl downloadserviceimpl)
        {
            this();
        }
    }


    private DownloadManager mDownloadManager;

    public DownloadService()
    {
    }

    public IBinder onBind(Intent intent)
    {
        return new DownloadServiceImpl(null);
    }

    public void onCreate()
    {
        super.onCreate();
        mDownloadManager = DownloadManager.getDownloadManager();
    }

    public void onStart(Intent intent, int i)
    {
        super.onStart(intent, i);
    }

}
