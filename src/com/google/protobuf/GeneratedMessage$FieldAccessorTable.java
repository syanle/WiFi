// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.protobuf:
//            GeneratedMessage, Message

public static final class f
{
    private static interface a
    {

        public abstract Message.Builder a();

        public abstract Object a(GeneratedMessage.Builder builder);

        public abstract Object a(GeneratedMessage.Builder builder, int i);

        public abstract Object a(GeneratedMessage generatedmessage);

        public abstract Object a(GeneratedMessage generatedmessage, int i);

        public abstract void a(GeneratedMessage.Builder builder, int i, Object obj);

        public abstract void a(GeneratedMessage.Builder builder, Object obj);

        public abstract void b(GeneratedMessage.Builder builder, Object obj);

        public abstract boolean b(GeneratedMessage.Builder builder);

        public abstract boolean b(GeneratedMessage generatedmessage);

        public abstract int c(GeneratedMessage.Builder builder);

        public abstract int c(GeneratedMessage generatedmessage);

        public abstract void d(GeneratedMessage.Builder builder);
    }

    private static final class b extends c
    {

        private final Method k;
        private final Method l;

        public Object a(GeneratedMessage.Builder builder)
        {
            ArrayList arraylist = new ArrayList();
            Object obj;
            for (builder = ((List)super.a(builder)).iterator(); builder.hasNext(); arraylist.add(GeneratedMessage.access$1400(l, obj, new Object[0])))
            {
                obj = builder.next();
            }

            return Collections.unmodifiableList(arraylist);
        }

        public Object a(GeneratedMessage.Builder builder, int i)
        {
            return GeneratedMessage.access$1400(l, super.a(builder, i), new Object[0]);
        }

        public Object a(GeneratedMessage generatedmessage)
        {
            ArrayList arraylist = new ArrayList();
            Object obj;
            for (generatedmessage = ((List)super.a(generatedmessage)).iterator(); generatedmessage.hasNext(); arraylist.add(GeneratedMessage.access$1400(l, obj, new Object[0])))
            {
                obj = generatedmessage.next();
            }

            return Collections.unmodifiableList(arraylist);
        }

        public Object a(GeneratedMessage generatedmessage, int i)
        {
            return GeneratedMessage.access$1400(l, super.a(generatedmessage, i), new Object[0]);
        }

        public void a(GeneratedMessage.Builder builder, int i, Object obj)
        {
            super.a(builder, i, GeneratedMessage.access$1400(k, null, new Object[] {
                obj
            }));
        }

        public void b(GeneratedMessage.Builder builder, Object obj)
        {
            super.b(builder, GeneratedMessage.access$1400(k, null, new Object[] {
                obj
            }));
        }

        b(Descriptors.FieldDescriptor fielddescriptor, String s, Class class1, Class class2)
        {
            super(fielddescriptor, s, class1, class2);
            k = GeneratedMessage.access$1300(a, "valueOf", new Class[] {
                com/google/protobuf/Descriptors$EnumValueDescriptor
            });
            l = GeneratedMessage.access$1300(a, "getValueDescriptor", new Class[0]);
        }
    }

