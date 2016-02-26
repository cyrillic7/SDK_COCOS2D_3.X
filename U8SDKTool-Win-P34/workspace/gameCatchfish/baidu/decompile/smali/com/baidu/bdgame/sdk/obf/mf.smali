.class public Lcom/baidu/bdgame/sdk/obf/mf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/mb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/mf$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x1388

.field private static final b:I = 0x2710

.field private static c:Lcom/baidu/bdgame/sdk/obf/mg;


# instance fields
.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mf;->f:Z

    .line 29
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mf;->d:Ljava/lang/String;

    .line 31
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/mf;->e:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mf;->f:Z

    .line 35
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mf;->d:Ljava/lang/String;

    .line 36
    iput-boolean p2, p0, Lcom/baidu/bdgame/sdk/obf/mf;->f:Z

    .line 38
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/mf;->e:I

    .line 39
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 101
    .line 102
    iget-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/mf;->f:Z

    if-nez v1, :cond_c

    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/mf;->b()Z

    move-result v1

    if-nez v1, :cond_c

    .line 139
    :cond_b
    :goto_b
    return-object v0

    .line 105
    :cond_c
    const/4 v2, 0x0

    .line 109
    :try_start_d
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    .line 111
    if-eqz v1, :cond_4a

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4a

    .line 112
    new-instance v4, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v4, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 114
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    .line 119
    :goto_2f
    const/16 v3, 0x3a98

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 120
    const/16 v3, 0x2710

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 122
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3c} :catch_6c
    .catchall {:try_start_d .. :try_end_3c} :catchall_79

    move-result v3

    if-eqz v3, :cond_54

    .line 129
    if-eqz v0, :cond_b

    .line 131
    :try_start_41
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_b

    .line 132
    :catch_45
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 116
    :cond_4a
    :try_start_4a
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    goto :goto_2f

    .line 125
    :cond_54
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_57} :catch_6c
    .catchall {:try_start_4a .. :try_end_57} :catchall_79

    move-result-object v1

    .line 126
    :try_start_58
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/mf$a;

    invoke-direct {v2, v1}, Lcom/baidu/bdgame/sdk/obf/mf$a;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_60} :catch_8a
    .catchall {:try_start_58 .. :try_end_60} :catchall_88

    move-result-object v0

    .line 129
    if-eqz v1, :cond_b

    .line 131
    :try_start_63
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_b

    .line 132
    :catch_67
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 127
    :catch_6c
    move-exception v1

    move-object v1, v0

    .line 129
    :goto_6e
    if-eqz v1, :cond_b

    .line 131
    :try_start_70
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_b

    .line 132
    :catch_74
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 129
    :catchall_79
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_7d
    if-eqz v1, :cond_82

    .line 131
    :try_start_7f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 135
    :cond_82
    :goto_82
    throw v0

    .line 132
    :catch_83
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_82

    .line 129
    :catchall_88
    move-exception v0

    goto :goto_7d

    .line 127
    :catch_8a
    move-exception v2

    goto :goto_6e
.end method

.method public static a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 47
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/mf;->c:Lcom/baidu/bdgame/sdk/obf/mg;

    if-nez v0, :cond_6

    .line 48
    const/4 v0, 0x0

    .line 51
    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/mf;->c:Lcom/baidu/bdgame/sdk/obf/mg;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5
.end method

.method private b()Z
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/mf;->a(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 68
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/mf;->c:Lcom/baidu/bdgame/sdk/obf/mg;

    if-nez v0, :cond_b

    .line 69
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mg;

    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/mg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/mf;->c:Lcom/baidu/bdgame/sdk/obf/mg;

    .line 73
    :cond_b
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mf;->d:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 75
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/mf;->c:Lcom/baidu/bdgame/sdk/obf/mg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mf;->d:Ljava/lang/String;

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/mf;->e:I

    invoke-virtual {v0, v1, p2, v2}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    if-nez p2, :cond_1d

    .line 92
    :cond_1c
    :goto_1c
    return-object v0

    .line 82
    :cond_1d
    if-nez v0, :cond_1c

    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mf;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/mf;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/mf;->e:I

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_1c

    .line 87
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/mf;->c:Lcom/baidu/bdgame/sdk/obf/mg;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mf;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1c
.end method

.method public a()V
    .registers 3

    .prologue
    .line 169
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/mf;->c:Lcom/baidu/bdgame/sdk/obf/mg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mf;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mg;->b(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 56
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/mf;->e:I

    .line 57
    return-void
.end method
