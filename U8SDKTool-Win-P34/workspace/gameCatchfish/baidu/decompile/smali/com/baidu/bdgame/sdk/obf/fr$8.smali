.class final Lcom/baidu/bdgame/sdk/obf/fr$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fr;->c(Lcom/baidu/bdgame/sdk/obf/ij;)V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ij;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/fr;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fr;Lcom/baidu/bdgame/sdk/obf/ij;)V
    .registers 3

    .prologue
    .line 415
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fr$8;->b:Lcom/baidu/bdgame/sdk/obf/fr;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/fr$8;->a:Lcom/baidu/bdgame/sdk/obf/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 415
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fr$8;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 6

    .prologue
    .line 420
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr$8;->b:Lcom/baidu/bdgame/sdk/obf/fr;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fr;->g(Lcom/baidu/bdgame/sdk/obf/fr;)Lcom/baidu/bdgame/sdk/obf/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fw;->O()V

    .line 421
    if-nez p1, :cond_1c

    .line 422
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr$8;->b:Lcom/baidu/bdgame/sdk/obf/fr;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fr$8;->a:Lcom/baidu/bdgame/sdk/obf/ij;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fr;->b(Lcom/baidu/bdgame/sdk/obf/fr;Lcom/baidu/bdgame/sdk/obf/ij;)V

    .line 423
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr$8;->b:Lcom/baidu/bdgame/sdk/obf/fr;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fr;->g(Lcom/baidu/bdgame/sdk/obf/fr;)Lcom/baidu/bdgame/sdk/obf/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fw;->p()V

    .line 427
    :goto_1b
    return-void

    .line 425
    :cond_1c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fr$8;->b:Lcom/baidu/bdgame/sdk/obf/fr;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fr;->g(Lcom/baidu/bdgame/sdk/obf/fr;)Lcom/baidu/bdgame/sdk/obf/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fw;->o()V

    goto :goto_1b
.end method
