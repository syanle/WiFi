// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


public interface PacketExtension
{

    public abstract String getElementName();

    public abstract String getNamespace();

    public abstract String toXML();
}
