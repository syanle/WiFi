// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.PrintStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jivesoftware.smack.Connection;
import org.jivesoftware.smack.packet.Authentication;
import org.jivesoftware.smack.packet.Bind;
import org.jivesoftware.smack.packet.DefaultPacketExtension;
import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.Message;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.packet.PacketExtension;
import org.jivesoftware.smack.packet.Presence;
import org.jivesoftware.smack.packet.Registration;
import org.jivesoftware.smack.packet.RosterPacket;
import org.jivesoftware.smack.packet.StreamError;
import org.jivesoftware.smack.packet.XMPPError;
import org.jivesoftware.smack.provider.IQProvider;
import org.jivesoftware.smack.provider.PacketExtensionProvider;
import org.jivesoftware.smack.provider.ProviderManager;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

// Referenced classes of package org.jivesoftware.smack.util:
//            StringUtils

public class PacketParserUtils
{

    private static final String PROPERTIES_NAMESPACE = "http://www.jivesoftware.com/xmlns/xmpp/properties";

    public PacketParserUtils()
    {
    }

    private static Object decode(Class class1, String s)
        throws Exception
    {
        if (class1.getName().equals("java.lang.String"))
        {
            return s;
        }
        if (class1.getName().equals("boolean"))
        {
            return Boolean.valueOf(s);
        }
        if (class1.getName().equals("int"))
        {
            return Integer.valueOf(s);
        }
        if (class1.getName().equals("long"))
        {
            return Long.valueOf(s);
        }
        if (class1.getName().equals("float"))
        {
            return Float.valueOf(s);
        }
        if (class1.getName().equals("double"))
        {
            return Double.valueOf(s);
        }
        if (class1.getName().equals("java.lang.Class"))
        {
            return Class.forName(s);
        } else
        {
            return null;
        }
    }

    private static String getLanguageAttribute(XmlPullParser xmlpullparser)
    {
        int i = 0;
        do
        {
            if (i >= xmlpullparser.getAttributeCount())
            {
                return null;
            }
            String s = xmlpullparser.getAttributeName(i);
            if ("xml:lang".equals(s) || "lang".equals(s) && "xml".equals(xmlpullparser.getAttributePrefix(i)))
            {
                return xmlpullparser.getAttributeValue(i);
            }
            i++;
        } while (true);
    }

    private static Authentication parseAuthentication(XmlPullParser xmlpullparser)
        throws Exception
    {
        Authentication authentication = new Authentication();
        boolean flag = false;
        do
        {
            if (flag)
            {
                return authentication;
            }
            int i = xmlpullparser.next();
            if (i == 2)
            {
                if (xmlpullparser.getName().equals("username"))
                {
                    authentication.setUsername(xmlpullparser.nextText());
                } else
                if (xmlpullparser.getName().equals("password"))
                {
                    authentication.setPassword(xmlpullparser.nextText());
                } else
                if (xmlpullparser.getName().equals("digest"))
                {
                    authentication.setDigest(xmlpullparser.nextText());
                } else
                if (xmlpullparser.getName().equals("resource"))
                {
                    authentication.setResource(xmlpullparser.nextText());
                }
            } else
            if (i == 3 && xmlpullparser.getName().equals("query"))
            {
                flag = true;
            }
        } while (true);
    }

    public static Collection parseCompressionMethods(XmlPullParser xmlpullparser)
        throws IOException, XmlPullParserException
    {
        ArrayList arraylist = new ArrayList();
        boolean flag = false;
        do
        {
            if (flag)
            {
                return arraylist;
            }
            int i = xmlpullparser.next();
            if (i == 2)
            {
                if (xmlpullparser.getName().equals("method"))
                {
                    arraylist.add(xmlpullparser.nextText());
                }
            } else
            if (i == 3 && xmlpullparser.getName().equals("compression"))
            {
                flag = true;
            }
        } while (true);
    }

