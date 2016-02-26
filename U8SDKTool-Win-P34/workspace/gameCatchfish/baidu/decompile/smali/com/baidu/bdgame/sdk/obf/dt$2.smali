.class final Lcom/baidu/bdgame/sdk/obf/dt$2;
.super Lcom/baidu/bdgame/sdk/obf/ed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dt;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/ed",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dt;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dt;)V
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dt$2;->a:Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ed;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt$2;->a:Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dt;->a(Lcom/baidu/bdgame/sdk/obf/dt;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->m()V

    .line 123
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 112
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/dt$2;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 117
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dt$2;->a:Lcom/baidu/bdgame/sdk/obf/dt;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt$2;->a:Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dt;->c(Lcom/baidu/bdgame/sdk/obf/dt;)Lcom/baidu/bdgame/sdk/obf/gs;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, ""

    :goto_c
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/dt;->b(Lcom/baidu/bdgame/sdk/obf/dt;ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .line 117
    :cond_10
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt$2;->a:Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dt;->c(Lcom/baidu/bdgame/sdk/obf/dt;)Lcom/baidu/bdgame/sdk/obf/gs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gs;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt$2;->a:Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dt;->a(Lcom/baidu/bdgame/sdk/obf/dt;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/eg;->a(Ljava/lang/String;)V

    .line 128
    return-void
.end method
