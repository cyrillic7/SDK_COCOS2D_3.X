.class final Lcom/baidu/bdgame/sdk/obf/ax$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ax;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/at;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ax;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ax;)V
    .registers 2

    .prologue
    .line 436
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax$17;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/at;)V
    .registers 6

    .prologue
    .line 441
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$17;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->m()V

    .line 442
    if-nez p1, :cond_2f

    .line 443
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$17;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/LoginActivity;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$17$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$17$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ax$17;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/LoginActivity;->a(Lcom/baidu/platformsdk/LoginActivity$a;)V

    .line 472
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$17;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3e7

    invoke-static {v0, v1, p3}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->a(Landroid/app/Activity;ILcom/baidu/bdgame/sdk/obf/at;)V

    .line 476
    :goto_2e
    return-void

    .line 474
    :cond_2f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$17;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 436
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/at;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ax$17;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/at;)V

    return-void
.end method
