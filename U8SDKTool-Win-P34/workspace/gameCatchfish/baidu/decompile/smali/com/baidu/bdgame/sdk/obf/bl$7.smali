.class final Lcom/baidu/bdgame/sdk/obf/bl$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;)V
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

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ai;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;)V
    .registers 3

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bl$7;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/bl$7;->b:Lcom/baidu/bdgame/sdk/obf/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1009
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bl$7;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bl$7;->b:Lcom/baidu/bdgame/sdk/obf/ai;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/as;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;)Z

    .line 1010
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
    .line 1005
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bl$7;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
