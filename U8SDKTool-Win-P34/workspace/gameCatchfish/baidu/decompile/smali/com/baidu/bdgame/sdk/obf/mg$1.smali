.class final Lcom/baidu/bdgame/sdk/obf/mg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mg;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/bdgame/sdk/obf/mg;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mg;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 223
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mg$1;->c:Lcom/baidu/bdgame/sdk/obf/mg;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/mg$1;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/mg$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 226
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 251
    :cond_8
    :goto_8
    return-void

    .line 229
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg$1;->c:Lcom/baidu/bdgame/sdk/obf/mg;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Lcom/baidu/bdgame/sdk/obf/mg;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 230
    const/4 v2, 0x0

    .line 232
    :try_start_12
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/mg$1;->c:Lcom/baidu/bdgame/sdk/obf/mg;

    invoke-static {v4}, Lcom/baidu/bdgame/sdk/obf/mg;->b(Lcom/baidu/bdgame/sdk/obf/mg;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/mg$1;->c:Lcom/baidu/bdgame/sdk/obf/mg;

    iget-object v6, p0, Lcom/baidu/bdgame/sdk/obf/mg$1;->b:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Lcom/baidu/bdgame/sdk/obf/mg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x800

    invoke-direct {v1, v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_31} :catch_89
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_31} :catch_68
    .catchall {:try_start_12 .. :try_end_31} :catchall_77

    .line 233
    :try_start_31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg$1;->b:Ljava/lang/String;

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 234
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg$1;->a:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_44} :catch_59
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_44} :catch_86
    .catchall {:try_start_31 .. :try_end_44} :catchall_83

    .line 244
    :goto_44
    if-eqz v1, :cond_8

    .line 245
    :try_start_46
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 246
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4c} :catch_4d

    goto :goto_8

    .line 248
    :catch_4d
    move-exception v0

    goto :goto_8

    .line 236
    :cond_4f
    :try_start_4f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg$1;->a:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_4f .. :try_end_58} :catch_59
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_58} :catch_86
    .catchall {:try_start_4f .. :try_end_58} :catchall_83

    goto :goto_44

    .line 238
    :catch_59
    move-exception v0

    .line 239
    :goto_5a
    :try_start_5a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_83

    .line 244
    if-eqz v1, :cond_8

    .line 245
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 246
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_65} :catch_66

    goto :goto_8

    .line 248
    :catch_66
    move-exception v0

    goto :goto_8

    .line 240
    :catch_68
    move-exception v0

    .line 241
    :goto_69
    :try_start_69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_77

    .line 244
    if-eqz v2, :cond_8

    .line 245
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 246
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_74} :catch_75

    goto :goto_8

    .line 248
    :catch_75
    move-exception v0

    goto :goto_8

    .line 243
    :catchall_77
    move-exception v0

    .line 244
    :goto_78
    if-eqz v2, :cond_80

    .line 245
    :try_start_7a
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 246
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_80} :catch_81

    .line 248
    :cond_80
    :goto_80
    throw v0

    :catch_81
    move-exception v1

    goto :goto_80

    .line 243
    :catchall_83
    move-exception v0

    move-object v2, v1

    goto :goto_78

    .line 240
    :catch_86
    move-exception v0

    move-object v2, v1

    goto :goto_69

    .line 238
    :catch_89
    move-exception v0

    move-object v1, v2

    goto :goto_5a
.end method
