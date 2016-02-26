.class Lcom/duoku/platform/view/a/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/a$6;->a:Lcom/duoku/platform/view/a/a;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 558
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_23

    .line 561
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v1

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-eq v1, v2, :cond_24

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-nez v1, :cond_24

    .line 563
    invoke-static {}, Lcom/duoku/platform/util/q;->a()Z

    .line 576
    :cond_23
    :goto_23
    return-void

    .line 565
    :cond_24
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v1

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v1, v2, :cond_4e

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 568
    :cond_3e
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$6;->a:Lcom/duoku/platform/view/a/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/a;->a(Lcom/duoku/platform/view/a/a;Z)V

    .line 569
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$6;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->c(Lcom/duoku/platform/view/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;)V

    goto :goto_23

    .line 573
    :cond_4e
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$6;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->h(Lcom/duoku/platform/view/a/a;)V

    goto :goto_23
.end method
