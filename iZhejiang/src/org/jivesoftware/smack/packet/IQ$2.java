// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


// Referenced classes of package org.jivesoftware.smack.packet:
//            IQ

class nit> extends IQ
{

    private final IQ val$request;

    public String getChildElementXML()
    {
        return val$request.getChildElementXML();
    }

    ()
    {
        val$request = iq;
        super();
    }
}