    private static String parseContent(XmlPullParser xmlpullparser)
        throws XmlPullParserException, IOException
    {
        String s = "";
        int i = xmlpullparser.getDepth();
        do
        {
            if (xmlpullparser.next() == 3 && xmlpullparser.getDepth() == i)
            {
                return s;
            }
            s = (new StringBuilder(String.valueOf(s))).append(xmlpullparser.getText()).toString();
        } while (true);
    }

    public static XMPPError parseError(XmlPullParser xmlpullparser)
        throws Exception
    {
        String s;
        String s1;
        String s2;
        Object obj;
        ArrayList arraylist;
        int i;
        s = "-1";
        s1 = null;
        s2 = null;
        obj = null;
        arraylist = new ArrayList();
        i = 0;
_L3:
        if (i < xmlpullparser.getAttributeCount()) goto _L2; else goto _L1
_L1:
        i = 0;
_L4:
        if (i != 0)
        {
            Object obj1 = org.jivesoftware.smack.packet.XMPPError.Type.CANCEL;
            xmlpullparser = ((XmlPullParser) (obj1));
            String s3;
            int j;
            if (s1 != null)
            {
                try
                {
                    xmlpullparser = org.jivesoftware.smack.packet.XMPPError.Type.valueOf(s1.toUpperCase());
                }
                // Misplaced declaration of an exception variable
                catch (XmlPullParser xmlpullparser)
                {
                    xmlpullparser.printStackTrace();
                    xmlpullparser = ((XmlPullParser) (obj1));
                }
            }
            return new XMPPError(Integer.parseInt(s), xmlpullparser, ((String) (obj)), s2, arraylist);
        }
        break MISSING_BLOCK_LABEL_142;
_L2:
        if (xmlpullparser.getAttributeName(i).equals("code"))
        {
            s = xmlpullparser.getAttributeValue("", "code");
        }
        if (xmlpullparser.getAttributeName(i).equals("type"))
        {
            s1 = xmlpullparser.getAttributeValue("", "type");
        }
        i++;
          goto _L3
        j = xmlpullparser.next();
        if (j == 2)
        {
            if (xmlpullparser.getName().equals("text"))
            {
                s2 = xmlpullparser.nextText();
            } else
            {
                obj1 = xmlpullparser.getName();
                s3 = xmlpullparser.getNamespace();
                if ("urn:ietf:params:xml:ns:xmpp-stanzas".equals(s3))
                {
                    obj = obj1;
                } else
                {
                    arraylist.add(parsePacketExtension(((String) (obj1)), s3, xmlpullparser));
                }
            }
        } else
        if (j == 3 && xmlpullparser.getName().equals("error"))
        {
            i = 1;
        }
          goto _L4
    }

