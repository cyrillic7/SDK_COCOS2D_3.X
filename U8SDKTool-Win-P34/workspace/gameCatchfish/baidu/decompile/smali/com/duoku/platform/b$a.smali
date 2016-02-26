.class Lcom/duoku/platform/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/b;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/b;)V
    .registers 2

    .prologue
    .line 540
    iput-object p1, p0, Lcom/duoku/platform/b$a;->a:Lcom/duoku/platform/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/b;Lcom/duoku/platform/b$a;)V
    .registers 3

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/duoku/platform/b$a;-><init>(Lcom/duoku/platform/b;)V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 7

    .prologue
    .line 586
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    const/16 v1, 0x3fe

    invoke-virtual {v0, v1}, Lcom/duoku/platform/f/a;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 587
    iget-object v1, p0, Lcom/duoku/platform/b$a;->a:Lcom/duoku/platform/b;

    invoke-static {v1}, Lcom/duoku/platform/b;->b(Lcom/duoku/platform/b;)Lcom/duoku/platform/IDKSDKCallBack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duoku/platform/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 8

    .prologue
    .line 545
    check-cast p2, Lcom/duoku/platform/h/t;

    .line 548
    invoke-virtual {p2}, Lcom/duoku/platform/h/t;->d()Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-virtual {p2}, Lcom/duoku/platform/h/t;->c()Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/b$a;->a:Lcom/duoku/platform/b;

    invoke-static {v3}, Lcom/duoku/platform/b;->a(Lcom/duoku/platform/b;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v2

    .line 553
    if-nez v2, :cond_26

    .line 555
    iget-object v0, p0, Lcom/duoku/platform/b$a;->a:Lcom/duoku/platform/b;

    invoke-static {v0}, Lcom/duoku/platform/b;->a(Lcom/duoku/platform/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "BDPlatformUser\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 569
    :cond_25
    :goto_25
    return-void

    .line 558
    :cond_26
    iget-object v2, p0, Lcom/duoku/platform/b$a;->a:Lcom/duoku/platform/b;

    invoke-static {v2}, Lcom/duoku/platform/b;->a(Lcom/duoku/platform/b;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v2

    const-string v3, "91sessionId"

    invoke-virtual {v2, v3, v0}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 559
    iget-object v0, p0, Lcom/duoku/platform/b$a;->a:Lcom/duoku/platform/b;

    invoke-static {v0}, Lcom/duoku/platform/b;->a(Lcom/duoku/platform/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v2, "dkuserid"

    invoke-virtual {v0, v2, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 561
    sput-object p2, Lcom/duoku/platform/floatview/a;->a:Lcom/duoku/platform/h/t;

    .line 562
    iget-object v0, p0, Lcom/duoku/platform/b$a;->a:Lcom/duoku/platform/b;

    invoke-virtual {v0}, Lcom/duoku/platform/b;->k()V

    .line 564
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1}, Lcom/duoku/platform/f/a;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 565
    iget-object v1, p0, Lcom/duoku/platform/b$a;->a:Lcom/duoku/platform/b;

    invoke-static {v1}, Lcom/duoku/platform/b;->b(Lcom/duoku/platform/b;)Lcom/duoku/platform/IDKSDKCallBack;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 567
    iget-object v1, p0, Lcom/duoku/platform/b$a;->a:Lcom/duoku/platform/b;

    invoke-static {v1}, Lcom/duoku/platform/b;->b(Lcom/duoku/platform/b;)Lcom/duoku/platform/IDKSDKCallBack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duoku/platform/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    goto :goto_25
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 581
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 575
    return-void
.end method
