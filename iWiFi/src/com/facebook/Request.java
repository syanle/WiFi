// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.graphics.Bitmap;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.internal.Logger;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.model.GraphMultiResult;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;
import com.facebook.model.GraphPlace;
import com.facebook.model.GraphUser;
import com.facebook.model.OpenGraphAction;
import com.facebook.model.OpenGraphObject;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            HttpMethod, Session, FacebookException, Response, 
//            RequestBatch, RequestAsyncTask, Settings, AppEventsLogger, 
//            LoggingBehavior

public class Request
{
    public static interface Callback
    {

        public abstract void onCompleted(Response response);
    }

    public static interface GraphPlaceListCallback
    {

        public abstract void onCompleted(List list, Response response);
    }

    public static interface GraphUserCallback
    {

        public abstract void onCompleted(GraphUser graphuser, Response response);
    }

    public static interface GraphUserListCallback
    {

        public abstract void onCompleted(List list, Response response);
    }

    private static interface KeyValueSerializer
    {

        public abstract void writeString(String s, String s1)
            throws IOException;
    }

    private static class ParcelFileDescriptorWithMimeType
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public ParcelFileDescriptorWithMimeType createFromParcel(Parcel parcel)
            {
                return new ParcelFileDescriptorWithMimeType(parcel, null);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public ParcelFileDescriptorWithMimeType[] newArray(int i)
            {
                return new ParcelFileDescriptorWithMimeType[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        private final ParcelFileDescriptor fileDescriptor;
        private final String mimeType;

        public int describeContents()
        {
            return 1;
        }

        public ParcelFileDescriptor getFileDescriptor()
        {
            return fileDescriptor;
        }

        public String getMimeType()
        {
            return mimeType;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            parcel.writeString(mimeType);
            parcel.writeFileDescriptor(fileDescriptor.getFileDescriptor());
        }


        private ParcelFileDescriptorWithMimeType(Parcel parcel)
        {
            mimeType = parcel.readString();
            fileDescriptor = parcel.readFileDescriptor();
        }

        ParcelFileDescriptorWithMimeType(Parcel parcel, ParcelFileDescriptorWithMimeType parcelfiledescriptorwithmimetype)
        {
            this(parcel);
        }

        public ParcelFileDescriptorWithMimeType(ParcelFileDescriptor parcelfiledescriptor, String s)
        {
            mimeType = s;
            fileDescriptor = parcelfiledescriptor;
        }
    }

    private static class Serializer
        implements KeyValueSerializer
    {

        private boolean firstWrite;
        private final Logger logger;
        private final BufferedOutputStream outputStream;

        public transient void write(String s, Object aobj[])
            throws IOException
        {
            if (firstWrite)
            {
                outputStream.write("--".getBytes());
                outputStream.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
                outputStream.write("\r\n".getBytes());
                firstWrite = false;
            }
            outputStream.write(String.format(s, aobj).getBytes());
        }

        public void writeBitmap(String s, Bitmap bitmap)
            throws IOException
        {
            writeContentDisposition(s, s, "image/png");
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, outputStream);
            writeLine("", new Object[0]);
            writeRecordBoundary();
            logger.appendKeyValue((new StringBuilder("    ")).append(s).toString(), "<Image>");
        }

        public void writeBytes(String s, byte abyte0[])
            throws IOException
        {
            writeContentDisposition(s, s, "content/unknown");
            outputStream.write(abyte0);
            writeLine("", new Object[0]);
            writeRecordBoundary();
            logger.appendKeyValue((new StringBuilder("    ")).append(s).toString(), String.format("<Data: %d>", new Object[] {
                Integer.valueOf(abyte0.length)
            }));
        }

        public void writeContentDisposition(String s, String s1, String s2)
            throws IOException
        {
            write("Content-Disposition: form-data; name=\"%s\"", new Object[] {
                s
            });
            if (s1 != null)
            {
                write("; filename=\"%s\"", new Object[] {
                    s1
                });
            }
            writeLine("", new Object[0]);
            if (s2 != null)
            {
                writeLine("%s: %s", new Object[] {
                    "Content-Type", s2
                });
            }
            writeLine("", new Object[0]);
        }

        public void writeFile(String s, ParcelFileDescriptor parcelfiledescriptor, String s1)
            throws IOException
        {
            String s2;
            int i;
            s2 = s1;
            if (s1 == null)
            {
                s2 = "content/unknown";
            }
            writeContentDisposition(s, s, s2);
            s2 = null;
            s1 = null;
            i = 0;
            parcelfiledescriptor = new android.os.ParcelFileDescriptor.AutoCloseInputStream(parcelfiledescriptor);
            BufferedInputStream bufferedinputstream = new BufferedInputStream(parcelfiledescriptor);
            s1 = new byte[8192];
_L1:
            int j = bufferedinputstream.read(s1);
            if (j == -1)
            {
                if (bufferedinputstream != null)
                {
                    bufferedinputstream.close();
                }
                if (parcelfiledescriptor != null)
                {
                    parcelfiledescriptor.close();
                }
                writeLine("", new Object[0]);
                writeRecordBoundary();
                logger.appendKeyValue((new StringBuilder("    ")).append(s).toString(), String.format("<Data: %d>", new Object[] {
                    Integer.valueOf(i)
                }));
                return;
            }
            outputStream.write(s1, 0, j);
            i += j;
              goto _L1
            parcelfiledescriptor;
            s = s2;
_L3:
            if (s1 != null)
            {
                s1.close();
            }
            if (s != null)
            {
                s.close();
            }
            throw parcelfiledescriptor;
            Exception exception;
            exception;
            s = parcelfiledescriptor;
            parcelfiledescriptor = exception;
            continue; /* Loop/switch isn't completed */
            exception;
            s1 = bufferedinputstream;
            s = parcelfiledescriptor;
            parcelfiledescriptor = exception;
            if (true) goto _L3; else goto _L2
_L2:
        }

        public void writeFile(String s, ParcelFileDescriptorWithMimeType parcelfiledescriptorwithmimetype)
            throws IOException
        {
            writeFile(s, parcelfiledescriptorwithmimetype.getFileDescriptor(), parcelfiledescriptorwithmimetype.getMimeType());
        }

        public transient void writeLine(String s, Object aobj[])
            throws IOException
        {
            write(s, aobj);
            write("\r\n", new Object[0]);
        }

        public void writeObject(String s, Object obj)
            throws IOException
        {
            if (Request.isSupportedParameterType(obj))
            {
                writeString(s, Request.parameterToString(obj));
                return;
            }
            if (obj instanceof Bitmap)
            {
                writeBitmap(s, (Bitmap)obj);
                return;
            }
            if (obj instanceof byte[])
            {
                writeBytes(s, (byte[])obj);
                return;
            }
            if (obj instanceof ParcelFileDescriptor)
            {
                writeFile(s, (ParcelFileDescriptor)obj, null);
                return;
            }
            if (obj instanceof ParcelFileDescriptorWithMimeType)
            {
                writeFile(s, (ParcelFileDescriptorWithMimeType)obj);
                return;
            } else
            {
                throw new IllegalArgumentException("value is not a supported type: String, Bitmap, byte[]");
            }
        }

        public void writeRecordBoundary()
            throws IOException
        {
            writeLine("--%s", new Object[] {
                "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
            });
        }

        public void writeString(String s, String s1)
            throws IOException
        {
            writeContentDisposition(s, null, null);
            writeLine("%s", new Object[] {
                s1
            });
            writeRecordBoundary();
            if (logger != null)
            {
                logger.appendKeyValue((new StringBuilder("    ")).append(s).toString(), s1);
            }
        }

        public Serializer(BufferedOutputStream bufferedoutputstream, Logger logger1)
        {
            firstWrite = true;
            outputStream = bufferedoutputstream;
            logger = logger1;
        }
    }


    private static final String ACCESS_TOKEN_PARAM = "access_token";
    private static final String ATTACHED_FILES_PARAM = "attached_files";
    private static final String ATTACHMENT_FILENAME_PREFIX = "file";
    private static final String BATCH_APP_ID_PARAM = "batch_app_id";
    private static final String BATCH_BODY_PARAM = "body";
    private static final String BATCH_ENTRY_DEPENDS_ON_PARAM = "depends_on";
    private static final String BATCH_ENTRY_NAME_PARAM = "name";
    private static final String BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM = "omit_response_on_success";
    private static final String BATCH_METHOD_PARAM = "method";
    private static final String BATCH_PARAM = "batch";
    private static final String BATCH_RELATIVE_URL_PARAM = "relative_url";
    private static final String CONTENT_TYPE_HEADER = "Content-Type";
    private static final String FORMAT_JSON = "json";
    private static final String FORMAT_PARAM = "format";
    private static final String ISO_8601_FORMAT_STRING = "yyyy-MM-dd'T'HH:mm:ssZ";
    public static final int MAXIMUM_BATCH_SIZE = 50;
    private static final String ME = "me";
    private static final String MIGRATION_BUNDLE_PARAM = "migration_bundle";
    private static final String MIME_BOUNDARY = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f";
    private static final String MY_ACTION_FORMAT = "me/%s";
    private static final String MY_FEED = "me/feed";
    private static final String MY_FRIENDS = "me/friends";
    private static final String MY_OBJECTS_FORMAT = "me/objects/%s";
    private static final String MY_PHOTOS = "me/photos";
    private static final String MY_STAGING_RESOURCES = "me/staging_resources";
    private static final String MY_VIDEOS = "me/videos";
    private static final String OBJECT_PARAM = "object";
    private static final String PICTURE_PARAM = "picture";
    private static final String SDK_ANDROID = "android";
    private static final String SDK_PARAM = "sdk";
    private static final String SEARCH = "search";
    private static final String STAGING_PARAM = "file";
    private static final String USER_AGENT_BASE = "FBAndroidSDK";
    private static final String USER_AGENT_HEADER = "User-Agent";
    private static String defaultBatchApplicationId;
    private static volatile String userAgent;
    private String batchEntryDependsOn;
    private String batchEntryName;
    private boolean batchEntryOmitResultOnSuccess;
    private Callback callback;
    private GraphObject graphObject;
    private String graphPath;
    private HttpMethod httpMethod;
    private String overriddenURL;
    private Bundle parameters;
    private String restMethod;
    private Session session;
    private Object tag;

    public Request()
    {
        this(null, null, null, null, null);
    }

    public Request(Session session1, String s)
    {
        this(session1, s, null, null, null);
    }

    public Request(Session session1, String s, Bundle bundle, HttpMethod httpmethod)
    {
        this(session1, s, bundle, httpmethod, null);
    }

    public Request(Session session1, String s, Bundle bundle, HttpMethod httpmethod, Callback callback1)
    {
        batchEntryOmitResultOnSuccess = true;
        session = session1;
        graphPath = s;
        callback = callback1;
        setHttpMethod(httpmethod);
        if (bundle != null)
        {
            parameters = new Bundle(bundle);
        } else
        {
            parameters = new Bundle();
        }
        if (!parameters.containsKey("migration_bundle"))
        {
            parameters.putString("migration_bundle", "fbsdk:20130708");
        }
    }

    Request(Session session1, URL url)
    {
        batchEntryOmitResultOnSuccess = true;
        session = session1;
        overriddenURL = url.toString();
        setHttpMethod(HttpMethod.GET);
        parameters = new Bundle();
    }

    private void addCommonParameters()
    {
        if (session != null)
        {
            if (!session.isOpened())
            {
                throw new FacebookException("Session provided to a Request in un-opened state.");
            }
            if (!parameters.containsKey("access_token"))
            {
                String s = session.getAccessToken();
                Logger.registerAccessToken(s);
                parameters.putString("access_token", s);
            }
        }
        parameters.putString("sdk", "android");
        parameters.putString("format", "json");
    }

    private String appendParametersToBaseUrl(String s)
    {
        android.net.Uri.Builder builder = (new android.net.Uri.Builder()).encodedPath(s);
        Iterator iterator = parameters.keySet().iterator();
        do
        {
            do
            {
                if (!iterator.hasNext())
                {
                    return builder.toString();
                }
                String s1 = (String)iterator.next();
                Object obj = parameters.get(s1);
                s = ((String) (obj));
                if (obj == null)
                {
                    s = "";
                }
                if (!isSupportedParameterType(s))
                {
                    break;
                }
                builder.appendQueryParameter(s1, parameterToString(s).toString());
            } while (true);
        } while (httpMethod != HttpMethod.GET);
        throw new IllegalArgumentException(String.format("Unsupported parameter type for GET request: %s", new Object[] {
            s.getClass().getSimpleName()
        }));
    }

    static HttpURLConnection createConnection(URL url)
        throws IOException
    {
        url = (HttpURLConnection)url.openConnection();
        url.setRequestProperty("User-Agent", getUserAgent());
        url.setRequestProperty("Content-Type", getMimeContentType());
        url.setChunkedStreamingMode(0);
        return url;
    }

    public static Response executeAndWait(Request request)
    {
        request = executeBatchAndWait(new Request[] {
            request
        });
        if (request == null || request.size() != 1)
        {
            throw new FacebookException("invalid state: expected a single response");
        } else
        {
            return (Response)request.get(0);
        }
    }

    public static List executeBatchAndWait(RequestBatch requestbatch)
    {
        Validate.notEmptyAndContainsNoNulls(requestbatch, "requests");
        HttpURLConnection httpurlconnection;
        try
        {
            httpurlconnection = toHttpConnection(requestbatch);
        }
        catch (Exception exception)
        {
            List list = Response.constructErrorResponses(requestbatch.getRequests(), null, new FacebookException(exception));
            runCallbacks(requestbatch, list);
            return list;
        }
        return executeConnectionAndWait(httpurlconnection, requestbatch);
    }

    public static List executeBatchAndWait(Collection collection)
    {
        return executeBatchAndWait(new RequestBatch(collection));
    }

    public static transient List executeBatchAndWait(Request arequest[])
    {
        Validate.notNull(arequest, "requests");
        return executeBatchAndWait(((Collection) (Arrays.asList(arequest))));
    }

    public static RequestAsyncTask executeBatchAsync(RequestBatch requestbatch)
    {
        Validate.notEmptyAndContainsNoNulls(requestbatch, "requests");
        requestbatch = new RequestAsyncTask(requestbatch);
        requestbatch.executeOnSettingsExecutor();
        return requestbatch;
    }

    public static RequestAsyncTask executeBatchAsync(Collection collection)
    {
        return executeBatchAsync(new RequestBatch(collection));
    }

    public static transient RequestAsyncTask executeBatchAsync(Request arequest[])
    {
        Validate.notNull(arequest, "requests");
        return executeBatchAsync(((Collection) (Arrays.asList(arequest))));
    }

    public static List executeConnectionAndWait(HttpURLConnection httpurlconnection, RequestBatch requestbatch)
    {
        List list;
        list = Response.fromHttpConnection(httpurlconnection, requestbatch);
        Utility.disconnectQuietly(httpurlconnection);
        int i = requestbatch.size();
        if (i != list.size())
        {
            throw new FacebookException(String.format("Received %d responses while expecting %d", new Object[] {
                Integer.valueOf(list.size()), Integer.valueOf(i)
            }));
        }
        runCallbacks(requestbatch, list);
        httpurlconnection = new HashSet();
        requestbatch = requestbatch.iterator();
_L3:
        if (requestbatch.hasNext()) goto _L2; else goto _L1
_L1:
        httpurlconnection = httpurlconnection.iterator();
_L4:
        if (!httpurlconnection.hasNext())
        {
            return list;
        }
        break MISSING_BLOCK_LABEL_137;
_L2:
        Request request = (Request)requestbatch.next();
        if (request.session != null)
        {
            httpurlconnection.add(request.session);
        }
          goto _L3
        ((Session)httpurlconnection.next()).extendAccessTokenIfNeeded();
          goto _L4
    }

    public static List executeConnectionAndWait(HttpURLConnection httpurlconnection, Collection collection)
    {
        return executeConnectionAndWait(httpurlconnection, new RequestBatch(collection));
    }

    public static RequestAsyncTask executeConnectionAsync(Handler handler, HttpURLConnection httpurlconnection, RequestBatch requestbatch)
    {
        Validate.notNull(httpurlconnection, "connection");
        httpurlconnection = new RequestAsyncTask(httpurlconnection, requestbatch);
        requestbatch.setCallbackHandler(handler);
        httpurlconnection.executeOnSettingsExecutor();
        return httpurlconnection;
    }

    public static RequestAsyncTask executeConnectionAsync(HttpURLConnection httpurlconnection, RequestBatch requestbatch)
    {
        return executeConnectionAsync(null, httpurlconnection, requestbatch);
    }

    public static RequestAsyncTask executeGraphPathRequestAsync(Session session1, String s, Callback callback1)
    {
        return newGraphPathRequest(session1, s, callback1).executeAsync();
    }

    public static RequestAsyncTask executeMeRequestAsync(Session session1, GraphUserCallback graphusercallback)
    {
        return newMeRequest(session1, graphusercallback).executeAsync();
    }

    public static RequestAsyncTask executeMyFriendsRequestAsync(Session session1, GraphUserListCallback graphuserlistcallback)
    {
        return newMyFriendsRequest(session1, graphuserlistcallback).executeAsync();
    }

    public static RequestAsyncTask executePlacesSearchRequestAsync(Session session1, Location location, int i, int j, String s, GraphPlaceListCallback graphplacelistcallback)
    {
        return newPlacesSearchRequest(session1, location, i, j, s, graphplacelistcallback).executeAsync();
    }

    public static RequestAsyncTask executePostRequestAsync(Session session1, String s, GraphObject graphobject, Callback callback1)
    {
        return newPostRequest(session1, s, graphobject, callback1).executeAsync();
    }

    public static RequestAsyncTask executeRestRequestAsync(Session session1, String s, Bundle bundle, HttpMethod httpmethod)
    {
        return newRestRequest(session1, s, bundle, httpmethod).executeAsync();
    }

    public static RequestAsyncTask executeStatusUpdateRequestAsync(Session session1, String s, Callback callback1)
    {
        return newStatusUpdateRequest(session1, s, callback1).executeAsync();
    }

    public static RequestAsyncTask executeUploadPhotoRequestAsync(Session session1, Bitmap bitmap, Callback callback1)
    {
        return newUploadPhotoRequest(session1, bitmap, callback1).executeAsync();
    }

    public static RequestAsyncTask executeUploadPhotoRequestAsync(Session session1, File file, Callback callback1)
        throws FileNotFoundException
    {
        return newUploadPhotoRequest(session1, file, callback1).executeAsync();
    }

    private static String getBatchAppId(RequestBatch requestbatch)
    {
        if (!Utility.isNullOrEmpty(requestbatch.getBatchApplicationId()))
        {
            return requestbatch.getBatchApplicationId();
        }
        requestbatch = requestbatch.iterator();
        Session session1;
        do
        {
            if (!requestbatch.hasNext())
            {
                return defaultBatchApplicationId;
            }
            session1 = ((Request)requestbatch.next()).session;
        } while (session1 == null);
        return session1.getApplicationId();
    }

    public static final String getDefaultBatchApplicationId()
    {
        return defaultBatchApplicationId;
    }

    private static String getMimeContentType()
    {
        return String.format("multipart/form-data; boundary=%s", new Object[] {
            "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
        });
    }

    private static String getUserAgent()
    {
        if (userAgent == null)
        {
            userAgent = String.format("%s.%s", new Object[] {
                "FBAndroidSDK", "3.5.2"
            });
        }
        return userAgent;
    }

    private static boolean isSupportedAttachmentType(Object obj)
    {
        return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof ParcelFileDescriptor) || (obj instanceof ParcelFileDescriptorWithMimeType);
    }

