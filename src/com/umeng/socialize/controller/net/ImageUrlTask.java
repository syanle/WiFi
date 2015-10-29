// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.net;

import android.os.AsyncTask;
import com.facebook.Session;
import com.umeng.socom.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.json.JSONException;
import org.json.JSONObject;

public class ImageUrlTask extends AsyncTask
{
    public static interface OnUploadListener
    {

        public abstract void onComplete(String s);
    }


    private final String FACEBOOK_URL = "https://graph.facebook.com/?";
    private final String TAG = getClass().getSimpleName();
    private String mImageUid;
    private OnUploadListener mUploadListener;

    public ImageUrlTask(String s)
    {
        mImageUid = "";
        mUploadListener = null;
        mImageUid = s;
    }

    private String doImageUrlRequest()
    {
        Object obj;
        Object obj1;
        String s;
        Object obj2;
        obj1 = new HttpGet((new StringBuilder("https://graph.facebook.com/?id=")).append(mImageUid).append("&access_token=").append(Session.getActiveSession().getAccessToken()).toString());
        obj = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(((org.apache.http.params.HttpParams) (obj)), 15000);
        HttpConnectionParams.setSoTimeout(((org.apache.http.params.HttpParams) (obj)), 30000);
        s = "";
        obj2 = new DefaultHttpClient(((org.apache.http.params.HttpParams) (obj)));
        obj = s;
        obj2 = ((HttpClient) (obj2)).execute(((org.apache.http.client.methods.HttpUriRequest) (obj1)));
        obj = s;
        obj1 = s;
        if (((HttpResponse) (obj2)).getStatusLine().getStatusCode() != 200)
        {
            break MISSING_BLOCK_LABEL_194;
        }
        obj = s;
        obj1 = streamToJson(((HttpResponse) (obj2)).getEntity().getContent());
        obj = s;
        if (!((String) (obj1)).contains("source"))
        {
            break MISSING_BLOCK_LABEL_173;
        }
        obj = s;
        s = getImageUrl(((String) (obj1)));
        obj = s;
        obj1 = s;
        if (mUploadListener == null)
        {
            break MISSING_BLOCK_LABEL_194;
        }
        obj = s;
        mUploadListener.onComplete(s);
        return s;
        obj = s;
        Log.e(TAG, "### \uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFDfacebook\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFDurl\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD\uFFFD");
        return "";
        obj1;
        ((Exception) (obj1)).printStackTrace();
        obj1 = obj;
        return ((String) (obj1));
    }

    private String getImageUrl(String s)
    {
        s = new JSONObject(s);
        s = s.getString("source");
        return s;
        s;
_L2:
        s.printStackTrace();
        return "";
        s;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private String streamToJson(InputStream inputstream)
    {
        StringBuilder stringbuilder;
        BufferedReader bufferedreader;
        if (inputstream == null)
        {
            return "";
        }
        bufferedreader = new BufferedReader(new InputStreamReader(inputstream), 8192);
        stringbuilder = new StringBuilder();
_L2:
        String s = bufferedreader.readLine();
label0:
        {
            {
                if (s != null)
                {
                    break label0;
                }
                Exception exception;
                IOException ioexception;
                try
                {
                    inputstream.close();
                }
                // Misplaced declaration of an exception variable
                catch (InputStream inputstream)
                {
                    Log.e(TAG, "Caught IOException in convertStreamToString()", inputstream);
                }
            }
            return stringbuilder.toString();
        }
        stringbuilder.append((new StringBuilder(String.valueOf(s))).append("\n").toString());
        continue; /* Loop/switch isn't completed */
        ioexception;
        Log.e(TAG, "Caught IOException in convertStreamToString()", ioexception);
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            Log.e(TAG, "Caught IOException in convertStreamToString()", inputstream);
        }
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_49;
        }
        exception;
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            Log.e(TAG, "Caught IOException in convertStreamToString()", inputstream);
        }
        throw exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected transient String doInBackground(Void avoid[])
    {
        return doImageUrlRequest();
    }

    public OnUploadListener getUploadListener()
    {
        return mUploadListener;
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((String)obj);
    }

    protected void onPostExecute(String s)
    {
        if (mUploadListener != null)
        {
            Log.d(TAG, (new StringBuilder("### image task callback = ")).append(s).toString());
            mUploadListener.onComplete(s);
        }
    }

    public void setUploadListener(OnUploadListener onuploadlistener)
    {
        mUploadListener = onuploadlistener;
    }
}
