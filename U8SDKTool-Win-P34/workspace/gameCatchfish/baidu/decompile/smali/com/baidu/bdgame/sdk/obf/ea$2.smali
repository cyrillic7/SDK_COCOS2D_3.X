.class final Lcom/baidu/bdgame/sdk/obf/ea$2;
.super Lcom/baidu/bdgame/sdk/obf/ed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ea;->l()V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ea;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ea;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ea$2;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ed;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 98
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ea$2;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 102
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ea$2;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea$2;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ea;->c(Lcom/baidu/bdgame/sdk/obf/ea;)Lcom/baidu/bdgame/sdk/obf/gw;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, ""

    :goto_c
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ea;->b(Lcom/baidu/bdgame/sdk/obf/ea;ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void

    .line 102
    :cond_10
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea$2;->a:Lcom/baidu/bdgame/sdk/obf/ea;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ea;->c(Lcom/baidu/bdgame/sdk/obf/ea;)Lcom/baidu/bdgame/sdk/obf/gw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gw;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
