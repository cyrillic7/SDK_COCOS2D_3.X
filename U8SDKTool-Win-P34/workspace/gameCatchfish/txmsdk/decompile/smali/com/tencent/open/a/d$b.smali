.class public final Lcom/tencent/open/a/d$b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public static a(Ljava/io/File;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 109
    if-eqz p0, :cond_12

    .line 111
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 112
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_13

    .line 113
    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    .line 138
    :cond_12
    :goto_12
    return v0

    .line 117
    :cond_13
    const/4 v0, 0x1

    goto :goto_12

    .line 121
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 122
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_12

    array-length v2, v1

    if-eqz v2, :cond_12

    .line 127
    array-length v2, v1

    :goto_25
    if-ge v0, v2, :cond_2f

    aget-object v3, v1, v0

    .line 128
    invoke-static {v3}, Lcom/tencent/open/a/d$b;->a(Ljava/io/File;)Z

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 131
    :cond_2f
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_12
.end method
