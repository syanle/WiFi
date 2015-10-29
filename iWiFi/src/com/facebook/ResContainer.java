// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class ResContainer
{
    public static class ResType extends Enum
    {

        public static final ResType ANIM;
        public static final ResType COLOR;
        public static final ResType DIMEN;
        public static final ResType DRAWABLE;
        private static final ResType ENUM$VALUES[];
        public static final ResType ID;
        public static final ResType LAYOUT;
        public static final ResType RAW;
        public static final ResType STRING;
        public static final ResType STYLE;

        public static ResType valueOf(String s)
        {
            return (ResType)Enum.valueOf(com/facebook/ResContainer$ResType, s);
        }

        public static ResType[] values()
        {
            ResType arestype[] = ENUM$VALUES;
            int i = arestype.length;
            ResType arestype1[] = new ResType[i];
            System.arraycopy(arestype, 0, arestype1, 0, i);
            return arestype1;
        }

        static 
        {
            LAYOUT = new ResType("LAYOUT", 0) {

                public String toString()
                {
                    return "layout";
                }

            };
            ID = new ResType("ID", 1) {

                public String toString()
                {
                    return "id";
                }

            };
            DRAWABLE = new ResType("DRAWABLE", 2) {

                public String toString()
                {
                    return "drawable";
                }

            };
            STYLE = new ResType("STYLE", 3) {

                public String toString()
                {
                    return "style";
                }

            };
            STRING = new ResType("STRING", 4) {

                public String toString()
                {
                    return "string";
                }

            };
            COLOR = new ResType("COLOR", 5) {

                public String toString()
                {
                    return "color";
                }

            };
            DIMEN = new ResType("DIMEN", 6) {

                public String toString()
                {
                    return "dimen";
                }

            };
            RAW = new ResType("RAW", 7) {

                public String toString()
                {
                    return "raw";
                }

            };
            ANIM = new ResType("ANIM", 8) {

                public String toString()
                {
                    return "anim";
                }

            };
            ENUM$VALUES = (new ResType[] {
                LAYOUT, ID, DRAWABLE, STYLE, STRING, COLOR, DIMEN, RAW, ANIM
            });
        }

        private ResType(String s, int i)
        {
            super(s, i);
        }

        ResType(String s, int i, ResType restype)
        {
            this(s, i);
        }
    }

    public static class SocializeResource
    {

        public int mId;
        public boolean mIsCompleted;
        public String mName;
        public ResType mType;

        public SocializeResource(ResType restype, String s)
        {
            mIsCompleted = false;
            mType = restype;
            mName = s;
        }
    }


    private static Context mContext = null;
    private static ResContainer mResContainer = null;
    private Map mResources;

    private ResContainer(Context context)
    {
        this(context, null);
    }

    private ResContainer(Context context, Map map)
    {
        mResources = map;
        mContext = context;
    }

    public static Context getContext()
    {
        return mContext;
    }

    public static ResContainer getResContainer()
    {
        if (mResContainer == null)
        {
            Log.e("ResContainer", "### \u8BF7\u5148\u8C03\u7528\u521D\u59CB\u5316ResContainer [Facebook].");
        }
        return mResContainer;
    }

    public static ResContainer init(Context context)
    {
        if (mResContainer != null || context == null) goto _L2; else goto _L1
_L1:
        com/facebook/ResContainer;
        JVM INSTR monitorenter ;
        mResContainer = new ResContainer(context);
        com/facebook/ResContainer;
        JVM INSTR monitorexit ;
_L2:
        return mResContainer;
        context;
        com/facebook/ResContainer;
        JVM INSTR monitorexit ;
        throw context;
    }

    public Map batch()
    {
        this;
        JVM INSTR monitorenter ;
        if (mResources != null) goto _L2; else goto _L1
_L1:
        Object obj = mResources;
_L6:
        this;
        JVM INSTR monitorexit ;
        return ((Map) (obj));
_L2:
        obj = mResources.keySet().iterator();
_L4:
        if (!((Iterator) (obj)).hasNext())
        {
            obj = mResources;
            continue; /* Loop/switch isn't completed */
        }
        Object obj1 = (String)((Iterator) (obj)).next();
        obj1 = (SocializeResource)mResources.get(obj1);
        obj1.mId = getResourceId(mContext, ((SocializeResource) (obj1)).mType, ((SocializeResource) (obj1)).mName);
        obj1.mIsCompleted = true;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public int getResourceId(Context context, ResType restype, String s)
    {
        Resources resources = context.getResources();
        context = context.getPackageName();
        int i = resources.getIdentifier(s, restype.toString(), context);
        if (i <= 0)
        {
            throw new RuntimeException((new StringBuilder("\u83B7\u53D6\u8D44\u6E90ID\u5931\u8D25:(packageName=")).append(context).append(" type=").append(restype).append(" name=").append(s).toString());
        } else
        {
            return i;
        }
    }

    public int getResourceId(ResType restype, String s)
    {
        int i;
        if (mContext == null)
        {
            Log.e("###", "### ResContainer's mContext is null. ");
            i = 0;
        } else
        {
            Resources resources = mContext.getResources();
            String s1 = mContext.getPackageName();
            int j = resources.getIdentifier(s, restype.toString(), s1);
            i = j;
            if (j <= 0)
            {
                throw new RuntimeException((new StringBuilder("\u83B7\u53D6\u8D44\u6E90ID\u5931\u8D25:(packageName=")).append(s1).append(" type=").append(restype).append(" name=").append(s).toString());
            }
        }
        return i;
    }

}