    public static IQ parseIQ(XmlPullParser xmlpullparser, Connection connection)
        throws Exception
    {
        XMPPError xmpperror;
        String s;
        String s1;
        String s2;
        org.jivesoftware.smack.packet.IQ.Type type;
label0:
        {
            Object obj = null;
            s = xmlpullparser.getAttributeValue("", "id");
            s1 = xmlpullparser.getAttributeValue("", "to");
            s2 = xmlpullparser.getAttributeValue("", "from");
            type = org.jivesoftware.smack.packet.IQ.Type.fromString(xmlpullparser.getAttributeValue("", "type"));
            xmpperror = null;
            boolean flag = false;
            do
            {
                if (flag)
                {
                    xmlpullparser = ((XmlPullParser) (obj));
                    if (obj != null)
                    {
                        break label0;
                    }
                    if (org.jivesoftware.smack.packet.IQ.Type.GET == type || org.jivesoftware.smack.packet.IQ.Type.SET == type)
                    {
                        xmlpullparser = new IQ() {

                            public String getChildElementXML()
                            {
                                return null;
                            }

                        };
                        xmlpullparser.setPacketID(s);
                        xmlpullparser.setTo(s2);
                        xmlpullparser.setFrom(s1);
                        xmlpullparser.setType(org.jivesoftware.smack.packet.IQ.Type.ERROR);
                        xmlpullparser.setError(new XMPPError(org.jivesoftware.smack.packet.XMPPError.Condition.feature_not_implemented));
                        connection.sendPacket(xmlpullparser);
                        return null;
                    }
                    break;
                }
                int i = xmlpullparser.next();
                if (i == 2)
                {
                    String s3 = xmlpullparser.getName();
                    Object obj1 = xmlpullparser.getNamespace();
                    if (s3.equals("error"))
                    {
                        xmpperror = parseError(xmlpullparser);
                    } else
                    if (s3.equals("query") && ((String) (obj1)).equals("jabber:iq:auth"))
                    {
                        obj = parseAuthentication(xmlpullparser);
                    } else
                    if (s3.equals("query") && ((String) (obj1)).equals("jabber:iq:roster"))
                    {
                        obj = parseRoster(xmlpullparser);
                    } else
                    if (s3.equals("query") && ((String) (obj1)).equals("jabber:iq:register"))
                    {
                        obj = parseRegistration(xmlpullparser);
                    } else
                    if (s3.equals("bind") && ((String) (obj1)).equals("urn:ietf:params:xml:ns:xmpp-bind"))
                    {
                        obj = parseResourceBinding(xmlpullparser);
                    } else
                    {
                        obj1 = ProviderManager.getInstance().getIQProvider(s3, ((String) (obj1)));
                        if (obj1 != null)
                        {
                            if (obj1 instanceof IQProvider)
                            {
                                obj = ((IQProvider)obj1).parseIQ(xmlpullparser);
                            } else
                            if (obj1 instanceof Class)
                            {
                                obj = (IQ)parseWithIntrospection(s3, (Class)obj1, xmlpullparser);
                            }
                        }
                    }
                } else
                if (i == 3 && xmlpullparser.getName().equals("iq"))
                {
                    flag = true;
                }
            } while (true);
            xmlpullparser = new IQ() {

                public String getChildElementXML()
                {
                    return null;
                }

            };
        }
        xmlpullparser.setPacketID(s);
        xmlpullparser.setTo(s1);
        xmlpullparser.setFrom(s2);
        xmlpullparser.setType(type);
        xmlpullparser.setError(xmpperror);
        return xmlpullparser;
    }

    public static Collection parseMechanisms(XmlPullParser xmlpullparser)
        throws Exception
    {
        ArrayList arraylist = new ArrayList();
        boolean flag = false;
        do
        {
            if (flag)
            {
                return arraylist;
            }
            int i = xmlpullparser.next();
            if (i == 2)
            {
                if (xmlpullparser.getName().equals("mechanism"))
                {
                    arraylist.add(xmlpullparser.nextText());
                }
            } else
            if (i == 3 && xmlpullparser.getName().equals("mechanisms"))
            {
                flag = true;
            }
        } while (true);
    }

