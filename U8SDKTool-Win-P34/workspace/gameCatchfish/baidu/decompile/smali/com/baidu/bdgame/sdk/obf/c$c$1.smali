.class final Lcom/baidu/bdgame/sdk/obf/c$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/c$c;->onResponse(Ljava/lang/String;)V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/c$c;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/c$c;)V
    .registers 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/c$c$1;->a:Lcom/baidu/bdgame/sdk/obf/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 166
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/c$c$1;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 7

    .prologue
    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$c$1;->a:Lcom/baidu/bdgame/sdk/obf/c$c;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/c$c;->a(Lcom/baidu/bdgame/sdk/obf/c$c;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/c$c$1;->a:Lcom/baidu/bdgame/sdk/obf/c$c;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/c$c;->b(Lcom/baidu/bdgame/sdk/obf/c$c;)Lcom/baidu/gamesdk/IResponse;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/content/Context;ILcom/baidu/gamesdk/IResponse;)V

    .line 171
    return-void
.end method
