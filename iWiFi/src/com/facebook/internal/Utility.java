// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.FacebookException;
import com.facebook.Request;
import com.facebook.Response;
import com.facebook.model.GraphObject;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.facebook.internal:
//            ImageDownloader, Validate

public final class Utility
{
    public static class FetchedAppSettings
    {

        private boolean supportsAttribution;
        private boolean supportsImplicitLogging;

        public boolean supportsAttribution()
        {
            return supportsAttribution;
        }

        public boolean supportsImplicitLogging()
        {
            return supportsImplicitLogging;
        }

        private FetchedAppSettings(boolean flag, boolean flag1)
        {
            supportsAttribution = flag;
            supportsImplicitLogging = flag1;
        }

        FetchedAppSettings(boolean flag, boolean flag1, FetchedAppSettings fetchedappsettings)
        {
            this(flag, flag1);
        }
    }


    private static final String APPLICATION_FIELDS = "fields";
    private static final String APP_SETTING_FIELDS[] = {
        "supports_attribution", "supports_implicit_sdk_logging"
    };
    public static final int DEFAULT_STREAM_BUFFER_SIZE = 8192;
    private static final String HASH_ALGORITHM_MD5 = "MD5";
    static final String LOG_TAG = "FacebookSDK";
    private static final String SUPPORTS_ATTRIBUTION = "supports_attribution";
    private static final String SUPPORTS_IMPLICIT_SDK_LOGGING = "supports_implicit_sdk_logging";
    private static final String URL_SCHEME = "https";
    private static Map fetchedAppSettings = new ConcurrentHashMap();

    public Utility()
    {
    }

    public static boolean areObjectsEqual(Object obj, Object obj1)
    {
        if (obj == null)
        {
            return obj1 == null;
        } else
        {
            return obj.equals(obj1);
        }
    }

    public static transient ArrayList arrayList(Object aobj[])
    {
        ArrayList arraylist = new ArrayList(aobj.length);
        int j = aobj.length;
        int i = 0;
        do
        {
            if (i >= j)
            {
                return arraylist;
            }
            arraylist.add(aobj[i]);
            i++;
        } while (true);
    }

    public static transient List asListNoNulls(Object aobj[])
    {
        ArrayList arraylist = new ArrayList();
        int j = aobj.length;
        int i = 0;
        do
        {
            if (i >= j)
            {
                return arraylist;
            }
            Object obj = aobj[i];
            if (obj != null)
            {
                arraylist.add(obj);
            }
            i++;
        } while (true);
    }

    public static Uri buildUri(String s, String s1, Bundle bundle)
    {
        android.net.Uri.Builder builder = new android.net.Uri.Builder();
        builder.scheme("https");
        builder.authority(s);
        builder.path(s1);
        s = bundle.keySet().iterator();
        do
        {
            Object obj;
            do
            {
                if (!s.hasNext())
                {
                    return builder.build();
                }
                s1 = (String)s.next();
                obj = bundle.get(s1);
            } while (!(obj instanceof String));
            builder.appendQueryParameter(s1, (String)obj);
        } while (true);
    }

    public static void clearCaches(Context context)
    {
        ImageDownloader.clearCache(context);
    }

    private static void clearCookiesForDomain(Context context, String s)
    {
        CookieSyncManager.createInstance(context).sync();
        context = CookieManager.getInstance();
        String s1 = context.getCookie(s);
        if (s1 == null)
        {
            return;
        }
        String as[] = s1.split(";");
        int j = as.length;
        int i = 0;
        do
        {
            if (i >= j)
            {
                context.removeExpiredCookie();
                return;
            }
            String as1[] = as[i].split("=");
            if (as1.length > 0)
            {
                context.setCookie(s, (new StringBuilder(String.valueOf(as1[0].trim()))).append("=;expires=Sat, 1 Jan 2000 00:00:01 UTC;").toString());
            }
            i++;
        } while (true);
    }