    public static Packet parseMessage(XmlPullParser xmlpullparser)
        throws Exception
    {
        String s;
        Object obj;
        String s2;
        Message message;
        boolean flag;
        message = new Message();
        obj = xmlpullparser.getAttributeValue("", "id");
        s = ((String) (obj));
        if (obj == null)
        {
            s = "ID_NOT_AVAILABLE";
        }
        message.setPacketID(s);
        message.setTo(xmlpullparser.getAttributeValue("", "to"));
        message.setFrom(xmlpullparser.getAttributeValue("", "from"));
        message.setType(org.jivesoftware.smack.packet.Message.Type.fromString(xmlpullparser.getAttributeValue("", "type")));
        s = getLanguageAttribute(xmlpullparser);
        if (s != null && !"".equals(s.trim()))
        {
            message.setLanguage(s);
        } else
        {
            s = Packet.getDefaultLanguage();
        }
        flag = false;
        s2 = null;
        obj = null;
_L5:
        if (!flag) goto _L2; else goto _L1
_L1:
        message.setThread(s2);
        if (obj == null) goto _L4; else goto _L3
_L3:
        xmlpullparser = ((Map) (obj)).keySet().iterator();
_L6:
        if (xmlpullparser.hasNext())
        {
            break MISSING_BLOCK_LABEL_429;
        }
_L4:
        return message;
_L2:
        int i = xmlpullparser.next();
        if (i == 2)
        {
            String s3 = xmlpullparser.getName();
            String s4 = xmlpullparser.getNamespace();
            if (s3.equals("subject"))
            {
                s4 = getLanguageAttribute(xmlpullparser);
                s3 = s4;
                if (s4 == null)
                {
                    s3 = s;
                }
                s4 = parseContent(xmlpullparser);
                if (message.getSubject(s3) == null)
                {
                    message.addSubject(s3, s4);
                }
            } else
            if (s3.equals("body"))
            {
                s4 = getLanguageAttribute(xmlpullparser);
                s3 = s4;
                if (s4 == null)
                {
                    s3 = s;
                }
                s4 = parseContent(xmlpullparser);
                if (message.getBody(s3) == null)
                {
                    message.addBody(s3, s4);
                }
            } else
            if (s3.equals("thread"))
            {
                if (s2 == null)
                {
                    s2 = xmlpullparser.nextText();
                }
            } else
            if (s3.equals("error"))
            {
                message.setError(parseError(xmlpullparser));
            } else
            if (s3.equals("properties") && s4.equals("http://www.jivesoftware.com/xmlns/xmpp/properties"))
            {
                obj = parseProperties(xmlpullparser);
            } else
            {
                message.addExtension(parsePacketExtension(s3, s4, xmlpullparser));
            }
        } else
        if (i == 3 && xmlpullparser.getName().equals("message"))
        {
            flag = true;
        }
          goto _L5
        String s1 = (String)xmlpullparser.next();
        message.setProperty(s1, ((Map) (obj)).get(s1));
          goto _L6
    }

    public static PacketExtension parsePacketExtension(String s, String s1, XmlPullParser xmlpullparser)
        throws Exception
    {
        Object obj = ProviderManager.getInstance().getExtensionProvider(s, s1);
        if (obj != null)
        {
            if (obj instanceof PacketExtensionProvider)
            {
                return ((PacketExtensionProvider)obj).parseExtension(xmlpullparser);
            }
            if (obj instanceof Class)
            {
                return (PacketExtension)parseWithIntrospection(s, (Class)obj, xmlpullparser);
            }
        }
        s1 = new DefaultPacketExtension(s, s1);
        boolean flag = false;
        do
        {
            if (flag)
            {
                return s1;
            }
            int i = xmlpullparser.next();
            if (i == 2)
            {
                String s2 = xmlpullparser.getName();
                if (xmlpullparser.isEmptyElementTag())
                {
                    s1.setValue(s2, "");
                } else
                if (xmlpullparser.next() == 4)
                {
                    s1.setValue(s2, xmlpullparser.getText());
                }
            } else
            if (i == 3 && xmlpullparser.getName().equals(s))
            {
                flag = true;
            }
        } while (true);
    }

