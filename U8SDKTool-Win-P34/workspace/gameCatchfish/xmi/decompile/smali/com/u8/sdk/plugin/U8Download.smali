.class public Lcom/u8/sdk/plugin/U8Download;
.super Ljava/lang/Object;
.source "U8Download.java"


# static fields
.field private static instance:Lcom/u8/sdk/plugin/U8Download;


# instance fields
.field private downloadPlugin:Lcom/u8/sdk/IDownload;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/u8/sdk/plugin/U8Download;
    .locals 1

    sget-object v0, Lcom/u8/sdk/plugin/U8Download;->instance:Lcom/u8/sdk/plugin/U8Download;

    if-nez v0, :cond_0

    new-instance v0, Lcom/u8/sdk/plugin/U8Download;

    invoke-direct {v0}, Lcom/u8/sdk/plugin/U8Download;-><init>()V

    sput-object v0, Lcom/u8/sdk/plugin/U8Download;->instance:Lcom/u8/sdk/plugin/U8Download;

    :cond_0
    sget-object v0, Lcom/u8/sdk/plugin/U8Download;->instance:Lcom/u8/sdk/plugin/U8Download;

    return-object v0
.end method

.method private isPluginInited()Z
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Download;->downloadPlugin:Lcom/u8/sdk/IDownload;

    if-nez v0, :cond_0

    const-string v0, "U8SDK"

    const-string v1, "The download plugin is not inited or inited failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public download(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Z

    invoke-direct {p0}, Lcom/u8/sdk/plugin/U8Download;->isPluginInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Download;->downloadPlugin:Lcom/u8/sdk/IDownload;

    invoke-interface {v0, p1, p2, p3}, Lcom/u8/sdk/IDownload;->download(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/PluginFactory;->getInstance()Lcom/u8/sdk/PluginFactory;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/u8/sdk/PluginFactory;->initPlugin(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IDownload;

    iput-object v0, p0, Lcom/u8/sdk/plugin/U8Download;->downloadPlugin:Lcom/u8/sdk/IDownload;

    return-void
.end method

.method public isSupport(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Lcom/u8/sdk/plugin/U8Download;->isPluginInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Download;->downloadPlugin:Lcom/u8/sdk/IDownload;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IDownload;->isSupportMethod(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
