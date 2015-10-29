// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.common;

import android.content.Context;
import android.content.res.Resources;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class ResContainer
{
    public static class ResType extends Enum
    {

        public static final ResType ANIM;
        public static final ResType COLOR;
        public static final ResType DIMEN;
        public static final ResType DRAWABLE;
        public static final ResType ID;
        public static final ResType LAYOUT;
        public static final ResType RAW;
        public static final ResType STRING;
        public static final ResType STYLE;
        private static final ResType a[];

        public static ResType valueOf(String s)
        {
            return (ResType)Enum.valueOf(com/umeng/socialize/common/ResContainer$ResType, s);
        }

        public static ResType[] values()
        {
            ResType arestype[] = a;
            int i = arestype.length;
            ResType arestype1[] = new ResType[i];
            System.arraycopy(arestype, 0, arestype1, 0, i);
            return arestype1;
        }

        static 
        {
            class _cls1 extends ResType
            {

                public String toString()
                {
                    return "layout";
                }

                _cls1(String s, int i)
                {
                    super(s, i, null);
                }
            }

            LAYOUT = new _cls1("LAYOUT", 0);
            class _cls2 extends ResType
            {

                public String toString()
                {
                    return "id";
                }

                _cls2(String s, int i)
                {
                    super(s, i, null);
                }
            }

            ID = new _cls2("ID", 1);
            class _cls3 extends ResType
            {

                public String toString()
                {
                    return "drawable";
                }

                _cls3(String s, int i)
                {
                    super(s, i, null);
                }
            }

            DRAWABLE = new _cls3("DRAWABLE", 2);
            class _cls4 extends ResType
            {

                public String toString()
                {
                    return "style";
                }

                _cls4(String s, int i)
                {
                    super(s, i, null);
                }
            }

            STYLE = new _cls4("STYLE", 3);
            class _cls5 extends ResType
            {

                public String toString()
                {
                    return "string";
                }

                _cls5(String s, int i)
                {
                    super(s, i, null);
                }
            }

            STRING = new _cls5("STRING", 4);
            class _cls6 extends ResType
            {

                public String toString()
                {
                    return "color";
                }

                _cls6(String s, int i)
                {
                    super(s, i, null);
                }
            }

            COLOR = new _cls6("COLOR", 5);
            class _cls7 extends ResType
            {

                public String toString()
                {
                    return "dimen";
                }

                _cls7(String s, int i)
                {
                    super(s, i, null);
                }
            }

            DIMEN = new _cls7("DIMEN", 6);
            class _cls8 extends ResType
            {

                public String toString()
                {
                    return "raw";
                }

                _cls8(String s, int i)
                {
                    super(s, i, null);
                }
            }

            RAW = new _cls8("RAW", 7);
            class _cls9 extends ResType
            {

                public String toString()
                {
                    return "anim";
                }

                _cls9(String s, int i)
                {
                    super(s, i, null);
                }
            }

            ANIM = new _cls9("ANIM", 8);
            a = (new ResType[] {
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

    public static class a
    {

        public ResType a;
        public String b;
        public boolean c;
        public int d;

        public a(ResType restype, String s)
        {
            c = false;
            a = restype;
            b = s;
        }
    }


    private Map a;
    private Context b;

    public ResContainer(Context context, Map map)
    {
        a = map;
        b = context;
    }

    public static int getResourceId(Context context, ResType restype, String s)
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

    public Map a()
    {
        this;
        JVM INSTR monitorenter ;
        if (a != null) goto _L2; else goto _L1
_L1:
        Object obj = a;
_L6:
        this;
        JVM INSTR monitorexit ;
        return ((Map) (obj));
_L2:
        obj = a.keySet().iterator();
_L4:
        if (!((Iterator) (obj)).hasNext())
        {
            obj = a;
            continue; /* Loop/switch isn't completed */
        }
        Object obj1 = (String)((Iterator) (obj)).next();
        obj1 = (a)a.get(obj1);
        obj1.d = getResourceId(b, ((a) (obj1)).a, ((a) (obj1)).b);
        obj1.c = true;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
