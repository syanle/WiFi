// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.graphics.Bitmap;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.Ln;
import java.util.HashMap;

public abstract class d
{

    protected static final String ADDRESS = "address";
    protected static final String AUTHOR = "author";
    protected static final String COMMENT = "comment";
    protected static final String CONTENT_TYPE = "contentType";
    protected static final String CUSTOM_FLAG = "customFlag";
    protected static final String EXECUTE_URL = "executeUrl";
    protected static final String EXT_INFO = "extInfo";
    protected static final String FILE_PATH = "filePath";
    protected static final String GROPU_ID = "gropuId";
    protected static final String HIDDEN = "hidden";
    protected static final String IMAGE_ARRAY = "imageArray";
    protected static final String IMAGE_DATA = "imageData";
    protected static final String IMAGE_PATH = "imagePath";
    protected static final String IMAGE_URL = "imageUrl";
    protected static final String INSTALL_URL = "installUrl";
    protected static final String IS_FAMILY = "isFamily";
    protected static final String IS_FRIEND = "isFriend";
    protected static final String IS_PUBLIC = "isPublic";
    protected static final String IS_SHARE_TENCENT_WEIBO = "isShareTencentWeibo";
    protected static final String LATITUDE = "latitude";
    protected static final String LONGITUDE = "longitude";
    protected static final String MUSIC_URL = "musicUrl";
    protected static final String NOTEBOOK = "notebook";
    protected static final String SAFETY_LEVEL = "safetyLevel";
    protected static final String SCENCE = "scene";
    protected static final String SHARE_TYPE = "shareType";
    protected static final String SITE = "site";
    protected static final String SITE_URL = "siteUrl";
    protected static final String STACK = "stack";
    protected static final String TAGS = "tags";
    protected static final String TEXT = "text";
    protected static final String TITLE = "title";
    protected static final String TITLE_URL = "titleUrl";
    protected static final String URL = "url";
    protected static final String VENUE_DESCRIPTION = "venueDescription";
    protected static final String VENUE_NAME = "venueName";
    private HashMap params;

    public d()
    {
        params = new HashMap();
    }

    public d(String s)
    {
        this((new Hashon()).fromJson(s));
    }

    public d(HashMap hashmap)
    {
        this();
        if (hashmap != null)
        {
            params.putAll(hashmap);
        }
    }

    public Object get(String s, Class class1)
    {
        s = ((String) (params.get(s)));
        if (s != null)
        {
            return class1.cast(s);
        }
        if (java/lang/Byte.equals(class1) || Byte.TYPE.equals(class1))
        {
            return class1.cast(new Byte((byte)0));
        }
        if (java/lang/Short.equals(class1) || Short.TYPE.equals(class1))
        {
            return class1.cast(new Short((short)0));
        }
        if (java/lang/Integer.equals(class1) || Integer.TYPE.equals(class1))
        {
            return class1.cast(new Integer(0));
        }
        if (java/lang/Long.equals(class1) || Long.TYPE.equals(class1))
        {
            return class1.cast(new Long(0L));
        }
        if (java/lang/Float.equals(class1) || Float.TYPE.equals(class1))
        {
            return class1.cast(new Float(0.0F));
        }
        if (java/lang/Double.equals(class1) || Double.TYPE.equals(class1))
        {
            return class1.cast(new Double(0.0D));
        }
        if (java/lang/Boolean.equals(class1) || Boolean.TYPE.equals(class1))
        {
            return class1.cast(Boolean.valueOf(false));
        } else
        {
            return null;
        }
    }

    public String getAddress()
    {
        return (String)get("address", java/lang/String);
    }

    public String getAuthor()
    {
        return (String)get("author", java/lang/String);
    }

    public String getComment()
    {
        return (String)get("comment", java/lang/String);
    }

    public int getContentType()
    {
        return ((Integer)get("contentType", java/lang/Integer)).intValue();
    }

