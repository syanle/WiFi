// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphObjectException;
import com.facebook.NativeAppCallAttachmentStore;
import com.facebook.NativeAppCallContentProvider;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;
import com.facebook.model.OpenGraphAction;
import com.facebook.model.OpenGraphObject;
import java.io.File;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class FacebookDialog
{
    private static abstract class Builder
    {

        protected final Activity activity;
        protected final PendingCall appCall = new PendingCall(64207);
        protected final String applicationId;
        protected String applicationName;
        protected Fragment fragment;

        public FacebookDialog build()
        {
            validate();
            Object obj = new Bundle();
            putExtra(((Bundle) (obj)), "com.facebook.platform.extra.APPLICATION_ID", applicationId);
            putExtra(((Bundle) (obj)), "com.facebook.platform.extra.APPLICATION_NAME", applicationName);
            obj = handleBuild(((Bundle) (obj)));
            if (obj == null)
            {
                throw new FacebookException("Unable to create Intent; this likely means the Facebook app is not installed.");
            } else
            {
                appCall.setRequestIntent(((Intent) (obj)));
                return new FacebookDialog(activity, fragment, appCall, getOnPresentCallback(), null);
            }
        }

        public boolean canPresent()
        {
            return handleCanPresent();
        }

        OnPresentCallback getOnPresentCallback()
        {
            return null;
        }

        abstract Intent handleBuild(Bundle bundle);

        boolean handleCanPresent()
        {
            return FacebookDialog.getProtocolVersionForNativeDialog(activity, Integer.valueOf(0x1332b3a)) != -1;
        }

        void putExtra(Bundle bundle, String s, String s1)
        {
            if (s1 != null)
            {
                bundle.putString(s, s1);
            }
        }

        public Builder setApplicationName(String s)
        {
            applicationName = s;
            return this;
        }

        public Builder setFragment(Fragment fragment1)
        {
            fragment = fragment1;
            return this;
        }

        public Builder setRequestCode(int i)
        {
            appCall.setRequestCode(i);
            return this;
        }

        void validate()
        {
        }

        Builder(Activity activity1)
        {
            Validate.notNull(activity1, "activity");
            activity = activity1;
            applicationId = Utility.getMetadataApplicationId(activity1);
        }
    }

    public static interface Callback
    {

        public abstract void onComplete(PendingCall pendingcall, Bundle bundle);

        public abstract void onError(PendingCall pendingcall, Exception exception, Bundle bundle);
    }

    private static interface DialogFeature
    {

        public abstract int getMinVersion();
    }

    static interface OnPresentCallback
    {

        public abstract void onPresent(Context context)
            throws Exception;
    }

    public static class OpenGraphActionDialogBuilder extends Builder
    {

        private OpenGraphAction action;
        private String actionType;
        private boolean dataErrorsFatal;
        private HashMap imageAttachmentFiles;
        private HashMap imageAttachments;
        private String previewPropertyName;

        private OpenGraphActionDialogBuilder addImageAttachment(String s, Bitmap bitmap)
        {
            if (imageAttachments == null)
            {
                imageAttachments = new HashMap();
            }
            imageAttachments.put(s, bitmap);
            return this;
        }

        private OpenGraphActionDialogBuilder addImageAttachment(String s, File file)
        {
            if (imageAttachmentFiles == null)
            {
                imageAttachmentFiles = new HashMap();
            }
            imageAttachmentFiles.put(s, file);
            return this;
        }

        private List addImageAttachmentFiles(List list)
        {
            ArrayList arraylist = new ArrayList();
            list = list.iterator();
            do
            {
                if (!list.hasNext())
                {
                    return arraylist;
                }
                File file = (File)list.next();
                String s = UUID.randomUUID().toString();
                addImageAttachment(s, file);
                arraylist.add(NativeAppCallContentProvider.getAttachmentUrl(applicationId, appCall.getCallId(), s));
            } while (true);
        }

        private List addImageAttachments(List list)
        {
            ArrayList arraylist = new ArrayList();
            list = list.iterator();
            do
            {
                if (!list.hasNext())
                {
                    return arraylist;
                }
                Bitmap bitmap = (Bitmap)list.next();
                String s = UUID.randomUUID().toString();
                addImageAttachment(s, bitmap);
                arraylist.add(NativeAppCallContentProvider.getAttachmentUrl(applicationId, appCall.getCallId(), s));
            } while (true);
        }

        private JSONObject flattenChildrenOfGraphObject(JSONObject jsonobject)
        {
            jsonobject = new JSONObject(jsonobject.toString());
            Iterator iterator = jsonobject.keys();
_L2:
            if (!iterator.hasNext())
            {
                return jsonobject;
            }
            String s = (String)iterator.next();
            if (!s.equalsIgnoreCase("image"))
            {
                jsonobject.put(s, flattenObject(jsonobject.get(s)));
            }
            if (true) goto _L2; else goto _L1
_L1:
            jsonobject;
_L4:
            throw new FacebookException(jsonobject);
            jsonobject;
            if (true) goto _L4; else goto _L3
_L3:
        }

        private Object flattenObject(Object obj)
            throws JSONException
        {
            if (obj != null) goto _L2; else goto _L1
_L1:
            Object obj1 = null;
_L4:
            return obj1;
_L2:
            if (!(obj instanceof JSONObject))
            {
                break; /* Loop/switch isn't completed */
            }
            JSONObject jsonobject = (JSONObject)obj;
            obj1 = obj;
            if (!jsonobject.optBoolean("fbsdk:create_object"))
            {
                if (jsonobject.has("id"))
                {
                    return jsonobject.getString("id");
                }
                obj1 = obj;
                if (jsonobject.has("url"))
                {
                    return jsonobject.getString("url");
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
            obj1 = obj;
            if (obj instanceof JSONArray)
            {
                obj = (JSONArray)obj;
                JSONArray jsonarray = new JSONArray();
                int j = ((JSONArray) (obj)).length();
                int i = 0;
                do
                {
                    if (i >= j)
                    {
                        return jsonarray;
                    }
                    jsonarray.put(flattenObject(((JSONArray) (obj)).get(i)));
                    i++;
                } while (true);
            }
            if (true) goto _L4; else goto _L5
_L5:
        }

        private void updateActionAttachmentUrls(List list, boolean flag)
        {
            Object obj;
            List list1 = action.getImage();
            obj = list1;
            if (list1 == null)
            {
                obj = new ArrayList(list.size());
            }
            list = list.iterator();
_L1:
            if (!list.hasNext())
            {
                action.setImage(((List) (obj)));
                return;
            }
            String s = (String)list.next();
            JSONObject jsonobject = new JSONObject();
            try
            {
                jsonobject.put("url", s);
            }
            // Misplaced declaration of an exception variable
            catch (List list)
            {
                throw new FacebookException("Unable to attach images", list);
            }
            if (!flag)
            {
                break MISSING_BLOCK_LABEL_104;
            }
            jsonobject.put("user_generated", true);
            ((List) (obj)).add(jsonobject);
              goto _L1
        }

        public volatile FacebookDialog build()
        {
            return super.build();
        }

        public volatile boolean canPresent()
        {
            return super.canPresent();
        }

        List getImageAttachmentNames()
        {
            return new ArrayList(imageAttachments.keySet());
        }

        OnPresentCallback getOnPresentCallback()
        {
            return new OnPresentCallback() {

                final OpenGraphActionDialogBuilder this$1;

                public void onPresent(Context context)
                    throws Exception
                {
                    if (imageAttachments != null && imageAttachments.size() > 0)
                    {
                        FacebookDialog.getAttachmentStore().addAttachmentsForCall(context, appCall.getCallId(), imageAttachments);
                    }
                    if (imageAttachmentFiles != null && imageAttachmentFiles.size() > 0)
                    {
                        FacebookDialog.getAttachmentStore().addAttachmentFilesForCall(context, appCall.getCallId(), imageAttachmentFiles);
                    }
                }

            
            {
                this$1 = OpenGraphActionDialogBuilder.this;
                super();
            }
            };
        }

        Intent handleBuild(Bundle bundle)
        {
            putExtra(bundle, "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME", previewPropertyName);
            putExtra(bundle, "com.facebook.platform.extra.ACTION_TYPE", actionType);
            bundle.putBoolean("com.facebook.platform.extra.DATA_FAILURES_FATAL", dataErrorsFatal);
            putExtra(bundle, "com.facebook.platform.extra.ACTION", flattenChildrenOfGraphObject(action.getInnerJSONObject()).toString());
            int i = FacebookDialog.getProtocolVersionForNativeDialog(activity, Integer.valueOf(0x1332b3a));
            return NativeProtocol.createPlatformActivityIntent(activity, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", i, bundle);
        }

        boolean handleCanPresent()
        {
            return FacebookDialog.canPresentOpenGraphActionDialog(activity, new OpenGraphActionDialogFeature[] {
                OpenGraphActionDialogFeature.OG_ACTION_DIALOG
            });
        }

        public volatile Builder setApplicationName(String s)
        {
            return super.setApplicationName(s);
        }

        public OpenGraphActionDialogBuilder setDataErrorsFatal(boolean flag)
        {
            dataErrorsFatal = flag;
            return this;
        }

        public volatile Builder setFragment(Fragment fragment1)
        {
            return super.setFragment(fragment1);
        }

        public OpenGraphActionDialogBuilder setImageAttachmentFilesForAction(List list)
        {
            return setImageAttachmentFilesForAction(list, false);
        }

        public OpenGraphActionDialogBuilder setImageAttachmentFilesForAction(List list, boolean flag)
        {
            Validate.containsNoNulls(list, "bitmapFiles");
            if (action == null)
            {
                throw new FacebookException("Can not set attachments prior to setting action.");
            } else
            {
                updateActionAttachmentUrls(addImageAttachmentFiles(list), flag);
                return this;
            }
        }

        public OpenGraphActionDialogBuilder setImageAttachmentFilesForObject(String s, List list)
        {
            return setImageAttachmentFilesForObject(s, list, false);
        }

        public OpenGraphActionDialogBuilder setImageAttachmentFilesForObject(String s, List list, boolean flag)
        {
            Validate.notNull(s, "objectProperty");
            Validate.containsNoNulls(list, "bitmapFiles");
            if (action == null)
            {
                throw new FacebookException("Can not set attachments prior to setting action.");
            } else
            {
                updateObjectAttachmentUrls(s, addImageAttachmentFiles(list), flag);
                return this;
            }
        }

        public OpenGraphActionDialogBuilder setImageAttachmentsForAction(List list)
        {
            return setImageAttachmentsForAction(list, false);
        }

        public OpenGraphActionDialogBuilder setImageAttachmentsForAction(List list, boolean flag)
        {
            Validate.containsNoNulls(list, "bitmaps");
            if (action == null)
            {
                throw new FacebookException("Can not set attachments prior to setting action.");
            } else
            {
                updateActionAttachmentUrls(addImageAttachments(list), flag);
                return this;
            }
        }

        public OpenGraphActionDialogBuilder setImageAttachmentsForObject(String s, List list)
        {
            return setImageAttachmentsForObject(s, list, false);
        }

        public OpenGraphActionDialogBuilder setImageAttachmentsForObject(String s, List list, boolean flag)
        {
            Validate.notNull(s, "objectProperty");
            Validate.containsNoNulls(list, "bitmaps");
            if (action == null)
            {
                throw new FacebookException("Can not set attachments prior to setting action.");
            } else
            {
                updateObjectAttachmentUrls(s, addImageAttachments(list), flag);
                return this;
            }
        }

        public volatile Builder setRequestCode(int i)
        {
            return super.setRequestCode(i);
        }

        void updateObjectAttachmentUrls(String s, List list, boolean flag)
        {
            OpenGraphObject opengraphobject;
            try
            {
                opengraphobject = (OpenGraphObject)action.getPropertyAs(s, com/facebook/model/OpenGraphObject);
            }
            // Misplaced declaration of an exception variable
            catch (List list)
            {
                throw new IllegalArgumentException((new StringBuilder("Property '")).append(s).append("' is not a graph object").toString());
            }
            if (opengraphobject != null)
            {
                break MISSING_BLOCK_LABEL_86;
            }
            throw new IllegalArgumentException((new StringBuilder("Action does not contain a property '")).append(s).append("'").toString());
            if (!opengraphobject.getCreateObject())
            {
                throw new IllegalArgumentException((new StringBuilder("The Open Graph object in '")).append(s).append("' is not marked for creation").toString());
            }
            GraphObjectList graphobjectlist = opengraphobject.getImage();
            s = graphobjectlist;
            if (graphobjectlist == null)
            {
                s = com.facebook.model.GraphObject.Factory.createList(com/facebook/model/GraphObject);
            }
            list = list.iterator();
            do
            {
                if (!list.hasNext())
                {
                    opengraphobject.setImage(s);
                    return;
                }
                String s1 = (String)list.next();
                GraphObject graphobject = com.facebook.model.GraphObject.Factory.create();
                graphobject.setProperty("url", s1);
                if (flag)
                {
                    graphobject.setProperty("user_generated", Boolean.valueOf(true));
                }
                s.add(graphobject);
            } while (true);
        }



        public OpenGraphActionDialogBuilder(Activity activity1, OpenGraphAction opengraphaction, String s)
        {
            super(activity1);
            Validate.notNull(opengraphaction, "action");
            Validate.notNullOrEmpty(opengraphaction.getType(), "action.getType()");
            Validate.notNullOrEmpty(s, "previewPropertyName");
            if (opengraphaction.getProperty(s) == null)
            {
                throw new IllegalArgumentException((new StringBuilder("A property named \"")).append(s).append("\" was not found on the action.  The name of ").append("the preview property must match the name of an action property.").toString());
            } else
            {
                action = opengraphaction;
                actionType = opengraphaction.getType();
                previewPropertyName = s;
                return;
            }
        }

        public OpenGraphActionDialogBuilder(Activity activity1, OpenGraphAction opengraphaction, String s, String s1)
        {
            super(activity1);
            Validate.notNull(opengraphaction, "action");
            Validate.notNullOrEmpty(s, "actionType");
            Validate.notNullOrEmpty(s1, "previewPropertyName");
            if (opengraphaction.getProperty(s1) == null)
            {
                throw new IllegalArgumentException((new StringBuilder("A property named \"")).append(s1).append("\" was not found on the action.  The name of ").append("the preview property must match the name of an action property.").toString());
            }
            activity1 = opengraphaction.getType();
            if (!Utility.isNullOrEmpty(activity1) && !activity1.equals(s))
            {
                throw new IllegalArgumentException("'actionType' must match the type of 'action' if it is specified. Consider using OpenGraphActionDialogBuilder(Activity activity, OpenGraphAction action, String previewPropertyName) instead.");
            } else
            {
                action = opengraphaction;
                actionType = s;
                previewPropertyName = s1;
                return;
            }
        }
    }

    public static final class OpenGraphActionDialogFeature extends Enum
        implements DialogFeature
    {

        private static final OpenGraphActionDialogFeature ENUM$VALUES[];
        public static final OpenGraphActionDialogFeature OG_ACTION_DIALOG;
        private int minVersion;

        public static OpenGraphActionDialogFeature valueOf(String s)
        {
            return (OpenGraphActionDialogFeature)Enum.valueOf(com/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature, s);
        }

        public static OpenGraphActionDialogFeature[] values()
        {
            OpenGraphActionDialogFeature aopengraphactiondialogfeature[] = ENUM$VALUES;
            int i = aopengraphactiondialogfeature.length;
            OpenGraphActionDialogFeature aopengraphactiondialogfeature1[] = new OpenGraphActionDialogFeature[i];
            System.arraycopy(aopengraphactiondialogfeature, 0, aopengraphactiondialogfeature1, 0, i);
            return aopengraphactiondialogfeature1;
        }

        public int getMinVersion()
        {
            return minVersion;
        }

        static 
        {
            OG_ACTION_DIALOG = new OpenGraphActionDialogFeature("OG_ACTION_DIALOG", 0, 0x1332b3a);
            ENUM$VALUES = (new OpenGraphActionDialogFeature[] {
                OG_ACTION_DIALOG
            });
        }

        private OpenGraphActionDialogFeature(String s, int i, int j)
        {
            super(s, i);
            minVersion = j;
        }
    }

    public static class PendingCall
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public PendingCall createFromParcel(Parcel parcel)
            {
                return new PendingCall(parcel, null);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public PendingCall[] newArray(int i)
            {
                return new PendingCall[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        private UUID callId;
        private int requestCode;
        private Intent requestIntent;

        private void setRequestCode(int i)
        {
            requestCode = i;
        }

        private void setRequestIntent(Intent intent)
        {
            requestIntent = intent;
            requestIntent.putExtra("com.facebook.platform.protocol.CALL_ID", callId.toString());
        }

        public int describeContents()
        {
            return 0;
        }

        public UUID getCallId()
        {
            return callId;
        }

        public int getRequestCode()
        {
            return requestCode;
        }

        public Intent getRequestIntent()
        {
            return requestIntent;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            parcel.writeString(callId.toString());
            parcel.writeParcelable(requestIntent, 0);
            parcel.writeInt(requestCode);
        }




        public PendingCall(int i)
        {
            callId = UUID.randomUUID();
            requestCode = i;
        }

        private PendingCall(Parcel parcel)
        {
            callId = UUID.fromString(parcel.readString());
            requestIntent = (Intent)parcel.readParcelable(null);
            requestCode = parcel.readInt();
        }

        PendingCall(Parcel parcel, PendingCall pendingcall)
        {
            this(parcel);
        }
    }

    public static class ShareDialogBuilder extends Builder
    {

        private String caption;
        private boolean dataErrorsFatal;
        private String description;
        private ArrayList friends;
        private String link;
        private String name;
        private String picture;
        private String place;
        private String ref;

        public volatile FacebookDialog build()
        {
            return super.build();
        }

        public volatile boolean canPresent()
        {
            return super.canPresent();
        }

        Intent handleBuild(Bundle bundle)
        {
            putExtra(bundle, "com.facebook.platform.extra.APPLICATION_ID", applicationId);
            putExtra(bundle, "com.facebook.platform.extra.APPLICATION_NAME", applicationName);
            putExtra(bundle, "com.facebook.platform.extra.TITLE", name);
            putExtra(bundle, "com.facebook.platform.extra.SUBTITLE", caption);
            putExtra(bundle, "com.facebook.platform.extra.DESCRIPTION", description);
            putExtra(bundle, "com.facebook.platform.extra.LINK", link);
            putExtra(bundle, "com.facebook.platform.extra.IMAGE", picture);
            putExtra(bundle, "com.facebook.platform.extra.PLACE", place);
            putExtra(bundle, "com.facebook.platform.extra.TITLE", name);
            putExtra(bundle, "com.facebook.platform.extra.REF", ref);
            bundle.putBoolean("com.facebook.platform.extra.DATA_FAILURES_FATAL", dataErrorsFatal);
            if (!Utility.isNullOrEmpty(friends))
            {
                bundle.putStringArrayList("com.facebook.platform.extra.FRIENDS", friends);
            }
            int i = FacebookDialog.getProtocolVersionForNativeDialog(activity, Integer.valueOf(0x1332b3a));
            return NativeProtocol.createPlatformActivityIntent(activity, "com.facebook.platform.action.request.FEED_DIALOG", i, bundle);
        }

        boolean handleCanPresent()
        {
            return FacebookDialog.canPresentShareDialog(activity, new ShareDialogFeature[] {
                ShareDialogFeature.SHARE_DIALOG
            });
        }

        public volatile Builder setApplicationName(String s)
        {
            return super.setApplicationName(s);
        }

        public ShareDialogBuilder setCaption(String s)
        {
            caption = s;
            return this;
        }

        public ShareDialogBuilder setDataErrorsFatal(boolean flag)
        {
            dataErrorsFatal = flag;
            return this;
        }

        public ShareDialogBuilder setDescription(String s)
        {
            description = s;
            return this;
        }

        public volatile Builder setFragment(Fragment fragment1)
        {
            return super.setFragment(fragment1);
        }

        public ShareDialogBuilder setFriends(List list)
        {
            friends = new ArrayList(list);
            return this;
        }

        public ShareDialogBuilder setLink(String s)
        {
            link = s;
            return this;
        }

        public ShareDialogBuilder setName(String s)
        {
            name = s;
            return this;
        }

        public ShareDialogBuilder setPicture(String s)
        {
            picture = s;
            return this;
        }

        public ShareDialogBuilder setPlace(String s)
        {
            place = s;
            return this;
        }

        public ShareDialogBuilder setRef(String s)
        {
            ref = s;
            return this;
        }

        public volatile Builder setRequestCode(int i)
        {
            return super.setRequestCode(i);
        }

        public ShareDialogBuilder(Activity activity1)
        {
            super(activity1);
        }
    }

    public static final class ShareDialogFeature extends Enum
        implements DialogFeature
    {

        private static final ShareDialogFeature ENUM$VALUES[];
        public static final ShareDialogFeature SHARE_DIALOG;
        private int minVersion;

        public static ShareDialogFeature valueOf(String s)
        {
            return (ShareDialogFeature)Enum.valueOf(com/facebook/widget/FacebookDialog$ShareDialogFeature, s);
        }

        public static ShareDialogFeature[] values()
        {
            ShareDialogFeature asharedialogfeature[] = ENUM$VALUES;
            int i = asharedialogfeature.length;
            ShareDialogFeature asharedialogfeature1[] = new ShareDialogFeature[i];
            System.arraycopy(asharedialogfeature, 0, asharedialogfeature1, 0, i);
            return asharedialogfeature1;
        }

        public int getMinVersion()
        {
            return minVersion;
        }

        static 
        {
            SHARE_DIALOG = new ShareDialogFeature("SHARE_DIALOG", 0, 0x1332b3a);
            ENUM$VALUES = (new ShareDialogFeature[] {
                SHARE_DIALOG
            });
        }

        private ShareDialogFeature(String s, int i, int j)
        {
            super(s, i);
            minVersion = j;
        }
    }


    public static final String COMPLETION_GESTURE_CANCEL = "cancel";
    private static final String EXTRA_DIALOG_COMPLETE_KEY = "com.facebook.platform.extra.DID_COMPLETE";
    private static final String EXTRA_DIALOG_COMPLETION_GESTURE_KEY = "com.facebook.platform.extra.COMPLETION_GESTURE";
    private static final String EXTRA_DIALOG_COMPLETION_ID_KEY = "com.facebook.platform.extra.POST_ID";
    private static final int MIN_NATIVE_SHARE_PROTOCOL_VERSION = 0x1332b3a;
    private static NativeAppCallAttachmentStore attachmentStore;
    private Activity activity;
    private PendingCall appCall;
    private Fragment fragment;
    private OnPresentCallback onPresentCallback;

    private FacebookDialog(Activity activity1, Fragment fragment1, PendingCall pendingcall, OnPresentCallback onpresentcallback)
    {
        activity = activity1;
        fragment = fragment1;
        appCall = pendingcall;
        onPresentCallback = onpresentcallback;
    }

    FacebookDialog(Activity activity1, Fragment fragment1, PendingCall pendingcall, OnPresentCallback onpresentcallback, FacebookDialog facebookdialog)
    {
        this(activity1, fragment1, pendingcall, onpresentcallback);
    }

    public static transient boolean canPresentOpenGraphActionDialog(Context context, OpenGraphActionDialogFeature aopengraphactiondialogfeature[])
    {
        return handleCanPresent(context, EnumSet.of(OpenGraphActionDialogFeature.OG_ACTION_DIALOG, aopengraphactiondialogfeature));
    }

    public static transient boolean canPresentShareDialog(Context context, ShareDialogFeature asharedialogfeature[])
    {
        return handleCanPresent(context, EnumSet.of(ShareDialogFeature.SHARE_DIALOG, asharedialogfeature));
    }

    private static NativeAppCallAttachmentStore getAttachmentStore()
    {
        if (attachmentStore == null)
        {
            attachmentStore = new NativeAppCallAttachmentStore();
        }
        return attachmentStore;
    }

    private static int getMinVersionForFeatures(Iterable iterable)
    {
        int i = 0x80000000;
        iterable = iterable.iterator();
        do
        {
            if (!iterable.hasNext())
            {
                return i;
            }
            i = Math.max(i, ((DialogFeature)iterable.next()).getMinVersion());
        } while (true);
    }

    public static String getNativeDialogCompletionGesture(Bundle bundle)
    {
        return bundle.getString("com.facebook.platform.extra.COMPLETION_GESTURE");
    }

    public static boolean getNativeDialogDidComplete(Bundle bundle)
    {
        return bundle.getBoolean("com.facebook.platform.extra.DID_COMPLETE", false);
    }

    public static String getNativeDialogPostId(Bundle bundle)
    {
        return bundle.getString("com.facebook.platform.extra.POST_ID");
    }

    private static int getProtocolVersionForNativeDialog(Context context, Integer integer)
    {
        return NativeProtocol.getLatestAvailableProtocolVersion(context, integer.intValue());
    }

    public static boolean handleActivityResult(Context context, PendingCall pendingcall, int i, Intent intent, Callback callback)
    {
        if (i != pendingcall.getRequestCode())
        {
            return false;
        }
        if (attachmentStore != null)
        {
            attachmentStore.cleanupAttachmentsForCall(context, pendingcall.getCallId());
        }
        if (callback != null)
        {
            if (NativeProtocol.isErrorResult(intent))
            {
                callback.onError(pendingcall, NativeProtocol.getErrorFromResult(intent), intent.getExtras());
            } else
            {
                callback.onComplete(pendingcall, intent.getExtras());
            }
        }
        return true;
    }

    private static boolean handleCanPresent(Context context, Iterable iterable)
    {
        return getProtocolVersionForNativeDialog(context, Integer.valueOf(getMinVersionForFeatures(iterable))) != -1;
    }

    public PendingCall present()
    {
        if (onPresentCallback != null)
        {
            try
            {
                onPresentCallback.onPresent(activity);
            }
            catch (Exception exception)
            {
                throw new FacebookException(exception);
            }
        }
        if (fragment != null)
        {
            fragment.startActivityForResult(appCall.getRequestIntent(), appCall.getRequestCode());
        } else
        {
            activity.startActivityForResult(appCall.getRequestIntent(), appCall.getRequestCode());
        }
        return appCall;
    }


}