    public static Presence parsePresence(XmlPullParser xmlpullparser)
        throws Exception
    {
        Object obj2 = org.jivesoftware.smack.packet.Presence.Type.available;
        Object obj4 = xmlpullparser.getAttributeValue("", "type");
        Object obj = obj2;
        boolean flag;
        if (obj4 != null)
        {
            obj = obj2;
            if (!((String) (obj4)).equals(""))
            {
                try
                {
                    obj = org.jivesoftware.smack.packet.Presence.Type.valueOf(((String) (obj4)));
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    System.err.println((new StringBuilder("Found invalid presence type ")).append(((String) (obj4))).toString());
                    obj = obj2;
                }
            }
        }
        obj4 = new Presence(((org.jivesoftware.smack.packet.Presence.Type) (obj)));
        ((Presence) (obj4)).setTo(xmlpullparser.getAttributeValue("", "to"));
        ((Presence) (obj4)).setFrom(xmlpullparser.getAttributeValue("", "from"));
        obj = xmlpullparser.getAttributeValue("", "id");
        if (obj == null)
        {
            obj2 = "ID_NOT_AVAILABLE";
        } else
        {
            obj2 = obj;
        }
        ((Presence) (obj4)).setPacketID(((String) (obj2)));
        obj2 = getLanguageAttribute(xmlpullparser);
        if (obj2 != null && !"".equals(((String) (obj2)).trim()))
        {
            ((Presence) (obj4)).setLanguage(((String) (obj2)));
        }
        obj2 = obj;
        if (obj == null)
        {
            obj2 = "ID_NOT_AVAILABLE";
        }
        ((Presence) (obj4)).setPacketID(((String) (obj2)));
        flag = false;
        do
        {
            if (flag)
            {
                return ((Presence) (obj4));
            }
            int i = xmlpullparser.next();
            if (i == 2)
            {
                Object obj1 = xmlpullparser.getName();
                Object obj3 = xmlpullparser.getNamespace();
                if (((String) (obj1)).equals("status"))
                {
                    ((Presence) (obj4)).setStatus(xmlpullparser.nextText());
                } else
                if (((String) (obj1)).equals("priority"))
                {
                    try
                    {
                        ((Presence) (obj4)).setPriority(Integer.parseInt(xmlpullparser.nextText()));
                    }
                    // Misplaced declaration of an exception variable
                    catch (Object obj1) { }
                    // Misplaced declaration of an exception variable
                    catch (Object obj1)
                    {
                        ((Presence) (obj4)).setPriority(0);
                    }
                } else
                if (((String) (obj1)).equals("show"))
                {
                    obj1 = xmlpullparser.nextText();
                    try
                    {
                        ((Presence) (obj4)).setMode(org.jivesoftware.smack.packet.Presence.Mode.valueOf(((String) (obj1))));
                    }
                    // Misplaced declaration of an exception variable
                    catch (Object obj3)
                    {
                        System.err.println((new StringBuilder("Found invalid presence mode ")).append(((String) (obj1))).toString());
                    }
                } else
                if (((String) (obj1)).equals("error"))
                {
                    ((Presence) (obj4)).setError(parseError(xmlpullparser));
                } else
                if (((String) (obj1)).equals("properties") && ((String) (obj3)).equals("http://www.jivesoftware.com/xmlns/xmpp/properties"))
                {
                    obj1 = parseProperties(xmlpullparser);
                    obj3 = ((Map) (obj1)).keySet().iterator();
                    while (((Iterator) (obj3)).hasNext()) 
                    {
                        String s = (String)((Iterator) (obj3)).next();
                        ((Presence) (obj4)).setProperty(s, ((Map) (obj1)).get(s));
                    }
                } else
                {
                    ((Presence) (obj4)).addExtension(parsePacketExtension(((String) (obj1)), ((String) (obj3)), xmlpullparser));
                }
            } else
            if (i == 3 && xmlpullparser.getName().equals("presence"))
            {
                flag = true;
            }
        } while (true);
    }

