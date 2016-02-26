.class final Lcom/baidu/bdgame/sdk/obf/bl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/s;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;)V
    .registers 3

    .prologue
    .line 469
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bl$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/bl$1;->b:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bl$1;->b:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bl;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;)V

    .line 474
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bl$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
