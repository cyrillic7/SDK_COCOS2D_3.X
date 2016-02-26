.class final Lcom/baidu/bdgame/sdk/obf/gb$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gb;->b(Lcom/baidu/bdgame/sdk/obf/ig;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ig;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/gb;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gb;Lcom/baidu/bdgame/sdk/obf/ig;)V
    .registers 3

    .prologue
    .line 105
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gb$3;->b:Lcom/baidu/bdgame/sdk/obf/gb;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/gb$3;->a:Lcom/baidu/bdgame/sdk/obf/ig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 105
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/gb$3;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 6

    .prologue
    .line 110
    if-nez p1, :cond_e

    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$3;->b:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->a(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/fq;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gb$3;->a:Lcom/baidu/bdgame/sdk/obf/ig;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fq;->a(Lcom/baidu/bdgame/sdk/obf/ig;)V

    .line 117
    :goto_d
    return-void

    .line 114
    :cond_e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gb$3;->b:Lcom/baidu/bdgame/sdk/obf/gb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gb;->a(Lcom/baidu/bdgame/sdk/obf/gb;)Lcom/baidu/bdgame/sdk/obf/fq;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gb$3;->a:Lcom/baidu/bdgame/sdk/obf/ig;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fq;->b(Lcom/baidu/bdgame/sdk/obf/ig;)V

    goto :goto_d
.end method