    public static Map parseProperties(XmlPullParser xmlpullparser)
        throws Exception
    {
        HashMap hashmap = new HashMap();
        int i;
label0:
        do
        {
            do
            {
                i = xmlpullparser.next();
                if (i != 2 || !xmlpullparser.getName().equals("property"))
                {
                    continue label0;
                }
                i = 0;
                String s3 = null;
                String s2 = null;
                String s1 = null;
                Integer integer = null;
                while (i == 0) 
                {
                    int j = xmlpullparser.next();
                    if (j == 2)
                    {
                        String s = xmlpullparser.getName();
                        if (s.equals("name"))
                        {
                            s3 = xmlpullparser.nextText();
                        } else
                        if (s.equals("value"))
                        {
                            s2 = xmlpullparser.getAttributeValue("", "type");
                            s1 = xmlpullparser.nextText();
                        }
                    } else
                    if (j == 3 && xmlpullparser.getName().equals("property"))
                    {
                        Object obj;
                        if ("integer".equals(s2))
                        {
                            obj = Integer.valueOf(s1);
                        } else
                        if ("long".equals(s2))
                        {
                            obj = Long.valueOf(s1);
                        } else
                        if ("float".equals(s2))
                        {
                            obj = Float.valueOf(s1);
                        } else
                        if ("double".equals(s2))
                        {
                            obj = Double.valueOf(s1);
                        } else
                        if ("boolean".equals(s2))
                        {
                            obj = Boolean.valueOf(s1);
                        } else
                        if ("string".equals(s2))
                        {
                            obj = s1;
                        } else
                        {
                            obj = integer;
                            if ("java-object".equals(s2))
                            {
                                try
                                {
                                    obj = (new ObjectInputStream(new ByteArrayInputStream(StringUtils.decodeBase64(s1)))).readObject();
                                }
                                catch (Exception exception)
                                {
                                    exception.printStackTrace();
                                    exception = integer;
                                }
                            }
                        }
                        if (s3 != null && obj != null)
                        {
                            hashmap.put(s3, obj);
                        }
                        i = 1;
                        integer = ((Integer) (obj));
                    }
                }
            } while (true);
        } while (i != 3 || !xmlpullparser.getName().equals("properties"));
        return hashmap;
    }

    private static Registration parseRegistration(XmlPullParser xmlpullparser)
        throws Exception
    {
        Registration registration = new Registration();
        boolean flag = false;
        do
        {
            if (flag)
            {
                return registration;
            }
            int i = xmlpullparser.next();
            if (i == 2)
            {
                if (xmlpullparser.getNamespace().equals("jabber:iq:register"))
                {
                    String s = xmlpullparser.getName();
                    if (xmlpullparser.next() == 4)
                    {
                        String s1 = xmlpullparser.getText();
                        if (s.equals("instructions"))
                        {
                            registration.setInstructions(s1);
                        } else
                        {
                            registration.addAttribute(s, s1);
                        }
                    } else
                    if (s.equals("registered"))
                    {
                        registration.setRegistered(true);
                    } else
                    {
                        registration.addRequiredField(s);
                    }
                } else
                {
                    registration.addExtension(parsePacketExtension(xmlpullparser.getName(), xmlpullparser.getNamespace(), xmlpullparser));
                }
            } else
            if (i == 3 && xmlpullparser.getName().equals("query"))
            {
                flag = true;
            }
        } while (true);
    }

    private static Bind parseResourceBinding(XmlPullParser xmlpullparser)
        throws IOException, XmlPullParserException
    {
        Bind bind = new Bind();
        boolean flag = false;
        do
        {
            if (flag)
            {
                return bind;
            }
            int i = xmlpullparser.next();
            if (i == 2)
            {
                if (xmlpullparser.getName().equals("resource"))
                {
                    bind.setResource(xmlpullparser.nextText());
                } else
                if (xmlpullparser.getName().equals("jid"))
                {
                    bind.setJid(xmlpullparser.nextText());
                }
            } else
            if (i == 3 && xmlpullparser.getName().equals("bind"))
            {
                flag = true;
            }
        } while (true);
    }

