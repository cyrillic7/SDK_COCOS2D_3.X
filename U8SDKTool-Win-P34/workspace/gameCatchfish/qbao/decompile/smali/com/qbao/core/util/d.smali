.class public final Lcom/qbao/core/util/d;
.super Ljava/lang/Object;
.source "DomManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DomManager"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/qbao/core/util/e;Z)Ljava/lang/String;
    .registers 5

    .prologue
    .line 23
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 24
    const-string v2, "utf-8"

    .line 26
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-static {v0, p1, v1, v2}, Lcom/qbao/core/util/d;->a(Ljava/util/List;ZLjava/io/OutputStream;Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1b} :catch_1c

    .line 33
    :goto_1b
    return-object v0

    .line 30
    :catch_1c
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 33
    const-string v0, ""

    goto :goto_1b
.end method

.method public static a(Ljava/util/List;ZLjava/io/OutputStream;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qbao/core/util/e;",
            ">;Z",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    if-eqz p0, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_7

    .line 43
    :cond_6
    :goto_6
    return-void

    .line 38
    :cond_7
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 39
    invoke-interface {v0, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 40
    if-eqz p1, :cond_18

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 41
    :cond_18
    invoke-static {v0, p0}, Lcom/qbao/core/util/d;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 42
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    goto :goto_6
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Lcom/qbao/core/util/e;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v2, v0

    move-object v0, v1

    .line 78
    :goto_7
    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 106
    :cond_a
    return-void

    .line 79
    :cond_b
    packed-switch v2, :pswitch_data_4e

    .line 104
    :cond_e
    :goto_e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_7

    .line 81
    :pswitch_13
    if-nez v0, :cond_37

    .line 82
    new-instance v0, Lcom/qbao/core/util/e;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/qbao/core/util/e;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 84
    const/4 v2, 0x0

    :goto_23
    if-lt v2, v3, :cond_29

    .line 87
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 85
    :cond_29
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/qbao/core/util/e;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 89
    :cond_37
    invoke-virtual {v0}, Lcom/qbao/core/util/e;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qbao/core/util/d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    move-object v0, v1

    .line 92
    goto :goto_e

    .line 94
    :pswitch_40
    if-eqz v0, :cond_e

    .line 95
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qbao/core/util/e;->setText(Ljava/lang/String;)V

    goto :goto_e

    .line 99
    :pswitch_4a
    if-eqz v0, :cond_a

    move-object v0, v1

    .line 101
    goto :goto_e

    .line 79
    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_13
        :pswitch_4a
        :pswitch_40
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Lcom/qbao/core/util/e;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 56
    return-void

    .line 46
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qbao/core/util/e;

    .line 47
    invoke-virtual {v0}, Lcom/qbao/core/util/e;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    invoke-virtual {v0}, Lcom/qbao/core/util/e;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 50
    invoke-virtual {v0}, Lcom/qbao/core/util/e;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    :goto_26
    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 52
    :cond_2a
    invoke-virtual {v0}, Lcom/qbao/core/util/e;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qbao/core/util/d;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    goto :goto_26
.end method

.method public static o(Ljava/lang/String;)Lcom/qbao/core/util/e;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 59
    const-string v0, "DomManager"

    invoke-static {v0, p0}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 72
    :goto_c
    return-object v1

    .line 61
    :cond_d
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 63
    :try_start_11
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-static {v0, v2}, Lcom/qbao/core/util/d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    .line 66
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qbao/core/util/e;
    :try_end_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_2e} :catch_37
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2e} :catch_32

    :goto_2e
    move-object v1, v0

    goto :goto_c

    :cond_30
    move-object v0, v1

    goto :goto_2e

    .line 69
    :catch_32
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 67
    :catch_37
    move-exception v0

    goto :goto_c
.end method
