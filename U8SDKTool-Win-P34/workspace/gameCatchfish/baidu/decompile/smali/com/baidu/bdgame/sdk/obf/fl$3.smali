.class final Lcom/baidu/bdgame/sdk/obf/fl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/ji;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fl;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fl;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fl;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fl$3;->a:Lcom/baidu/bdgame/sdk/obf/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 136
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fl$3;->a:Lcom/baidu/bdgame/sdk/obf/fl;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fl$3;->a:Lcom/baidu/bdgame/sdk/obf/fl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fl;->f(Lcom/baidu/bdgame/sdk/obf/fl;)Lcom/baidu/bdgame/sdk/obf/hy;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, ""

    :goto_c
    invoke-virtual {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/fl;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void

    .line 136
    :cond_10
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fl$3;->a:Lcom/baidu/bdgame/sdk/obf/fl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fl;->f(Lcom/baidu/bdgame/sdk/obf/fl;)Lcom/baidu/bdgame/sdk/obf/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/hy;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