    public String[] getCustomFlag()
    {
        return (String[])get("customFlag", [Ljava/lang/String;);
    }

    public String getExecuteUrl()
    {
        return (String)get("executeUrl", java/lang/String);
    }

    public String getExtInfo()
    {
        return (String)get("extInfo", java/lang/String);
    }

    public String getFilePath()
    {
        return (String)get("filePath", java/lang/String);
    }

    public String getGroupId()
    {
        return (String)get("gropuId", java/lang/String);
    }

    public int getHidden()
    {
        return ((Integer)get("hidden", java/lang/Integer)).intValue();
    }

    public String[] getImageArray()
    {
        return (String[])get("imageArray", [Ljava/lang/String;);
    }

    public Bitmap getImageData()
    {
        return (Bitmap)get("imageData", android/graphics/Bitmap);
    }

    public String getImagePath()
    {
        return (String)get("imagePath", java/lang/String);
    }

    public String getImageUrl()
    {
        return (String)get("imageUrl", java/lang/String);
    }

    public String getInstallUrl()
    {
        return (String)get("installUrl", java/lang/String);
    }

    public float getLatitude()
    {
        return ((Float)get("latitude", java/lang/Float)).floatValue();
    }

    public float getLongitude()
    {
        return ((Float)get("longitude", java/lang/Float)).floatValue();
    }

    public String getMusicUrl()
    {
        return (String)get("musicUrl", java/lang/String);
    }

    public String getNotebook()
    {
        return (String)get("notebook", java/lang/String);
    }

    public int getSafetyLevel()
    {
        return ((Integer)get("safetyLevel", java/lang/Integer)).intValue();
    }

    public int getScence()
    {
        return ((Integer)get("scene", java/lang/Integer)).intValue();
    }

    public int getShareType()
    {
        return ((Integer)get("shareType", java/lang/Integer)).intValue();
    }

    public String getSite()
    {
        return (String)get("site", java/lang/String);
    }

    public String getSiteUrl()
    {
        return (String)get("siteUrl", java/lang/String);
    }

    public String getStack()
    {
        return (String)get("stack", java/lang/String);
    }

    public String[] getTags()
    {
        return (String[])get("tags", [Ljava/lang/String;);
    }

    public String getText()
    {
        return (String)get("text", java/lang/String);
    }

    public String getTitle()
    {
        return (String)get("title", java/lang/String);
    }

    public String getTitleUrl()
    {
        return (String)get("titleUrl", java/lang/String);
    }

    public String getUrl()
    {
        return (String)get("url", java/lang/String);
    }

    public String getVenueDescription()
    {
        return (String)get("venueDescription", java/lang/String);
    }

    public String getVenueName()
    {
        return (String)get("venueName", java/lang/String);
    }

    public boolean isFamily()
    {
        return ((Boolean)get("isFamily", java/lang/Boolean)).booleanValue();
    }

    public boolean isFriend()
    {
        return ((Boolean)get("isFriend", java/lang/Boolean)).booleanValue();
    }

    public boolean isPublic()
    {
        return ((Boolean)get("isPublic", java/lang/Boolean)).booleanValue();
    }

    public boolean isShareTencentWeibo()
    {
        return ((Boolean)get("isShareTencentWeibo", java/lang/Boolean)).booleanValue();
    }

    public void set(String s, Object obj)
    {
        params.put(s, obj);
    }

    public void setAddress(String s)
    {
        set("address", s);
    }

    public void setAuthor(String s)
    {
        set("author", s);
    }

    public void setComment(String s)
    {
        set("comment", s);
    }

    public void setContentType(int i)
    {
        set("contentType", Integer.valueOf(i));
    }

    public void setCustomFlag(String as[])
    {
        set("customFlag", as);
    }

    public void setExecuteUrl()
    {
        set("executeUrl", java/lang/String);
    }

    public void setExtInfo(String s)
    {
        set("extInfo", s);
    }

    public void setFamily(boolean flag)
    {
        set("isFamily", Boolean.valueOf(flag));
    }

    public void setFilePath(String s)
    {
        set("filePath", s);
    }

    public void setFriend(boolean flag)
    {
        set("isFriend", Boolean.valueOf(flag));
    }

    public void setGroupId(String s)
    {
        set("gropuId", s);
    }

    public void setHidden(int i)
    {
        set("hidden", Integer.valueOf(i));
    }

    public void setImageArray(String as[])
    {
        set("imageArray", as);
    }

    public void setImageData(Bitmap bitmap)
    {
        set("imageData", bitmap);
    }

    public void setImagePath(String s)
    {
        set("imagePath", s);
    }

    public void setImageUrl(String s)
    {
        set("imageUrl", s);
    }

    public void setInstallUrl()
    {
        set("installUrl", java/lang/String);
    }

    public void setLatitude(float f)
    {
        set("latitude", Float.valueOf(f));
    }

    public void setLongitude(float f)
    {
        set("longitude", Float.valueOf(f));
    }

    public void setMusicUrl(String s)
    {
        set("musicUrl", s);
    }

    public void setNotebook(String s)
    {
        set("notebook", s);
    }

    public void setPublic(boolean flag)
    {
        set("isPublic", Boolean.valueOf(flag));
    }

    public void setSafetyLevel(int i)
    {
        set("safetyLevel", Integer.valueOf(i));
    }

    public void setScence(int i)
    {
        set("scene", Integer.valueOf(i));
    }

    public void setShareTencentWeibo(boolean flag)
    {
        set("isShareTencentWeibo", Boolean.valueOf(flag));
    }

    public void setShareType(int i)
    {
        set("shareType", Integer.valueOf(i));
    }

    public void setSite(String s)
    {
        set("site", s);
    }

    public void setSiteUrl(String s)
    {
        set("siteUrl", s);
    }

    public void setStack(String s)
    {
        set("stack", s);
    }

    public void setTags(String as[])
    {
        set("tags", as);
    }

    public void setText(String s)
    {
        set("text", s);
    }

    public void setTitle(String s)
    {
        set("title", s);
    }

    public void setTitleUrl(String s)
    {
        set("titleUrl", s);
    }

    public void setUrl(String s)
    {
        set("url", s);
    }

    public void setVenueDescription(String s)
    {
        set("venueDescription", s);
    }

    public void setVenueName(String s)
    {
        set("venueName", s);
    }

    public HashMap toMap()
    {
        if (params == null)
        {
            return new HashMap();
        } else
        {
            return params;
        }
    }

    public String toString()
    {
        String s;
        try
        {
            s = (new Hashon()).fromHashMap(params);
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
            return null;
        }
        return s;
    }
}
