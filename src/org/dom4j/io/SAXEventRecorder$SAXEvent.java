// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.io;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package org.dom4j.io:
//            SAXEventRecorder

static class event
    implements Externalizable
{

    static final byte ATTRIBUTE_DECL = 17;
    static final byte CHARACTERS = 8;
    static final byte COMMENT = 15;
    static final byte ELEMENT_DECL = 16;
    static final byte END_CDATA = 14;
    static final byte END_DOCUMENT = 5;
    static final byte END_DTD = 10;
    static final byte END_ELEMENT = 7;
    static final byte END_ENTITY = 12;
    static final byte END_PREFIX_MAPPING = 3;
    static final byte EXTERNAL_ENTITY_DECL = 19;
    static final byte INTERNAL_ENTITY_DECL = 18;
    static final byte PROCESSING_INSTRUCTION = 1;
    static final byte START_CDATA = 13;
    static final byte START_DOCUMENT = 4;
    static final byte START_DTD = 9;
    static final byte START_ELEMENT = 6;
    static final byte START_ENTITY = 11;
    static final byte START_PREFIX_MAPPING = 2;
    public static final long serialVersionUID = 1L;
    protected byte event;
    protected List parms;

    void addParm(Object obj)
    {
        if (parms == null)
        {
            parms = new ArrayList(3);
        }
        parms.add(obj);
    }

    Object getParm(int i)
    {
        if (parms != null && i < parms.size())
        {
            return parms.get(i);
        } else
        {
            return null;
        }
    }

    public void readExternal(ObjectInput objectinput)
        throws ClassNotFoundException, IOException
    {
        event = objectinput.readByte();
        if (objectinput.readByte() != 2)
        {
            parms = (List)objectinput.readObject();
        }
    }

    public void writeExternal(ObjectOutput objectoutput)
        throws IOException
    {
        objectoutput.writeByte(event);
        if (parms == null)
        {
            objectoutput.writeByte(2);
            return;
        } else
        {
            objectoutput.writeByte(1);
            objectoutput.writeObject(parms);
            return;
        }
    }

    public ()
    {
    }

    (byte byte0)
    {
        event = byte0;
    }
}