    private static boolean isSupportedParameterType(Object obj)
    {
        return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
    }

    public static Request newCustomAudienceThirdPartyIdRequest(Session session1, Context context, Callback callback1)
    {
        return newCustomAudienceThirdPartyIdRequest(session1, context, null, callback1);
    }

    public static Request newCustomAudienceThirdPartyIdRequest(Session session1, Context context, String s, Callback callback1)
    {
        Session session2 = session1;
        if (session1 == null)
        {
            session2 = Session.getActiveSession();
        }
        Session session3 = session2;
        if (session2 != null)
        {
            session3 = session2;
            if (!session2.isOpened())
            {
                session3 = null;
            }
        }
        session1 = s;
        if (s == null)
        {
            if (session3 != null)
            {
                session1 = session3.getApplicationId();
            } else
            {
                session1 = Utility.getMetadataApplicationId(context);
            }
        }
        if (session1 == null)
        {
            throw new FacebookException("Facebook App ID cannot be determined");
        }
        session1 = (new StringBuilder(String.valueOf(session1))).append("/custom_audience_third_party_id").toString();
        s = new Bundle();
        if (session3 == null)
        {
            String s1 = Settings.getAttributionId(context.getContentResolver());
            if (s1 != null)
            {
                s.putString("udid", s1);
            }
        }
        if (AppEventsLogger.getLimitEventUsage(context))
        {
            s.putString("limit_event_usage", "1");
        }
        return new Request(session3, session1, s, HttpMethod.GET, callback1);
    }

