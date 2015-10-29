// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import com.facebook.FacebookException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.facebook.internal:
//            WorkQueue, ImageRequest, ImageResponseCache, UrlRedirectCache, 
//            Utility, ImageResponse

public class ImageDownloader
{
    private static class CacheReadWorkItem
        implements Runnable
    {

        private boolean allowCachedRedirects;
        private Context context;
        private RequestKey key;

        public void run()
        {
            ImageDownloader.readFromCache(key, context, allowCachedRedirects);
        }

        CacheReadWorkItem(Context context1, RequestKey requestkey, boolean flag)
        {
            context = context1;
            key = requestkey;
            allowCachedRedirects = flag;
        }
    }

    private static class DownloadImageWorkItem
        implements Runnable
    {

        private Context context;
        private RequestKey key;

        public void run()
        {
            ImageDownloader.download(key, context);
        }

        DownloadImageWorkItem(Context context1, RequestKey requestkey)
        {
            context = context1;
            key = requestkey;
        }
    }

    private static class DownloaderContext
    {

        boolean isCancelled;
        ImageRequest request;
        WorkQueue.WorkItem workItem;

        private DownloaderContext()
        {
        }

        DownloaderContext(DownloaderContext downloadercontext)
        {
            this();
        }
    }

    private static class RequestKey
    {

        private static final int HASH_MULTIPLIER = 37;
        private static final int HASH_SEED = 29;
        Object tag;
        URI uri;

        public boolean equals(Object obj)
        {
label0:
            {
                boolean flag1 = false;
                boolean flag = flag1;
                if (obj != null)
                {
                    flag = flag1;
                    if (obj instanceof RequestKey)
                    {
                        obj = (RequestKey)obj;
                        if (((RequestKey) (obj)).uri != uri || ((RequestKey) (obj)).tag != tag)
                        {
                            break label0;
                        }
                        flag = true;
                    }
                }
                return flag;
            }
            return false;
        }

        public int hashCode()
        {
            return (uri.hashCode() + 1073) * 37 + tag.hashCode();
        }

        RequestKey(URI uri1, Object obj)
        {
            uri = uri1;
            tag = obj;
        }
    }


    private static final int CACHE_READ_QUEUE_MAX_CONCURRENT = 2;
    private static final int DOWNLOAD_QUEUE_MAX_CONCURRENT = 8;
    private static WorkQueue cacheReadQueue = new WorkQueue(2);
    private static WorkQueue downloadQueue = new WorkQueue(8);
    private static Handler handler;
    private static final Map pendingRequests = new HashMap();

    public ImageDownloader()
    {
    }

