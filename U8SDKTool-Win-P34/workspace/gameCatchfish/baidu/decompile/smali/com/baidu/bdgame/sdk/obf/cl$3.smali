.class final Lcom/baidu/bdgame/sdk/obf/cl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cl;->d()V
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
        "Lcom/baidu/bdgame/sdk/obf/gx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cl;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cl;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cl$3;->a:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/gx;)V
    .registers 7

    .prologue
    .line 121
    if-nez p1, :cond_d

    .line 122
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl$3;->a:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/cl;->a(Lcom/baidu/bdgame/sdk/obf/cl;Lcom/baidu/bdgame/sdk/obf/gx;)Lcom/baidu/bdgame/sdk/obf/gx;

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl$3;->a:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cl;->c(Lcom/baidu/bdgame/sdk/obf/cl;)V

    .line 133
    :goto_c
    return-void

    .line 125
    :cond_d
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl$3;->a:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cl;->d(Lcom/baidu/bdgame/sdk/obf/cl;)Lcom/baidu/bdgame/sdk/obf/dl;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dl;->g(Ljava/lang/String;)V

    goto :goto_c

    .line 128
    :cond_1f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl$3;->a:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cl;->d(Lcom/baidu/bdgame/sdk/obf/cl;)Lcom/baidu/bdgame/sdk/obf/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cl$3;->a:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/cl;->e(Lcom/baidu/bdgame/sdk/obf/cl;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_paycenter_tips_balance_get_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dl;->g(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 116
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/gx;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cl$3;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/gx;)V

    return-void
.end method
