.class final Lcom/baidu/bdgame/sdk/obf/bj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bj;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/bj;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/bj;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bj$1;->a:Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bj$1;->a:Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->a(Lcom/baidu/bdgame/sdk/obf/bj;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 68
    :cond_8
    :goto_8
    return-void

    .line 56
    :cond_9
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kd;->g()Z

    move-result v0

    .line 57
    if-eqz v0, :cond_26

    .line 58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bj$1;->a:Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b(Lcom/baidu/bdgame/sdk/obf/bj;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bj$1;->a:Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->c(Lcom/baidu/bdgame/sdk/obf/bj;)V

    .line 60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bj$1;->a:Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->d(Lcom/baidu/bdgame/sdk/obf/bj;)V

    goto :goto_8

    .line 66
    :cond_26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bj$1;->a:Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->d(Lcom/baidu/bdgame/sdk/obf/bj;)V

    goto :goto_8
.end method