    private static class c
        implements a
    {

        protected final Class a;
        protected final Method b;
        protected final Method c;
        protected final Method d;
        protected final Method e;
        protected final Method f;
        protected final Method g;
        protected final Method h;
        protected final Method i;
        protected final Method j;

        public Message.Builder a()
        {
            throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
        }

        public Object a(GeneratedMessage.Builder builder)
        {
            return GeneratedMessage.access$1400(c, builder, new Object[0]);
        }

        public Object a(GeneratedMessage.Builder builder, int k)
        {
            return GeneratedMessage.access$1400(e, builder, new Object[] {
                Integer.valueOf(k)
            });
        }

        public Object a(GeneratedMessage generatedmessage)
        {
            return GeneratedMessage.access$1400(b, generatedmessage, new Object[0]);
        }

        public Object a(GeneratedMessage generatedmessage, int k)
        {
            return GeneratedMessage.access$1400(d, generatedmessage, new Object[] {
                Integer.valueOf(k)
            });
        }

        public void a(GeneratedMessage.Builder builder, int k, Object obj)
        {
            GeneratedMessage.access$1400(f, builder, new Object[] {
                Integer.valueOf(k), obj
            });
        }

        public void a(GeneratedMessage.Builder builder, Object obj)
        {
            d(builder);
            for (obj = ((List)obj).iterator(); ((Iterator) (obj)).hasNext(); b(builder, ((Iterator) (obj)).next())) { }
        }

        public void b(GeneratedMessage.Builder builder, Object obj)
        {
            GeneratedMessage.access$1400(g, builder, new Object[] {
                obj
            });
        }

        public boolean b(GeneratedMessage.Builder builder)
        {
            throw new UnsupportedOperationException("hasField() called on a singular field.");
        }

        public boolean b(GeneratedMessage generatedmessage)
        {
            throw new UnsupportedOperationException("hasField() called on a singular field.");
        }

        public int c(GeneratedMessage.Builder builder)
        {
            return ((Integer)GeneratedMessage.access$1400(i, builder, new Object[0])).intValue();
        }

        public int c(GeneratedMessage generatedmessage)
        {
            return ((Integer)GeneratedMessage.access$1400(h, generatedmessage, new Object[0])).intValue();
        }

        public void d(GeneratedMessage.Builder builder)
        {
            GeneratedMessage.access$1400(j, builder, new Object[0]);
        }

        c(Descriptors.FieldDescriptor fielddescriptor, String s, Class class1, Class class2)
        {
            b = GeneratedMessage.access$1300(class1, (new StringBuilder()).append("get").append(s).append("List").toString(), new Class[0]);
            c = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("get").append(s).append("List").toString(), new Class[0]);
            d = GeneratedMessage.access$1300(class1, (new StringBuilder()).append("get").append(s).toString(), new Class[] {
                Integer.TYPE
            });
            e = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("get").append(s).toString(), new Class[] {
                Integer.TYPE
            });
            a = d.getReturnType();
            f = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("set").append(s).toString(), new Class[] {
                Integer.TYPE, a
            });
            g = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("add").append(s).toString(), new Class[] {
                a
            });
            h = GeneratedMessage.access$1300(class1, (new StringBuilder()).append("get").append(s).append("Count").toString(), new Class[0]);
            i = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("get").append(s).append("Count").toString(), new Class[0]);
            j = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("clear").append(s).toString(), new Class[0]);
        }
    }

    private static final class d extends c
    {

        private final Method k;

        private Object a(Object obj)
        {
            if (a.isInstance(obj))
            {
                return obj;
            } else
            {
                return ((Message.Builder)GeneratedMessage.access$1400(k, null, new Object[0])).mergeFrom((Message)obj).build();
            }
        }

        public Message.Builder a()
        {
            return (Message.Builder)GeneratedMessage.access$1400(k, null, new Object[0]);
        }

        public void a(GeneratedMessage.Builder builder, int i, Object obj)
        {
            super.a(builder, i, a(obj));
        }

        public void b(GeneratedMessage.Builder builder, Object obj)
        {
            super.b(builder, a(obj));
        }

        d(Descriptors.FieldDescriptor fielddescriptor, String s, Class class1, Class class2)
        {
            super(fielddescriptor, s, class1, class2);
            k = GeneratedMessage.access$1300(a, "newBuilder", new Class[0]);
        }
    }

    private static final class e extends f
    {

        private Method h;
        private Method i;

        public Object a(GeneratedMessage.Builder builder)
        {
            return GeneratedMessage.access$1400(i, super.a(builder), new Object[0]);
        }

        public Object a(GeneratedMessage generatedmessage)
        {
            return GeneratedMessage.access$1400(i, super.a(generatedmessage), new Object[0]);
        }

        public void a(GeneratedMessage.Builder builder, Object obj)
        {
            super.a(builder, GeneratedMessage.access$1400(h, null, new Object[] {
                obj
            }));
        }

        e(Descriptors.FieldDescriptor fielddescriptor, String s, Class class1, Class class2)
        {
            super(fielddescriptor, s, class1, class2);
            h = GeneratedMessage.access$1300(a, "valueOf", new Class[] {
                com/google/protobuf/Descriptors$EnumValueDescriptor
            });
            i = GeneratedMessage.access$1300(a, "getValueDescriptor", new Class[0]);
        }
    }

    private static class f
        implements a
    {

        protected final Class a;
        protected final Method b;
        protected final Method c;
        protected final Method d;
        protected final Method e;
        protected final Method f;
        protected final Method g;

        public Message.Builder a()
        {
            throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
        }

        public Object a(GeneratedMessage.Builder builder)
        {
            return GeneratedMessage.access$1400(c, builder, new Object[0]);
        }

        public Object a(GeneratedMessage.Builder builder, int i)
        {
            throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
        }

        public Object a(GeneratedMessage generatedmessage)
        {
            return GeneratedMessage.access$1400(b, generatedmessage, new Object[0]);
        }

        public Object a(GeneratedMessage generatedmessage, int i)
        {
            throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
        }

        public void a(GeneratedMessage.Builder builder, int i, Object obj)
        {
            throw new UnsupportedOperationException("setRepeatedField() called on a singular field.");
        }

        public void a(GeneratedMessage.Builder builder, Object obj)
        {
            GeneratedMessage.access$1400(d, builder, new Object[] {
                obj
            });
        }

        public void b(GeneratedMessage.Builder builder, Object obj)
        {
            throw new UnsupportedOperationException("addRepeatedField() called on a singular field.");
        }

        public boolean b(GeneratedMessage.Builder builder)
        {
            return ((Boolean)GeneratedMessage.access$1400(f, builder, new Object[0])).booleanValue();
        }

        public boolean b(GeneratedMessage generatedmessage)
        {
            return ((Boolean)GeneratedMessage.access$1400(e, generatedmessage, new Object[0])).booleanValue();
        }

        public int c(GeneratedMessage.Builder builder)
        {
            throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
        }

        public int c(GeneratedMessage generatedmessage)
        {
            throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
        }

        public void d(GeneratedMessage.Builder builder)
        {
            GeneratedMessage.access$1400(g, builder, new Object[0]);
        }

        f(Descriptors.FieldDescriptor fielddescriptor, String s, Class class1, Class class2)
        {
            b = GeneratedMessage.access$1300(class1, (new StringBuilder()).append("get").append(s).toString(), new Class[0]);
            c = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("get").append(s).toString(), new Class[0]);
            a = b.getReturnType();
            d = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("set").append(s).toString(), new Class[] {
                a
            });
            e = GeneratedMessage.access$1300(class1, (new StringBuilder()).append("has").append(s).toString(), new Class[0]);
            f = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("has").append(s).toString(), new Class[0]);
            g = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("clear").append(s).toString(), new Class[0]);
        }
    }

    private static final class g extends f
    {

        private final Method h;

        private Object a(Object obj)
        {
            if (a.isInstance(obj))
            {
                return obj;
            } else
            {
                return ((Message.Builder)GeneratedMessage.access$1400(h, null, new Object[0])).mergeFrom((Message)obj).build();
            }
        }

        public Message.Builder a()
        {
            return (Message.Builder)GeneratedMessage.access$1400(h, null, new Object[0]);
        }

        public void a(GeneratedMessage.Builder builder, Object obj)
        {
            super.a(builder, a(obj));
        }

        g(Descriptors.FieldDescriptor fielddescriptor, String s, Class class1, Class class2)
        {
            super(fielddescriptor, s, class1, class2);
            h = GeneratedMessage.access$1300(a, "newBuilder", new Class[0]);
        }
    }


    private final  descriptor;
    private final a fields[];

    private a getField(g.a a1)
    {
        if (a1.iningType() != descriptor)
        {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }
        if (a1.ion())
        {
            throw new IllegalArgumentException("This type does not have extensions.");
        } else
        {
            return fields[a1.()];
        }
    }



    public g.a(g.a a1, String as[], Class class1, Class class2)
    {
        descriptor = a1;
        fields = new a[a1.a().size()];
        int i = 0;
        while (i < fields.length) 
        {
            g.a a2 = (fields)a1.fields().get(i);
            if (a2.ed())
            {
                if (a2.ype() == .MESSAGE)
                {
                    fields[i] = new d(a2, as[i], class1, class2);
                } else
                if (a2.ype() == .ENUM)
                {
                    fields[i] = new b(a2, as[i], class1, class2);
                } else
                {
                    fields[i] = new c(a2, as[i], class1, class2);
                }
            } else
            if (a2.ype() == .MESSAGE)
            {
                fields[i] = new g(a2, as[i], class1, class2);
            } else
            if (a2.ype() == .ENUM)
            {
                fields[i] = new e(a2, as[i], class1, class2);
            } else
            {
                fields[i] = new f(a2, as[i], class1, class2);
            }
            i++;
        }
    }
}
