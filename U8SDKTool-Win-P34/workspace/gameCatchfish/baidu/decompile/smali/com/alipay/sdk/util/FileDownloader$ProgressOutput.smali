.class Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/util/FileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressOutput"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;

.field private b:Z


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/alipay/sdk/util/FileDownloader;)V
    .registers 4

    .prologue
    .line 236
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->b:Z

    .line 238
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->a:Ljava/lang/ref/WeakReference;

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/alipay/sdk/util/FileDownloader;B)V
    .registers 4

    .prologue
    .line 230
    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;-><init>(Landroid/os/Looper;Lcom/alipay/sdk/util/FileDownloader;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;)Z
    .registers 2

    .prologue
    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->b:Z

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .prologue
    const/high16 v2, 0x42c80000

    .line 243
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v0}, Lcom/alipay/sdk/util/FileDownloader;->g(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;

    move-result-object v0

    if-nez v0, :cond_11

    .line 272
    :cond_10
    :goto_10
    return-void

    .line 247
    :cond_11
    const/high16 v1, 0x42480000

    .line 248
    :try_start_13
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/util/FileDownloader;

    iget-boolean v0, v0, Lcom/alipay/sdk/util/FileDownloader;->a:Z

    if-eqz v0, :cond_84

    .line 249
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v0}, Lcom/alipay/sdk/util/FileDownloader;->f(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileFetch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileFetch;->a()J

    move-result-wide v0

    const-wide/16 v4, 0x64

    mul-long/2addr v4, v0

    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v0}, Lcom/alipay/sdk/util/FileDownloader;->f(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileFetch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileFetch;->b()J

    move-result-wide v0

    div-long v0, v4, v0

    long-to-float v0, v0

    move v1, v0

    .line 255
    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v0}, Lcom/alipay/sdk/util/FileDownloader;->f(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileFetch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileFetch;->c()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 256
    cmpl-float v0, v1, v2

    if-nez v0, :cond_98

    iget-boolean v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->b:Z

    if-nez v0, :cond_98

    .line 257
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v0}, Lcom/alipay/sdk/util/FileDownloader;->g(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;->a()V

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->b:Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_72} :catch_73

    goto :goto_10

    .line 270
    :catch_73
    move-exception v0

    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v0}, Lcom/alipay/sdk/util/FileDownloader;->g(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;->c()V

    goto :goto_10

    .line 251
    :cond_84
    :try_start_84
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v0}, Lcom/alipay/sdk/util/FileDownloader;->f(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileFetch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileFetch;->c()Z

    move-result v0

    if-eqz v0, :cond_46

    move v1, v2

    .line 252
    goto :goto_46

    .line 259
    :cond_98
    cmpl-float v0, v1, v2

    if-lez v0, :cond_b8

    .line 260
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v0}, Lcom/alipay/sdk/util/FileDownloader;->d(Lcom/alipay/sdk/util/FileDownloader;)V

    .line 261
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v0}, Lcom/alipay/sdk/util/FileDownloader;->g(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;->c()V

    goto/16 :goto_10

    .line 262
    :cond_b8
    iget-boolean v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->b:Z

    if-nez v0, :cond_10

    .line 263
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v0}, Lcom/alipay/sdk/util/FileDownloader;->g(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;->c()V

    goto/16 :goto_10

    .line 266
    :cond_cd
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v0}, Lcom/alipay/sdk/util/FileDownloader;->g(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;->b()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_dc} :catch_73

    goto/16 :goto_10
.end method
