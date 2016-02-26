.class final Lcom/baidu/bdgame/sdk/obf/eb$3;
.super Lcom/baidu/bdgame/sdk/obf/ed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/eb;->b(Ljava/lang/String;)V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/eb;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/eb;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eb$3;->a:Lcom/baidu/bdgame/sdk/obf/eb;

    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ed;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 124
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/eb$3;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 128
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eb$3;->a:Lcom/baidu/bdgame/sdk/obf/eb;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb$3;->a:Lcom/baidu/bdgame/sdk/obf/eb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eb;->b(Lcom/baidu/bdgame/sdk/obf/eb;)Lcom/baidu/bdgame/sdk/obf/ib;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, ""

    :goto_c
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/eb;->b(Lcom/baidu/bdgame/sdk/obf/eb;ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 128
    :cond_10
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb$3;->a:Lcom/baidu/bdgame/sdk/obf/eb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eb;->b(Lcom/baidu/bdgame/sdk/obf/eb;)Lcom/baidu/bdgame/sdk/obf/ib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ib;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
