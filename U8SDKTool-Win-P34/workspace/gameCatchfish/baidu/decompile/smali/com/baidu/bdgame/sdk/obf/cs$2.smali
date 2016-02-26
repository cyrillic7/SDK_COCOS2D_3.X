.class final Lcom/baidu/bdgame/sdk/obf/cs$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/bw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cs;->a(Lcom/baidu/bdgame/sdk/obf/ic;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ic;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/cs;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cs;Lcom/baidu/bdgame/sdk/obf/ic;)V
    .registers 3

    .prologue
    .line 151
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cs$2;->b:Lcom/baidu/bdgame/sdk/obf/cs;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/cs$2;->a:Lcom/baidu/bdgame/sdk/obf/ic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cs$2;->b:Lcom/baidu/bdgame/sdk/obf/cs;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cs$2;->a:Lcom/baidu/bdgame/sdk/obf/ic;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Lcom/baidu/bdgame/sdk/obf/cs;Lcom/baidu/bdgame/sdk/obf/ic;)V

    .line 156
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cs$2;->b:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->c(Lcom/baidu/bdgame/sdk/obf/cs;)Lcom/baidu/bdgame/sdk/obf/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bw;->cancel()V

    .line 161
    return-void
.end method
