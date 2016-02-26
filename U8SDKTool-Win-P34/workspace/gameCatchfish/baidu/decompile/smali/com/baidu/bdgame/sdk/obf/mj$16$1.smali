.class final Lcom/baidu/bdgame/sdk/obf/mj$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mj$16;->b(Lcom/baidu/sapi2/result/QuickUserRegResult;)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mj$16;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mj$16;)V
    .registers 2

    .prologue
    .line 321
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mj$16$1;->a:Lcom/baidu/bdgame/sdk/obf/mj$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 9

    .prologue
    .line 325
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj$16$1;->a:Lcom/baidu/bdgame/sdk/obf/mj$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mj;->m()V

    .line 326
    if-nez p1, :cond_2d

    .line 327
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj$16$1;->a:Lcom/baidu/bdgame/sdk/obf/mj$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mj$16$1;->a:Lcom/baidu/bdgame/sdk/obf/mj$16;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/mj;->k()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/mj$16$1;->a:Lcom/baidu/bdgame/sdk/obf/mj$16;

    iget-object v3, v3, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/mj;->k()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bdp_passport_login"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/mj;->b(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 332
    :goto_2c
    return-void

    .line 330
    :cond_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj$16$1;->a:Lcom/baidu/bdgame/sdk/obf/mj$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/mj$16;->b:Lcom/baidu/bdgame/sdk/obf/mj;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mj;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2c
.end method
