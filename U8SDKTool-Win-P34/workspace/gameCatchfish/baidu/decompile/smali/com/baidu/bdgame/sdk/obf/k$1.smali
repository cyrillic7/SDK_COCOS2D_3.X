.class final Lcom/baidu/bdgame/sdk/obf/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
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
        "Lcom/baidu/bdgame/sdk/obf/ho;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/n;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/k;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/k;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 3

    .prologue
    .line 390
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/k$1;->b:Lcom/baidu/bdgame/sdk/obf/k;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/k$1;->a:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ho;)V
    .registers 6

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 396
    if-eqz p3, :cond_7

    .line 397
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ho;->e()Lcom/baidu/platformsdk/OrderStatus;

    move-result-object v0

    .line 399
    :cond_7
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/k$1;->a:Lcom/baidu/bdgame/sdk/obf/n;

    if-eqz v1, :cond_10

    .line 400
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/k$1;->a:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-interface {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 402
    :cond_10
    return-void
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 390
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ho;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/k$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ho;)V

    return-void
.end method
