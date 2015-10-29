// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.View;
import android.widget.Toast;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import com.mob.tools.FakeActivity;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.R;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class EditPageFakeActivity extends FakeActivity
{
    public static class ImageInfo
    {

        public Bitmap bitmap;
        public String paramName;
        public String srcValue;

        public ImageInfo()
        {
        }
    }

    protected static interface ImageListResultsCallback
    {

        public abstract void onFinish(ArrayList arraylist);
    }


    protected View backgroundView;
    protected boolean dialogMode;
    protected List platforms;
    private ArrayList shareImageList;
    protected HashMap shareParamMap;
    protected ArrayList toFriendList;

    public EditPageFakeActivity()
    {
    }

    protected String getAtUserButtonText(String s)
    {
        if ("FacebookMessenger".equals(s))
        {
            return "To";
        } else
        {
            return "@";
        }
    }

    protected String getJoinSelectedUser(HashMap hashmap)
    {
        if (hashmap != null && hashmap.containsKey("selected"))
        {
            Object obj = (ArrayList)hashmap.get("selected");
            if ("FacebookMessenger".equals(((Platform)hashmap.get("platform")).getName()))
            {
                toFriendList = ((ArrayList) (obj));
                return null;
            }
            hashmap = new StringBuilder();
            obj = ((ArrayList) (obj)).iterator();
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    return hashmap.toString();
                }
                String s = (String)((Iterator) (obj)).next();
                hashmap.append('@').append(s).append(' ');
            } while (true);
        } else
        {
            return null;
        }
    }

    public String getLogoName(String s)
    {
        if (s == null)
        {
            return "";
        } else
        {
            int i = R.getStringRes(getContext(), s);
            return getContext().getString(i);
        }
    }

    public boolean haveImage()
    {
        String s = (String)shareParamMap.get("imageUrl");
        String s1 = (String)shareParamMap.get("imagePath");
        Bitmap bitmap = (Bitmap)shareParamMap.get("viewToShare");
        for (String as[] = (String[])shareParamMap.get("imageArray"); !TextUtils.isEmpty(s1) && (new File(s1)).exists() || bitmap != null && !bitmap.isRecycled() || !TextUtils.isEmpty(s) || as != null && as.length > 0;)
        {
            return true;
        }

        return false;
    }

    protected boolean initImageList(ImageListResultsCallback imagelistresultscallback)
    {
        Object obj;
        String s;
        s = (String)shareParamMap.get("imageUrl");
        String s1 = (String)shareParamMap.get("imagePath");
        Bitmap bitmap = (Bitmap)shareParamMap.get("viewToShare");
        obj = (String[])shareParamMap.get("imageArray");
        shareImageList = new ArrayList();
        if (!TextUtils.isEmpty(s1) && (new File(s1)).exists())
        {
            obj = new ImageInfo();
            obj.paramName = "imagePath";
            obj.srcValue = s1;
            shareImageList.add(obj);
            shareParamMap.remove("imagePath");
        } else
        {
label0:
            {
                if (bitmap == null || bitmap.isRecycled())
                {
                    break label0;
                }
                obj = new ImageInfo();
                obj.paramName = "viewToShare";
                obj.bitmap = bitmap;
                shareImageList.add(obj);
                shareParamMap.remove("viewToShare");
            }
        }
_L3:
        int i;
        int j;
        if (shareImageList.size() == 0)
        {
            return false;
        } else
        {
            (new AsyncTask() {

                final EditPageFakeActivity this$0;

                protected transient ImageListResultsCallback doInBackground(Object aobj[])
                {
                    Iterator iterator = shareImageList.iterator();
_L2:
                    ImageInfo imageinfo1;
                    do
                    {
                        if (!iterator.hasNext())
                        {
                            return (ImageListResultsCallback)aobj[0];
                        }
                        imageinfo1 = (ImageInfo)iterator.next();
                    } while (imageinfo1.bitmap != null);
                    String s2;
                    s2 = imageinfo1.srcValue;
                    if (s2.startsWith("http://"))
                    {
                        break MISSING_BLOCK_LABEL_75;
                    }
                    Object obj1 = s2;
                    if (!s2.startsWith("https://"))
                    {
                        break MISSING_BLOCK_LABEL_87;
                    }
                    obj1 = BitmapHelper.downloadBitmap(EditPageFakeActivity.this.EditPageFakeActivity$ImageListResultsCallback, s2);
                    obj1 = BitmapHelper.getBitmap(((String) (obj1)));
                    if (obj1 != null)
                    {
                        try
                        {
                            imageinfo1.bitmap = ((Bitmap) (obj1));
                        }
                        catch (Throwable throwable)
                        {
                            throwable.printStackTrace();
                        }
                    }
                    if (true) goto _L2; else goto _L1
_L1:
                }

                protected volatile transient Object doInBackground(Object aobj[])
                {
                    return doInBackground((Object[])aobj);
                }

                protected void onPostExecute(ImageListResultsCallback imagelistresultscallback1)
                {
                    imagelistresultscallback1.onFinish(shareImageList);
                }

                protected volatile void onPostExecute(Object obj1)
                {
                    onPostExecute((ImageListResultsCallback)obj1);
                }

            
            {
                this$0 = EditPageFakeActivity.this;
                super();
            }
            }).execute(new Object[] {
                imagelistresultscallback
            });
            return true;
        }
        if (TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        obj = new ImageInfo();
        obj.paramName = "imageUrl";
        obj.srcValue = s;
        shareImageList.add(obj);
        shareParamMap.remove("imageUrl");
          goto _L3
_L2:
        if (obj == null || obj.length <= 0) goto _L3; else goto _L4
_L4:
        j = obj.length;
        i = 0;
_L5:
label1:
        {
            if (i < j)
            {
                break label1;
            }
            shareParamMap.remove("imageArray");
        }
          goto _L3
        CharSequence charsequence = obj[i];
        if (!TextUtils.isEmpty(charsequence))
        {
            ImageInfo imageinfo = new ImageInfo();
            imageinfo.paramName = "imageArray";
            imageinfo.srcValue = charsequence;
            shareImageList.add(imageinfo);
        }
        i++;
          goto _L5
    }

    protected boolean isShowAtUserLayout(String s)
    {
        return "SinaWeibo".equals(s) || "TencentWeibo".equals(s) || "Facebook".equals(s) || "Twitter".equals(s) || "FacebookMessenger".equals(s);
    }

    public boolean onFinish()
    {
        shareImageList = null;
        return super.onFinish();
    }

    protected void removeImage(ImageInfo imageinfo)
    {
        if (shareImageList == null || imageinfo == null)
        {
            return;
        } else
        {
            shareImageList.remove(imageinfo);
            return;
        }
    }

    public void setBackgroundView(View view)
    {
        backgroundView = view;
    }

    public void setDialogMode()
    {
        dialogMode = true;
    }

    public void setPlatforms(List list)
    {
        platforms = list;
    }

    protected void setResultAndFinish()
    {
        Object obj = new ArrayList();
        if (shareImageList == null) goto _L2; else goto _L1
_L1:
        Object obj1 = shareImageList.iterator();
_L5:
        if (((Iterator) (obj1)).hasNext()) goto _L4; else goto _L3
_L3:
        shareImageList.clear();
        ImageInfo imageinfo;
        if (((ArrayList) (obj)).size() == 0)
        {
            shareParamMap.put("imageArray", null);
        } else
        {
            shareParamMap.put("imageArray", ((Object) (((ArrayList) (obj)).toArray(new String[((ArrayList) (obj)).size()]))));
        }
_L2:
        obj = new HashMap();
        obj1 = platforms.iterator();
_L6:
        Platform platform;
        HashMap hashmap;
        if (!((Iterator) (obj1)).hasNext())
        {
            obj1 = new HashMap();
            ((HashMap) (obj1)).put("editRes", obj);
            setResult(((HashMap) (obj1)));
            finish();
        } else
        {
label0:
            {
                platform = (Platform)((Iterator) (obj1)).next();
                if (!"FacebookMessenger".equals(platform.getName()))
                {
                    break MISSING_BLOCK_LABEL_408;
                }
                hashmap = new HashMap(shareParamMap);
                if (toFriendList != null && toFriendList.size() > 0)
                {
                    hashmap.put("address", toFriendList.get(toFriendList.size() - 1));
                }
                if (hashmap.get("address") != null)
                {
                    break label0;
                }
                int i = R.getStringRes(activity, "select_a_friend");
                if (i > 0)
                {
                    Toast.makeText(getContext(), (new StringBuilder(String.valueOf(activity.getString(i)))).append(" - ").append(platform.getName()).toString(), 0).show();
                    return;
                }
            }
        }
        return;
_L4:
        imageinfo = (ImageInfo)((Iterator) (obj1)).next();
        if ("imagePath".equals(imageinfo.paramName) || "imageUrl".equals(imageinfo.paramName))
        {
            shareParamMap.put(imageinfo.paramName, imageinfo.srcValue);
        } else
        if ("viewToShare".equals(imageinfo.paramName))
        {
            shareParamMap.put(imageinfo.paramName, imageinfo.bitmap);
        } else
        if ("imageArray".equals(imageinfo.paramName))
        {
            ((ArrayList) (obj)).add(imageinfo.srcValue);
        }
          goto _L5
        ((HashMap) (obj)).put(platform, hashmap);
        ShareSDK.logDemoEvent(3, platform);
          goto _L6
        ShareSDK.logDemoEvent(3, platform);
        ((HashMap) (obj)).put(platform, shareParamMap);
          goto _L6
    }

    public void setShareData(HashMap hashmap)
    {
        shareParamMap = hashmap;
    }


}
