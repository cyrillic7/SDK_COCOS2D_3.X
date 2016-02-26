.class public Lcom/duoku/platform/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/j/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/duoku/platform/j/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/j/a;->a:Lcom/duoku/platform/j/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a()Lcom/duoku/platform/j/a;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/duoku/platform/j/a;->a:Lcom/duoku/platform/j/a;

    if-eqz v0, :cond_7

    .line 29
    sget-object v0, Lcom/duoku/platform/j/a;->a:Lcom/duoku/platform/j/a;

    .line 30
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lcom/duoku/platform/j/a;

    invoke-direct {v0}, Lcom/duoku/platform/j/a;-><init>()V

    goto :goto_6
.end method

.method private b(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 74
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 76
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_35

    .line 79
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoku/platform/f/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_MOBILE_STATISTIC_URL:Ljava/lang/String;

    const/16 v3, 0x68

    new-instance v4, Lcom/duoku/platform/j/a$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/j/a$a;-><init>(Lcom/duoku/platform/j/a;Lcom/duoku/platform/j/a$a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 83
    :cond_35
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 87
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 89
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/duoku/platform/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_MOBILE_STATISTIC_URL:Ljava/lang/String;

    const/16 v3, 0x68

    new-instance v4, Lcom/duoku/platform/j/a$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/j/a$a;-><init>(Lcom/duoku/platform/j/a;Lcom/duoku/platform/j/a$a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 92
    :cond_23
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 69
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "mAppid"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "deb6af019f"

    invoke-static {p1, p2, v0, v1, v2}, Lcom/duoku/game/DKGameSDK;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/duoku/platform/j/a;->b(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/j/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