    public static Request newDeleteObjectRequest(Session session1, String s, Callback callback1)
    {
        return new Request(session1, s, null, HttpMethod.DELETE, callback1);
    }

    public static Request newGraphPathRequest(Session session1, String s, Callback callback1)
    {
        return new Request(session1, s, null, null, callback1);
    }

    public static Request newMeRequest(Session session1, final GraphUserCallback callback)
    {
        return new Request(session1, "me", null, null, new Callback() {

            private final GraphUserCallback val$callback;

            public void onCompleted(Response response)
            {
                if (callback != null)
                {
                    callback.onCompleted((GraphUser)response.getGraphObjectAs(com/facebook/model/GraphUser), response);
                }
            }

            
            {
                callback = graphusercallback;
                super();
            }
        });
    }

    public static Request newMyFriendsRequest(Session session1, final GraphUserListCallback callback)
    {
        return new Request(session1, "me/friends", null, null, new Callback() {

            private final GraphUserListCallback val$callback;

            public void onCompleted(Response response)
            {
                if (callback != null)
                {
                    callback.onCompleted(Request.typedListFromResponse(response, com/facebook/model/GraphUser), response);
                }
            }

            
            {
                callback = graphuserlistcallback;
                super();
            }
        });
    }

    public static Request newPlacesSearchRequest(Session session1, Location location, int i, int j, String s, final GraphPlaceListCallback callback)
    {
        if (location == null && Utility.isNullOrEmpty(s))
        {
            throw new FacebookException("Either location or searchText must be specified.");
        }
        Bundle bundle = new Bundle(5);
        bundle.putString("type", "place");
        bundle.putInt("limit", j);
        if (location != null)
        {
            bundle.putString("center", String.format(Locale.US, "%f,%f", new Object[] {
                Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude())
            }));
            bundle.putInt("distance", i);
        }
        if (!Utility.isNullOrEmpty(s))
        {
            bundle.putString("q", s);
        }
        location = new Callback() {

            private final GraphPlaceListCallback val$callback;

            public void onCompleted(Response response)
            {
                if (callback != null)
                {
                    callback.onCompleted(Request.typedListFromResponse(response, com/facebook/model/GraphPlace), response);
                }
            }

            
            {
                callback = graphplacelistcallback;
                super();
            }
        };
        return new Request(session1, "search", bundle, HttpMethod.GET, location);
    }

    public static Request newPostOpenGraphActionRequest(Session session1, OpenGraphAction opengraphaction, Callback callback1)
    {
        if (opengraphaction == null)
        {
            throw new FacebookException("openGraphAction cannot be null");
        }
        if (Utility.isNullOrEmpty(opengraphaction.getType()))
        {
            throw new FacebookException("openGraphAction must have non-null 'type' property");
        } else
        {
            return newPostRequest(session1, String.format("me/%s", new Object[] {
                opengraphaction.getType()
            }), opengraphaction, callback1);
        }
    }

    public static Request newPostOpenGraphObjectRequest(Session session1, OpenGraphObject opengraphobject, Callback callback1)
    {
        if (opengraphobject == null)
        {
            throw new FacebookException("openGraphObject cannot be null");
        }
        if (Utility.isNullOrEmpty(opengraphobject.getType()))
        {
            throw new FacebookException("openGraphObject must have non-null 'type' property");
        }
        if (Utility.isNullOrEmpty(opengraphobject.getTitle()))
        {
            throw new FacebookException("openGraphObject must have non-null 'title' property");
        } else
        {
            String s = String.format("me/objects/%s", new Object[] {
                opengraphobject.getType()
            });
            Bundle bundle = new Bundle();
            bundle.putString("object", opengraphobject.getInnerJSONObject().toString());
            return new Request(session1, s, bundle, HttpMethod.POST, callback1);
        }
    }

    public static Request newPostOpenGraphObjectRequest(Session session1, String s, String s1, String s2, String s3, String s4, GraphObject graphobject, Callback callback1)
    {
        s = com.facebook.model.OpenGraphObject.Factory.createForPost(com/facebook/model/OpenGraphObject, s, s1, s2, s3, s4);
        if (graphobject != null)
        {
            s.setData(graphobject);
        }
        return newPostOpenGraphObjectRequest(session1, ((OpenGraphObject) (s)), callback1);
    }

    public static Request newPostRequest(Session session1, String s, GraphObject graphobject, Callback callback1)
    {
        session1 = new Request(session1, s, null, HttpMethod.POST, callback1);
        session1.setGraphObject(graphobject);
        return session1;
    }

    public static Request newRestRequest(Session session1, String s, Bundle bundle, HttpMethod httpmethod)
    {
        session1 = new Request(session1, null, bundle, httpmethod);
        session1.setRestMethod(s);
        return session1;
    }

    public static Request newStatusUpdateRequest(Session session1, String s, Callback callback1)
    {
        return newStatusUpdateRequest(session1, s, ((String) (null)), null, callback1);
    }

    public static Request newStatusUpdateRequest(Session session1, String s, GraphPlace graphplace, List list, Callback callback1)
    {
        ArrayList arraylist = null;
        if (list == null) goto _L2; else goto _L1
_L1:
        arraylist = new ArrayList(list.size());
        list = list.iterator();
_L5:
        if (list.hasNext()) goto _L3; else goto _L2
_L2:
        if (graphplace == null)
        {
            graphplace = null;
        } else
        {
            graphplace = graphplace.getId();
        }
        return newStatusUpdateRequest(session1, s, ((String) (graphplace)), ((List) (arraylist)), callback1);
_L3:
        arraylist.add(((GraphUser)list.next()).getId());
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static Request newStatusUpdateRequest(Session session1, String s, String s1, List list, Callback callback1)
    {
        Bundle bundle = new Bundle();
        bundle.putString("message", s);
        if (s1 != null)
        {
            bundle.putString("place", s1);
        }
        if (list != null && list.size() > 0)
        {
            bundle.putString("tags", TextUtils.join(",", list));
        }
        return new Request(session1, "me/feed", bundle, HttpMethod.POST, callback1);
    }

    public static Request newUpdateOpenGraphObjectRequest(Session session1, OpenGraphObject opengraphobject, Callback callback1)
    {
        if (opengraphobject == null)
        {
            throw new FacebookException("openGraphObject cannot be null");
        }
        String s = opengraphobject.getId();
        if (s == null)
        {
            throw new FacebookException("openGraphObject must have an id");
        } else
        {
            Bundle bundle = new Bundle();
            bundle.putString("object", opengraphobject.getInnerJSONObject().toString());
            return new Request(session1, s, bundle, HttpMethod.POST, callback1);
        }
    }

    public static Request newUpdateOpenGraphObjectRequest(Session session1, String s, String s1, String s2, String s3, String s4, GraphObject graphobject, Callback callback1)
    {
        s1 = com.facebook.model.OpenGraphObject.Factory.createForPost(com/facebook/model/OpenGraphObject, null, s1, s2, s3, s4);
        s1.setId(s);
        s1.setData(graphobject);
        return newUpdateOpenGraphObjectRequest(session1, ((OpenGraphObject) (s1)), callback1);
    }

    public static Request newUploadPhotoRequest(Session session1, Bitmap bitmap, Callback callback1)
    {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("picture", bitmap);
        return new Request(session1, "me/photos", bundle, HttpMethod.POST, callback1);
    }

    public static Request newUploadPhotoRequest(Session session1, File file, Callback callback1)
        throws FileNotFoundException
    {
        file = ParcelFileDescriptor.open(file, 0x10000000);
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("picture", file);
        return new Request(session1, "me/photos", bundle, HttpMethod.POST, callback1);
    }

    public static Request newUploadStagingResourceWithImageRequest(Session session1, Bitmap bitmap, Callback callback1)
    {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", bitmap);
        return new Request(session1, "me/staging_resources", bundle, HttpMethod.POST, callback1);
    }

    public static Request newUploadStagingResourceWithImageRequest(Session session1, File file, Callback callback1)
        throws FileNotFoundException
    {
        file = new ParcelFileDescriptorWithMimeType(ParcelFileDescriptor.open(file, 0x10000000), "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", file);
        return new Request(session1, "me/staging_resources", bundle, HttpMethod.POST, callback1);
    }

    public static Request newUploadVideoRequest(Session session1, File file, Callback callback1)
        throws FileNotFoundException
    {
        ParcelFileDescriptor parcelfiledescriptor = ParcelFileDescriptor.open(file, 0x10000000);
        Bundle bundle = new Bundle(1);
        bundle.putParcelable(file.getName(), parcelfiledescriptor);
        return new Request(session1, "me/videos", bundle, HttpMethod.POST, callback1);
    }

    private static String parameterToString(Object obj)
    {
        if (obj instanceof String)
        {
            return (String)obj;
        }
        if ((obj instanceof Boolean) || (obj instanceof Number))
        {
            return obj.toString();
        }
        if (obj instanceof Date)
        {
            return (new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US)).format(obj);
        } else
        {
            throw new IllegalArgumentException("Unsupported parameter type.");
        }
    }

    private static void processGraphObject(GraphObject graphobject, String s, KeyValueSerializer keyvalueserializer)
        throws IOException
    {
        int i = 0;
        if (s.startsWith("me/") || s.startsWith("/me/"))
        {
            i = s.indexOf(":");
            int j = s.indexOf("?");
            if (i > 3 && (j == -1 || i < j))
            {
                i = 1;
            } else
            {
                i = 0;
            }
        }
        graphobject = graphobject.asMap().entrySet().iterator();
        do
        {
            if (!graphobject.hasNext())
            {
                return;
            }
            s = (java.util.Map.Entry)graphobject.next();
            boolean flag;
            if (i != 0 && ((String)s.getKey()).equalsIgnoreCase("image"))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            processGraphObjectProperty((String)s.getKey(), s.getValue(), keyvalueserializer, flag);
        } while (true);
    }

    private static void processGraphObjectProperty(String s, Object obj, KeyValueSerializer keyvalueserializer, boolean flag)
        throws IOException
    {
        Class class1 = obj.getClass();
        if (!com/facebook/model/GraphObject.isAssignableFrom(class1)) goto _L2; else goto _L1
_L1:
        Object obj1;
        Object obj2;
        obj2 = ((GraphObject)obj).getInnerJSONObject();
        obj1 = obj2.getClass();
_L13:
        if (!org/json/JSONObject.isAssignableFrom(((Class) (obj1)))) goto _L4; else goto _L3
_L3:
        obj = (JSONObject)obj2;
        if (!flag) goto _L6; else goto _L5
_L5:
        obj1 = ((JSONObject) (obj)).keys();
_L9:
        if (((Iterator) (obj1)).hasNext()) goto _L8; else goto _L7
_L7:
        return;
_L2:
        obj1 = class1;
        obj2 = obj;
        if (com/facebook/model/GraphObjectList.isAssignableFrom(class1))
        {
            obj2 = ((GraphObjectList)obj).getInnerJSONArray();
            obj1 = obj2.getClass();
        }
        continue; /* Loop/switch isn't completed */
_L8:
        obj2 = (String)((Iterator) (obj1)).next();
        processGraphObjectProperty(String.format("%s[%s]", new Object[] {
            s, obj2
        }), ((JSONObject) (obj)).opt(((String) (obj2))), keyvalueserializer, flag);
          goto _L9
_L6:
        if (((JSONObject) (obj)).has("id"))
        {
            processGraphObjectProperty(s, ((JSONObject) (obj)).optString("id"), keyvalueserializer, flag);
            return;
        }
        if (!((JSONObject) (obj)).has("url")) goto _L7; else goto _L10
_L10:
        processGraphObjectProperty(s, ((JSONObject) (obj)).optString("url"), keyvalueserializer, flag);
        return;
_L4:
label0:
        {
            if (!org/json/JSONArray.isAssignableFrom(((Class) (obj1))))
            {
                break label0;
            }
            obj = (JSONArray)obj2;
            int j = ((JSONArray) (obj)).length();
            int i = 0;
            while (i < j) 
            {
                processGraphObjectProperty(String.format("%s[%d]", new Object[] {
                    s, Integer.valueOf(i)
                }), ((JSONArray) (obj)).opt(i), keyvalueserializer, flag);
                i++;
            }
        }
          goto _L7
        if (java/lang/String.isAssignableFrom(((Class) (obj1))) || java/lang/Number.isAssignableFrom(((Class) (obj1))) || java/lang/Boolean.isAssignableFrom(((Class) (obj1))))
        {
            keyvalueserializer.writeString(s, obj2.toString());
            return;
        }
        if (!java/util/Date.isAssignableFrom(((Class) (obj1)))) goto _L7; else goto _L11
_L11:
        obj = (Date)obj2;
        keyvalueserializer.writeString(s, (new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US)).format(((Date) (obj))));
        return;
        if (true) goto _L13; else goto _L12
