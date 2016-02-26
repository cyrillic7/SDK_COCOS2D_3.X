.class final Lcom/baidu/bdgame/sdk/obf/jq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/jq;->c(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/kc;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/n;

.field final synthetic c:Lcom/baidu/bdgame/sdk/obf/jq;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/jq;Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 4

    .prologue
    .line 73
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jq$1;->c:Lcom/baidu/bdgame/sdk/obf/jq;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/jq$1;->a:Lcom/baidu/bdgame/sdk/obf/kc;

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/jq$1;->b:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jq$1;->c:Lcom/baidu/bdgame/sdk/obf/jq;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jq$1;->a:Lcom/baidu/bdgame/sdk/obf/kc;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jq$1;->b:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->b(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 77
    return-void
.end method
