.class final Lcom/tencent/android/tpush/logging/a/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/FileFilter;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_8

    .line 108
    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-static {p1}, Lcom/tencent/android/tpush/logging/a/b;->a(Ljava/io/File;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method
