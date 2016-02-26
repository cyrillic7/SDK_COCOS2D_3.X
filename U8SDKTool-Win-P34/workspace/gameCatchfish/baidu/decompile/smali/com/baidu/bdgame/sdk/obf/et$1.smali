.class final Lcom/baidu/bdgame/sdk/obf/et$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/et;->i()V
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
        "Lcom/baidu/bdgame/sdk/obf/iw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/et;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/et;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/et$1;->a:Lcom/baidu/bdgame/sdk/obf/et;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/iw;)V
    .registers 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/et$1;->a:Lcom/baidu/bdgame/sdk/obf/et;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/et;->a(Lcom/baidu/bdgame/sdk/obf/et;)Lcom/baidu/bdgame/sdk/obf/ey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->O()V

    .line 59
    if-nez p1, :cond_18

    if-eqz p3, :cond_18

    .line 61
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/et$1;->a:Lcom/baidu/bdgame/sdk/obf/et;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/et;->a(Lcom/baidu/bdgame/sdk/obf/et;Lcom/baidu/bdgame/sdk/obf/iw;)Lcom/baidu/bdgame/sdk/obf/iw;

    .line 62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/et$1;->a:Lcom/baidu/bdgame/sdk/obf/et;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/et;->b(Lcom/baidu/bdgame/sdk/obf/et;)V

    .line 72
    :goto_17
    return-void

    .line 64
    :cond_18
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/et$1;->a:Lcom/baidu/bdgame/sdk/obf/et;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/et;->a(Lcom/baidu/bdgame/sdk/obf/et;)Lcom/baidu/bdgame/sdk/obf/ey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/jf;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_17

    .line 68
    :cond_2c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/et$1;->a:Lcom/baidu/bdgame/sdk/obf/et;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/et;->a(Lcom/baidu/bdgame/sdk/obf/et;)Lcom/baidu/bdgame/sdk/obf/ey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->c(Landroid/content/Context;)V

    goto :goto_17
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 53
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/iw;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/et$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/iw;)V

    return-void
.end method
