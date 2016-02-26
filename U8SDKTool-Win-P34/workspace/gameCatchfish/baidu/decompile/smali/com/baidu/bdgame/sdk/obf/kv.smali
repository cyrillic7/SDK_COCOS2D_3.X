.class public Lcom/baidu/bdgame/sdk/obf/kv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 20
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/lk;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 69
    :cond_7
    :goto_7
    return-void

    .line 23
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/lk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "bdp_debug.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    :try_start_2a
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 34
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 35
    const-string v0, "UTF-8"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 36
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 37
    :goto_3c
    if-eq v0, v5, :cond_ed

    .line 38
    packed-switch v0, :pswitch_data_f8

    .line 57
    :goto_41
    :pswitch_41
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_3c

    .line 42
    :pswitch_46
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PASSPORT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 43
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    .line 44
    const-class v0, Lcom/baidu/bdgame/sdk/obf/kv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PASSPORT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_76
    :goto_76
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/bdgame/sdk/obf/ju;->a:Z
    :try_end_79
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_79} :catch_7a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_79} :catch_b0
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_79} :catch_e7
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_79} :catch_f2

    goto :goto_41

    .line 60
    :catch_7a
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 45
    :cond_7f
    :try_start_7f
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PAY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 46
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    .line 47
    const-class v0, Lcom/baidu/bdgame/sdk/obf/kv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PAY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_af
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_af} :catch_7a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7f .. :try_end_af} :catch_b0
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_af} :catch_e7
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_af} :catch_f2

    goto :goto_76

    .line 62
    :catch_b0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_7

    .line 48
    :cond_b6
    :try_start_b6
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TASK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 49
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->m:Ljava/lang/String;

    .line 50
    const-class v0, Lcom/baidu/bdgame/sdk/obf/kv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TASK:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/bdgame/sdk/obf/ju;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e6
    .catch Ljava/io/FileNotFoundException; {:try_start_b6 .. :try_end_e6} :catch_7a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b6 .. :try_end_e6} :catch_b0
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_e6} :catch_e7
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_e6} :catch_f2

    goto :goto_76

    .line 64
    :catch_e7
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 59
    :cond_ed
    :try_start_ed
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f0
    .catch Ljava/io/FileNotFoundException; {:try_start_ed .. :try_end_f0} :catch_7a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ed .. :try_end_f0} :catch_b0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_e7
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f0} :catch_f2

    goto/16 :goto_7

    .line 66
    :catch_f2
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 38
    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_41
        :pswitch_41
        :pswitch_46
    .end packed-switch
.end method