    private static RosterPacket parseRoster(XmlPullParser xmlpullparser)
        throws Exception
    {
        RosterPacket rosterpacket = new RosterPacket();
        boolean flag = false;
        Object obj = null;
        do
        {
            if (flag)
            {
                return rosterpacket;
            }
            if (xmlpullparser.getEventType() == 2 && xmlpullparser.getName().equals("query"))
            {
                rosterpacket.setVersion(xmlpullparser.getAttributeValue(null, "ver"));
            }
            int i = xmlpullparser.next();
            if (i == 2)
            {
                Object obj1 = obj;
                if (xmlpullparser.getName().equals("item"))
                {
                    obj1 = new org.jivesoftware.smack.packet.RosterPacket.Item(xmlpullparser.getAttributeValue("", "jid"), xmlpullparser.getAttributeValue("", "name"));
                    ((org.jivesoftware.smack.packet.RosterPacket.Item) (obj1)).setItemStatus(org.jivesoftware.smack.packet.RosterPacket.ItemStatus.fromString(xmlpullparser.getAttributeValue("", "ask")));
                    obj = xmlpullparser.getAttributeValue("", "subscription");
                    String s;
                    if (obj == null)
                    {
                        obj = "none";
                    }
                    ((org.jivesoftware.smack.packet.RosterPacket.Item) (obj1)).setItemType(org.jivesoftware.smack.packet.RosterPacket.ItemType.valueOf(((String) (obj))));
                }
                obj = obj1;
                if (xmlpullparser.getName().equals("group"))
                {
                    obj = obj1;
                    if (obj1 != null)
                    {
                        s = xmlpullparser.nextText();
                        obj = obj1;
                        if (s != null)
                        {
                            obj = obj1;
                            if (s.trim().length() > 0)
                            {
                                ((org.jivesoftware.smack.packet.RosterPacket.Item) (obj1)).addGroupName(s);
                                obj = obj1;
                            }
                        }
                    }
                }
            } else
            if (i == 3)
            {
                if (xmlpullparser.getName().equals("item"))
                {
                    rosterpacket.addRosterItem(((org.jivesoftware.smack.packet.RosterPacket.Item) (obj)));
                }
                if (xmlpullparser.getName().equals("query"))
                {
                    flag = true;
                }
            }
        } while (true);
    }

    public static org.jivesoftware.smack.sasl.SASLMechanism.Failure parseSASLFailure(XmlPullParser xmlpullparser)
        throws Exception
    {
        String s = null;
        boolean flag = false;
        do
        {
            if (flag)
            {
                return new org.jivesoftware.smack.sasl.SASLMechanism.Failure(s);
            }
            int i = xmlpullparser.next();
            if (i == 2)
            {
                if (!xmlpullparser.getName().equals("failure"))
                {
                    s = xmlpullparser.getName();
                }
            } else
            if (i == 3 && xmlpullparser.getName().equals("failure"))
            {
                flag = true;
            }
        } while (true);
    }

    public static StreamError parseStreamError(XmlPullParser xmlpullparser)
        throws IOException, XmlPullParserException
    {
        StreamError streamerror = null;
        boolean flag = false;
        do
        {
            if (flag)
            {
                return streamerror;
            }
            int i = xmlpullparser.next();
            if (i == 2)
            {
                streamerror = new StreamError(xmlpullparser.getName());
            } else
            if (i == 3 && xmlpullparser.getName().equals("error"))
            {
                flag = true;
            }
        } while (true);
    }

    public static Object parseWithIntrospection(String s, Class class1, XmlPullParser xmlpullparser)
        throws Exception
    {
        boolean flag = false;
        class1 = ((Class) (class1.newInstance()));
        do
        {
            if (flag)
            {
                return class1;
            }
            int i = xmlpullparser.next();
            if (i == 2)
            {
                String s1 = xmlpullparser.getName();
                Object obj = xmlpullparser.nextText();
                Class class2 = class1.getClass().getMethod((new StringBuilder("get")).append(Character.toUpperCase(s1.charAt(0))).append(s1.substring(1)).toString(), new Class[0]).getReturnType();
                obj = decode(class2, ((String) (obj)));
                class1.getClass().getMethod((new StringBuilder("set")).append(Character.toUpperCase(s1.charAt(0))).append(s1.substring(1)).toString(), new Class[] {
                    class2
                }).invoke(class1, new Object[] {
                    obj
                });
            } else
            if (i == 3 && xmlpullparser.getName().equals(s))
            {
                flag = true;
            }
        } while (true);
    }
}
