.class public Lcom/baidu/bdgame/sdk/obf/lb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = -0x1

.field private static final b:Ljava/lang/String; = "BDSDKType"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 56
    const-string v0, "BDSDKType"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/lb;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 6

    .prologue
    .line 28
    .line 30
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 32
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_13} :catch_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result p2

    .line 39
    :goto_14
    return p2

    .line 35
    :catch_15
    move-exception v0

    goto :goto_14

    .line 33
    :catch_17
    move-exception v0

    goto :goto_14
.end method
