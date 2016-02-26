.class final Lcom/baidu/bdgame/sdk/obf/bl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
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
        "Lcom/baidu/bdgame/sdk/obf/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 514
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bl$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/r;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 518
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bl$2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/as;->f(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v0

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
    .line 514
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bl$2;->a()Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v0

    return-object v0
.end method