_L12:
    }

    static void runCallbacks(final RequestBatch requests, List list)
    {
        int j = requests.size();
        final ArrayList callbacks = new ArrayList();
        int i = 0;
        do
        {
            if (i >= j)
            {
                if (callbacks.size() > 0)
                {
                    list = new Runnable() {

                        private final ArrayList val$callbacks;
                        private final RequestBatch val$requests;

                        public void run()
                        {
                            Iterator iterator = callbacks.iterator();
_L3:
                            if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
                            iterator = requests.getCallbacks().iterator();
_L4:
                            if (!iterator.hasNext())
                            {
                                return;
                            }
                            break MISSING_BLOCK_LABEL_72;
_L2:
                            Pair pair = (Pair)iterator.next();
                            ((Callback)pair.first).onCompleted((Response)pair.second);
                              goto _L3
                            ((RequestBatch.Callback)iterator.next()).onBatchCompleted(requests);
                              goto _L4
                        }

            
            {
                callbacks = arraylist;
                requests = requestbatch;
                super();
            }
                    };
                    requests = requests.getCallbackHandler();
                    if (requests != null)
                    {
                        break;
                    }
                    list.run();
                }
                return;
            }
            Request request = requests.get(i);
            if (request.callback != null)
            {
                callbacks.add(new Pair(request.callback, (Response)list.get(i)));
            }
            i++;
        } while (true);
        requests.post(list);
    }

    private static void serializeAttachments(Bundle bundle, Serializer serializer)
        throws IOException
    {
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            String s;
            Object obj;
            do
            {
                if (!iterator.hasNext())
                {
                    return;
                }
                s = (String)iterator.next();
                obj = bundle.get(s);
            } while (!isSupportedAttachmentType(obj));
            serializer.writeObject(s, obj);
        } while (true);
    }

    private static void serializeParameters(Bundle bundle, Serializer serializer)
        throws IOException
    {
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            String s;
            Object obj;
            do
            {
                if (!iterator.hasNext())
                {
                    return;
                }
                s = (String)iterator.next();
                obj = bundle.get(s);
            } while (!isSupportedParameterType(obj));
            serializer.writeObject(s, obj);
        } while (true);
    }

    private static void serializeRequestsAsJSON(Serializer serializer, Collection collection, Bundle bundle)
        throws JSONException, IOException
    {
        JSONArray jsonarray = new JSONArray();
        collection = collection.iterator();
        do
        {
            if (!collection.hasNext())
            {
                serializer.writeString("batch", jsonarray.toString());
                return;
            }
            ((Request)collection.next()).serializeToBatch(jsonarray, bundle);
        } while (true);
    }

    private void serializeToBatch(JSONArray jsonarray, final Bundle keysAndValues)
        throws JSONException, IOException
    {
        JSONObject jsonobject = new JSONObject();
        if (batchEntryName != null)
        {
            jsonobject.put("name", batchEntryName);
            jsonobject.put("omit_response_on_success", batchEntryOmitResultOnSuccess);
        }
        if (batchEntryDependsOn != null)
        {
            jsonobject.put("depends_on", batchEntryDependsOn);
        }
        String s = getUrlForBatchedRequest();
        jsonobject.put("relative_url", s);
        jsonobject.put("method", httpMethod);
        if (session != null)
        {
            Logger.registerAccessToken(session.getAccessToken());
        }
        ArrayList arraylist = new ArrayList();
        Iterator iterator = parameters.keySet().iterator();
        do
        {
            Object obj;
            do
            {
                if (!iterator.hasNext())
                {
                    if (!arraylist.isEmpty())
                    {
                        jsonobject.put("attached_files", TextUtils.join(",", arraylist));
                    }
                    if (graphObject != null)
                    {
                        keysAndValues = new ArrayList();
                        processGraphObject(graphObject, s, new KeyValueSerializer() {

                            final Request this$0;
                            private final ArrayList val$keysAndValues;

                            public void writeString(String s2, String s3)
                                throws IOException
                            {
                                keysAndValues.add(String.format("%s=%s", new Object[] {
                                    s2, URLEncoder.encode(s3, "UTF-8")
                                }));
                            }

            
            {
                this$0 = Request.this;
                keysAndValues = arraylist;
                super();
            }
                        });
                        jsonobject.put("body", TextUtils.join("&", keysAndValues));
                    }
                    jsonarray.put(jsonobject);
                    return;
                }
                obj = (String)iterator.next();
                obj = parameters.get(((String) (obj)));
            } while (!isSupportedAttachmentType(obj));
            String s1 = String.format("%s%d", new Object[] {
                "file", Integer.valueOf(keysAndValues.size())
            });
            arraylist.add(s1);
            Utility.putObjectInBundle(keysAndValues, s1, obj);
        } while (true);
    }

    static final void serializeToUrlConnection(RequestBatch requestbatch, HttpURLConnection httpurlconnection)
        throws IOException, JSONException
    {
        Logger logger;
        Object obj;
        int i;
        boolean flag = false;
        logger = new Logger(LoggingBehavior.REQUESTS, "Request");
        i = requestbatch.size();
        HttpMethod httpmethod;
        if (i == 1)
        {
            httpmethod = requestbatch.get(0).httpMethod;
        } else
        {
            httpmethod = HttpMethod.POST;
        }
        httpurlconnection.setRequestMethod(httpmethod.name());
        obj = httpurlconnection.getURL();
        logger.append("Request:\n");
        logger.appendKeyValue("Id", requestbatch.getId());
        logger.appendKeyValue("URL", obj);
        logger.appendKeyValue("Method", httpurlconnection.getRequestMethod());
        logger.appendKeyValue("User-Agent", httpurlconnection.getRequestProperty("User-Agent"));
        logger.appendKeyValue("Content-Type", httpurlconnection.getRequestProperty("Content-Type"));
        httpurlconnection.setConnectTimeout(requestbatch.getTimeout());
        httpurlconnection.setReadTimeout(requestbatch.getTimeout());
        if (httpmethod == HttpMethod.POST)
        {
            flag = true;
        }
        if (!flag)
        {
            logger.log();
            return;
        }
        httpurlconnection.setDoOutput(true);
        httpurlconnection = new BufferedOutputStream(httpurlconnection.getOutputStream());
        Serializer serializer = new Serializer(httpurlconnection, logger);
        if (i != 1) goto _L2; else goto _L1
_L1:
        requestbatch = requestbatch.get(0);
        logger.append("  Parameters:\n");
        serializeParameters(((Request) (requestbatch)).parameters, serializer);
        logger.append("  Attachments:\n");
        serializeAttachments(((Request) (requestbatch)).parameters, serializer);
        if (((Request) (requestbatch)).graphObject != null)
        {
            processGraphObject(((Request) (requestbatch)).graphObject, ((URL) (obj)).getPath(), serializer);
        }
_L3:
        httpurlconnection.close();
        logger.log();
        return;
_L2:
        obj = getBatchAppId(requestbatch);
        if (Utility.isNullOrEmpty(((String) (obj))))
        {
            throw new FacebookException("At least one request in a batch must have an open Session, or a default app ID must be specified.");
        }
        break MISSING_BLOCK_LABEL_287;
        requestbatch;
        httpurlconnection.close();
        throw requestbatch;
        serializer.writeString("batch_app_id", ((String) (obj)));
        obj = new Bundle();
        serializeRequestsAsJSON(serializer, requestbatch, ((Bundle) (obj)));
        logger.append("  Attachments:\n");
        serializeAttachments(((Bundle) (obj)), serializer);
          goto _L3
    }

    public static final void setDefaultBatchApplicationId(String s)
    {
        defaultBatchApplicationId = s;
    }

    public static HttpURLConnection toHttpConnection(RequestBatch requestbatch)
    {
        Object obj = requestbatch.iterator();
_L5:
        if (((Iterator) (obj)).hasNext()) goto _L2; else goto _L1
_L1:
        if (requestbatch.size() != 1)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        obj = new URL(requestbatch.get(0).getUrlForSingleRequest());
_L3:
        try
        {
            obj = createConnection(((URL) (obj)));
            serializeToUrlConnection(requestbatch, ((HttpURLConnection) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (RequestBatch requestbatch)
        {
            throw new FacebookException("could not construct request body", requestbatch);
        }
        // Misplaced declaration of an exception variable
        catch (RequestBatch requestbatch)
        {
            throw new FacebookException("could not construct request body", requestbatch);
        }
        return ((HttpURLConnection) (obj));
_L2:
        ((Request)((Iterator) (obj)).next()).validate();
        continue; /* Loop/switch isn't completed */
        obj = new URL(ServerProtocol.getGraphUrlBase());
          goto _L3
        requestbatch;
        throw new FacebookException("could not construct URL for request", requestbatch);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static HttpURLConnection toHttpConnection(Collection collection)
    {
        Validate.notEmptyAndContainsNoNulls(collection, "requests");
        return toHttpConnection(new RequestBatch(collection));
    }

    public static transient HttpURLConnection toHttpConnection(Request arequest[])
    {
        return toHttpConnection(((Collection) (Arrays.asList(arequest))));
    }

    private static List typedListFromResponse(Response response, Class class1)
    {
        response = (GraphMultiResult)response.getGraphObjectAs(com/facebook/model/GraphMultiResult);
        if (response != null)
        {
            if ((response = response.getData()) != null)
            {
                return response.castToListOf(class1);
            }
        }
        return null;
    }

    private void validate()
    {
        if (graphPath != null && restMethod != null)
        {
            throw new IllegalArgumentException("Only one of a graph path or REST method may be specified per request.");
        } else
        {
            return;
        }
    }

    public final Response executeAndWait()
    {
        return executeAndWait(this);
    }

    public final RequestAsyncTask executeAsync()
    {
        return executeBatchAsync(new Request[] {
            this
        });
    }

    public final String getBatchEntryDependsOn()
    {
        return batchEntryDependsOn;
    }

    public final String getBatchEntryName()
    {
        return batchEntryName;
    }

    public final boolean getBatchEntryOmitResultOnSuccess()
    {
        return batchEntryOmitResultOnSuccess;
    }

    public final Callback getCallback()
    {
        return callback;
    }

    public final GraphObject getGraphObject()
    {
        return graphObject;
    }

    public final String getGraphPath()
    {
        return graphPath;
    }

    public final HttpMethod getHttpMethod()
    {
        return httpMethod;
    }

    public final Bundle getParameters()
    {
        return parameters;
    }

    public final String getRestMethod()
    {
        return restMethod;
    }

    public final Session getSession()
    {
        return session;
    }

    public final Object getTag()
    {
        return tag;
    }

    final String getUrlForBatchedRequest()
    {
        if (overriddenURL != null)
        {
            throw new FacebookException("Can't override URL for a batch request");
        }
        String s;
        if (restMethod != null)
        {
            s = (new StringBuilder("method/")).append(restMethod).toString();
        } else
        {
            s = graphPath;
        }
        addCommonParameters();
        return appendParametersToBaseUrl(s);
    }

    final String getUrlForSingleRequest()
    {
        if (overriddenURL != null)
        {
            return overriddenURL.toString();
        }
        String s;
        if (restMethod != null)
        {
            s = String.format("%s/%s", new Object[] {
                ServerProtocol.getRestUrlBase(), restMethod
            });
        } else
        {
            s = String.format("%s/%s", new Object[] {
                ServerProtocol.getGraphUrlBase(), graphPath
            });
        }
        addCommonParameters();
        return appendParametersToBaseUrl(s);
    }

    public final void setBatchEntryDependsOn(String s)
    {
        batchEntryDependsOn = s;
    }

    public final void setBatchEntryName(String s)
    {
        batchEntryName = s;
    }

    public final void setBatchEntryOmitResultOnSuccess(boolean flag)
    {
        batchEntryOmitResultOnSuccess = flag;
    }

    public final void setCallback(Callback callback1)
    {
        callback = callback1;
    }

    public final void setGraphObject(GraphObject graphobject)
    {
        graphObject = graphobject;
    }

    public final void setGraphPath(String s)
    {
        graphPath = s;
    }

    public final void setHttpMethod(HttpMethod httpmethod)
    {
        if (overriddenURL != null && httpmethod != HttpMethod.GET)
        {
            throw new FacebookException("Can't change HTTP method on request with overridden URL.");
        }
        if (httpmethod == null)
        {
            httpmethod = HttpMethod.GET;
        }
        httpMethod = httpmethod;
    }

    public final void setParameters(Bundle bundle)
    {
        parameters = bundle;
    }

    public final void setRestMethod(String s)
    {
        restMethod = s;
    }

    public final void setSession(Session session1)
    {
        session = session1;
    }

    public final void setTag(Object obj)
    {
        tag = obj;
    }

    public String toString()
    {
        return (new StringBuilder()).append("{Request: ").append(" session: ").append(session).append(", graphPath: ").append(graphPath).append(", graphObject: ").append(graphObject).append(", restMethod: ").append(restMethod).append(", httpMethod: ").append(httpMethod).append(", parameters: ").append(parameters).append("}").toString();
    }



}
