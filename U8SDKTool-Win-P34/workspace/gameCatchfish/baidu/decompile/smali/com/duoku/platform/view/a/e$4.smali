.class Lcom/duoku/platform/view/a/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/e;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/e;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/e$4;->a:Lcom/duoku/platform/view/a/e;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 395
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_1d

    .line 398
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 399
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$4;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->h(Lcom/duoku/platform/view/a/e;)V

    .line 416
    :cond_1d
    :goto_1d
    return-void

    .line 401
    :cond_1e
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v1

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-eq v1, v2, :cond_30

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-nez v1, :cond_30

    .line 403
    invoke-static {}, Lcom/duoku/platform/util/q;->a()Z

    goto :goto_1d

    .line 405
    :cond_30
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v1

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v1, v2, :cond_5a

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 408
    :cond_4a
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$4;->a:Lcom/duoku/platform/view/a/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/e;->a(Lcom/duoku/platform/view/a/e;Z)V

    .line 409
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$4;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;)V

    goto :goto_1d

    .line 413
    :cond_5a
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$4;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->i(Lcom/duoku/platform/view/a/e;)V

    goto :goto_1d
.end method
