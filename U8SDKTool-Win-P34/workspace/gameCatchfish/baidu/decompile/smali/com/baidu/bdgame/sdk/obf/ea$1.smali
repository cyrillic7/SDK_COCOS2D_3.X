.class final Lcom/baidu/bdgame/sdk/obf/ea$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ea;->k()V
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
        "Lcom/baidu/bdgame/sdk/obf/gw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ea;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ea;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ea$1;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/gw;)V
    .registers 6

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea$1;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ea;->a(Lcom/baidu/bdgame/sdk/obf/ea;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->O()V

    .line 72
    if-nez p1, :cond_18

    if-eqz p3, :cond_18

    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea$1;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ea;->a(Lcom/baidu/bdgame/sdk/obf/ea;Lcom/baidu/bdgame/sdk/obf/gw;)Lcom/baidu/bdgame/sdk/obf/gw;

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea$1;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ea;->b(Lcom/baidu/bdgame/sdk/obf/ea;)V

    .line 85
    :goto_17
    return-void

    .line 77
    :cond_18
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 78
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ea$1;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea$1;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ea;->c(Lcom/baidu/bdgame/sdk/obf/ea;)Lcom/baidu/bdgame/sdk/obf/gw;

    move-result-object v0

    if-nez v0, :cond_2e

    const-string v0, ""

    :goto_2a
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ea;->a(Lcom/baidu/bdgame/sdk/obf/ea;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_2e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea$1;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ea;->c(Lcom/baidu/bdgame/sdk/obf/ea;)Lcom/baidu/bdgame/sdk/obf/gw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gw;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 80
    :cond_39
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea$1;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ea;->a(Lcom/baidu/bdgame/sdk/obf/ea;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->c(Landroid/content/Context;)V

    goto :goto_17
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 66
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/gw;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ea$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/gw;)V

    return-void
.end method
