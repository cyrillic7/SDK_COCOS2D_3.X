.class public final Lcom/tencent/android/tpush/logging/b/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/logging/b/c;->a:Landroid/content/Context;

    return-void
.end method

.method public static final a()Landroid/content/Context;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/tencent/android/tpush/logging/b/c;->a:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 54
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/logging/b/c;->a:Landroid/content/Context;

    .line 56
    :cond_a
    sget-object v0, Lcom/tencent/android/tpush/logging/b/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static final a(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 49
    sput-object p0, Lcom/tencent/android/tpush/logging/b/c;->a:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public static final b()Ljava/io/File;
    .registers 1

    .prologue
    .line 60
    invoke-static {}, Lcom/tencent/android/tpush/logging/b/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
