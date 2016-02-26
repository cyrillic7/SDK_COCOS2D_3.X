.class public Lcom/baidu/bdgame/sdk/obf/js;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "bdp_channel"

.field private static final b:Ljava/lang/String; = "META-INF/BDPChannelID.xml"


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 65
    const-string v1, ""

    .line 67
    const/16 v0, 0x100

    :try_start_4
    new-array v2, v0, [B

    .line 68
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 69
    new-instance v0, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "utf-8"

    invoke-direct {v0, v2, v4, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_21
    .catchall {:try_start_4 .. :try_end_12} :catchall_2e

    .line 70
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_3a
    .catchall {:try_start_12 .. :try_end_15} :catchall_2e

    move-result-object v0

    .line 74
    if-eqz p0, :cond_1b

    .line 75
    :try_start_18
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 81
    :cond_1b
    :goto_1b
    return-object v0

    .line 77
    :catch_1c
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 71
    :catch_21
    move-exception v0

    move-object v0, v1

    .line 74
    :goto_23
    if-eqz p0, :cond_1b

    .line 75
    :try_start_25
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_1b

    .line 77
    :catch_29
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 73
    :catchall_2e
    move-exception v0

    .line 74
    if-eqz p0, :cond_34

    .line 75
    :try_start_31
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35

    .line 79
    :cond_34
    :goto_34
    throw v0

    .line 77
    :catch_35
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34

    .line 71
    :catch_3a
    move-exception v1

    goto :goto_23
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 122
    :try_start_1
    const-string v1, "bdp_channel"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 123
    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 124
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 125
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_17} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_19

    .line 126
    const/4 v0, 0x1

    .line 132
    :goto_18
    return v0

    .line 129
    :catch_19
    move-exception v1

    goto :goto_18

    .line 128
    :catch_1b
    move-exception v1

    goto :goto_18

    .line 127
    :catch_1d
    move-exception v1

    goto :goto_18
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 136
    const-string v0, ""

    .line 137
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 139
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 141
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 142
    :goto_17
    const/4 v3, 0x1

    if-eq v1, v3, :cond_36

    .line 143
    packed-switch v1, :pswitch_data_4c

    .line 157
    :cond_1d
    :pswitch_1d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_17

    .line 147
    :pswitch_22
    const-string v1, "chl"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 148
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_31} :catch_37
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_31} :catch_3c

    move-result-object v1

    .line 149
    :try_start_32
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_35
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_32 .. :try_end_35} :catch_46
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_41

    move-result-object v0

    .line 165
    :cond_36
    :goto_36
    return-object v0

    .line 159
    :catch_37
    move-exception v1

    .line 160
    :goto_38
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_36

    .line 161
    :catch_3c
    move-exception v1

    .line 162
    :goto_3d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 161
    :catch_41
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3d

    .line 159
    :catch_46
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_38

    .line 143
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_22
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    :try_start_0
    const-string v0, "bdp_channel"

    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/js;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 61
    :goto_a
    return-object v0

    .line 57
    :catch_b
    move-exception v0

    .line 61
    const-string v0, ""

    goto :goto_a
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 87
    .line 90
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 92
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 94
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 97
    const-string v2, "META-INF/BDPChannelID.xml"

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 98
    if-eqz v2, :cond_6b

    .line 99
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_27} :catch_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_27} :catch_47
    .catchall {:try_start_1 .. :try_end_27} :catchall_57

    move-result-object v2

    .line 100
    :try_start_28
    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/js;->b(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_2b} :catch_67
    .catchall {:try_start_28 .. :try_end_2b} :catchall_65

    move-result-object v0

    .line 107
    :goto_2c
    if-eqz v2, :cond_31

    .line 109
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    .line 115
    :cond_31
    :goto_31
    return-object v0

    .line 110
    :catch_32
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 102
    :catch_37
    move-exception v1

    move-object v2, v0

    .line 103
    :goto_39
    :try_start_39
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_65

    .line 107
    if-eqz v2, :cond_31

    .line 109
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_31

    .line 110
    :catch_42
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 104
    :catch_47
    move-exception v1

    move-object v2, v0

    .line 105
    :goto_49
    :try_start_49
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_65

    .line 107
    if-eqz v2, :cond_31

    .line 109
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_31

    .line 110
    :catch_52
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 107
    :catchall_57
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5a
    if-eqz v2, :cond_5f

    .line 109
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    .line 112
    :cond_5f
    :goto_5f
    throw v0

    .line 110
    :catch_60
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5f

    .line 107
    :catchall_65
    move-exception v0

    goto :goto_5a

    .line 104
    :catch_67
    move-exception v1

    goto :goto_49

    .line 102
    :catch_69
    move-exception v1

    goto :goto_39

    :cond_6b
    move-object v2, v0

    goto :goto_2c
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 37
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/js;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/js;->c:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/js;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/js;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 40
    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/js;->c:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/js;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/js;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 43
    :cond_1f
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/js;->c:Ljava/lang/String;

    .line 47
    if-nez v0, :cond_6

    .line 48
    const-string v0, ""

    .line 50
    :cond_6
    return-object v0
.end method
