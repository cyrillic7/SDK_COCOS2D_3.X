.class final Lcom/baidu/bdgame/sdk/obf/ml$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ml;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ml;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ml;)V
    .registers 2

    .prologue
    .line 269
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ml$3;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$3;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ml;->e(Lcom/baidu/bdgame/sdk/obf/ml;)V

    .line 274
    return-void
.end method
