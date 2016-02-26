.class Lcom/baidu/bdgame/sdk/obf/la$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/la;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/la$a$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "log.txt"

.field private static final e:Ljava/lang/String; = "com.baidu.plaformsdk"

.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:J = 0xa00000L


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la$a;->c:Ljava/text/SimpleDateFormat;

    .line 76
    return-void
.end method

.method static synthetic a(Ljava/text/SimpleDateFormat;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 63
    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/la$a;->b(Ljava/text/SimpleDateFormat;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/la$a;)Ljava/text/SimpleDateFormat;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la$a;->c:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/la$a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/la$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 155
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 159
    :cond_12
    const/4 v2, 0x0

    .line 161
    :try_start_13
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "log.txt"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {v3, v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_25} :catch_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_25} :catch_49
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_25} :catch_58
    .catchall {:try_start_13 .. :try_end_25} :catchall_67

    .line 162
    :try_start_25
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2e} :catch_7c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_2e} :catch_79
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_76
    .catchall {:try_start_25 .. :try_end_2e} :catchall_73

    .line 170
    if-eqz v1, :cond_33

    .line 172
    :try_start_30
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    .line 178
    :cond_33
    :goto_33
    return-void

    .line 173
    :catch_34
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 163
    :catch_39
    move-exception v0

    move-object v1, v2

    .line 164
    :goto_3b
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_73

    .line 170
    if-eqz v1, :cond_33

    .line 172
    :try_start_40
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_33

    .line 173
    :catch_44
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 165
    :catch_49
    move-exception v0

    .line 166
    :goto_4a
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_67

    .line 170
    if-eqz v2, :cond_33

    .line 172
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_33

    .line 173
    :catch_53
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 167
    :catch_58
    move-exception v0

    .line 168
    :goto_59
    :try_start_59
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_67

    .line 170
    if-eqz v2, :cond_33

    .line 172
    :try_start_5e
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_33

    .line 173
    :catch_62
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 170
    :catchall_67
    move-exception v0

    :goto_68
    if-eqz v2, :cond_6d

    .line 172
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 175
    :cond_6d
    :goto_6d
    throw v0

    .line 173
    :catch_6e
    move-exception v1

    .line 174
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6d

    .line 170
    :catchall_73
    move-exception v0

    move-object v2, v1

    goto :goto_68

    .line 167
    :catch_76
    move-exception v0

    move-object v2, v1

    goto :goto_59

    .line 165
    :catch_79
    move-exception v0

    move-object v2, v1

    goto :goto_4a

    .line 163
    :catch_7c
    move-exception v0

    goto :goto_3b
.end method

.method private static b(Ljava/text/SimpleDateFormat;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v2, 0xa

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Z
    .registers 1

    .prologue
    .line 63
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la$a;->d()Z

    move-result v0

    return v0
.end method

.method private static c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/lk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.baidu.plaformsdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d()Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 140
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_11

    .line 151
    :cond_10
    :goto_10
    return v0

    .line 144
    :cond_11
    new-instance v2, Ljava/io/File;

    const-string v3, "log.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 148
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0xa00000

    cmp-long v1, v4, v6

    if-ltz v1, :cond_10

    .line 151
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_10
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BDPlatformSDK Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la$a;->a:Landroid/os/HandlerThread;

    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la$a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/la$a$1;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/la$a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/la$a$1;-><init>(Lcom/baidu/bdgame/sdk/obf/la$a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la$a;->b:Landroid/os/Handler;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 100
    monitor-exit p0

    return-void

    .line 79
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/lk;->a()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_2a

    move-result v0

    if-nez v0, :cond_9

    .line 123
    :goto_7
    monitor-exit p0

    return-void

    .line 113
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la$a;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 116
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/la$a$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/la$a$a;-><init>(Lcom/baidu/bdgame/sdk/obf/la$1;)V

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/bdgame/sdk/obf/la$a$a;->a:J

    .line 118
    iput-object p1, v1, Lcom/baidu/bdgame/sdk/obf/la$a$a;->b:Ljava/lang/String;

    .line 119
    iput-object p2, v1, Lcom/baidu/bdgame/sdk/obf/la$a$a;->c:Ljava/lang/String;

    .line 120
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/la$a;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_2a

    goto :goto_7

    .line 109
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
