.class public Lcom/pubinfo/freewifialliance/parser/GeneralConfigParser;
.super Ljava/lang/Object;
.source "GeneralConfigParser.java"


# static fields
.field private static final GENERAL_CONFIG_FILENAME:Ljava/lang/String; = "default_config.xml"

.field private static bInternalConfigHaveLoaded:Z = false

.field public static iWiFi_Client_Build_Version:I = 0x0

.field private static final iWiFi_Defualt_Config_File:Ljava/lang/String; = "default_config.xml"

.field private static final iWiFi_Private_Path:Ljava/lang/String; = "iWiFi"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput v0, Lcom/pubinfo/freewifialliance/parser/GeneralConfigParser;->iWiFi_Client_Build_Version:I

    .line 27
    sput-boolean v0, Lcom/pubinfo/freewifialliance/parser/GeneralConfigParser;->bInternalConfigHaveLoaded:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parsingGeneralConfig(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v7, 0x0

    .line 36
    .local v7, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "SD_PATH":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "iWiFi"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "default_config.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 40
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 41
    .local v3, "fileStream":Ljava/io/FileInputStream;
    move-object v7, v3

    .line 42
    const/4 v9, 0x0

    sput-boolean v9, Lcom/pubinfo/freewifialliance/parser/GeneralConfigParser;->bInternalConfigHaveLoaded:Z

    .line 51
    .end local v3    # "fileStream":Ljava/io/FileInputStream;
    :goto_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 52
    .local v5, "saxFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    .line 53
    .local v6, "saxParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 55
    .local v4, "reader":Lorg/xml/sax/XMLReader;
    new-instance v8, Lcom/pubinfo/freewifialliance/parser/XMLDefaultHandler;

    invoke-direct {v8}, Lcom/pubinfo/freewifialliance/parser/XMLDefaultHandler;-><init>()V

    .line 56
    .local v8, "xmlDefaultHandler":Lcom/pubinfo/freewifialliance/parser/XMLDefaultHandler;
    invoke-interface {v4, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 58
    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v4, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 59
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 71
    .end local v0    # "SD_PATH":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "reader":Lorg/xml/sax/XMLReader;
    .end local v5    # "saxFactory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v6    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xmlDefaultHandler":Lcom/pubinfo/freewifialliance/parser/XMLDefaultHandler;
    :cond_0
    :goto_1
    return-void

    .line 44
    .restart local v0    # "SD_PATH":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    sget-boolean v9, Lcom/pubinfo/freewifialliance/parser/GeneralConfigParser;->bInternalConfigHaveLoaded:Z

    if-nez v9, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "default_config.xml"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 49
    const/4 v9, 0x1

    sput-boolean v9, Lcom/pubinfo/freewifialliance/parser/GeneralConfigParser;->bInternalConfigHaveLoaded:Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 61
    .end local v0    # "SD_PATH":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 64
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 67
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