    public static void clearFacebookCookies(Context context)
    {
        clearCookiesForDomain(context, "facebook.com");
        clearCookiesForDomain(context, ".facebook.com");
        clearCookiesForDomain(context, "https://facebook.com");
        clearCookiesForDomain(context, "https://.facebook.com");
    }

    public static void closeQuietly(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        closeable;
    }

    static Map convertJSONObjectToHashMap(JSONObject jsonobject)
    {
        HashMap hashmap;
        JSONArray jsonarray;
        int i;
        hashmap = new HashMap();
        jsonarray = jsonobject.names();
        i = 0;
_L2:
        if (i >= jsonarray.length())
        {
            return hashmap;
        }
        Object obj1;
        String s;
        s = jsonarray.getString(i);
        obj1 = jsonobject.get(s);
        Object obj = obj1;
        try
        {
            if (obj1 instanceof JSONObject)
            {
                obj = convertJSONObjectToHashMap((JSONObject)obj1);
            }
            hashmap.put(s, obj);
        }
        catch (JSONException jsonexception) { }
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void deleteDirectory(File file)
    {
        if (!file.exists())
        {
            return;
        }
        if (!file.isDirectory()) goto _L2; else goto _L1
_L1:
        File afile[];
        int i;
        int j;
        afile = file.listFiles();
        j = afile.length;
        i = 0;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        file.delete();
        return;
_L3:
        deleteDirectory(afile[i]);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static void disconnectQuietly(URLConnection urlconnection)
    {
        if (urlconnection instanceof HttpURLConnection)
        {
            ((HttpURLConnection)urlconnection).disconnect();
        }
    }

    public static String getMetadataApplicationId(Context context)
    {
        Validate.notNull(context, "context");
        context = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        if (((ApplicationInfo) (context)).metaData == null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        Log.d("FacebookSDK", "#### ai.metaData.getString");
        context = ((ApplicationInfo) (context)).metaData.getString("com.facebook.sdk.ApplicationId");
        return context;
        context;
        return null;
    }

    public static Object getStringPropertyAsJSON(JSONObject jsonobject, String s, String s1)
        throws JSONException
    {
        s = ((String) (jsonobject.opt(s)));
        jsonobject = s;
        if (s != null)
        {
            jsonobject = s;
            if (s instanceof String)
            {
                jsonobject = ((JSONObject) ((new JSONTokener((String)s)).nextValue()));
            }
        }
        if (jsonobject != null && !(jsonobject instanceof JSONObject) && !(jsonobject instanceof JSONArray))
        {
            if (s1 != null)
            {
                s = new JSONObject();
                s.putOpt(s1, jsonobject);
                return s;
            } else
            {
                throw new FacebookException("Got an unexpected non-JSON object.");
            }
        } else
        {
            return jsonobject;
        }
    }

    public static boolean isNullOrEmpty(String s)
    {
        return s == null || s.length() == 0;
    }

    public static boolean isNullOrEmpty(Collection collection)
    {
        return collection == null || collection.size() == 0;
    }

    public static boolean isSubset(Collection collection, Collection collection1)
    {
        if (collection1 == null || collection1.size() == 0)
        {
            return collection == null || collection.size() == 0;
        }
        collection1 = new HashSet(collection1);
        collection = collection.iterator();
        do
        {
            if (!collection.hasNext())
            {
                return true;
            }
        } while (collection1.contains((Object)collection.next()));
        return false;
    }

    public static void logd(String s, Exception exception)
    {
        if (s != null && exception != null)
        {
            Log.d(s, (new StringBuilder(String.valueOf(exception.getClass().getSimpleName()))).append(": ").append(exception.getMessage()).toString());
        }
    }

    public static void logd(String s, String s1)
    {
        if (s != null && s1 != null)
        {
            Log.d(s, s1);
        }
    }

    static String md5hash(String s)
    {
        Object obj;
        int i;
        int j;
        try
        {
            obj = MessageDigest.getInstance("MD5");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        ((MessageDigest) (obj)).update(s.getBytes());
        s = ((MessageDigest) (obj)).digest();
        obj = new StringBuilder();
        j = s.length;
        i = 0;
        do
        {
            if (i >= j)
            {
                return ((StringBuilder) (obj)).toString();
            }
            byte byte0 = s[i];
            ((StringBuilder) (obj)).append(Integer.toHexString(byte0 >> 4 & 0xf));
            ((StringBuilder) (obj)).append(Integer.toHexString(byte0 >> 0 & 0xf));
            i++;
        } while (true);
    }

    public static void putObjectInBundle(Bundle bundle, String s, Object obj)
    {
        if (obj instanceof String)
        {
            bundle.putString(s, (String)obj);
            return;
        }
        if (obj instanceof Parcelable)
        {
            bundle.putParcelable(s, (Parcelable)obj);
            return;
        }
        if (obj instanceof byte[])
        {
            bundle.putByteArray(s, (byte[])obj);
            return;
        } else
        {
            throw new FacebookException("attempted to add unsupported type to Bundle");
        }
    }

    public static FetchedAppSettings queryAppSettings(String s, boolean flag)
    {
        if (!flag && fetchedAppSettings.containsKey(s))
        {
            return (FetchedAppSettings)fetchedAppSettings.get(s);
        } else
        {
            Object obj = new Bundle();
            ((Bundle) (obj)).putString("fields", TextUtils.join(",", APP_SETTING_FIELDS));
            Request request = Request.newGraphPathRequest(null, s, null);
            request.setParameters(((Bundle) (obj)));
            obj = request.executeAndWait().getGraphObject();
            obj = new FetchedAppSettings(safeGetBooleanFromResponse(((GraphObject) (obj)), "supports_attribution"), safeGetBooleanFromResponse(((GraphObject) (obj)), "supports_implicit_sdk_logging"), null);
            fetchedAppSettings.put(s, obj);
            return ((FetchedAppSettings) (obj));
        }
    }

    public static String readStreamToString(InputStream inputstream)
        throws IOException
    {
        Object obj;
        Object obj1;
        obj = null;
        obj1 = null;
        inputstream = new BufferedInputStream(inputstream);
        obj = new InputStreamReader(inputstream);
        char ac[];
        obj1 = new StringBuilder();
        ac = new char[2048];
_L1:
        int i = ((InputStreamReader) (obj)).read(ac);
        if (i != -1)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        obj1 = ((StringBuilder) (obj1)).toString();
        closeQuietly(inputstream);
        closeQuietly(((Closeable) (obj)));
        return ((String) (obj1));
        ((StringBuilder) (obj1)).append(ac, 0, i);
          goto _L1
        Exception exception;
        exception;
        obj1 = obj;
        obj = exception;
_L3:
        closeQuietly(inputstream);
        closeQuietly(((Closeable) (obj1)));
        throw obj;
        exception;
        inputstream = ((InputStream) (obj));
        obj = exception;
        continue; /* Loop/switch isn't completed */
        obj;
        if (true) goto _L3; else goto _L2
_L2:
    }

    private static boolean safeGetBooleanFromResponse(GraphObject graphobject, String s)
    {
        Object obj = Boolean.valueOf(false);
        if (graphobject != null)
        {
            obj = graphobject.getProperty(s);
        }
        if (!(obj instanceof Boolean))
        {
            graphobject = Boolean.valueOf(false);
        } else
        {
            graphobject = ((GraphObject) (obj));
        }
        return ((Boolean)graphobject).booleanValue();
    }

    public static boolean stringsEqualOrEmpty(String s, String s1)
    {
        boolean flag = TextUtils.isEmpty(s);
        boolean flag1 = TextUtils.isEmpty(s1);
        if (flag && flag1)
        {
            return true;
        }
        if (!flag && !flag1)
        {
            return s.equals(s1);
        } else
        {
            return false;
        }
    }

    public static transient Collection unmodifiableCollection(Object aobj[])
    {
        return Collections.unmodifiableCollection(Arrays.asList(aobj));
    }

}
