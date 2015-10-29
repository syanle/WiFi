// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.nodes;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.CharsetEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Properties;
import java.util.Set;
import org.jsoup.helper.StringUtil;
import org.jsoup.parser.Parser;

public class Entities
{
    public static final class EscapeMode extends Enum
    {

        private static final EscapeMode $VALUES[];
        public static final EscapeMode base;
        public static final EscapeMode extended;
        public static final EscapeMode xhtml;
        private Map map;

        public static EscapeMode valueOf(String s)
        {
            return (EscapeMode)Enum.valueOf(org/jsoup/nodes/Entities$EscapeMode, s);
        }

        public static EscapeMode[] values()
        {
            return (EscapeMode[])$VALUES.clone();
        }

        public Map getMap()
        {
            return map;
        }

        static 
        {
            xhtml = new EscapeMode("xhtml", 0, Entities.xhtmlByVal);
            base = new EscapeMode("base", 1, Entities.baseByVal);
            extended = new EscapeMode("extended", 2, Entities.fullByVal);
            $VALUES = (new EscapeMode[] {
                xhtml, base, extended
            });
        }

        private EscapeMode(String s, int i, Map map1)
        {
            super(s, i);
            map = map1;
        }
    }


    private static final Map base;
    private static final Map baseByVal;
    private static final Map full;
    private static final Map fullByVal;
    private static final Object xhtmlArray[][];
    private static final Map xhtmlByVal;

    private Entities()
    {
    }

    static String escape(String s, Document.OutputSettings outputsettings)
    {
        StringBuilder stringbuilder = new StringBuilder(s.length() * 2);
        escape(stringbuilder, s, outputsettings, false, false, false);
        return stringbuilder.toString();
    }

    static void escape(StringBuilder stringbuilder, String s, Document.OutputSettings outputsettings, boolean flag, boolean flag1, boolean flag2)
    {
        EscapeMode escapemode;
        Map map;
        boolean flag3;
        boolean flag4;
        int i;
        int j;
        flag4 = false;
        flag3 = false;
        escapemode = outputsettings.escapeMode();
        outputsettings = outputsettings.encoder();
        map = escapemode.getMap();
        j = s.length();
        i = 0;
_L7:
        if (i >= j) goto _L2; else goto _L1
_L1:
        boolean flag5;
        boolean flag6;
        int k;
        k = s.codePointAt(i);
        flag5 = flag4;
        flag6 = flag3;
        if (!flag1) goto _L4; else goto _L3
_L3:
        if (!StringUtil.isWhitespace(k)) goto _L6; else goto _L5
_L5:
label0:
        {
            if (flag2)
            {
                flag5 = flag4;
                flag6 = flag3;
                if (!flag3)
                {
                    break label0;
                }
            }
            if (flag4)
            {
                flag6 = flag3;
                flag5 = flag4;
            } else
            {
                stringbuilder.append(' ');
                flag5 = true;
                flag6 = flag3;
            }
        }
_L8:
        i += Character.charCount(k);
        flag4 = flag5;
        flag3 = flag6;
          goto _L7
_L6:
        flag5 = false;
        flag6 = true;
_L4:
        if (k < 0x10000)
        {
            char c = (char)k;
            switch (c)
            {
            default:
                if (outputsettings.canEncode(c))
                {
                    stringbuilder.append(c);
                } else
                if (map.containsKey(Character.valueOf(c)))
                {
                    stringbuilder.append('&').append((String)map.get(Character.valueOf(c))).append(';');
                } else
                {
                    stringbuilder.append("&#x").append(Integer.toHexString(k)).append(';');
                }
                break;

            case 38: // '&'
                stringbuilder.append("&amp;");
                break;

            case 160: 
                if (escapemode != EscapeMode.xhtml)
                {
                    stringbuilder.append("&nbsp;");
                } else
                {
                    stringbuilder.append(c);
                }
                break;

            case 60: // '<'
                if (!flag)
                {
                    stringbuilder.append("&lt;");
                } else
                {
                    stringbuilder.append(c);
                }
                break;

            case 62: // '>'
                if (!flag)
                {
                    stringbuilder.append("&gt;");
                } else
                {
                    stringbuilder.append(c);
                }
                break;

            case 34: // '"'
                if (flag)
                {
                    stringbuilder.append("&quot;");
                } else
                {
                    stringbuilder.append(c);
                }
                break;
            }
        } else
        {
            String s1 = new String(Character.toChars(k));
            if (outputsettings.canEncode(s1))
            {
                stringbuilder.append(s1);
            } else
            {
                stringbuilder.append("&#x").append(Integer.toHexString(k)).append(';');
            }
        }
        if (true) goto _L8; else goto _L2
_L2:
    }

    public static Character getCharacterByName(String s)
    {
        return (Character)full.get(s);
    }

    public static boolean isBaseNamedEntity(String s)
    {
        return base.containsKey(s);
    }

    public static boolean isNamedEntity(String s)
    {
        return full.containsKey(s);
    }

    private static Map loadEntities(String s)
    {
        Object obj1 = new Properties();
        Object obj = new HashMap();
        char c;
        try
        {
            InputStream inputstream = org/jsoup/nodes/Entities.getResourceAsStream(s);
            ((Properties) (obj1)).load(inputstream);
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new MissingResourceException((new StringBuilder()).append("Error loading entities resource: ").append(((IOException) (obj)).getMessage()).toString(), "Entities", s);
        }
        for (s = ((Properties) (obj1)).entrySet().iterator(); s.hasNext(); ((Map) (obj)).put((String)((java.util.Map.Entry) (obj1)).getKey(), Character.valueOf(c)))
        {
            obj1 = (java.util.Map.Entry)s.next();
            c = (char)Integer.parseInt((String)((java.util.Map.Entry) (obj1)).getValue(), 16);
        }

        return ((Map) (obj));
    }

    private static Map toCharacterKey(Map map)
    {
        HashMap hashmap = new HashMap();
        map = map.entrySet().iterator();
        do
        {
            if (!map.hasNext())
            {
                break;
            }
            Object obj = (java.util.Map.Entry)map.next();
            Character character = (Character)((java.util.Map.Entry) (obj)).getValue();
            obj = (String)((java.util.Map.Entry) (obj)).getKey();
            if (hashmap.containsKey(character))
            {
                if (((String) (obj)).toLowerCase().equals(obj))
                {
                    hashmap.put(character, obj);
                }
            } else
            {
                hashmap.put(character, obj);
            }
        } while (true);
        return hashmap;
    }

    static String unescape(String s)
    {
        return unescape(s, false);
    }

    static String unescape(String s, boolean flag)
    {
        return Parser.unescapeEntities(s, flag);
    }

    static 
    {
        Object aobj[] = {
            "quot", Integer.valueOf(34)
        };
        Object aobj1[] = {
            "lt", Integer.valueOf(60)
        };
        Object aobj3[] = {
            "gt", Integer.valueOf(62)
        };
        xhtmlArray = (new Object[][] {
            aobj, new Object[] {
                "amp", Integer.valueOf(38)
            }, aobj1, aobj3
        });
        xhtmlByVal = new HashMap();
        base = loadEntities("entities-base.properties");
        baseByVal = toCharacterKey(base);
        full = loadEntities("entities-full.properties");
        fullByVal = toCharacterKey(full);
        aobj = ((Object []) (xhtmlArray));
        int j = aobj.length;
        for (int i = 0; i < j; i++)
        {
            Object aobj2[] = aobj[i];
            char c = (char)((Integer)aobj2[1]).intValue();
            xhtmlByVal.put(Character.valueOf(c), (String)aobj2[0]);
        }

    }



}
