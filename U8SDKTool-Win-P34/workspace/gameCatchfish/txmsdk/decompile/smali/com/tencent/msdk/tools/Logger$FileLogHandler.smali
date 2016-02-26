.class Lcom/tencent/msdk/tools/Logger$FileLogHandler;
.super Landroid/os/Handler;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/tools/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileLogHandler"
.end annotation


# instance fields
.field private hasSDCard:Z

.field private logFile:Ljava/io/File;

.field private logOutput:Ljava/io/FileOutputStream;


# direct methods
.method constructor <init>()V
    .registers 6

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 156
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->hasSDCard:Z

    .line 161
    invoke-static {}, Lcom/tencent/msdk/tools/FileUtils;->hasExternalStorage()Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->hasSDCard:Z

    .line 162
    iget-boolean v2, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->hasSDCard:Z

    if-eqz v2, :cond_23

    .line 164
    :try_start_10
    invoke-static {}, Lcom/tencent/msdk/tools/FileUtils;->getLogFile()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    .line 165
    iget-object v2, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_24

    .line 166
    iget-object v2, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 182
    :cond_23
    :goto_23
    return-void

    .line 168
    :cond_24
    iget-object v2, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 169
    .local v0, "logLength":J
    const-wide/32 v2, 0xa00000

    cmp-long v2, v0, v2

    if-lez v2, :cond_23

    .line 171
    sget-object v2, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log size larger than LOG_FILE_SIZE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v2, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 175
    iget-object v2, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_57} :catch_58

    goto :goto_23

    .line 178
    .end local v0    # "logLength":J
    :catch_58
    move-exception v2

    goto :goto_23
.end method


# virtual methods
.method getLogOutput()Ljava/io/FileOutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logOutput:Ljava/io/FileOutputStream;

    if-nez v0, :cond_e

    .line 202
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logOutput:Ljava/io/FileOutputStream;

    .line 204
    :cond_e
    iget-object v0, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logOutput:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 185
    iget-boolean v3, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->hasSDCard:Z

    if-nez v3, :cond_5

    .line 198
    :cond_4
    :goto_4
    return-void

    .line 190
    :cond_5
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "log":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 192
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 193
    .local v2, "logData":[B
    invoke-virtual {p0}, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->getLogOutput()Ljava/io/FileOutputStream;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2c

    goto :goto_4

    .line 195
    .end local v1    # "log":Ljava/lang/String;
    .end local v2    # "logData":[B
    :catch_2c
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method
