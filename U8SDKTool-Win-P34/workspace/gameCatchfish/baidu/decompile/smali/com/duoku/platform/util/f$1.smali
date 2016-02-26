.class Lcom/duoku/platform/util/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/util/f;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/util/f$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/duoku/platform/util/f$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/duoku/platform/util/f$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/duoku/platform/util/f$1;->d:Landroid/os/Handler;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 148
    .line 149
    :try_start_1
    iget-object v1, p0, Lcom/duoku/platform/util/f$1;->a:Ljava/lang/String;

    .line 150
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/download_cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_28

    .line 152
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 153
    :cond_28
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_a4

    .line 158
    :try_start_2d
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 159
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 160
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 161
    iget-object v4, p0, Lcom/duoku/platform/util/f$1;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v4

    const-string v5, "helpersize"

    invoke-virtual {v4, v5, v2, v3}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;J)Z

    .line 162
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_7c

    .line 164
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 167
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/duoku/platform/util/f$1;->c:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 168
    const/16 v5, 0x2000

    new-array v5, v5, [B

    .line 170
    :goto_68
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7d

    .line 182
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 183
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 185
    iget-object v0, p0, Lcom/duoku/platform/util/f$1;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/duoku/platform/util/f$1;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/duoku/platform/util/f;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 196
    :cond_7c
    :goto_7c
    return-void

    .line 172
    :cond_7d
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 173
    add-int/2addr v0, v6

    .line 174
    mul-int/lit8 v6, v0, 0x64

    int-to-long v6, v6

    div-long/2addr v6, v2

    long-to-int v6, v6

    .line 175
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 176
    const/4 v8, 0x1

    iput v8, v7, Landroid/os/Message;->what:I

    .line 177
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 178
    const-string v9, "present"

    invoke-virtual {v8, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    invoke-virtual {v7, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 180
    iget-object v6, p0, Lcom/duoku/platform/util/f$1;->d:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_a1} :catch_a2

    goto :goto_68

    .line 188
    :catch_a2
    move-exception v0

    goto :goto_7c

    .line 192
    :catch_a4
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7c
.end method
