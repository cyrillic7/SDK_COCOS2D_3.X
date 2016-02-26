.class final Lcom/baidu/bdgame/sdk/obf/hc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/hc;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/hc;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/hc;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/hc$1;->a:Lcom/baidu/bdgame/sdk/obf/hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/hc$1;->a:Lcom/baidu/bdgame/sdk/obf/hc;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/hc;->a(Lcom/baidu/bdgame/sdk/obf/hc;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/hc$1;->a:Lcom/baidu/bdgame/sdk/obf/hc;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/hc;->b(Lcom/baidu/bdgame/sdk/obf/hc;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bq;->b(Landroid/content/Context;I)V

    .line 131
    return-void
.end method
