.class public Lcom/adobe/air/Entrypoints;
.super Ljava/lang/Object;
.source "Entrypoints.java"


# static fields
.field static mCallEntryMain:Z

.field private static mLibCorePath:Ljava/lang/String;

.field private static mMainHandler:Lcom/adobe/air/customHandler;

.field public static s_context:Landroid/content/Context;

.field private static s_packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/air/Entrypoints;->mLibCorePath:Ljava/lang/String;

    new-instance v0, Lcom/adobe/air/customHandler;

    invoke-direct {v0}, Lcom/adobe/air/customHandler;-><init>()V

    sput-object v0, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getAppCacheDirectory()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adobe/air/Entrypoints;->s_packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getRuntimeDataDirectory()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerCallback(IIILandroid/os/Handler;)V
    .locals 4

    if-nez p3, :cond_0

    sget-object p3, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x45f

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    if-lez p0, :cond_1

    int-to-long v2, p0

    invoke-virtual {p3, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static registerKeyCallback(ILcom/adobe/air/KeyEventData;Landroid/os/Handler;)Z
    .locals 4

    if-nez p2, :cond_0

    sget-object p2, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x461

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-lez p0, :cond_1

    int-to-long v2, p0

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static registerTouchCallback(ILcom/adobe/air/TouchEventData;Landroid/os/Handler;)Z
    .locals 4

    if-nez p2, :cond_0

    sget-object p2, Lcom/adobe/air/Entrypoints;->mMainHandler:Lcom/adobe/air/customHandler;

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x460

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-lez p0, :cond_1

    int-to-long v2, p0

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public EntryApplyDownloadedConfig()V
    .locals 0

    invoke-virtual {p0}, Lcom/adobe/air/Entrypoints;->applyDownloadedConfig()V

    return-void
.end method

.method public EntryDownloadConfig(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    sput-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    sget-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v1, Lcom/adobe/air/Entrypoints;->s_packageName:Ljava/lang/String;

    sget-object v1, Lcom/adobe/air/Entrypoints;->s_packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/air/ApplicationFileManager;->setAndroidPackageName(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/air/ApplicationFileManager;->setAndroidAPKPath(Ljava/lang/String;)V

    sget-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/air/ApplicationFileManager;->processAndroidDataPath(Ljava/lang/String;)V

    sget-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->GetLibSTLPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adobe/air/Entrypoints;->GetLibCorePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/adobe/air/Entrypoints;->EntryDownloadConfigNative(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public native EntryDownloadConfigNative(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public EntryMain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 12

    move-object/from16 v1, p8

    check-cast v1, Landroid/content/Context;

    sput-object v1, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    check-cast p7, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p7

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v1, Lcom/adobe/air/Entrypoints;->s_packageName:Ljava/lang/String;

    sget-boolean v1, Lcom/adobe/air/Entrypoints;->mCallEntryMain:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/adobe/air/Entrypoints;->mCallEntryMain:Z

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v1 .. v11}, Lcom/adobe/air/Entrypoints;->EntryMainWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    :cond_0
    return-void
.end method

.method public native EntryMainWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
.end method

.method public EntryStopRuntime()V
    .locals 1

    invoke-virtual {p0}, Lcom/adobe/air/Entrypoints;->GetLibCorePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adobe/air/Entrypoints;->EntryStopRuntimeNative()V

    return-void
.end method

.method public native EntryStopRuntimeNative()V
.end method

.method public GetLibCorePath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adobe/air/Entrypoints;->mLibCorePath:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/adobe/air/Entrypoints;->s_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->GetLibCorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/Entrypoints;->mLibCorePath:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/adobe/air/Entrypoints;->mLibCorePath:Ljava/lang/String;

    return-object v0
.end method

.method public native applyDownloadedConfig()V
.end method

.method public setMainView(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p0, p1}, Lcom/adobe/air/Entrypoints;->setMainViewOnCreate(Lcom/adobe/air/AIRWindowSurfaceView;)V

    return-void
.end method

.method public native setMainViewOnCreate(Lcom/adobe/air/AIRWindowSurfaceView;)V
.end method
