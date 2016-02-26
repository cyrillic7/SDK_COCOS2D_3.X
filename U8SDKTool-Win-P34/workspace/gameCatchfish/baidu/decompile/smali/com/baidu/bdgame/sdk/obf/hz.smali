.class public Lcom/baidu/bdgame/sdk/obf/hz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService; = null

.field private static final b:Ljava/lang/String; = "utf-8"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/lm;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/hz;->a:Ljava/util/concurrent/ExecutorService;

    .line 33
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/io/InputStream;Z)Lorg/json/JSONObject;
    .registers 7

    .prologue
    .line 65
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 67
    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 68
    :goto_9
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    .line 69
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 80
    :catch_15
    move-exception v0

    .line 87
    :goto_16
    const/4 v0, 0x0

    :goto_17
    return-object v0

    .line 71
    :cond_18
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 73
    if-eqz p2, :cond_2e

    .line 74
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kj;->a([B)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 78
    :goto_26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_17

    .line 81
    :catch_2c
    move-exception v0

    goto :goto_16

    .line 76
    :cond_2e
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_39} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_39} :catch_2c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_39} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3b

    move-object v1, v0

    goto :goto_26

    .line 85
    :catch_3b
    move-exception v0

    goto :goto_16

    .line 83
    :catch_3d
    move-exception v0

    goto :goto_16
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/kq;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 97
    invoke-static {p0, v0, p2}, Lcom/baidu/bdgame/sdk/obf/hz;->a(Landroid/content/Context;Ljava/io/InputStream;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 36
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/hz;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 37
    return-void
.end method

.method protected static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 114
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 115
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 116
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_16} :catch_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_16} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_18

    .line 117
    const/4 v0, 0x1

    .line 125
    :goto_17
    return v0

    .line 122
    :catch_18
    move-exception v1

    goto :goto_17

    .line 120
    :catch_1a
    move-exception v1

    goto :goto_17

    .line 118
    :catch_1c
    move-exception v1

    goto :goto_17
.end method

.method protected static c(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 103
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/hz;->a(Landroid/content/Context;Ljava/io/InputStream;Z)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_8} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    .line 109
    :goto_9
    return-object v0

    .line 105
    :catch_a
    move-exception v0

    .line 109
    :goto_b
    const/4 v0, 0x0

    goto :goto_9

    .line 104
    :catch_d
    move-exception v0

    goto :goto_b
.end method