    public static boolean cancelRequest(ImageRequest imagerequest)
    {
        RequestKey requestkey;
        boolean flag;
        flag = false;
        requestkey = new RequestKey(imagerequest.getImageUri(), imagerequest.getCallerTag());
        imagerequest = pendingRequests;
        imagerequest;
        JVM INSTR monitorenter ;
        DownloaderContext downloadercontext = (DownloaderContext)pendingRequests.get(requestkey);
        if (downloadercontext == null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        flag = true;
        if (!downloadercontext.workItem.cancel())
        {
            break MISSING_BLOCK_LABEL_69;
        }
        pendingRequests.remove(requestkey);
_L1:
        imagerequest;
        JVM INSTR monitorexit ;
        return flag;
        downloadercontext.isCancelled = true;
          goto _L1
        Exception exception;
        exception;
        imagerequest;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void clearCache(Context context)
    {
        ImageResponseCache.clearCache(context);
        UrlRedirectCache.clearCache(context);
    }

    private static void download(RequestKey requestkey, Context context)
    {
        Context context1;
        Context context2;
        Context context3;
        HttpURLConnection httpurlconnection1;
        HttpURLConnection httpurlconnection2;
        HttpURLConnection httpurlconnection3;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj9;
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        httpurlconnection2 = null;
        httpurlconnection3 = null;
        httpurlconnection1 = null;
        obj7 = null;
        obj8 = null;
        obj9 = null;
        obj6 = null;
        obj5 = null;
        obj3 = null;
        obj4 = null;
        flag3 = true;
        flag4 = true;
        flag2 = true;
        flag = flag3;
        context1 = obj7;
        flag1 = flag4;
        context2 = obj8;
        context3 = obj9;
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(requestkey.uri.toString())).openConnection();
        httpurlconnection1 = httpurlconnection;
        flag = flag3;
        context1 = obj7;
        httpurlconnection2 = httpurlconnection;
        flag1 = flag4;
        context2 = obj8;
        httpurlconnection3 = httpurlconnection;
        context3 = obj9;
        httpurlconnection.setInstanceFollowRedirects(false);
        httpurlconnection1 = httpurlconnection;
        flag = flag3;
        context1 = obj7;
        httpurlconnection2 = httpurlconnection;
        flag1 = flag4;
        context2 = obj8;
        httpurlconnection3 = httpurlconnection;
        context3 = obj9;
        httpurlconnection.getResponseCode();
        JVM INSTR lookupswitch 3: default 1016
    //                   200: 860
    //                   301: 481
    //                   302: 481;
           goto _L1 _L2 _L3 _L3
_L1:
        httpurlconnection1 = httpurlconnection;
        flag = flag3;
        context1 = obj7;
        httpurlconnection2 = httpurlconnection;
        flag1 = flag4;
        context2 = obj8;
        httpurlconnection3 = httpurlconnection;
        context3 = obj9;
        context = httpurlconnection.getErrorStream();
        httpurlconnection1 = httpurlconnection;
        flag = flag3;
        context1 = context;
        httpurlconnection2 = httpurlconnection;
        flag1 = flag4;
        context2 = context;
        httpurlconnection3 = httpurlconnection;
        context3 = context;
        Object obj = new InputStreamReader(context);
        httpurlconnection1 = httpurlconnection;
        flag = flag3;
        context1 = context;
        httpurlconnection2 = httpurlconnection;
        flag1 = flag4;
        context2 = context;
        httpurlconnection3 = httpurlconnection;
        context3 = context;
        Object obj1 = new char[128];
        httpurlconnection1 = httpurlconnection;
        flag = flag3;
        context1 = context;
        httpurlconnection2 = httpurlconnection;
        flag1 = flag4;
        context2 = context;
        httpurlconnection3 = httpurlconnection;
        context3 = context;
        Object obj2 = new StringBuilder();
_L11:
        httpurlconnection1 = httpurlconnection;
        flag = flag3;
        context1 = context;
        httpurlconnection2 = httpurlconnection;
        flag1 = flag4;
        context2 = context;
        httpurlconnection3 = httpurlconnection;
        context3 = context;
        int i = ((InputStreamReader) (obj)).read(((char []) (obj1)), 0, obj1.length);
        if (i > 0) goto _L5; else goto _L4
_L4:
        httpurlconnection1 = httpurlconnection;
        flag = flag3;
        context1 = context;
        httpurlconnection2 = httpurlconnection;
        flag1 = flag4;
        context2 = context;
        httpurlconnection3 = httpurlconnection;
        context3 = context;
        Utility.closeQuietly(((java.io.Closeable) (obj)));
        httpurlconnection1 = httpurlconnection;
        flag = flag3;
        context1 = context;
        httpurlconnection2 = httpurlconnection;
        flag1 = flag4;
        context2 = context;
        httpurlconnection3 = httpurlconnection;
        context3 = context;
        obj1 = new FacebookException(((StringBuilder) (obj2)).toString());
        obj2 = context;
        obj = obj4;
_L7:
        Utility.closeQuietly(((java.io.Closeable) (obj2)));
        Utility.disconnectQuietly(httpurlconnection);
        flag = flag2;
_L10:
        if (flag)
        {
            issueResponse(requestkey, ((Exception) (obj1)), ((Bitmap) (obj)), false);
        }
        return;
_L3:
        flag4 = false;
        i = 0;
        flag3 = false;
        httpurlconnection1 = httpurlconnection;
        flag = flag4;
        context1 = obj7;
        httpurlconnection2 = httpurlconnection;
        flag1 = i;
        context2 = obj8;
        httpurlconnection3 = httpurlconnection;
        context3 = obj9;
        Object obj10 = httpurlconnection.getHeaderField("location");
        obj = obj4;
        obj1 = obj5;
        flag2 = flag3;
        obj2 = obj6;
        httpurlconnection1 = httpurlconnection;
        flag = flag4;
        context1 = obj7;
        httpurlconnection2 = httpurlconnection;
        flag1 = i;
        context2 = obj8;
        httpurlconnection3 = httpurlconnection;
        context3 = obj9;
        if (Utility.isNullOrEmpty(((String) (obj10)))) goto _L7; else goto _L6
_L6:
        httpurlconnection1 = httpurlconnection;
        flag = flag4;
        context1 = obj7;
        httpurlconnection2 = httpurlconnection;
        flag1 = i;
        context2 = obj8;
        httpurlconnection3 = httpurlconnection;
        context3 = obj9;
        obj10 = new URI(((String) (obj10)));
        httpurlconnection1 = httpurlconnection;
        flag = flag4;
        context1 = obj7;
        httpurlconnection2 = httpurlconnection;
        flag1 = i;
        context2 = obj8;
        httpurlconnection3 = httpurlconnection;
        context3 = obj9;
        UrlRedirectCache.cacheUriRedirect(context, requestkey.uri, ((URI) (obj10)));
        httpurlconnection1 = httpurlconnection;
        flag = flag4;
        context1 = obj7;
        httpurlconnection2 = httpurlconnection;
        flag1 = i;
        context2 = obj8;
        httpurlconnection3 = httpurlconnection;
        context3 = obj9;
        context = removePendingRequest(requestkey);
        obj = obj4;
        obj1 = obj5;
        flag2 = flag3;
        obj2 = obj6;
        if (context == null) goto _L7; else goto _L8
_L8:
        obj = obj4;
        obj1 = obj5;
        flag2 = flag3;
        obj2 = obj6;
        httpurlconnection1 = httpurlconnection;
        flag = flag4;
        context1 = obj7;
        httpurlconnection2 = httpurlconnection;
        flag1 = i;
        context2 = obj8;
        httpurlconnection3 = httpurlconnection;
        context3 = obj9;
        if (((DownloaderContext) (context)).isCancelled) goto _L7; else goto _L9
_L9:
        httpurlconnection1 = httpurlconnection;
        flag = flag4;
        context1 = obj7;
        httpurlconnection2 = httpurlconnection;
        flag1 = i;
        context2 = obj8;
        httpurlconnection3 = httpurlconnection;
        context3 = obj9;
        enqueueCacheRead(((DownloaderContext) (context)).request, new RequestKey(((URI) (obj10)), requestkey.tag), false);
        obj = obj4;
        obj1 = obj5;
        flag2 = flag3;
        obj2 = obj6;
          goto _L7
        obj1;
        Utility.closeQuietly(context1);
        Utility.disconnectQuietly(httpurlconnection1);
        obj = obj3;
          goto _L10
_L2:
        httpurlconnection1 = httpurlconnection;
        flag = flag3;
        context1 = obj7;
        httpurlconnection2 = httpurlconnection;
        flag1 = flag4;
        context2 = obj8;
        httpurlconnection3 = httpurlconnection;
        context3 = obj9;
        context = ImageResponseCache.interceptAndCacheImageStream(context, httpurlconnection);
        httpurlconnection1 = httpurlconnection;
        flag = flag3;
        context1 = context;
        httpurlconnection2 = httpurlconnection;
        flag1 = flag4;
        context2 = context;
        httpurlconnection3 = httpurlconnection;
        context3 = context;
        obj = BitmapFactory.decodeStream(context);
        obj1 = obj5;
        obj2 = context;
          goto _L7
_L5:
        httpurlconnection1 = httpurlconnection;
        flag = flag3;
        context1 = context;
        httpurlconnection2 = httpurlconnection;
        flag1 = flag4;
        context2 = context;
        httpurlconnection3 = httpurlconnection;
        context3 = context;
        ((StringBuilder) (obj2)).append(((char []) (obj1)), 0, i);
          goto _L11
        obj1;
        Utility.closeQuietly(context2);
        Utility.disconnectQuietly(httpurlconnection2);
        obj = obj3;
        flag = flag1;
          goto _L10
        requestkey;
        Utility.closeQuietly(context3);
        Utility.disconnectQuietly(httpurlconnection3);
        throw requestkey;
          goto _L7
    }

    public static void downloadAsync(ImageRequest imagerequest)
    {
        RequestKey requestkey;
        if (imagerequest == null)
        {
            return;
        }
        requestkey = new RequestKey(imagerequest.getImageUri(), imagerequest.getCallerTag());
        Map map = pendingRequests;
        map;
        JVM INSTR monitorenter ;
        DownloaderContext downloadercontext = (DownloaderContext)pendingRequests.get(requestkey);
        if (downloadercontext == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        downloadercontext.request = imagerequest;
        downloadercontext.isCancelled = false;
        downloadercontext.workItem.moveToFront();
_L1:
        map;
        JVM INSTR monitorexit ;
        return;
        imagerequest;
        map;
        JVM INSTR monitorexit ;
        throw imagerequest;
        enqueueCacheRead(imagerequest, requestkey, imagerequest.isCachedRedirectAllowed());
          goto _L1
    }

    private static void enqueueCacheRead(ImageRequest imagerequest, RequestKey requestkey, boolean flag)
    {
        enqueueRequest(imagerequest, requestkey, cacheReadQueue, new CacheReadWorkItem(imagerequest.getContext(), requestkey, flag));
    }

    private static void enqueueDownload(ImageRequest imagerequest, RequestKey requestkey)
    {
        enqueueRequest(imagerequest, requestkey, downloadQueue, new DownloadImageWorkItem(imagerequest.getContext(), requestkey));
    }

    private static void enqueueRequest(ImageRequest imagerequest, RequestKey requestkey, WorkQueue workqueue, Runnable runnable)
    {
        synchronized (pendingRequests)
        {
            DownloaderContext downloadercontext = new DownloaderContext(null);
            downloadercontext.request = imagerequest;
            pendingRequests.put(requestkey, downloadercontext);
            downloadercontext.workItem = workqueue.addActiveWorkItem(runnable);
        }
        return;
        imagerequest;
        map;
        JVM INSTR monitorexit ;
        throw imagerequest;
    }

    private static Handler getHandler()
    {
        com/facebook/internal/ImageDownloader;
        JVM INSTR monitorenter ;
        Handler handler1;
        if (handler == null)
        {
            handler = new Handler(Looper.getMainLooper());
        }
        handler1 = handler;
        com/facebook/internal/ImageDownloader;
        JVM INSTR monitorexit ;
        return handler1;
        Exception exception;
        exception;
        throw exception;
    }

    private static void issueResponse(final RequestKey request, final Exception error, final Bitmap bitmap, final boolean isCachedRedirect)
    {
        request = removePendingRequest(request);
        if (request != null && !((DownloaderContext) (request)).isCancelled)
        {
            request = ((DownloaderContext) (request)).request;
            final ImageRequest.Callback callback = request.getCallback();
            if (callback != null)
            {
                getHandler().post(new Runnable() {

                    private final Bitmap val$bitmap;
                    private final ImageRequest.Callback val$callback;
                    private final Exception val$error;
                    private final boolean val$isCachedRedirect;
                    private final ImageRequest val$request;

                    public void run()
                    {
                        ImageResponse imageresponse = new ImageResponse(request, error, isCachedRedirect, bitmap);
                        callback.onCompleted(imageresponse);
                    }

            
            {
                request = imagerequest;
                error = exception;
                isCachedRedirect = flag;
                bitmap = bitmap1;
                callback = callback1;
                super();
            }
                });
            }
        }
    }

    public static void prioritizeRequest(ImageRequest imagerequest)
    {
        Object obj = new RequestKey(imagerequest.getImageUri(), imagerequest.getCallerTag());
        imagerequest = pendingRequests;
        imagerequest;
        JVM INSTR monitorenter ;
        obj = (DownloaderContext)pendingRequests.get(obj);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        ((DownloaderContext) (obj)).workItem.moveToFront();
        imagerequest;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        imagerequest;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static void readFromCache(RequestKey requestkey, Context context, boolean flag)
    {
        Object obj = null;
        boolean flag2 = false;
        java.io.InputStream inputstream = obj;
        boolean flag1 = flag2;
        if (flag)
        {
            URI uri = UrlRedirectCache.getRedirectedUri(context, requestkey.uri);
            inputstream = obj;
            flag1 = flag2;
            if (uri != null)
            {
                inputstream = ImageResponseCache.getCachedImageStream(uri, context);
                if (inputstream != null)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
            }
        }
        if (!flag1)
        {
            inputstream = ImageResponseCache.getCachedImageStream(requestkey.uri, context);
        }
        if (inputstream != null)
        {
            context = BitmapFactory.decodeStream(inputstream);
            Utility.closeQuietly(inputstream);
            issueResponse(requestkey, null, context, flag1);
        } else
        {
            context = removePendingRequest(requestkey);
            if (context != null && !((DownloaderContext) (context)).isCancelled)
            {
                enqueueDownload(((DownloaderContext) (context)).request, requestkey);
                return;
            }
        }
    }

    private static DownloaderContext removePendingRequest(RequestKey requestkey)
    {
        synchronized (pendingRequests)
        {
            requestkey = (DownloaderContext)pendingRequests.remove(requestkey);
        }
        return requestkey;
        requestkey;
        map;
        JVM INSTR monitorexit ;
        throw requestkey;
    }



}
