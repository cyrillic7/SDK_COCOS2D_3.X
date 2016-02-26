.class Lcom/tencent/tmgp/UpdateManager$downloadApkThread;
.super Ljava/lang/Thread;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmgp/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "downloadApkThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tmgp/UpdateManager;


# direct methods
.method private constructor <init>(Lcom/tencent/tmgp/UpdateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;->this$0:Lcom/tencent/tmgp/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tmgp/UpdateManager;Lcom/tencent/tmgp/UpdateManager$downloadApkThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;-><init>(Lcom/tencent/tmgp/UpdateManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;->this$0:Lcom/tencent/tmgp/UpdateManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "download"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/tmgp/UpdateManager;->access$6(Lcom/tencent/tmgp/UpdateManager;Ljava/lang/String;)V

    const-string v12, "update"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "savePath:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, p0, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;->this$0:Lcom/tencent/tmgp/UpdateManager;

    # getter for: Lcom/tencent/tmgp/UpdateManager;->mSavePath:Ljava/lang/String;
    invoke-static {v14}, Lcom/tencent/tmgp/UpdateManager;->access$7(Lcom/tencent/tmgp/UpdateManager;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/net/URL;

    iget-object v12, p0, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;->this$0:Lcom/tencent/tmgp/UpdateManager;

    iget-object v12, v12, Lcom/tencent/tmgp/UpdateManager;->mHashMap:Ljava/util/HashMap;

    const-string v13, "url"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v8

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    if-nez v7, :cond_0

    iget-object v12, p0, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;->this$0:Lcom/tencent/tmgp/UpdateManager;

    # getter for: Lcom/tencent/tmgp/UpdateManager;->mDownloadDialog:Landroid/app/Dialog;
    invoke-static {v12}, Lcom/tencent/tmgp/UpdateManager;->access$8(Lcom/tencent/tmgp/UpdateManager;)Landroid/app/Dialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Dialog;->dismiss()V

    iget-object v12, p0, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;->this$0:Lcom/tencent/tmgp/UpdateManager;

    # getter for: Lcom/tencent/tmgp/UpdateManager;->game:Lcom/tencent/tmgp/GameCatchFish;
    invoke-static {v12}, Lcom/tencent/tmgp/UpdateManager;->access$9(Lcom/tencent/tmgp/UpdateManager;)Lcom/tencent/tmgp/GameCatchFish;

    move-result-object v12

    const-string v13, "\u4e0e\u670d\u52a1\u5668\u65ad\u5f00\u8fde\u63a5!"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/io/File;

    iget-object v12, p0, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;->this$0:Lcom/tencent/tmgp/UpdateManager;

    # getter for: Lcom/tencent/tmgp/UpdateManager;->mSavePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/tencent/tmgp/UpdateManager;->access$7(Lcom/tencent/tmgp/UpdateManager;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v12, p0, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;->this$0:Lcom/tencent/tmgp/UpdateManager;

    # getter for: Lcom/tencent/tmgp/UpdateManager;->mSavePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/tencent/tmgp/UpdateManager;->access$7(Lcom/tencent/tmgp/UpdateManager;)Ljava/lang/String;

    move-result-object v13

    iget-object v12, p0, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;->this$0:Lcom/tencent/tmgp/UpdateManager;

    iget-object v12, v12, Lcom/tencent/tmgp/UpdateManager;->mHashMap:Ljava/util/HashMap;

    const-string v14, "name"

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v0, v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    const/16 v12, 0x400

    new-array v1, v12, [B

    :cond_2
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v12, p0, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;->this$0:Lcom/tencent/tmgp/UpdateManager;

    int-to-float v13, v3

    int-to-float v14, v8

    div-float/2addr v13, v14

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-static {v12, v13}, Lcom/tencent/tmgp/UpdateManager;->access$10(Lcom/tencent/tmgp/UpdateManager;I)V

    iget-object v12, p0, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;->this$0:Lcom/tencent/tmgp/UpdateManager;

    # getter for: Lcom/tencent/tmgp/UpdateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/tencent/tmgp/UpdateManager;->access$11(Lcom/tencent/tmgp/UpdateManager;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-gtz v9, :cond_4

    iget-object v12, p0, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;->this$0:Lcom/tencent/tmgp/UpdateManager;

    # getter for: Lcom/tencent/tmgp/UpdateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/tencent/tmgp/UpdateManager;->access$11(Lcom/tencent/tmgp/UpdateManager;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    iget-object v12, p0, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;->this$0:Lcom/tencent/tmgp/UpdateManager;

    # getter for: Lcom/tencent/tmgp/UpdateManager;->mDownloadDialog:Landroid/app/Dialog;
    invoke-static {v12}, Lcom/tencent/tmgp/UpdateManager;->access$8(Lcom/tencent/tmgp/UpdateManager;)Landroid/app/Dialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v6, v1, v12, v9}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v12, p0, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;->this$0:Lcom/tencent/tmgp/UpdateManager;

    # getter for: Lcom/tencent/tmgp/UpdateManager;->cancelUpdate:Z
    invoke-static {v12}, Lcom/tencent/tmgp/UpdateManager;->access$12(Lcom/tencent/tmgp/UpdateManager;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    :catch_0
    move-exception v4

    iget-object v12, p0, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;->this$0:Lcom/tencent/tmgp/UpdateManager;

    # getter for: Lcom/tencent/tmgp/UpdateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/tencent/tmgp/UpdateManager;->access$11(Lcom/tencent/tmgp/UpdateManager;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "\u4e0b\u8f7d\u5f02\u5e38:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
