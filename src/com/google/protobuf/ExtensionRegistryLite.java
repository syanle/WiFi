// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.protobuf:
//            MessageLite

public class ExtensionRegistryLite
{
    private static final class a
    {

        private final Object a;
        private final int b;

        public boolean equals(Object obj)
        {
            if (obj instanceof a)
            {
                if (a == ((a) (obj = (a)obj)).a && b == ((a) (obj)).b)
                {
                    return true;
                }
            }
            return false;
        }

        public int hashCode()
        {
            return System.identityHashCode(a) * 65535 + b;
        }

        a(Object obj, int i)
        {
            a = obj;
            b = i;
        }
    }


    private static final ExtensionRegistryLite EMPTY = new ExtensionRegistryLite(true);
    private final Map extensionsByNumber;

    ExtensionRegistryLite()
    {
        extensionsByNumber = new HashMap();
    }

    ExtensionRegistryLite(ExtensionRegistryLite extensionregistrylite)
    {
        if (extensionregistrylite == EMPTY)
        {
            extensionsByNumber = Collections.emptyMap();
            return;
        } else
        {
            extensionsByNumber = Collections.unmodifiableMap(extensionregistrylite.extensionsByNumber);
            return;
        }
    }

    private ExtensionRegistryLite(boolean flag)
    {
        extensionsByNumber = Collections.emptyMap();
    }

    public static ExtensionRegistryLite getEmptyRegistry()
    {
        return EMPTY;
    }

    public static ExtensionRegistryLite newInstance()
    {
        return new ExtensionRegistryLite();
    }

    public final void add(GeneratedMessageLite.GeneratedExtension generatedextension)
    {
        extensionsByNumber.put(new a(generatedextension.getContainingTypeDefaultInstance(), generatedextension.getNumber()), generatedextension);
    }

    public GeneratedMessageLite.GeneratedExtension findLiteExtensionByNumber(MessageLite messagelite, int i)
    {
        return (GeneratedMessageLite.GeneratedExtension)extensionsByNumber.get(new a(messagelite, i));
    }

    public ExtensionRegistryLite getUnmodifiable()
    {
        return new ExtensionRegistryLite(this);
    }

}
