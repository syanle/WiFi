// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
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
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook.widget:
//            FacebookDialog

public static class previewPropertyName extends previewPropertyName
{

    private OpenGraphAction action;
    private String actionType;
    private boolean dataErrorsFatal;
    private HashMap imageAttachmentFiles;
    private HashMap imageAttachments;
    private String previewPropertyName;

    private previewPropertyName addImageAttachment(String s, Bitmap bitmap)
    {
        if (imageAttachments == null)
        {
            imageAttachments = new HashMap();
        }
        imageAttachments.put(s, bitmap);
        return this;
    }

    private imageAttachments addImageAttachment(String s, File file)
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
            arraylist.add(NativeAppCallContentProvider.getAttachmentUrl(applicationId, appCall.appCall(), s));
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
            arraylist.add(NativeAppCallContentProvider.getAttachmentUrl(applicationId, appCall.appCall(), s));
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
        return super.action();
    }

    public volatile boolean canPresent()
    {
        return super.action();
    }

    List getImageAttachmentNames()
    {
        return new ArrayList(imageAttachments.keySet());
    }

    imageAttachments getOnPresentCallback()
    {
        return new FacebookDialog.OnPresentCallback() {

            final FacebookDialog.OpenGraphActionDialogBuilder this$1;

            public void onPresent(Context context)
                throws Exception
            {
                if (imageAttachments != null && imageAttachments.size() > 0)
                {
                    FacebookDialog.access$2().addAttachmentsForCall(context, appCall.getCallId(), imageAttachments);
                }
                if (imageAttachmentFiles != null && imageAttachmentFiles.size() > 0)
                {
                    FacebookDialog.access$2().addAttachmentFilesForCall(context, appCall.getCallId(), imageAttachmentFiles);
                }
            }

            
            {
                this$1 = FacebookDialog.OpenGraphActionDialogBuilder.this;
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
        int i = FacebookDialog.access$1(activity, Integer.valueOf(0x1332b3a));
        return NativeProtocol.createPlatformActivityIntent(activity, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", i, bundle);
    }

    boolean handleCanPresent()
    {
        return FacebookDialog.canPresentOpenGraphActionDialog(activity, new activity[] {
            OG_ACTION_DIALOG
        });
    }

    public volatile OG_ACTION_DIALOG setApplicationName(String s)
    {
        return super.OG_ACTION_DIALOG(s);
    }

    public OG_ACTION_DIALOG setDataErrorsFatal(boolean flag)
    {
        dataErrorsFatal = flag;
        return this;
    }

    public volatile dataErrorsFatal setFragment(Fragment fragment)
    {
        return super.dataErrorsFatal(fragment);
    }

    public dataErrorsFatal setImageAttachmentFilesForAction(List list)
    {
        return setImageAttachmentFilesForAction(list, false);
    }

    public setImageAttachmentFilesForAction setImageAttachmentFilesForAction(List list, boolean flag)
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

    public addImageAttachmentFiles setImageAttachmentFilesForObject(String s, List list)
    {
        return setImageAttachmentFilesForObject(s, list, false);
    }

    public setImageAttachmentFilesForObject setImageAttachmentFilesForObject(String s, List list, boolean flag)
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

    public addImageAttachmentFiles setImageAttachmentsForAction(List list)
    {
        return setImageAttachmentsForAction(list, false);
    }

    public setImageAttachmentsForAction setImageAttachmentsForAction(List list, boolean flag)
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

    public addImageAttachments setImageAttachmentsForObject(String s, List list)
    {
        return setImageAttachmentsForObject(s, list, false);
    }

    public setImageAttachmentsForObject setImageAttachmentsForObject(String s, List list, boolean flag)
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

    public volatile addImageAttachments setRequestCode(int i)
    {
        return super.addImageAttachments(i);
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
            s = com.facebook.model..action(com/facebook/model/GraphObject);
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
            GraphObject graphobject = com.facebook.model..action();
            graphobject.setProperty("url", s1);
            if (flag)
            {
                graphobject.setProperty("user_generated", Boolean.valueOf(true));
            }
            s.add(graphobject);
        } while (true);
    }



    public _cls1.this._cls1(Activity activity, OpenGraphAction opengraphaction, String s)
    {
        super(activity);
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

    public previewPropertyName(Activity activity, OpenGraphAction opengraphaction, String s, String s1)
    {
        super(activity);
        Validate.notNull(opengraphaction, "action");
        Validate.notNullOrEmpty(s, "actionType");
        Validate.notNullOrEmpty(s1, "previewPropertyName");
        if (opengraphaction.getProperty(s1) == null)
        {
            throw new IllegalArgumentException((new StringBuilder("A property named \"")).append(s1).append("\" was not found on the action.  The name of ").append("the preview property must match the name of an action property.").toString());
        }
        activity = opengraphaction.getType();
        if (!Utility.isNullOrEmpty(activity) && !activity.equals(s))
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
