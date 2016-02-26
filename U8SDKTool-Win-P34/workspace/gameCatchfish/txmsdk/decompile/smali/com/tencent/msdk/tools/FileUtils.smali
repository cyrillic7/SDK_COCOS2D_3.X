.class public Lcom/tencent/msdk/tools/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final DIR_EXT_MAIN:Ljava/lang/String; = "MSDK"

.field private static final FILE_LOG:Ljava/lang/String; = "msdk.log"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalRootDir()Ljava/io/File;
    .registers 3

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 39
    .local v0, "childDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0    # "childDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "MSDK"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .restart local v0    # "childDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 43
    :cond_15
    return-object v0
.end method

.method public static getLogFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 27
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/msdk/tools/FileUtils;->getExternalRootDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "msdk.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hasExternalStorage()Z
    .registers 2

    .prologue
    .line 23
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
